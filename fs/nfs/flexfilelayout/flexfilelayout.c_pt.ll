; ModuleID = '/llk/IR_all_yes/fs/nfs/flexfilelayout/flexfilelayout.c_pt.bc'
source_filename = "../fs/nfs/flexfilelayout/flexfilelayout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.123 }
%union.anon.123 = type { ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.124 }
%struct.atomic_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_xdr_opaque_ops = type { ptr, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.145 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.147 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.126 }
%union.anon.126 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nfs4_ff_layout_ds_err = type { %struct.list_head, i64, i64, i32, i32, %struct.nfs4_stateid_struct, %struct.nfs4_deviceid }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.nfs42_layout_error = type { i64, i64, %struct.nfs4_stateid_struct, [1 x %struct.nfs42_device_error] }
%struct.nfs42_device_error = type { %struct.nfs4_deviceid, i32, i32 }
%struct.nfs4_flexfile_layout = type { %struct.pnfs_layout_hdr, %struct.pnfs_ds_commit_info, %struct.list_head, %struct.list_head, i64 }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_layoutget_res = type { %struct.nfs4_sequence_res, i32, i32, %struct.pnfs_layout_range, i32, %struct.nfs4_stateid_struct, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_layoutdriver_data = type { ptr, i32, i32 }
%struct.nfs4_ff_layout_segment = type { %struct.pnfs_layout_segment, i64, i32, i32, [0 x ptr] }
%struct.nfs4_ff_layout_mirror = type { ptr, %struct.list_head, i32, i32, %struct.nfs4_deviceid, ptr, i32, ptr, %struct.nfs4_stateid_struct, ptr, ptr, %struct.refcount_struct, %struct.spinlock, i32, %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat, i64, i32 }
%struct.nfs4_ff_layoutstat = type { %struct.nfs4_ff_io_stat, %struct.nfs4_ff_busy_timer }
%struct.nfs4_ff_io_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nfs4_ff_busy_timer = type { i64, %struct.atomic_t }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.116 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.16 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.16 = type { %struct.callback_head }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.128, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.128 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.132, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.132 = type { %struct.anon.134 }
%struct.anon.134 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.135 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.137 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }
%struct.nfs4_ff_layout_ds = type { %struct.nfs4_deviceid_node, i32, ptr, ptr }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs4_layoutreturn_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs4_flexfile_layoutreturn_args = type { %struct.list_head, [4 x %struct.nfs42_layoutstat_devinfo], i32, i32, [1 x ptr] }
%struct.nfs42_layoutstat_devinfo = type { %struct.nfs4_deviceid, i64, i64, i64, i64, i64, i64, i32, %struct.nfs4_xdr_opaque_data }
%struct.nfs4_xdr_opaque_data = type { ptr, ptr }
%struct.nfs42_layoutstat_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nfs_iostats = type { [8 x i64], [5 x i64], [27 x i32], [44 x i8] }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.131, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.131 = type { %struct.work_struct }
%struct.rpc_iostats = type { %struct.spinlock, i32, i32, i32, i64, i64, i64, i64, i64, i32, [28 x i8] }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs4_ff_ds_version = type { i32, i32, i32, i32, i8 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.24, %union.anon.122, %struct.atomic_t, i32 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.122 = type { %struct.atomic_t }

@nfs4flexfilelayout_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: NFSv4 Flexfile Layout Driver Unregistering...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4flexfilelayout_exit\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fs/nfs/flexfilelayout/flexfilelayout.c\00", [57 x i8] zeroinitializer }, align 32
@nfs4flexfilelayout_exit._entry_ptr = internal global ptr @nfs4flexfilelayout_exit._entry, section ".printk_index", align 4
@flexfilelayout_type = internal global { %struct.pnfs_layoutdriver_type, [48 x i8] } { %struct.pnfs_layoutdriver_type { %struct.list_head zeroinitializer, i32 4, ptr @.str.3, ptr null, i32 8, i32 0, i32 4096, ptr @ff_layout_set_layoutdriver, ptr null, ptr @ff_layout_alloc_layout_hdr, ptr @ff_layout_free_layout_hdr, ptr @ff_layout_alloc_lseg, ptr @ff_layout_free_lseg, ptr @ff_layout_add_lseg, ptr null, ptr @ff_layout_pg_read_ops, ptr @ff_layout_pg_write_ops, ptr @ff_layout_get_ds_info, ptr @pnfs_nfs_generic_sync, ptr @ff_layout_read_pagelist, ptr @ff_layout_write_pagelist, ptr @ff_layout_free_deviceid_node, ptr @ff_layout_alloc_deviceid_node, ptr @ff_layout_prepare_layoutreturn, ptr null, ptr null, ptr @ff_layout_prepare_layoutstats }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias722 = internal constant [45 x i8] c"nfs_layout_flexfiles.alias=nfs-layouttype4-4\00", section ".modinfo", align 1
@__UNIQUE_ID_file723 = internal constant [69 x i8] c"nfs_layout_flexfiles.file=fs/nfs/flexfilelayout/nfs_layout_flexfiles\00", section ".modinfo", align 1
@__UNIQUE_ID_license724 = internal constant [33 x i8] c"nfs_layout_flexfiles.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description725 = internal constant [66 x i8] c"nfs_layout_flexfiles.description=The NFSv4 flexfile layout driver\00", section ".modinfo", align 1
@__initcall__kmod_nfs_layout_flexfiles__726_2528_nfs4flexfilelayout_init6 = internal global ptr @nfs4flexfilelayout_init, section ".initcall6.init", align 4
@__exitcall_nfs4flexfilelayout_exit = internal global ptr @nfs4flexfilelayout_exit, section ".exitcall.exit", align 4
@__param_str_io_maxretrans = internal constant [35 x i8] c"nfs_layout_flexfiles.io_maxretrans\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@io_maxretrans = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_io_maxretrans = internal constant %struct.kernel_param { ptr @__param_str_io_maxretrans, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.123 { ptr @io_maxretrans } }, section "__param", align 4
@__UNIQUE_ID_io_maxretranstype727 = internal constant [51 x i8] c"nfs_layout_flexfiles.parmtype=io_maxretrans:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_io_maxretrans728 = internal constant [131 x i8] c"nfs_layout_flexfiles.parm=io_maxretrans:The  number of times the NFSv4.1 client retries an I/O request before returning an error. \00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LAYOUT_FLEX_FILES\00", [46 x i8] zeroinitializer }, align 32
@ff_layout_pg_read_ops = internal constant { %struct.nfs_pageio_ops, [36 x i8] } { %struct.nfs_pageio_ops { ptr @ff_layout_pg_init_read, ptr @pnfs_generic_pg_test, ptr @pnfs_generic_pg_readpages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ff_layout_pg_write_ops = internal constant { %struct.nfs_pageio_ops, [36 x i8] } { %struct.nfs_pageio_ops { ptr @ff_layout_pg_init_write, ptr @pnfs_generic_pg_test, ptr @pnfs_generic_pg_writepages, ptr @ff_layout_pg_get_mirror_count_write, ptr @pnfs_generic_pg_cleanup, ptr @ff_layout_pg_get_mirror_write, ptr @ff_layout_pg_set_mirror_write }, [36 x i8] zeroinitializer }, align 32
@ff_layout_commit_ops = internal constant { %struct.pnfs_commit_ops, [32 x i8] } { %struct.pnfs_commit_ops { ptr @ff_layout_setup_ds_info, ptr @ff_layout_release_ds_info, ptr @ff_layout_commit_pagelist, ptr @pnfs_layout_mark_request_commit, ptr @pnfs_generic_clear_request_commit, ptr @pnfs_generic_scan_commit_lists, ptr @pnfs_generic_recover_commit_reqs, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@ff_layout_initiate_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s ino %lu, how %d cl_count %d vers %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ff_layout_initiate_commit\00", [38 x i8] zeroinitializer }, align 32
@ff_layout_initiate_commit._entry_ptr = internal global ptr @ff_layout_initiate_commit._entry, section ".printk_index", align 4
@ff_layout_commit_call_ops_v3 = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @ff_layout_commit_prepare_v3, ptr @ff_layout_commit_done, ptr @ff_layout_commit_count_stats, ptr @ff_layout_commit_release }, [16 x i8] zeroinitializer }, align 32
@ff_layout_commit_call_ops_v4 = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @ff_layout_commit_prepare_v4, ptr @ff_layout_commit_done, ptr @ff_layout_commit_count_stats, ptr @ff_layout_commit_release }, [16 x i8] zeroinitializer }, align 32
@ff_layout_io_track_ds_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: err %d op %d status %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ff_layout_io_track_ds_error\00", [36 x i8] zeroinitializer }, align 32
@ff_layout_io_track_ds_error._entry_ptr = internal global ptr @ff_layout_io_track_ds_error._entry, section ".printk_index", align 4
@__tracepoint_ff_layout_commit_error = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fs/nfs/flexfilelayout/../nfs4trace.h\00", [59 x i8] zeroinitializer }, align 32
@trace_ff_layout_commit_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@ff_layout_async_handle_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ff_layout_async_handle_error_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s DS connection error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ff_layout_async_handle_error_v3\00", [32 x i8] zeroinitializer }, align 32
@ff_layout_async_handle_error_v3._entry_ptr = internal global ptr @ff_layout_async_handle_error_v3._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ff_layout_async_handle_error_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s ERROR %d, Reset session. Exchangeid flags 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ff_layout_async_handle_error_v4\00", [32 x i8] zeroinitializer }, align 32
@ff_layout_async_handle_error_v4._entry_ptr = internal global ptr @ff_layout_async_handle_error_v4._entry, section ".printk_index", align 4
@ff_layout_async_handle_error_v4._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s Invalid layout error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ff_layout_async_handle_error_v4._entry_ptr.17 = internal global ptr @ff_layout_async_handle_error_v4._entry.15, section ".printk_index", align 4
@ff_layout_async_handle_error_v4._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ff_layout_async_handle_error_v4._entry_ptr.19 = internal global ptr @ff_layout_async_handle_error_v4._entry.18, section ".printk_index", align 4
@ff_layout_async_handle_error_v4._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Retry through MDS. Error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ff_layout_async_handle_error_v4._entry_ptr.22 = internal global ptr @ff_layout_async_handle_error_v4._entry.20, section ".printk_index", align 4
@__tracepoint_nfs4_pnfs_commit_ds = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_pnfs_commit_ds.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ff_layout_set_layoutcommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s inode %lu pls_end_pos %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ff_layout_set_layoutcommit\00", [37 x i8] zeroinitializer }, align 32
@ff_layout_set_layoutcommit._entry_ptr = internal global ptr @ff_layout_set_layoutcommit._entry, section ".printk_index", align 4
@layoutstats_timer = external dso_local local_unnamed_addr global i32, align 4
@nfs4_ff_end_busy_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"--> %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ff_layout_alloc_lseg\00", [43 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry_ptr = internal global ptr @ff_layout_alloc_lseg._entry, section ".printk_index", align 4
@ff_layout_alloc_lseg._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: stripe_unit=%llu mirror_array_cnt=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry_ptr.30 = internal global ptr @ff_layout_alloc_lseg._entry.28, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ff_layout_alloc_lseg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: iomode %s uid %u gid %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry_ptr.33 = internal global ptr @ff_layout_alloc_lseg._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RW\00", [29 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"<-- %s (success)\0A\00", [46 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry_ptr.38 = internal global ptr @ff_layout_alloc_lseg._entry.36, section ".printk_index", align 4
@ff_layout_alloc_lseg._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"<-- %s (%d)\0A\00", [19 x i8] zeroinitializer }, align 32
@ff_layout_alloc_lseg._entry_ptr.41 = internal global ptr @ff_layout_alloc_lseg._entry.39, section ".printk_index", align 4
@ff_layout_alloc_mirror.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mirror->lock\00", [18 x i8] zeroinitializer }, align 32
@decode_pnfs_stateid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: stateid id= [%x%x%x%x]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decode_pnfs_stateid\00", [44 x i8] zeroinitializer }, align 32
@decode_pnfs_stateid._entry_ptr = internal global ptr @decode_pnfs_stateid._entry, section ".printk_index", align 4
@decode_nfs_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013NFS flexfiles: Too big fh received %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"decode_nfs_fh\00", [18 x i8] zeroinitializer }, align 32
@decode_nfs_fh._entry_ptr = internal global ptr @decode_nfs_fh._entry, section ".printk_index", align 4
@decode_nfs_fh._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: fh len %d\0A\00", [17 x i8] zeroinitializer }, align 32
@decode_nfs_fh._entry_ptr.50 = internal global ptr @decode_nfs_fh._entry.48, section ".printk_index", align 4
@decode_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: len %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_name\00", [20 x i8] zeroinitializer }, align 32
@decode_name._entry_ptr = internal global ptr @decode_name._entry, section ".printk_index", align 4
@ff_layout_free_lseg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ff_layout_free_lseg\00", [44 x i8] zeroinitializer }, align 32
@ff_layout_free_lseg._entry_ptr = internal global ptr @ff_layout_free_lseg._entry, section ".printk_index", align 4
@__tracepoint_pnfs_mds_fallback_pg_init_read = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_pg_init_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pnfs_mds_fallback_pg_init_write = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_pg_init_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pnfs_mds_fallback_pg_get_mirror_count = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_pg_get_mirror_count.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ff_layout_read_pagelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"--> %s ino %lu pgbase %u req %zu@%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ff_layout_read_pagelist\00", [40 x i8] zeroinitializer }, align 32
@ff_layout_read_pagelist._entry_ptr = internal global ptr @ff_layout_read_pagelist._entry, section ".printk_index", align 4
@ff_layout_read_pagelist._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s USE DS: %s cl_count %d vers %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ff_layout_read_pagelist._entry_ptr.58 = internal global ptr @ff_layout_read_pagelist._entry.56, section ".printk_index", align 4
@ff_layout_read_call_ops_v3 = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @ff_layout_read_prepare_v3, ptr @ff_layout_read_call_done, ptr @ff_layout_read_count_stats, ptr @ff_layout_read_release }, [16 x i8] zeroinitializer }, align 32
@ff_layout_read_call_ops_v4 = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @ff_layout_read_prepare_v4, ptr @ff_layout_read_call_done, ptr @ff_layout_read_count_stats, ptr @ff_layout_read_release }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_ff_layout_read_error = external dso_local global %struct.tracepoint, align 4
@trace_ff_layout_read_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_pnfs_read = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_pnfs_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ff_layout_reset_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s Reset task %5u for i/o through MDS (req %s/%llu, %u bytes @ offset %llu)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ff_layout_reset_read\00", [43 x i8] zeroinitializer }, align 32
@ff_layout_reset_read._entry_ptr = internal global ptr @ff_layout_reset_read._entry, section ".printk_index", align 4
@__tracepoint_pnfs_mds_fallback_read_done = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_read_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pnfs_mds_fallback_read_pagelist = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_read_pagelist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ff_layout_write_pagelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s ino %lu sync %d req %zu@%llu DS: %s cl_count %d vers %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ff_layout_write_pagelist\00", [39 x i8] zeroinitializer }, align 32
@ff_layout_write_pagelist._entry_ptr = internal global ptr @ff_layout_write_pagelist._entry, section ".printk_index", align 4
@ff_layout_write_call_ops_v3 = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @ff_layout_write_prepare_v3, ptr @ff_layout_write_call_done, ptr @ff_layout_write_count_stats, ptr @ff_layout_write_release }, [16 x i8] zeroinitializer }, align 32
@ff_layout_write_call_ops_v4 = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @ff_layout_write_prepare_v4, ptr @ff_layout_write_call_done, ptr @ff_layout_write_count_stats, ptr @ff_layout_write_release }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_ff_layout_write_error = external dso_local global %struct.tracepoint, align 4
@trace_ff_layout_write_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_pnfs_write = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_pnfs_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ff_layout_reset_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s Reset task %5u for i/o through pNFS (req %s/%llu, %u bytes @ offset %llu)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ff_layout_reset_write\00", [42 x i8] zeroinitializer }, align 32
@ff_layout_reset_write._entry_ptr = internal global ptr @ff_layout_reset_write._entry, section ".printk_index", align 4
@ff_layout_reset_write._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.64, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ff_layout_reset_write._entry_ptr.66 = internal global ptr @ff_layout_reset_write._entry.65, section ".printk_index", align 4
@__tracepoint_pnfs_mds_fallback_write_done = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_write_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pnfs_mds_fallback_write_pagelist = external dso_local global %struct.tracepoint, align 4
@trace_pnfs_mds_fallback_write_pagelist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@layoutreturn_ops = internal constant { %struct.nfs4_xdr_opaque_ops, [24 x i8] } { %struct.nfs4_xdr_opaque_ops { ptr @ff_layout_encode_layoutreturn, ptr @ff_layout_free_layoutreturn }, [24 x i8] zeroinitializer }, align 32
@layoutstat_ops = internal constant { %struct.nfs4_xdr_opaque_ops, [24 x i8] } { %struct.nfs4_xdr_opaque_ops { ptr @ff_layout_encode_layoutstats, ptr @ff_layout_free_layoutstats }, [24 x i8] zeroinitializer }, align 32
@ff_layout_encode_ff_layoutupdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 2353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: DS %s: encoding address %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ff_layout_encode_ff_layoutupdate\00", [63 x i8] zeroinitializer }, align 32
@ff_layout_encode_ff_layoutupdate._entry_ptr = internal global ptr @ff_layout_encode_ff_layoutupdate._entry, section ".printk_index", align 4
@ff_layout_encode_netaddr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c".%u.%u\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"::\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"::ffff:%pI4\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6c\00", [26 x i8] zeroinitializer }, align 32
@ff_layout_encode_layoutreturn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: Begin\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ff_layout_encode_layoutreturn\00", [34 x i8] zeroinitializer }, align 32
@ff_layout_encode_layoutreturn._entry_ptr = internal global ptr @ff_layout_encode_layoutreturn._entry, section ".printk_index", align 4
@ff_layout_encode_layoutreturn._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 2124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: Return\0A\00", [20 x i8] zeroinitializer }, align 32
@ff_layout_encode_layoutreturn._entry_ptr.79 = internal global ptr @ff_layout_encode_layoutreturn._entry.77, section ".printk_index", align 4
@encode_opaque_fixed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@nfs4flexfilelayout_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 2512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: NFSv4 Flexfile Layout Driver Registering...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4flexfilelayout_init\00", [40 x i8] zeroinitializer }, align 32
@nfs4flexfilelayout_init._entry_ptr = internal global ptr @nfs4flexfilelayout_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294955294, i64 4294955295, i64 4294967285]
@__sancov_gen_cov_switch_values.83 = internal global [16 x i64] [i64 14, i64 32, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967191, i64 4294967192, i64 4294967195, i64 4294967198, i64 4294967200, i64 4294967201, i64 4294967203, i64 4294967264, i64 4294967283, i64 4294967295]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10008, i64 10013]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [9 x i64] [i64 7, i64 32, i64 4294966768, i64 4294966775, i64 4294967180, i64 4294967256, i64 4294967268, i64 4294967275, i64 4294967283]
@__sancov_gen_cov_switch_values.87 = internal global [25 x i64] [i64 23, i64 32, i64 4294957213, i64 4294957216, i64 4294957218, i64 4294957219, i64 4294957220, i64 4294957228, i64 4294957233, i64 4294957241, i64 4294957243, i64 4294957244, i64 4294957282, i64 4294957283, i64 4294957288, i64 4294966775, i64 4294967180, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967195, i64 4294967264, i64 4294967275, i64 4294967291]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 4294955294, i64 4294955295, i64 4294967285]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 4294955294, i64 4294955295, i64 4294967285]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2518, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"flexfilelayout_type\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2485, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"io_maxretrans\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 33, i32 23 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2487, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"ff_layout_pg_read_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 997, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"ff_layout_pg_write_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1004, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"ff_layout_commit_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2475, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1926, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [29 x i8] c"ff_layout_commit_call_ops_v3\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1727, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant [29 x i8] c"ff_layout_commit_call_ops_v4\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1734, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1281, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [40 x i8] c"../fs/nfs/flexfilelayout/../nfs4trace.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2054, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 108, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1181, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1105, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1123, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1143, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1153, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1346, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 286, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 374, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 391, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 522, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 542, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 549, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 225, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 84, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 110, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 119, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 146, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 558, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1754, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1774, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [27 x i8] c"ff_layout_read_call_ops_v3\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1699, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant [27 x i8] c"ff_layout_read_call_ops_v4\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1706, i32 34 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1070, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1840, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [28 x i8] c"ff_layout_write_call_ops_v3\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1713, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant [28 x i8] c"ff_layout_write_call_ops_v4\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1720, i32 34 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1021, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 1034, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"layoutreturn_ops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2144, i32 41 }
@___asan_gen_.343 = private unnamed_addr constant [15 x i8] c"layoutstat_ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2395, i32 41 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2352, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2301, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2232, i32 31 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2248, i32 32 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2265, i32 32 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2271, i32 31 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2113, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2124, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 717, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private constant [42 x i8] c"../fs/nfs/flexfilelayout/flexfilelayout.c\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 2511, i32 2 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_alias722, ptr @__UNIQUE_ID_description725, ptr @__UNIQUE_ID_file723, ptr @__UNIQUE_ID_io_maxretrans728, ptr @__UNIQUE_ID_io_maxretranstype727, ptr @__UNIQUE_ID_license724, ptr @__exitcall_nfs4flexfilelayout_exit, ptr @__initcall__kmod_nfs_layout_flexfiles__726_2528_nfs4flexfilelayout_init6, ptr @__param_io_maxretrans, ptr @decode_name._entry, ptr @decode_name._entry_ptr, ptr @decode_nfs_fh._entry, ptr @decode_nfs_fh._entry.48, ptr @decode_nfs_fh._entry_ptr, ptr @decode_nfs_fh._entry_ptr.50, ptr @decode_pnfs_stateid._entry, ptr @decode_pnfs_stateid._entry_ptr, ptr @ff_layout_alloc_lseg._entry, ptr @ff_layout_alloc_lseg._entry.28, ptr @ff_layout_alloc_lseg._entry.31, ptr @ff_layout_alloc_lseg._entry.36, ptr @ff_layout_alloc_lseg._entry.39, ptr @ff_layout_alloc_lseg._entry_ptr, ptr @ff_layout_alloc_lseg._entry_ptr.30, ptr @ff_layout_alloc_lseg._entry_ptr.33, ptr @ff_layout_alloc_lseg._entry_ptr.38, ptr @ff_layout_alloc_lseg._entry_ptr.41, ptr @ff_layout_async_handle_error_v3._entry, ptr @ff_layout_async_handle_error_v3._entry_ptr, ptr @ff_layout_async_handle_error_v4._entry, ptr @ff_layout_async_handle_error_v4._entry.15, ptr @ff_layout_async_handle_error_v4._entry.18, ptr @ff_layout_async_handle_error_v4._entry.20, ptr @ff_layout_async_handle_error_v4._entry_ptr, ptr @ff_layout_async_handle_error_v4._entry_ptr.17, ptr @ff_layout_async_handle_error_v4._entry_ptr.19, ptr @ff_layout_async_handle_error_v4._entry_ptr.22, ptr @ff_layout_encode_ff_layoutupdate._entry, ptr @ff_layout_encode_ff_layoutupdate._entry_ptr, ptr @ff_layout_encode_layoutreturn._entry, ptr @ff_layout_encode_layoutreturn._entry.77, ptr @ff_layout_encode_layoutreturn._entry_ptr, ptr @ff_layout_encode_layoutreturn._entry_ptr.79, ptr @ff_layout_free_lseg._entry, ptr @ff_layout_free_lseg._entry_ptr, ptr @ff_layout_initiate_commit._entry, ptr @ff_layout_initiate_commit._entry_ptr, ptr @ff_layout_io_track_ds_error._entry, ptr @ff_layout_io_track_ds_error._entry_ptr, ptr @ff_layout_read_pagelist._entry, ptr @ff_layout_read_pagelist._entry.56, ptr @ff_layout_read_pagelist._entry_ptr, ptr @ff_layout_read_pagelist._entry_ptr.58, ptr @ff_layout_reset_read._entry, ptr @ff_layout_reset_read._entry_ptr, ptr @ff_layout_reset_write._entry, ptr @ff_layout_reset_write._entry.65, ptr @ff_layout_reset_write._entry_ptr, ptr @ff_layout_reset_write._entry_ptr.66, ptr @ff_layout_set_layoutcommit._entry, ptr @ff_layout_set_layoutcommit._entry_ptr, ptr @ff_layout_write_pagelist._entry, ptr @ff_layout_write_pagelist._entry_ptr, ptr @nfs4flexfilelayout_exit, ptr @nfs4flexfilelayout_exit._entry, ptr @nfs4flexfilelayout_exit._entry_ptr, ptr @nfs4flexfilelayout_init._entry, ptr @nfs4flexfilelayout_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @flexfilelayout_type, ptr @io_maxretrans, ptr @.str.3, ptr @ff_layout_pg_read_ops, ptr @ff_layout_pg_write_ops, ptr @ff_layout_commit_ops, ptr @.str.4, ptr @.str.5, ptr @ff_layout_commit_call_ops_v3, ptr @ff_layout_commit_call_ops_v4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @ff_layout_alloc_mirror.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @ff_layout_read_call_ops_v3, ptr @ff_layout_read_call_ops_v4, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @ff_layout_write_call_ops_v3, ptr @ff_layout_write_call_ops_v4, ptr @.str.63, ptr @.str.64, ptr @layoutreturn_ops, ptr @layoutstat_ops, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4flexfilelayout_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexfilelayout_type to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_maxretrans to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_pg_read_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_pg_write_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_commit_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_initiate_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_commit_call_ops_v3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_commit_call_ops_v4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_io_track_ds_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_async_handle_error_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_async_handle_error_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_async_handle_error_v4._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_async_handle_error_v4._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_async_handle_error_v4._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_set_layoutcommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_alloc_lseg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_alloc_lseg._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_alloc_lseg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_alloc_lseg._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_alloc_lseg._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_alloc_mirror.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_pnfs_stateid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_nfs_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_nfs_fh._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_free_lseg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_read_pagelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_read_pagelist._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_read_call_ops_v3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_read_call_ops_v4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_reset_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_write_pagelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_write_call_ops_v3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_write_call_ops_v4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_reset_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_reset_write._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @layoutreturn_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @layoutstat_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_encode_ff_layoutupdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_encode_layoutreturn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_encode_layoutreturn._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4flexfilelayout_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ff_layout_send_layouterror(ptr noundef %lseg) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pls_layout, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #17
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plh_inode, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3
  %call1 = call i32 @ff_layout_fetch_ds_ioerr(ptr noundef %1, ptr noundef %pls_range, ptr noundef nonnull %head, i32 noundef -1) #17
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %14, %head
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3136, i32 noundef 320) #20
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %if.end5.if.end41_crit_edge, label %for.cond.preheader

if.end5.if.end41_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

for.cond.preheader:                               ; preds = %if.end5
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %pos.073 = load ptr, ptr %head, align 4
  %cmp9.not74 = icmp eq ptr %pos.073, %head
  br i1 %cmp9.not74, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pos.076 = phi ptr [ %pos.0, %for.inc.for.body_crit_edge ], [ %pos.073, %for.cond.preheader.for.body_crit_edge ]
  %n.075 = phi i32 [ %n.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %offset = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset, align 8
  %arrayidx = getelementptr %struct.nfs42_layout_error, ptr %call7.i.i, i32 %n.075
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx, align 8
  %length = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %length, align 8
  %length12 = getelementptr %struct.nfs42_layout_error, ptr %call7.i.i, i32 %n.075, i32 1
  %22 = ptrtoint ptr %length12 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %length12, align 8
  %stateid = getelementptr %struct.nfs42_layout_error, ptr %call7.i.i, i32 %n.075, i32 2
  %stateid14 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 5
  %23 = call ptr @memcpy(ptr %stateid, ptr %stateid14, i32 16)
  %type.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr %struct.nfs42_layout_error, ptr %call7.i.i, i32 %n.075, i32 2, i32 1
  %26 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %type2.i, align 8
  %errors16 = getelementptr %struct.nfs42_layout_error, ptr %call7.i.i, i32 %n.075, i32 3
  %deviceid = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 6
  %27 = call ptr @memcpy(ptr %errors16, ptr %deviceid, i32 16)
  %status = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 3
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 8
  %status21 = getelementptr inbounds %struct.nfs42_device_error, ptr %errors16, i32 0, i32 1
  %30 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %status21, align 4
  %opnum = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %pos.076, i32 0, i32 4
  %31 = ptrtoint ptr %opnum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opnum, align 4
  %opnum25 = getelementptr inbounds %struct.nfs42_device_error, ptr %errors16, i32 0, i32 2
  %33 = ptrtoint ptr %opnum25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %opnum25, align 8
  %inc = add i32 %n.075, 1
  %34 = ptrtoint ptr %pos.076 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pos.076, align 4
  %cmp.i71 = icmp ne ptr %35, %head
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp29 = icmp ult i32 %inc, 5
  %or.cond = select i1 %cmp.i71, i1 %cmp29, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %call32 = call i32 @nfs42_proc_layouterror(ptr noundef %lseg, ptr noundef nonnull %call7.i.i, i32 noundef %inc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.for.end_crit_edge, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc:                                          ; preds = %if.end31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %if.end31.for.inc_crit_edge ]
  %36 = ptrtoint ptr %pos.076 to i32
  call void @__asan_load4_noabort(i32 %36)
  %pos.0 = load ptr, ptr %pos.076, align 4
  %cmp9.not = icmp eq ptr %pos.0, %head
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.end5.if.end41_crit_edge
  call void @ff_layout_free_ds_ioerr(ptr noundef nonnull %head) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ff_layout_fetch_ds_ioerr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_layouterror(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ff_layout_free_ds_ioerr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfs4flexfilelayout_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @flexfilelayout_type) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_unregister_layoutdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4flexfilelayout_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #21
  %call1 = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @flexfilelayout_type) #17
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ff_layout_set_layoutdriver(ptr nocapture noundef %server, ptr nocapture noundef readnone %dummy) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 10
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %or = or i32 %1, 4194304
  store i32 %or, ptr %caps, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ff_layout_alloc_layout_hdr(ptr nocapture noundef readnone %inode, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !262

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 8
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 160) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.then

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %commit_info = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %commit_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %commit_info, ptr %commit_info, align 8
  %prev.i.i = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %commit_info, ptr %prev.i.i, align 4
  %ops.i = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ops.i, align 8
  %error_list = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %error_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %error_list, ptr %error_list, align 4
  %prev.i = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %error_list, ptr %prev.i, align 8
  %mirrors = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %mirrors to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %mirrors, ptr %mirrors, align 4
  %prev.i9 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mirrors, ptr %prev.i9, align 8
  %call1 = tail call i64 @ktime_get() #17
  %last_report_time = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %last_report_time to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call1, ptr %last_report_time, align 8
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ff_layout_commit_ops, ptr %ops.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_free_layout_hdr(ptr noundef %lo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %error_list = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %lo, i32 0, i32 3
  %0 = ptrtoint ptr %error_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %error_list, align 4
  %cmp.not23 = icmp eq ptr %1, %error_list
  br i1 %cmp.not23, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %err.024 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %err.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %err.024, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %err.024) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %err.024, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %err.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %err.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %err.024 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %err.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %err.024, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %err.024) #17
  %cmp.not = icmp eq ptr %n.0, %error_list
  br i1 %cmp.not, label %list_del.exit.do.body_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %tobool.not = icmp eq ptr %lo, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %plh_rcu = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %plh_rcu, ptr noundef nonnull inttoptr (i32 104 to ptr)) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ff_layout_alloc_lseg(ptr noundef %lh, ptr nocapture noundef readonly %lgr, i32 noundef %gfp_flags) #0 align 64 {
entry:
  %stream = alloca %struct.xdr_stream, align 4
  %buf = alloca %struct.xdr_buf, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %stream) #17
  %0 = call ptr @memset(ptr %stream, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf) #17
  %1 = call ptr @memset(ptr %buf, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !262

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #21
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_flags, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %tobool7.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool7.not, label %do.end5.cleanup466_crit_edge, label %if.end10

do.end5.cleanup466_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup466

if.end10:                                         ; preds = %do.end5
  %layoutp = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 6
  %3 = ptrtoint ptr %layoutp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %layoutp, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %len = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %stream, ptr noundef nonnull %buf, ptr noundef %6, i32 noundef %8) #17
  %call.i577 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #17
  %scratch.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream, i32 0, i32 4
  %9 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i577, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %iov_len.i.i, align 4
  %call12 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 12) #17
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.out_err_free_crit_edge, label %if.end15

if.end10.out_err_free_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_free

if.end15:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %call12 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call12, align 1
  %add.ptr.i = getelementptr i32, ptr %call12, i32 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and19 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end15.do.end35_crit_edge, label %do.end30, !prof !262

if.end15.do.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end35

do.end30:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i64 noundef %12, i32 noundef %14) #21
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %if.end15.do.end35_crit_edge
  %16 = add i32 %14, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %16)
  %17 = icmp ult i32 %16, -4096
  br i1 %17, label %do.end35.out_err_free_crit_edge, label %if.end38

do.end35.out_err_free_crit_edge:                  ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_free

if.end38:                                         ; preds = %do.end35
  %or.i = or i32 %gfp_flags, 256
  %18 = shl nuw nsw i32 %14, 2
  %spec.select.i628 = add nuw nsw i32 %18, 80
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i628, i32 noundef %or.i) #22
  %tobool41.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool41.not, label %if.end38.out_err_free_crit_edge, label %for.body.lr.ph

if.end38.out_err_free_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_free

for.body.lr.ph:                                   ; preds = %if.end38
  %mirror_array_cnt44 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %mirror_array_cnt44, align 4
  %stripe_unit45 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %stripe_unit45 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %12, ptr %stripe_unit45, align 64
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  %and124 = and i32 %gfp_flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  %range = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 3
  %spec.select = select i1 %tobool3.not.i.i.i.i, i32 %..i.i.i.i, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc407.for.body_crit_edge, %for.body.lr.ph
  %i.0639 = phi i32 [ 0, %for.body.lr.ph ], [ %inc408, %for.inc407.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #17
  %21 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %id, align 4, !annotation !263
  %call48 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #17
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %for.body.cleanup.thread_crit_edge, label %if.end51

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end51:                                         ; preds = %for.body
  %22 = ptrtoint ptr %call48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp53.not = icmp eq i32 %23, 1
  br i1 %cmp53.not, label %if.end55, label %if.end51.cleanup.thread_crit_edge

if.end51.cleanup.thread_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end55:                                         ; preds = %if.end51
  br i1 %cmp.i19.i.i.i, label %if.end55.kzalloc.exit.i_crit_edge, label %if.end.i20.i.i.i, !prof !262

if.end55.kzalloc.exit.i_crit_edge:                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %kzalloc.exit.i

if.end.i20.i.i.i:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end.i20.i.i.i, %if.end55.kzalloc.exit.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %if.end55.kzalloc.exit.i_crit_edge ], [ %spec.select, %if.end.i20.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 9
  %24 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef %or.i, i32 noundef 288) #20
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %ff_layout_alloc_mirror.exit.thread, label %if.end61

ff_layout_alloc_mirror.exit.thread:               ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx617 = getelementptr %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 4, i32 %i.0639
  %26 = ptrtoint ptr %arrayidx617 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx617, align 4
  br label %cleanup.thread

if.end61:                                         ; preds = %kzalloc.exit.i
  %lock.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call7.i.i.i, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @ff_layout_alloc_mirror.__key, i16 noundef signext 3) #17
  %ref.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call7.i.i.i, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  %27 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %ref.i, align 4
  %mirrors.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %mirrors.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %mirrors.i, ptr %mirrors.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mirrors.i, ptr %prev.i.i, align 8
  %arrayidx = getelementptr %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 4, i32 %i.0639
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %ds_count64 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %ds_count64 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %ds_count64, align 4
  %call.i578 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call.i578, null
  br i1 %tobool.not.i, label %if.end61.cleanup.thread_crit_edge, label %if.end70, !prof !264

if.end61.cleanup.thread_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end70:                                         ; preds = %if.end61
  %devid = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call7.i.i.i, i32 0, i32 4
  %32 = call ptr @memcpy(ptr %devid, ptr %call.i578, i32 16)
  call void @nfs4_print_deviceid(ptr noundef %devid) #17
  %call71 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #17
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.end70.cleanup.thread_crit_edge, label %if.end74

if.end70.cleanup.thread_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end74:                                         ; preds = %if.end70
  %33 = ptrtoint ptr %call71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call71, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %efficiency = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %efficiency to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %efficiency, align 8
  %38 = load ptr, ptr %arrayidx, align 4
  %call.i580 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 16) #17
  %cmp.i = icmp eq ptr %call.i580, null
  br i1 %cmp.i, label %if.end74.cleanup.thread_crit_edge, label %if.end.i581, !prof !264

if.end74.cleanup.thread_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end.i581:                                      ; preds = %if.end74
  %stateid = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %38, i32 0, i32 8
  %type.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %38, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %type.i, align 4
  %40 = call ptr @memcpy(ptr %stateid, ptr %call.i580, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %41 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i581.if.end83_crit_edge, label %do.end.i, !prof !262

if.end.i581.if.end83_crit_edge:                   ; preds = %if.end.i581
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

do.end.i:                                         ; preds = %if.end.i581
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %call.i580 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i580, align 4
  %arrayidx11.i = getelementptr i32, ptr %call.i580, i32 1
  %44 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %call.i580, i32 2
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %call.i580, i32 3
  %48 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx13.i, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #21
  br label %if.end83

if.end83:                                         ; preds = %do.end.i, %if.end.i581.if.end83_crit_edge
  %call84 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #17
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %if.end83.cleanup.thread_crit_edge, label %if.end87

if.end83.cleanup.thread_crit_edge:                ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end87:                                         ; preds = %if.end83
  %50 = ptrtoint ptr %call84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call84, align 4
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 130) #17
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %if.end87.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !264

if.end87.kcalloc.exit_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  %54 = extractvalue { i32, i1 } %52, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef %or.i) #22
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.end87.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.end87.kcalloc.exit_crit_edge ]
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %fh_versions = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %fh_versions to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i.i, ptr %fh_versions, align 4
  %58 = load ptr, ptr %arrayidx, align 4
  %fh_versions94 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %fh_versions94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fh_versions94, align 4
  %cmp95 = icmp eq ptr %60, null
  br i1 %cmp95, label %kcalloc.exit.cleanup.thread_crit_edge, label %for.cond98.preheader

kcalloc.exit.cleanup.thread_crit_edge:            ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

for.cond98.preheader:                             ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp99636.not = icmp eq i32 %51, 0
  br i1 %cmp99636.not, label %for.cond98.preheader.for.end_crit_edge, label %for.cond98.preheader.for.body100_crit_edge

for.cond98.preheader.for.body100_crit_edge:       ; preds = %for.cond98.preheader
  br label %for.body100

for.cond98.preheader.for.end_crit_edge:           ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body100:                                      ; preds = %for.inc.for.body100_crit_edge, %for.cond98.preheader.for.body100_crit_edge
  %j.0637 = phi i32 [ %inc, %for.inc.for.body100_crit_edge ], [ 0, %for.cond98.preheader.for.body100_crit_edge ]
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %fh_versions103 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %fh_versions103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fh_versions103, align 4
  %arrayidx104 = getelementptr %struct.nfs_fh, ptr %64, i32 %j.0637
  %call.i599 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #17
  %tobool.not.i600 = icmp eq ptr %call.i599, null
  br i1 %tobool.not.i600, label %for.body100.cleanup.thread_crit_edge, label %if.end.i602, !prof !264

for.body100.cleanup.thread_crit_edge:             ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end.i602:                                      ; preds = %for.body100
  %65 = ptrtoint ptr %call.i599 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call.i599, align 4
  %conv.i = trunc i32 %66 to i16
  %67 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i, ptr %arrayidx104, align 2
  %conv6.i = and i32 %66, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv6.i)
  %cmp.i601 = icmp ugt i32 %conv6.i, 128
  br i1 %cmp.i601, label %do.end.i603, label %if.end12.i

do.end.i603:                                      ; preds = %if.end.i602
  call void @__sanitizer_cov_trace_pc() #19
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv6.i) #21
  br label %cleanup.thread

if.end12.i:                                       ; preds = %if.end.i602
  %call15.i = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef %conv6.i) #17
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end12.i.cleanup.thread_crit_edge, label %if.end26.i, !prof !264

if.end12.i.cleanup.thread_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end26.i:                                       ; preds = %if.end12.i
  %data.i = getelementptr %struct.nfs_fh, ptr %64, i32 %j.0637, i32 1
  %68 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx104, align 2
  %conv28.i = zext i16 %69 to i32
  %70 = call ptr @memcpy(ptr %data.i, ptr %call15.i, i32 %conv28.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %71 = load i32, ptr @nfs_debug, align 4
  %and.i604 = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i604)
  %tobool30.not.i = icmp eq i32 %and.i604, 0
  br i1 %tobool30.not.i, label %if.end26.i.for.inc_crit_edge, label %do.end40.i, !prof !262

if.end26.i.for.inc_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %conv28.i) #21
  br label %for.inc

for.inc:                                          ; preds = %do.end40.i, %if.end26.i.for.inc_crit_edge
  %inc = add nuw i32 %j.0637, 1
  %exitcond.not = icmp eq i32 %inc, %51
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body100_crit_edge

for.inc.for.body100_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body100

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond98.preheader.for.end_crit_edge
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  %fh_versions_cnt = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %fh_versions_cnt to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %51, ptr %fh_versions_cnt, align 8
  %call111 = call fastcc i32 @decode_name(ptr noundef nonnull %stream, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %for.end.cleanup.thread_crit_edge

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end114:                                        ; preds = %for.end
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id, align 4
  %call116 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %76) #17
  %call117 = call fastcc i32 @decode_name(ptr noundef nonnull %stream, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end114.cleanup.thread_crit_edge

if.end114.cleanup.thread_crit_edge:               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end120:                                        ; preds = %if.end114
  %77 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id, align 4
  %call122 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %78) #17
  br i1 %tobool125.not, label %if.else, label %if.then126

if.then126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #19
  %call127 = call ptr @prepare_kernel_cred(ptr noundef null) #17
  br label %if.end130

if.else:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #19
  %79 = call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags1.i, align 4
  %and.i606 = and i32 %84, 262144
  %or.i607 = or i32 %84, 262144
  store i32 %or.i607, ptr %flags1.i, align 4
  %call129 = call ptr @prepare_kernel_cred(ptr noundef null) #17
  %85 = call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i608 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i608 to ptr
  %task.i609 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task.i609 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task.i609, align 8
  %flags1.i610 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %flags1.i610 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags1.i610, align 4
  %and.i611 = and i32 %90, -262145
  %or.i612 = or i32 %and.i611, %and.i606
  store i32 %or.i612, ptr %flags1.i610, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else, %if.then126
  %kcred.0 = phi ptr [ %call127, %if.then126 ], [ %call129, %if.else ]
  %tobool131.not = icmp eq ptr %kcred.0, null
  br i1 %tobool131.not, label %if.end130.cleanup.thread_crit_edge, label %if.end133

if.end130.cleanup.thread_crit_edge:               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end133:                                        ; preds = %if.end130
  %fsuid = getelementptr inbounds %struct.cred, ptr %kcred.0, i32 0, i32 10
  %91 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call116, ptr %fsuid, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %kcred.0, i32 0, i32 11
  %92 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call122, ptr %fsgid, align 4
  %93 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp134 = icmp eq i32 %94, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp134, label %do.body136, label %do.body179

do.body136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #19
  %ro_cred166 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %ro_cred166 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %kcred.0, ptr %ro_cred166, align 4
  br label %if.end223

do.body179:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #19
  %rw_cred211 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %96, i32 0, i32 10
  %98 = ptrtoint ptr %rw_cred211 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %kcred.0, ptr %rw_cred211, align 8
  br label %if.end223

if.end223:                                        ; preds = %do.body179, %do.body136
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx, align 4
  %call226 = call fastcc ptr @ff_layout_add_mirror(ptr noundef %lh, ptr noundef %100)
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx, align 4
  %cmp229.not = icmp eq ptr %call226, %102
  br i1 %cmp229.not, label %if.end223.do.body374_crit_edge, label %if.then230

if.end223.do.body374_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body374

if.then230:                                       ; preds = %if.end223
  %103 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp233 = icmp eq i32 %104, 1
  br i1 %cmp233, label %if.then234, label %if.else300

if.then234:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #19
  %ro_cred235 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call226, i32 0, i32 9
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %ro_cred235, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !265
  %105 = ptrtoint ptr %kcred.0 to i32
  call void @llvm.prefetch.p0(ptr %ro_cred235, i32 1, i32 3, i32 1) #17
  %106 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %105, ptr %ro_cred235) #17, !srcloc !266
  %asmresult.i = extractvalue { i32, i32 } %106, 0
  %107 = inttoptr i32 %asmresult.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !268
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx, align 4
  %ro_cred288 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %ro_cred288 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %107, ptr %ro_cred288, align 4
  br label %if.end368

if.else300:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #19
  %rw_cred302 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %call226, i32 0, i32 10
  %call.i576 = call zeroext i1 @__kasan_check_write(ptr noundef %rw_cred302, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !269
  %111 = ptrtoint ptr %kcred.0 to i32
  call void @llvm.prefetch.p0(ptr %rw_cred302, i32 1, i32 3, i32 1) #17
  %112 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %111, ptr %rw_cred302) #17, !srcloc !266
  %asmresult.i613 = extractvalue { i32, i32 } %112, 0
  %113 = inttoptr i32 %asmresult.i613 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !270
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !271
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx, align 4
  %rw_cred356 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %115, i32 0, i32 10
  %116 = ptrtoint ptr %rw_cred356 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %113, ptr %rw_cred356, align 8
  br label %if.end368

if.end368:                                        ; preds = %if.else300, %if.then234
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx, align 4
  call fastcc void @ff_layout_free_mirror(ptr noundef %118)
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call226, ptr %arrayidx, align 4
  br label %do.body374

do.body374:                                       ; preds = %if.end368, %if.end223.do.body374_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %120 = load i32, ptr @nfs_debug, align 4
  %and375 = and i32 %120, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375)
  %tobool376.not = icmp eq i32 %and375, 0
  br i1 %tobool376.not, label %do.body374.for.inc407_crit_edge, label %do.end386, !prof !262

do.body374.for.inc407_crit_edge:                  ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc407

do.end386:                                        ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #19
  %121 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp390 = icmp eq i32 %122, 1
  %cond = select i1 %cmp390, ptr @.str.34, ptr @.str.35
  %.fca.0.insert483 = insertvalue [1 x i32] poison, i32 %call116, 0
  %call392 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert483) #17
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call122, 0
  %call394 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #17
  %call395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond, i32 noundef %call392, i32 noundef %call394) #21
  br label %for.inc407

cleanup.thread:                                   ; preds = %if.end130.cleanup.thread_crit_edge, %if.end114.cleanup.thread_crit_edge, %for.end.cleanup.thread_crit_edge, %if.end12.i.cleanup.thread_crit_edge, %do.end.i603, %for.body100.cleanup.thread_crit_edge, %kcalloc.exit.cleanup.thread_crit_edge, %if.end83.cleanup.thread_crit_edge, %if.end74.cleanup.thread_crit_edge, %if.end70.cleanup.thread_crit_edge, %if.end61.cleanup.thread_crit_edge, %ff_layout_alloc_mirror.exit.thread, %if.end51.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %rc.0.ph = phi i32 [ -12, %ff_layout_alloc_mirror.exit.thread ], [ -75, %do.end.i603 ], [ -105, %if.end12.i.cleanup.thread_crit_edge ], [ -105, %for.body100.cleanup.thread_crit_edge ], [ -5, %for.body.cleanup.thread_crit_edge ], [ -5, %if.end51.cleanup.thread_crit_edge ], [ -5, %if.end70.cleanup.thread_crit_edge ], [ -5, %if.end83.cleanup.thread_crit_edge ], [ -12, %kcalloc.exit.cleanup.thread_crit_edge ], [ %call111, %for.end.cleanup.thread_crit_edge ], [ %call117, %if.end114.cleanup.thread_crit_edge ], [ -12, %if.end130.cleanup.thread_crit_edge ], [ -105, %if.end61.cleanup.thread_crit_edge ], [ -105, %if.end74.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #17
  br label %out_err_free

for.inc407:                                       ; preds = %do.end386, %do.body374.for.inc407_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #17
  %inc408 = add nuw i32 %i.0639, 1
  %123 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mirror_array_cnt44, align 4
  %cmp47 = icmp ult i32 %inc408, %124
  br i1 %cmp47, label %for.inc407.for.body_crit_edge, label %for.end409

for.inc407.for.body_crit_edge:                    ; preds = %for.inc407
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end409:                                       ; preds = %for.inc407
  %call410 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #17
  %tobool411.not = icmp eq ptr %call410, null
  br i1 %tobool411.not, label %for.end409.out_sort_mirrorsthread-pre-split_crit_edge, label %if.end413

for.end409.out_sort_mirrorsthread-pre-split_crit_edge: ; preds = %for.end409
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_sort_mirrorsthread-pre-split

if.end413:                                        ; preds = %for.end409
  %125 = ptrtoint ptr %call410 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %call410, align 4
  %flags = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 2
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %flags, align 8
  %call415 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #17
  %tobool416.not = icmp eq ptr %call415, null
  br i1 %tobool416.not, label %if.end413.out_sort_mirrorsthread-pre-split_crit_edge, label %for.cond419.preheader

if.end413.out_sort_mirrorsthread-pre-split_crit_edge: ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_sort_mirrorsthread-pre-split

for.cond419.preheader:                            ; preds = %if.end413
  %128 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mirror_array_cnt44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp421640.not = icmp eq i32 %129, 0
  br i1 %cmp421640.not, label %for.cond419.preheader.for.body.i.preheader_crit_edge, label %for.cond419.preheader.for.body422_crit_edge

for.cond419.preheader.for.body422_crit_edge:      ; preds = %for.cond419.preheader
  br label %for.body422

for.cond419.preheader.for.body.i.preheader_crit_edge: ; preds = %for.cond419.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.body422:                                      ; preds = %for.body422.for.body422_crit_edge, %for.cond419.preheader.for.body422_crit_edge
  %i.1641 = phi i32 [ %inc427, %for.body422.for.body422_crit_edge ], [ 0, %for.cond419.preheader.for.body422_crit_edge ]
  %130 = ptrtoint ptr %call415 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %call415, align 4
  %arrayidx425 = getelementptr %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 4, i32 %i.1641
  %132 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx425, align 4
  %report_interval = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %133, i32 0, i32 17
  %134 = ptrtoint ptr %report_interval to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %131, ptr %report_interval, align 8
  %inc427 = add nuw i32 %i.1641, 1
  %135 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mirror_array_cnt44, align 4
  %cmp421 = icmp ult i32 %inc427, %136
  br i1 %cmp421, label %for.body422.for.body422_crit_edge, label %for.body422.out_sort_mirrors_crit_edge

for.body422.out_sort_mirrors_crit_edge:           ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_sort_mirrors

for.body422.for.body422_crit_edge:                ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body422

out_sort_mirrorsthread-pre-split:                 ; preds = %if.end413.out_sort_mirrorsthread-pre-split_crit_edge, %for.end409.out_sort_mirrorsthread-pre-split_crit_edge
  %137 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr = load i32, ptr %mirror_array_cnt44, align 4
  br label %out_sort_mirrors

out_sort_mirrors:                                 ; preds = %out_sort_mirrorsthread-pre-split, %for.body422.out_sort_mirrors_crit_edge
  %138 = phi i32 [ %.pr, %out_sort_mirrorsthread-pre-split ], [ %136, %for.body422.out_sort_mirrors_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp39.not.i = icmp eq i32 %138, 1
  br i1 %cmp39.not.i, label %out_sort_mirrors.ff_layout_sort_mirrors.exit_crit_edge, label %out_sort_mirrors.for.body.i.preheader_crit_edge

out_sort_mirrors.for.body.i.preheader_crit_edge:  ; preds = %out_sort_mirrors
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

out_sort_mirrors.ff_layout_sort_mirrors.exit_crit_edge: ; preds = %out_sort_mirrors
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_sort_mirrors.exit

for.body.i.preheader:                             ; preds = %out_sort_mirrors.for.body.i.preheader_crit_edge, %for.cond419.preheader.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %139 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mirror_array_cnt44, align 4
  %sub.i = add i32 %140, -1
  %cmp.i614 = icmp ult i32 %add.i, %sub.i
  br i1 %cmp.i614, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.ff_layout_sort_mirrors.exit_crit_edge

for.cond.loopexit.i.ff_layout_sort_mirrors.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_sort_mirrors.exit

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.040.i = phi i32 [ %add.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add nuw i32 %i.040.i, 1
  %141 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mirror_array_cnt44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %142)
  %cmp336.i = icmp ult i32 %add.i, %142
  br i1 %cmp336.i, label %for.body4.lr.ph.i, label %for.body.i.for.cond.loopexit.i_crit_edge

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit.i

for.body4.lr.ph.i:                                ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 4, i32 %i.040.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.037.i = phi i32 [ %add.i, %for.body4.lr.ph.i ], [ %inc.i, %for.inc.i.for.body4.i_crit_edge ]
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i, align 4
  %efficiency.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %efficiency.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %efficiency.i, align 8
  %arrayidx6.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %call9.i.i, i32 0, i32 4, i32 %j.037.i
  %147 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx6.i, align 4
  %efficiency7.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %efficiency7.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %efficiency7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %150)
  %cmp8.i = icmp ult i32 %146, %150
  br i1 %cmp8.i, label %do.body.i615, label %for.body4.i.for.inc.i_crit_edge

for.body4.i.for.inc.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

do.body.i615:                                     ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %arrayidx.i, align 4
  %152 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %144, ptr %arrayidx6.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i615, %for.body4.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.037.i, 1
  %153 = ptrtoint ptr %mirror_array_cnt44 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mirror_array_cnt44, align 4
  %cmp3.i = icmp ult i32 %inc.i, %154
  br i1 %cmp3.i, label %for.inc.i.for.body4.i_crit_edge, label %for.inc.i.for.cond.loopexit.i_crit_edge

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit.i

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4.i

ff_layout_sort_mirrors.exit:                      ; preds = %for.cond.loopexit.i.ff_layout_sort_mirrors.exit_crit_edge, %out_sort_mirrors.ff_layout_sort_mirrors.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %155 = load i32, ptr @nfs_debug, align 4
  %and430 = and i32 %155, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430)
  %tobool431.not = icmp eq i32 %and430, 0
  br i1 %tobool431.not, label %ff_layout_sort_mirrors.exit.out_free_page_crit_edge, label %do.end441, !prof !262

ff_layout_sort_mirrors.exit.out_free_page_crit_edge: ; preds = %ff_layout_sort_mirrors.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_page

do.end441:                                        ; preds = %ff_layout_sort_mirrors.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27) #21
  br label %out_free_page

out_free_page:                                    ; preds = %do.end460, %out_err_free.out_free_page_crit_edge, %do.end441, %ff_layout_sort_mirrors.exit.out_free_page_crit_edge
  %ret.0 = phi ptr [ %156, %do.end460 ], [ %156, %out_err_free.out_free_page_crit_edge ], [ %call9.i.i, %do.end441 ], [ %call9.i.i, %ff_layout_sort_mirrors.exit.out_free_page_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #17
  br label %cleanup466

out_err_free:                                     ; preds = %cleanup.thread, %if.end38.out_err_free_crit_edge, %do.end35.out_err_free_crit_edge, %if.end10.out_err_free_crit_edge
  %rc.1 = phi i32 [ -5, %do.end35.out_err_free_crit_edge ], [ -12, %if.end38.out_err_free_crit_edge ], [ -5, %if.end10.out_err_free_crit_edge ], [ %rc.0.ph, %cleanup.thread ]
  %fls.0 = phi ptr [ null, %do.end35.out_err_free_crit_edge ], [ null, %if.end38.out_err_free_crit_edge ], [ null, %if.end10.out_err_free_crit_edge ], [ %call9.i.i, %cleanup.thread ]
  call fastcc void @_ff_layout_free_lseg(ptr noundef %fls.0)
  %156 = inttoptr i32 %rc.1 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %157 = load i32, ptr @nfs_debug, align 4
  %and449 = and i32 %157, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and449)
  %tobool450.not = icmp eq i32 %and449, 0
  br i1 %tobool450.not, label %out_err_free.out_free_page_crit_edge, label %do.end460, !prof !262

out_err_free.out_free_page_crit_edge:             ; preds = %out_err_free
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_page

do.end460:                                        ; preds = %out_err_free
  call void @__sanitizer_cov_trace_pc() #19
  %call462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, i32 noundef %rc.1) #21
  br label %out_free_page

cleanup466:                                       ; preds = %out_free_page, %do.end5.cleanup466_crit_edge
  %retval.0 = phi ptr [ %ret.0, %out_free_page ], [ inttoptr (i32 -12 to ptr), %do.end5.cleanup466_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stream) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_free_lseg(ptr noundef %lseg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !262

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.53) #21
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3
  %1 = ptrtoint ptr %pls_range to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pls_range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then7, label %do.end6.if.end10_crit_edge

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then7:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #19
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %3 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plh_inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #17
  %commit_info = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %4, i32 0, i32 1
  tail call void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef %commit_info, ptr noundef %lseg) #17
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end6.if.end10_crit_edge
  tail call fastcc void @_ff_layout_free_lseg(ptr noundef %lseg)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_add_lseg(ptr noundef %lo, ptr noundef %lseg, ptr noundef %free_me) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pnfs_generic_layout_insert_lseg(ptr noundef %lo, ptr noundef %lseg, ptr noundef nonnull @ff_lseg_range_is_after, ptr noundef nonnull @ff_lseg_merge, ptr noundef %free_me) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ff_layout_get_ds_info(ptr nocapture noundef readonly %inode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr i8, ptr %inode, i32 -32
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 8
  %cmp = icmp eq ptr %1, null
  %commit_info = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %1, i32 0, i32 1
  %spec.select = select i1 %cmp, ptr null, ptr %commit_info
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_nfs_generic_sync(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_read_pagelist(ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %0 = ptrtoint ptr %lseg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg1, align 4
  %offset2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset2, align 8
  %pgio_mirror_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %4 = ptrtoint ptr %pgio_mirror_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgio_mirror_idx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !262

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdr, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %pgbase = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 7
  %11 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgbase, align 4
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %10, i32 noundef %12, i32 noundef %14, i64 noundef %3) #21
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp.i = icmp ugt i32 %16, %5
  br i1 %cmp.i, label %if.then.i, label %do.end9.FF_LAYOUT_COMP.exit_crit_edge

do.end9.FF_LAYOUT_COMP.exit_crit_edge:            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %5
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i, %do.end9.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then.i ], [ null, %do.end9.FF_LAYOUT_COMP.exit_crit_edge ]
  %call11 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %1, ptr noundef %retval.0.i, i1 noundef zeroext false) #17
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %FF_LAYOUT_COMP.exit.out_failed_crit_edge, label %if.end14

FF_LAYOUT_COMP.exit.out_failed_crit_edge:         ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_failed

if.end14:                                         ; preds = %FF_LAYOUT_COMP.exit
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call11, i32 0, i32 3
  %19 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds_clp, align 4
  %21 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdr, align 8
  %call16 = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %retval.0.i, ptr noundef %20, ptr noundef %22) #17
  %cmp.i118 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.end14.out_failed_crit_edge, label %if.end19

if.end14.out_failed_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_failed

if.end19:                                         ; preds = %if.end14
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3
  %cred = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 1
  %23 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred, align 4
  %call20 = tail call ptr @ff_layout_get_ds_cred(ptr noundef %retval.0.i, ptr noundef %pls_range, ptr noundef %24) #17
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.out_failed_crit_edge, label %if.end23

if.end19.out_failed_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_failed

if.end23:                                         ; preds = %if.end19
  %mirror_ds.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 5
  %25 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mirror_ds.i, align 4
  %ds_versions.i = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ds_versions.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ds_versions.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %31 = load i32, ptr @nfs_debug, align 4
  %and26 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.do.end44_crit_edge, label %do.end37, !prof !262

if.end23.do.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end44

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %ds_remotestr = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call11, i32 0, i32 1
  %32 = ptrtoint ptr %ds_remotestr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds_remotestr, align 4
  %34 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %35, i32 noundef 4) #17
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, ptr noundef %33, i32 noundef %37, i32 noundef %30) #21
  br label %do.end44

do.end44:                                         ; preds = %do.end37, %if.end23.do.end44_crit_edge
  %pgio_done_cb = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 23
  %38 = ptrtoint ptr %pgio_done_cb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ff_layout_read_done_cb, ptr %pgio_done_cb, align 4
  %39 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #17
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #17, !srcloc !272
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end44.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

do.end44.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end44
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %42 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !262

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end44.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end44.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %.sink.i.i.i) #17
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %43 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ds_clp, align 4
  %ds_clp48 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %45 = ptrtoint ptr %ds_clp48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %ds_clp48, align 8
  %call49 = tail call ptr @nfs4_ff_layout_select_ds_fh(ptr noundef %retval.0.i) #17
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %refcount_inc.exit.do.body.i_crit_edge, label %if.then51

refcount_inc.exit.do.body.i_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.then51:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %fh53 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 1
  %46 = ptrtoint ptr %fh53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call49, ptr %fh53, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then51, %refcount_inc.exit.do.body.i_crit_edge
  %stateid = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 4
  tail call void @nfs4_ff_layout_select_ds_stateid(ptr noundef %retval.0.i, ptr noundef %stateid) #17
  %47 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %3, ptr %offset2, align 8
  %mds_offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 24
  %48 = ptrtoint ptr %mds_offset to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %3, ptr %mds_offset, align 8
  %49 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ds_clp, align 4
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rpc_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp = icmp eq i32 %30, 3
  %cond = select i1 %cmp, ptr @ff_layout_read_call_ops_v3, ptr @ff_layout_read_call_ops_v4
  %call59 = tail call i32 @nfs_initiate_pgio(ptr noundef %call16, ptr noundef %hdr, ptr noundef nonnull %call20, ptr noundef %52, ptr noundef nonnull %cond, i32 noundef 0, i32 noundef 1024) #17
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call20) #17
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !264

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %call20, ptr noundef nonnull @.str.25, i32 noundef 286) #17
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call20, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr nonnull %call20, i32 1, i32 3, i32 1) #17
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call20, ptr nonnull %call20, i32 1, ptr nonnull elementtype(i32) %call20) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %call20) #17
  br label %cleanup

out_failed:                                       ; preds = %if.end19.out_failed_crit_edge, %if.end14.out_failed_crit_edge, %FF_LAYOUT_COMP.exit.out_failed_crit_edge
  %call60 = tail call zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef %1) #17
  br i1 %call60, label %out_failed.cleanup_crit_edge, label %if.end62

out_failed.cleanup_crit_edge:                     ; preds = %out_failed
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end62:                                         ; preds = %out_failed
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hdr, align 8
  %56 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %offset2, align 8
  %count67 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %58 = ptrtoint ptr %count67 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count67, align 8
  %conv = zext i32 %59 to i64
  %layout = getelementptr i8, ptr %55, i32 -32
  %60 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %layout, align 8
  tail call fastcc void @trace_pnfs_mds_fallback_read_pagelist(ptr noundef %55, i64 noundef %57, i64 noundef %conv, ptr noundef %61, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %out_failed.cleanup_crit_edge, %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end62 ], [ 2, %out_failed.cleanup_crit_edge ], [ 0, %__validate_creds.exit.i.cleanup_crit_edge ], [ 0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_write_pagelist(ptr noundef %hdr, i32 noundef %sync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %0 = ptrtoint ptr %lseg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg1, align 4
  %offset2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset2, align 8
  %pgio_mirror_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %4 = ptrtoint ptr %pgio_mirror_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgio_mirror_idx, align 8
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ugt i32 %7, %5
  br i1 %cmp.i, label %if.then.i, label %entry.FF_LAYOUT_COMP.exit_crit_edge

entry.FF_LAYOUT_COMP.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i, %entry.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ null, %entry.FF_LAYOUT_COMP.exit_crit_edge ]
  %call3 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %1, ptr noundef %retval.0.i, i1 noundef zeroext true) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %FF_LAYOUT_COMP.exit.out_failed_crit_edge, label %if.end

FF_LAYOUT_COMP.exit.out_failed_crit_edge:         ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_failed

if.end:                                           ; preds = %FF_LAYOUT_COMP.exit
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds_clp, align 4
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdr, align 8
  %call4 = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %retval.0.i, ptr noundef %11, ptr noundef %13) #17
  %cmp.i99 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.end.out_failed_crit_edge, label %if.end7

if.end.out_failed_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_failed

if.end7:                                          ; preds = %if.end
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3
  %cred = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 1
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 4
  %call8 = tail call ptr @ff_layout_get_ds_cred(ptr noundef %retval.0.i, ptr noundef %pls_range, ptr noundef %15) #17
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.out_failed_crit_edge, label %if.end11

if.end7.out_failed_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_failed

if.end11:                                         ; preds = %if.end7
  %mirror_ds.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 5
  %16 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mirror_ds.i, align 4
  %ds_versions.i = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ds_versions.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds_versions.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %22 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end11.do.end25_crit_edge, label %do.end, !prof !262

if.end11.do.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdr, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 8
  %ds_remotestr = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call3, i32 0, i32 1
  %29 = ptrtoint ptr %ds_remotestr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds_remotestr, align 4
  %31 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %32, i32 noundef 4) #17
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %26, i32 noundef %sync, i32 noundef %28, i64 noundef %3, ptr noundef %30, i32 noundef %34, i32 noundef %21) #21
  br label %do.end25

do.end25:                                         ; preds = %do.end, %if.end11.do.end25_crit_edge
  %pgio_done_cb = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 23
  %35 = ptrtoint ptr %pgio_done_cb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ff_layout_write_done_cb, ptr %pgio_done_cb, align 4
  %36 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #17, !srcloc !272
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end25.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

do.end25.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end25
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !262

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end25.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end25.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %.sink.i.i.i) #17
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %40 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds_clp, align 4
  %ds_clp29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %42 = ptrtoint ptr %ds_clp29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %ds_clp29, align 8
  %ds_commit_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 27
  %43 = ptrtoint ptr %ds_commit_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %5, ptr %ds_commit_idx, align 4
  %call30 = tail call ptr @nfs4_ff_layout_select_ds_fh(ptr noundef %retval.0.i) #17
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %refcount_inc.exit.do.body.i_crit_edge, label %if.then32

refcount_inc.exit.do.body.i_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.then32:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %fh34 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 1
  %44 = ptrtoint ptr %fh34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call30, ptr %fh34, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then32, %refcount_inc.exit.do.body.i_crit_edge
  %stateid = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 4
  tail call void @nfs4_ff_layout_select_ds_stateid(ptr noundef %retval.0.i, ptr noundef %stateid) #17
  %45 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %3, ptr %offset2, align 8
  %46 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ds_clp, align 4
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rpc_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp = icmp eq i32 %21, 3
  %cond = select i1 %cmp, ptr @ff_layout_write_call_ops_v3, ptr @ff_layout_write_call_ops_v4
  %call40 = tail call i32 @nfs_initiate_pgio(ptr noundef %call4, ptr noundef %hdr, ptr noundef nonnull %call8, ptr noundef %49, ptr noundef nonnull %cond, i32 noundef %sync, i32 noundef 1024) #17
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call8) #17
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !264

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %call8, ptr noundef nonnull @.str.25, i32 noundef 286) #17
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr nonnull %call8, i32 1, i32 3, i32 1) #17
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8, ptr nonnull %call8, i32 1, ptr nonnull elementtype(i32) %call8) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %call8) #17
  br label %cleanup

out_failed:                                       ; preds = %if.end7.out_failed_crit_edge, %if.end.out_failed_crit_edge, %FF_LAYOUT_COMP.exit.out_failed_crit_edge
  %call41 = tail call zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef %1) #17
  br i1 %call41, label %out_failed.cleanup_crit_edge, label %if.end43

out_failed.cleanup_crit_edge:                     ; preds = %out_failed
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end43:                                         ; preds = %out_failed
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdr, align 8
  %53 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %offset2, align 8
  %count48 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %55 = ptrtoint ptr %count48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count48, align 8
  %conv = zext i32 %56 to i64
  %layout = getelementptr i8, ptr %52, i32 -32
  %57 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %layout, align 8
  tail call fastcc void @trace_pnfs_mds_fallback_write_pagelist(ptr noundef %52, i64 noundef %54, i64 noundef %conv, ptr noundef %58, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %out_failed.cleanup_crit_edge, %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end43 ], [ 2, %out_failed.cleanup_crit_edge ], [ 0, %__validate_creds.exit.i.cleanup_crit_edge ], [ 0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_free_deviceid_node(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs4_ff_layout_free_deviceid(ptr noundef %d) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ff_layout_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfs4_ff_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_flags) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_prepare_layoutreturn(ptr noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 344) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %pages = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call38.i.i.i, ptr %pages, align 8
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not, label %out_nomem_free, label %if.end7

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 8
  %range = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %args, i32 0, i32 3
  %call10 = tail call i32 @ff_layout_fetch_ds_ioerr(ptr noundef %7, ptr noundef %range, ptr noundef nonnull %call7.i, i32 noundef 20) #17
  %num_errors = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_errors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call10, ptr %num_errors, align 8
  %inode = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %args, i32 0, i32 2
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #17
  %devinfo = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %call7.i, i32 0, i32 1
  %call12 = tail call fastcc i32 @ff_layout_mirror_prepare_stats(ptr noundef %1, ptr noundef %devinfo)
  %num_dev = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %num_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call12, ptr %num_dev, align 4
  %12 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inode, align 4
  %i_lock14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock14) #17
  %ld_private = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %args, i32 0, i32 6
  %14 = ptrtoint ptr %ld_private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ld_private, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @layoutreturn_ops, ptr %15, align 4
  %17 = load ptr, ptr %ld_private, align 8
  %data = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %data, align 4
  br label %cleanup

out_nomem_free:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out_nomem_free, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %out_nomem_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_prepare_layoutstats(ptr nocapture noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3072, i32 noundef 320) #20
  %devinfo = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %args, i32 0, i32 5
  %1 = ptrtoint ptr %devinfo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %devinfo, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %inode = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #17
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode, align 4
  %layout = getelementptr i8, ptr %5, i32 -32
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 8
  %8 = ptrtoint ptr %devinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devinfo, align 4
  %call6 = tail call fastcc i32 @ff_layout_mirror_prepare_stats(ptr noundef %7, ptr noundef %9)
  %num_dev = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %args, i32 0, i32 4
  %10 = ptrtoint ptr %num_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call6, ptr %num_dev, align 4
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode, align 4
  %i_lock8 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock8) #17
  %13 = ptrtoint ptr %num_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %devinfo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %devinfo, align 4
  tail call void @kfree(ptr noundef %16) #17
  %17 = ptrtoint ptr %devinfo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %devinfo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then11 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_setup_ds_info(ptr noundef %fl_cinfo, ptr noundef %lseg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plh_inode, align 4
  %mirror_array_cnt = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %4 = ptrtoint ptr %mirror_array_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mirror_array_cnt, align 4
  %call1 = tail call ptr @pnfs_alloc_commit_array(i32 noundef %5, i32 noundef 3072) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %entry
  %i_lock = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #17
  %call2 = tail call ptr @pnfs_add_commit_array(ptr noundef %fl_cinfo, ptr noundef nonnull %call1, ptr noundef %lseg) #17
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #17
  %cmp.not = icmp eq ptr %call2, %call1
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pnfs_free_commit_array(ptr noundef nonnull %call1) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_release_ds_info(ptr noundef %fl_cinfo, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #17
  tail call void @pnfs_generic_ds_cinfo_destroy(ptr noundef %fl_cinfo) #17
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_commit_pagelist(ptr noundef %inode, ptr noundef %mds_pages, i32 noundef %how, ptr noundef %cinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pnfs_generic_commit_pagelist(ptr noundef %inode, ptr noundef %mds_pages, i32 noundef %how, ptr noundef %cinfo, ptr noundef nonnull @ff_layout_initiate_commit) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_layout_mark_request_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_clear_request_commit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_scan_commit_lists(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_recover_commit_reqs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_alloc_commit_array(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_add_commit_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_commit_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_commit_pagelist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_initiate_commit(ptr noundef %data, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg1 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %lseg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_err_crit_edge, label %lor.lhs.false

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

lor.lhs.false:                                    ; preds = %entry
  %pls_flags.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pls_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pls_flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %pls_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pls_flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false2.out_err_crit_edge, label %lor.lhs.false2.if.end_crit_edge

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

lor.lhs.false2.out_err_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end:                                           ; preds = %lor.lhs.false2.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ds_commit_index = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 13
  %7 = ptrtoint ptr %ds_commit_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ds_commit_index, align 4
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.i86 = icmp ugt i32 %10, %8
  br i1 %cmp.i86, label %if.then.i, label %if.end.FF_LAYOUT_COMP.exit_crit_edge

if.end.FF_LAYOUT_COMP.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i, %if.end.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.then.i ], [ null, %if.end.FF_LAYOUT_COMP.exit_crit_edge ]
  %call7 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef nonnull %1, ptr noundef %retval.0.i, i1 noundef zeroext true) #17
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %FF_LAYOUT_COMP.exit.out_err_crit_edge, label %if.end10

FF_LAYOUT_COMP.exit.out_err_crit_edge:            ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end10:                                         ; preds = %FF_LAYOUT_COMP.exit
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call7, i32 0, i32 3
  %13 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds_clp, align 4
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inode, align 8
  %call11 = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %retval.0.i, ptr noundef %14, ptr noundef %16) #17
  %cmp.i87 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.end10.out_err_crit_edge, label %if.end14

if.end10.out_err_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end14:                                         ; preds = %if.end10
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3
  %cred = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 4
  %call15 = tail call ptr @ff_layout_get_ds_cred(ptr noundef %retval.0.i, ptr noundef %pls_range, ptr noundef %18) #17
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.out_err_crit_edge, label %if.end18

if.end14.out_err_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.end18:                                         ; preds = %if.end14
  %mirror_ds.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 5
  %19 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mirror_ds.i, align 4
  %ds_versions.i = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ds_versions.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds_versions.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end18.do.end31_crit_edge, label %do.end, !prof !262

if.end18.do.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino, align 8
  %30 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %31, i32 noundef 4) #17
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %29, i32 noundef %how, i32 noundef %33, i32 noundef %24) #21
  br label %do.end31

do.end31:                                         ; preds = %do.end, %if.end18.do.end31_crit_edge
  %commit_done_cb = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 17
  %34 = ptrtoint ptr %commit_done_cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ff_layout_commit_done_cb, ptr %commit_done_cb, align 8
  %35 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call15, ptr %cred, align 4
  %36 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #17, !srcloc !272
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end31.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

do.end31.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end31
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !262

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end31.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end31.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %.sink.i.i.i) #17
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %40 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds_clp, align 4
  %ds_clp36 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 12
  %42 = ptrtoint ptr %ds_clp36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %ds_clp36, align 8
  %43 = ptrtoint ptr %ds_commit_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ds_commit_index, align 4
  %arrayidx.i88 = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %44
  %45 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i88, align 4
  %fh_versions.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %fh_versions.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fh_versions.i, align 4
  %tobool39.not = icmp eq ptr %48, null
  br i1 %tobool39.not, label %refcount_inc.exit.do.body.i_crit_edge, label %if.then40

refcount_inc.exit.do.body.i_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.then40:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %fh41 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %fh41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %fh41, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then40, %refcount_inc.exit.do.body.i_crit_edge
  %50 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ds_clp, align 4
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rpc_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp = icmp eq i32 %24, 3
  %cond = select i1 %cmp, ptr @ff_layout_commit_call_ops_v3, ptr @ff_layout_commit_call_ops_v4
  %call44 = tail call i32 @nfs_initiate_commit(ptr noundef %call11, ptr noundef %data, ptr noundef %53, ptr noundef nonnull %cond, i32 noundef %how, i32 noundef 1024) #17
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call15) #17
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !264

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %call15, ptr noundef nonnull @.str.25, i32 noundef 286) #17
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call15, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr nonnull %call15, i32 1, i32 3, i32 1) #17
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call15, ptr nonnull %call15, i32 1, ptr nonnull elementtype(i32) %call15) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %call15) #17
  br label %cleanup

out_err:                                          ; preds = %if.end14.out_err_crit_edge, %if.end10.out_err_crit_edge, %FF_LAYOUT_COMP.exit.out_err_crit_edge, %lor.lhs.false2.out_err_crit_edge, %entry.out_err_crit_edge
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %data) #17
  tail call void @pnfs_generic_commit_release(ptr noundef %data) #17
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %out_err ], [ %call44, %__validate_creds.exit.i.cleanup_crit_edge ], [ %call44, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_layout_prepare_ds(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_find_or_create_ds_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ff_layout_get_ds_cred(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_commit_done_cb(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lseg = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %2 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lseg, align 4
  %ds_commit_index = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %ds_commit_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds_commit_index, align 4
  %offset = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %conv = zext i32 %9 to i64
  %op_status = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 9, i32 1
  tail call fastcc void @ff_layout_io_track_ds_error(ptr noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %conv, ptr noundef %op_status, i32 noundef 5, i32 noundef %1)
  tail call fastcc void @trace_ff_layout_commit_error(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ds_clp = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 12
  %10 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds_clp, align 8
  %lseg3 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %12 = ptrtoint ptr %lseg3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lseg3, align 4
  %ds_commit_index4 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 13
  %14 = ptrtoint ptr %ds_commit_index4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ds_commit_index4, align 4
  %call = tail call fastcc i32 @ff_layout_async_handle_error(ptr noundef %task, ptr noundef %11, ptr noundef %13, i32 noundef %15)
  tail call fastcc void @trace_nfs4_pnfs_commit_ds(ptr noundef %data, i32 noundef %call)
  %16 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.epilog [
    i32 -12002, label %sw.bb
    i32 -12001, label %sw.bb5
    i32 -11, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %data) #17
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %data) #17
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #17
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inode, align 8
  %19 = ptrtoint ptr %lseg3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lseg3, align 4
  %flags.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %lwb = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 14
  %23 = ptrtoint ptr %lwb to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %lwb, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %18, ptr noundef %20, i64 noundef %24) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i, !prof !262

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  %layout.i = getelementptr i8, ptr %18, i32 -32
  %28 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %layout.i, align 8
  %plh_lwb.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %plh_lwb.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %plh_lwb.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %27, i64 noundef %31) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb6, %sw.bb5, %sw.bb
  %retval.0 = phi i32 [ -11, %sw.bb6 ], [ -11, %sw.bb5 ], [ -11, %sw.bb ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_prepare_to_resend_writes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_commit_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ff_layout_io_track_ds_error(ptr noundef %lseg, i32 noundef %idx, i64 noundef %offset, i64 noundef %length, ptr nocapture noundef %op_status, i32 noundef %opnum, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %error, label %if.then.cleanup_crit_edge [
    i32 -110, label %if.then.if.end.sink.split_crit_edge
    i32 -96, label %if.then.if.end.sink.split_crit_edge35
    i32 -93, label %if.then.if.end.sink.split_crit_edge36
    i32 -95, label %if.then.if.end.sink.split_crit_edge37
    i32 -111, label %if.then.if.end.sink.split_crit_edge38
    i32 -104, label %if.then.if.end.sink.split_crit_edge39
    i32 -112, label %if.then.if.end.sink.split_crit_edge40
    i32 -113, label %if.then.if.end.sink.split_crit_edge41
    i32 -101, label %if.then.if.end.sink.split_crit_edge42
    i32 -98, label %if.then.if.end.sink.split_crit_edge43
    i32 -105, label %if.then.if.end.sink.split_crit_edge44
    i32 -32, label %if.then.if.end.sink.split_crit_edge45
    i32 -1, label %if.then.if.end.sink.split_crit_edge46
    i32 -13, label %sw.bb1
  ]

if.then.if.end.sink.split_crit_edge46:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge45:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge44:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge43:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge42:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge41:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge40:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge39:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge38:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge37:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge36:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge35:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb1, %if.then.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge35, %if.then.if.end.sink.split_crit_edge36, %if.then.if.end.sink.split_crit_edge37, %if.then.if.end.sink.split_crit_edge38, %if.then.if.end.sink.split_crit_edge39, %if.then.if.end.sink.split_crit_edge40, %if.then.if.end.sink.split_crit_edge41, %if.then.if.end.sink.split_crit_edge42, %if.then.if.end.sink.split_crit_edge43, %if.then.if.end.sink.split_crit_edge44, %if.then.if.end.sink.split_crit_edge45, %if.then.if.end.sink.split_crit_edge46
  %.sink = phi i32 [ 13, %sw.bb1 ], [ 6, %if.then.if.end.sink.split_crit_edge ], [ 6, %if.then.if.end.sink.split_crit_edge35 ], [ 6, %if.then.if.end.sink.split_crit_edge36 ], [ 6, %if.then.if.end.sink.split_crit_edge37 ], [ 6, %if.then.if.end.sink.split_crit_edge38 ], [ 6, %if.then.if.end.sink.split_crit_edge39 ], [ 6, %if.then.if.end.sink.split_crit_edge40 ], [ 6, %if.then.if.end.sink.split_crit_edge41 ], [ 6, %if.then.if.end.sink.split_crit_edge42 ], [ 6, %if.then.if.end.sink.split_crit_edge43 ], [ 6, %if.then.if.end.sink.split_crit_edge44 ], [ 6, %if.then.if.end.sink.split_crit_edge45 ], [ 6, %if.then.if.end.sink.split_crit_edge46 ]
  %3 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %op_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %.sink, %if.end.sink.split ]
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %4 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %idx)
  %cmp.i = icmp ugt i32 %5, %idx
  br i1 %cmp.i, label %if.then.i, label %if.end.FF_LAYOUT_COMP.exit_crit_edge

if.end.FF_LAYOUT_COMP.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i, %if.end.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.then.i ], [ null, %if.end.FF_LAYOUT_COMP.exit_crit_edge ]
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %8 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pls_layout, align 4
  %call3 = tail call i32 @ff_layout_track_ds_error(ptr noundef %9, ptr noundef %retval.0.i, i64 noundef %offset, i64 noundef %length, i32 noundef %status.0, i32 noundef %opnum, i32 noundef 3072) #17
  %10 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %status.0, label %FF_LAYOUT_COMP.exit.sw.default9_crit_edge [
    i32 10008, label %FF_LAYOUT_COMP.exit.do.body_crit_edge
    i32 10013, label %FF_LAYOUT_COMP.exit.do.body_crit_edge47
    i32 6, label %sw.bb5
  ]

FF_LAYOUT_COMP.exit.do.body_crit_edge47:          ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

FF_LAYOUT_COMP.exit.do.body_crit_edge:            ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

FF_LAYOUT_COMP.exit.sw.default9_crit_edge:        ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.default9

sw.bb5:                                           ; preds = %FF_LAYOUT_COMP.exit
  %11 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %idx)
  %cmp.i.i.i = icmp ugt i32 %12, %idx
  br i1 %cmp.i.i.i, label %FF_LAYOUT_COMP.exit.i.i, label %sw.bb5.ff_layout_mark_ds_unreachable.exit_crit_edge

sw.bb5.ff_layout_mark_ds_unreachable.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_mark_ds_unreachable.exit

FF_LAYOUT_COMP.exit.i.i:                          ; preds = %sw.bb5
  %arrayidx.i.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %14, null
  br i1 %cmp.not.i.i, label %FF_LAYOUT_COMP.exit.i.i.ff_layout_mark_ds_unreachable.exit_crit_edge, label %if.then.i.i

FF_LAYOUT_COMP.exit.i.i.ff_layout_mark_ds_unreachable.exit_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_mark_ds_unreachable.exit

if.then.i.i:                                      ; preds = %FF_LAYOUT_COMP.exit.i.i
  %mirror_ds1.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %mirror_ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mirror_ds1.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  %cmp.i8.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i8.i.i
  br i1 %spec.select.i.i.i, label %if.then.i.i.ff_layout_mark_ds_unreachable.exit_crit_edge, label %if.then.i34

if.then.i.i.ff_layout_mark_ds_unreachable.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_mark_ds_unreachable.exit

if.then.i34:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @nfs4_mark_deviceid_unavailable(ptr noundef nonnull %16) #17
  br label %ff_layout_mark_ds_unreachable.exit

ff_layout_mark_ds_unreachable.exit:               ; preds = %if.then.i34, %if.then.i.i.ff_layout_mark_ds_unreachable.exit_crit_edge, %FF_LAYOUT_COMP.exit.i.i.ff_layout_mark_ds_unreachable.exit_crit_edge, %sw.bb5.ff_layout_mark_ds_unreachable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %opnum)
  %cmp6 = icmp eq i32 %opnum, 25
  br i1 %cmp6, label %ff_layout_mark_ds_unreachable.exit.do.body_crit_edge, label %ff_layout_mark_ds_unreachable.exit.sw.default9_crit_edge

ff_layout_mark_ds_unreachable.exit.sw.default9_crit_edge: ; preds = %ff_layout_mark_ds_unreachable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.default9

ff_layout_mark_ds_unreachable.exit.do.body_crit_edge: ; preds = %ff_layout_mark_ds_unreachable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

sw.default9:                                      ; preds = %ff_layout_mark_ds_unreachable.exit.sw.default9_crit_edge, %FF_LAYOUT_COMP.exit.sw.default9_crit_edge
  %17 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plh_inode, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %20, ptr noundef %lseg) #17
  br label %do.body

do.body:                                          ; preds = %sw.default9, %ff_layout_mark_ds_unreachable.exit.do.body_crit_edge, %FF_LAYOUT_COMP.exit.do.body_crit_edge, %FF_LAYOUT_COMP.exit.do.body_crit_edge47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !262

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call3, i32 noundef %opnum, i32 noundef %status.0) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ff_layout_commit_error(ptr noundef %data) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_commit_error, i32 0, i32 1), ptr blockaddress(@trace_ff_layout_commit_error, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !277
  %call42 = tail call i32 @__traceiter_ff_layout_commit_error(ptr noundef null, ptr noundef %data) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !278
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_commit_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_commit_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ff_layout_commit_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_ff_layout_commit_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 2098, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
define internal fastcc i32 @ff_layout_async_handle_error(ptr noundef %task, ptr nocapture noundef readonly %clp, ptr noundef %lseg, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_nfs_mod = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 14
  %0 = ptrtoint ptr %cl_nfs_mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_nfs_mod, align 4
  %rpc_vers = getelementptr inbounds %struct.nfs_subversion, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rpc_vers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpc_vers, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %6 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mirror_array_cnt.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %8 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %idx)
  %cmp.i.i.i = icmp ugt i32 %9, %idx
  br i1 %cmp.i.i.i, label %FF_LAYOUT_COMP.exit.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

FF_LAYOUT_COMP.exit.i.i:                          ; preds = %if.then
  %arrayidx.i.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %11, null
  br i1 %cmp.not.i.i, label %FF_LAYOUT_COMP.exit.i.i.cleanup_crit_edge, label %if.then.i.i

FF_LAYOUT_COMP.exit.i.i.cleanup_crit_edge:        ; preds = %FF_LAYOUT_COMP.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i.i:                                      ; preds = %FF_LAYOUT_COMP.exit.i.i
  %mirror_ds1.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %mirror_ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mirror_ds1.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  %cmp.i8.i.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i8.i.i
  br i1 %spec.select.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @nfs4_mark_deviceid_available(ptr noundef nonnull %13) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pls_flags.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 6
  %14 = ptrtoint ptr %pls_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %pls_flags.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %5, label %land.end [
    i32 3, label %sw.bb
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end2
  %mirror_array_cnt.i.i.i2 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %17 = ptrtoint ptr %mirror_array_cnt.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mirror_array_cnt.i.i.i2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %idx)
  %cmp.i.i.i3 = icmp ugt i32 %18, %idx
  br i1 %cmp.i.i.i3, label %FF_LAYOUT_COMP.exit.i.i6, label %sw.bb.if.end4.i.i_crit_edge

sw.bb.if.end4.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i

FF_LAYOUT_COMP.exit.i.i6:                         ; preds = %sw.bb
  %arrayidx.i.i.i4 = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx
  %19 = ptrtoint ptr %arrayidx.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i4, align 4
  %cmp.not.i.i5 = icmp eq ptr %20, null
  br i1 %cmp.not.i.i5, label %FF_LAYOUT_COMP.exit.i.i6.if.end4.i.i_crit_edge, label %if.then.i.i11

FF_LAYOUT_COMP.exit.i.i6.if.end4.i.i_crit_edge:   ; preds = %FF_LAYOUT_COMP.exit.i.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i

if.then.i.i11:                                    ; preds = %FF_LAYOUT_COMP.exit.i.i6
  %mirror_ds1.i.i7 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %mirror_ds1.i.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mirror_ds1.i.i7, align 4
  %tobool.not.i.i.i8 = icmp eq ptr %22, null
  %cmp.i8.i.i9 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i10 = or i1 %tobool.not.i.i.i8, %cmp.i8.i.i9
  br i1 %spec.select.i.i.i10, label %if.then.i.i11.if.end4.i.i_crit_edge, label %if.then.i.i11.FF_LAYOUT_DEVID_NODE.exit.i_crit_edge

if.then.i.i11.FF_LAYOUT_DEVID_NODE.exit.i_crit_edge: ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_DEVID_NODE.exit.i

if.then.i.i11.if.end4.i.i_crit_edge:              ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i11.if.end4.i.i_crit_edge, %FF_LAYOUT_COMP.exit.i.i6.if.end4.i.i_crit_edge, %sw.bb.if.end4.i.i_crit_edge
  br label %FF_LAYOUT_DEVID_NODE.exit.i

FF_LAYOUT_DEVID_NODE.exit.i:                      ; preds = %if.end4.i.i, %if.then.i.i11.FF_LAYOUT_DEVID_NODE.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ null, %if.end4.i.i ], [ %22, %if.then.i.i11.FF_LAYOUT_DEVID_NODE.exit.i_crit_edge ]
  %23 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %7, label %do.body.i [
    i32 -13, label %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge
    i32 -116, label %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge36
    i32 -21, label %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge37
    i32 -521, label %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge38
    i32 -40, label %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge39
    i32 -28, label %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge40
    i32 -528, label %sw.bb1.i
  ]

FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge40:  ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge39:  ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge38:  ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge37:  ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge36:  ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge:    ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1.i:                                         ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  %pls_layout.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %24 = ptrtoint ptr %pls_layout.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pls_layout.i, align 4
  %plh_inode.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %plh_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plh_inode.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !281
  %io_stats.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %31, i32 0, i32 6
  %33 = ptrtoint ptr %io_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_stats.i.i.i, align 8
  %arrayidx.i.i18.i = getelementptr %struct.nfs_iostats, ptr %34, i32 0, i32 2, i32 24
  %35 = ptrtoint ptr %arrayidx.i.i18.i to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx13.i.i.i, align 4
  %add.i.i.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add14.i.i.i = add i32 %44, 1
  store i32 %add14.i.i.i, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !282
  %and.i.i.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i19.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i19.i, label %if.then.i.i.i, label %sw.bb1.i.nfs_inc_stats.exit.i_crit_edge, !prof !264

sw.bb1.i.nfs_inc_stats.exit.i_crit_edge:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfs_inc_stats.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %nfs_inc_stats.exit.i

nfs_inc_stats.exit.i:                             ; preds = %if.then.i.i.i, %sw.bb1.i.nfs_inc_stats.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #17, !srcloc !283
  %46 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tk_status, align 4
  %call10.i = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #17
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 500) #17
  br label %cleanup

do.body.i:                                        ; preds = %FF_LAYOUT_DEVID_NODE.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %47 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end8.i_crit_edge, label %do.end.i, !prof !262

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %7) #21
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  %ld.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %retval.1.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %ld.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ld.i, align 4
  %nfs_client.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %retval.1.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %nfs_client.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nfs_client.i, align 4
  %deviceid.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %retval.1.i.i, i32 0, i32 6
  tail call void @nfs4_delete_deviceid(ptr noundef %49, ptr noundef %51, ptr noundef %deviceid.i) #17
  br label %cleanup

sw.bb4:                                           ; preds = %if.end2
  %pls_layout.i12 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %52 = ptrtoint ptr %pls_layout.i12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pls_layout.i12, align 4
  %plh_inode.i13 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %plh_inode.i13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %plh_inode.i13, align 4
  %mirror_array_cnt.i.i.i14 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %56 = ptrtoint ptr %mirror_array_cnt.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mirror_array_cnt.i.i.i14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %idx)
  %cmp.i.i.i15 = icmp ugt i32 %57, %idx
  br i1 %cmp.i.i.i15, label %FF_LAYOUT_COMP.exit.i.i18, label %sw.bb4.if.end4.i.i24_crit_edge

sw.bb4.if.end4.i.i24_crit_edge:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i24

FF_LAYOUT_COMP.exit.i.i18:                        ; preds = %sw.bb4
  %arrayidx.i.i.i16 = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx
  %58 = ptrtoint ptr %arrayidx.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i.i16, align 4
  %cmp.not.i.i17 = icmp eq ptr %59, null
  br i1 %cmp.not.i.i17, label %FF_LAYOUT_COMP.exit.i.i18.if.end4.i.i24_crit_edge, label %if.then.i.i23

FF_LAYOUT_COMP.exit.i.i18.if.end4.i.i24_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i24

if.then.i.i23:                                    ; preds = %FF_LAYOUT_COMP.exit.i.i18
  %mirror_ds1.i.i19 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %mirror_ds1.i.i19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mirror_ds1.i.i19, align 4
  %tobool.not.i.i.i20 = icmp eq ptr %61, null
  %cmp.i8.i.i21 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i22 = or i1 %tobool.not.i.i.i20, %cmp.i8.i.i21
  br i1 %spec.select.i.i.i22, label %if.then.i.i23.if.end4.i.i24_crit_edge, label %if.then.i.i23.FF_LAYOUT_DEVID_NODE.exit.i27_crit_edge

if.then.i.i23.FF_LAYOUT_DEVID_NODE.exit.i27_crit_edge: ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_DEVID_NODE.exit.i27

if.then.i.i23.if.end4.i.i24_crit_edge:            ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i24

if.end4.i.i24:                                    ; preds = %if.then.i.i23.if.end4.i.i24_crit_edge, %FF_LAYOUT_COMP.exit.i.i18.if.end4.i.i24_crit_edge, %sw.bb4.if.end4.i.i24_crit_edge
  br label %FF_LAYOUT_DEVID_NODE.exit.i27

FF_LAYOUT_DEVID_NODE.exit.i27:                    ; preds = %if.end4.i.i24, %if.then.i.i23.FF_LAYOUT_DEVID_NODE.exit.i27_crit_edge
  %retval.1.i.i25 = phi ptr [ null, %if.end4.i.i24 ], [ %61, %if.then.i.i23.FF_LAYOUT_DEVID_NODE.exit.i27_crit_edge ]
  %cl_session.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %62 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cl_session.i, align 4
  %64 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %7, label %FF_LAYOUT_DEVID_NODE.exit.i27.sw.default.i_crit_edge [
    i32 -10052, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge
    i32 -10053, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge41
    i32 -10077, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge42
    i32 -10078, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge43
    i32 -10055, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge44
    i32 -10076, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge45
    i32 -10063, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge46
    i32 -10008, label %FF_LAYOUT_DEVID_NODE.exit.i27.sw.bb10.i_crit_edge
    i32 -10013, label %FF_LAYOUT_DEVID_NODE.exit.i27.sw.bb10.i_crit_edge47
    i32 -10068, label %FF_LAYOUT_DEVID_NODE.exit.i27.sw.epilog.i_crit_edge
    i32 -10080, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge
    i32 -116, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge48
    i32 -521, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge49
    i32 -21, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge50
    i32 -10014, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge51
    i32 -10083, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge52
    i32 -111, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge
    i32 -112, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge53
    i32 -113, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge54
    i32 -101, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge55
    i32 -5, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge56
    i32 -110, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge57
    i32 -32, label %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge58
  ]

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge58: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge57: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge56: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge55: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge54: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge53: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body33.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge52: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge51: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge50: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge49: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge48: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12.i

FF_LAYOUT_DEVID_NODE.exit.i27.sw.epilog.i_crit_edge: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

FF_LAYOUT_DEVID_NODE.exit.i27.sw.bb10.i_crit_edge47: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb10.i

FF_LAYOUT_DEVID_NODE.exit.i27.sw.bb10.i_crit_edge: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb10.i

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge46: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge45: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge44: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge43: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge42: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge41: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i30

FF_LAYOUT_DEVID_NODE.exit.i27.sw.default.i_crit_edge: ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.default.i

do.body.i30:                                      ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge41, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge42, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge43, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge44, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge45, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body.i30_crit_edge46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %65 = load i32, ptr @nfs_debug, align 4
  %and.i28 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %do.body.i30.do.end7.i_crit_edge, label %do.end.i31, !prof !262

do.body.i30.do.end7.i_crit_edge:                  ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

do.end.i31:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #19
  %cl_exchange_flags.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 35
  %66 = ptrtoint ptr %cl_exchange_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cl_exchange_flags.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %7, i32 noundef %67) #21
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i31, %do.body.i30.do.end7.i_crit_edge
  %68 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cl_session.i, align 4
  %70 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tk_status, align 4
  tail call void @nfs4_schedule_session_recovery(ptr noundef %69, i32 noundef %71) #17
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27.sw.bb10.i_crit_edge, %FF_LAYOUT_DEVID_NODE.exit.i27.sw.bb10.i_crit_edge47
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 1500) #17
  br label %sw.epilog.i

do.body12.i:                                      ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge48, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge49, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge50, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge51, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body12.i_crit_edge52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %72 = load i32, ptr @nfs_debug, align 4
  %and13.i = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.do.end30.i_crit_edge, label %do.end24.i, !prof !262

do.body12.i.do.end30.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i

do.end24.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #19
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %7) #21
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end24.i, %do.body12.i.do.end30.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 -448
  tail call void @pnfs_destroy_layout(ptr noundef %add.ptr.i.i) #17
  %slot_tbl_waitq.i = getelementptr inbounds %struct.nfs4_session, ptr %63, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %slot_tbl_waitq.i) #17
  br label %do.body56.i

do.body33.i:                                      ; preds = %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge53, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge54, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge55, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge56, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge57, %FF_LAYOUT_DEVID_NODE.exit.i27.do.body33.i_crit_edge58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %73 = load i32, ptr @nfs_debug, align 4
  %and34.i = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.do.end51.i_crit_edge, label %do.end45.i, !prof !262

do.body33.i.do.end51.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end51.i

do.end45.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #19
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, i32 noundef %7) #21
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end45.i, %do.body33.i.do.end51.i_crit_edge
  %ld.i32 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %retval.1.i.i25, i32 0, i32 2
  %74 = ptrtoint ptr %ld.i32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ld.i32, align 4
  %nfs_client.i33 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %retval.1.i.i25, i32 0, i32 3
  %76 = ptrtoint ptr %nfs_client.i33 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nfs_client.i33, align 4
  %deviceid.i34 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %retval.1.i.i25, i32 0, i32 6
  tail call void @nfs4_delete_deviceid(ptr noundef %75, ptr noundef %77, ptr noundef %deviceid.i34) #17
  %slot_tbl_waitq52.i = getelementptr inbounds %struct.nfs4_session, ptr %63, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %slot_tbl_waitq52.i) #17
  br label %sw.default.i

sw.default.i:                                     ; preds = %do.end51.i, %FF_LAYOUT_DEVID_NODE.exit.i27.sw.default.i_crit_edge
  %call53.i = tail call zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef %lseg) #17
  br i1 %call53.i, label %sw.default.i.cleanup_crit_edge, label %sw.default.i.do.body56.i_crit_edge

sw.default.i.do.body56.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body56.i

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body56.i:                                      ; preds = %sw.default.i.do.body56.i_crit_edge, %do.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %78 = load i32, ptr @nfs_debug, align 4
  %and57.i = and i32 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.cleanup_crit_edge, label %do.end68.i, !prof !262

do.body56.i.cleanup_crit_edge:                    ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end68.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #19
  %79 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tk_status, align 4
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.14, i32 noundef %80) #21
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb10.i, %do.end7.i, %FF_LAYOUT_DEVID_NODE.exit.i27.sw.epilog.i_crit_edge
  %81 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %tk_status, align 4
  br label %cleanup

land.end:                                         ; preds = %if.end2
  %.b1 = load i1, ptr @ff_layout_async_handle_error.__already_done, align 1
  br i1 %.b1, label %land.end.cleanup_crit_edge, label %if.then10, !prof !262

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ff_layout_async_handle_error.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1220, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.end.cleanup_crit_edge, %sw.epilog.i, %do.end68.i, %do.body56.i.cleanup_crit_edge, %sw.default.i.cleanup_crit_edge, %do.end8.i, %nfs_inc_stats.exit.i, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge36, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge37, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge38, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge39, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge40, %if.end.cleanup_crit_edge, %if.then.i, %if.then.i.i.cleanup_crit_edge, %FF_LAYOUT_COMP.exit.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12002, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %FF_LAYOUT_COMP.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ -11, %nfs_inc_stats.exit.i ], [ -12002, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge ], [ -12002, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge36 ], [ -12002, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge37 ], [ -12002, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge38 ], [ -12002, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge39 ], [ -12002, %FF_LAYOUT_DEVID_NODE.exit.i.cleanup_crit_edge40 ], [ -12002, %do.end8.i ], [ -11, %sw.epilog.i ], [ -12002, %sw.default.i.cleanup_crit_edge ], [ -12001, %do.end68.i ], [ -12001, %do.body56.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_pnfs_commit_ds(ptr noundef %data, i32 noundef %error) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 1), ptr blockaddress(@trace_nfs4_pnfs_commit_ds, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !284
  %call42 = tail call i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef null, ptr noundef %data, i32 noundef %error) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !285
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_pnfs_commit_ds.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfs4_pnfs_commit_ds.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1681, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
declare dso_local i32 @ff_layout_track_ds_error(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ff_layout_commit_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_delete_deviceid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_session_recovery(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_layoutcommit(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_commit_prepare_v3(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ff_layout_commit_prepare_common(ptr noundef %task, ptr noundef %data)
  tail call void @rpc_call_start(ptr noundef %task) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_commit_done(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pnfs_generic_write_commit_done(ptr noundef %task, ptr noundef %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_commit_count_stats(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 18
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ff_layout_commit_record_layoutstats_done.exit_crit_edge, label %if.end.i

entry.ff_layout_commit_record_layoutstats_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_commit_record_layoutstats_done.exit

if.end.i:                                         ; preds = %entry
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then1.i:                                       ; preds = %if.end.i
  %pages.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %req.023.i = load ptr, ptr %pages.i, align 4
  %cmp3.not24.i = icmp eq ptr %req.023.i, %pages.i
  br i1 %cmp3.not24.i, label %if.then1.i.if.end9.i_crit_edge, label %if.then1.i.for.body.i_crit_edge

if.then1.i.for.body.i_crit_edge:                  ; preds = %if.then1.i
  br label %for.body.i

if.then1.i.if.end9.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.i.for.body.i_crit_edge
  %req.026.i = phi ptr [ %req.0.i, %for.body.i.for.body.i_crit_edge ], [ %req.023.i, %if.then1.i.for.body.i_crit_edge ]
  %count.025.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.i.for.body.i_crit_edge ]
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req.026.i, i32 0, i32 6
  %3 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wb_bytes.i, align 4
  %conv.i = zext i32 %4 to i64
  %add.i = add i64 %count.025.i, %conv.i
  %5 = ptrtoint ptr %req.026.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %req.0.i = load ptr, ptr %req.026.i, align 4
  %cmp3.not.i = icmp eq ptr %req.0.i, %pages.i
  br i1 %cmp3.not.i, label %for.body.i.if.end9.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.body.i.if.end9.i_crit_edge, %if.then1.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %count.1.i = phi i64 [ 0, %if.end.i.if.end9.i_crit_edge ], [ 0, %if.then1.i.if.end9.i_crit_edge ], [ %add.i, %for.body.i.if.end9.i_crit_edge ]
  %lseg.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %6 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lseg.i, align 4
  %ds_commit_index.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 13
  %8 = ptrtoint ptr %ds_commit_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ds_commit_index.i, align 4
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.i.i = icmp ugt i32 %11, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %7, i32 0, i32 4, i32 %9
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.then.i.i ], [ null, %if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %task, ptr noundef %retval.0.i.i, i64 noundef %count.1.i, i64 noundef %count.1.i, i32 noundef 2) #17
  %14 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lseg.i, align 4
  %pls_flags.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %15, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pls_flags.i) #17
  br label %ff_layout_commit_record_layoutstats_done.exit

ff_layout_commit_record_layoutstats_done.exit:    ; preds = %FF_LAYOUT_COMP.exit.i, %entry.ff_layout_commit_record_layoutstats_done.exit_crit_edge
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inode, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
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
  %cl_metrics = getelementptr inbounds %struct.rpc_clnt, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %cl_metrics to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cl_metrics, align 4
  %arrayidx = getelementptr %struct.rpc_iostats, ptr %25, i32 3
  tail call void @rpc_count_iostats_metrics(ptr noundef %task, ptr noundef %arrayidx) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_commit_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 18
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ff_layout_commit_record_layoutstats_done.exit_crit_edge, label %if.end.i

entry.ff_layout_commit_record_layoutstats_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_commit_record_layoutstats_done.exit

if.end.i:                                         ; preds = %entry
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then1.i:                                       ; preds = %if.end.i
  %pages.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %req.023.i = load ptr, ptr %pages.i, align 4
  %cmp3.not24.i = icmp eq ptr %req.023.i, %pages.i
  br i1 %cmp3.not24.i, label %if.then1.i.if.end9.i_crit_edge, label %if.then1.i.for.body.i_crit_edge

if.then1.i.for.body.i_crit_edge:                  ; preds = %if.then1.i
  br label %for.body.i

if.then1.i.if.end9.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.i.for.body.i_crit_edge
  %req.026.i = phi ptr [ %req.0.i, %for.body.i.for.body.i_crit_edge ], [ %req.023.i, %if.then1.i.for.body.i_crit_edge ]
  %count.025.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.i.for.body.i_crit_edge ]
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req.026.i, i32 0, i32 6
  %3 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wb_bytes.i, align 4
  %conv.i = zext i32 %4 to i64
  %add.i = add i64 %count.025.i, %conv.i
  %5 = ptrtoint ptr %req.026.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %req.0.i = load ptr, ptr %req.026.i, align 4
  %cmp3.not.i = icmp eq ptr %req.0.i, %pages.i
  br i1 %cmp3.not.i, label %for.body.i.if.end9.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.body.i.if.end9.i_crit_edge, %if.then1.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %count.1.i = phi i64 [ 0, %if.end.i.if.end9.i_crit_edge ], [ 0, %if.then1.i.if.end9.i_crit_edge ], [ %add.i, %for.body.i.if.end9.i_crit_edge ]
  %lseg.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %6 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lseg.i, align 4
  %ds_commit_index.i = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 13
  %8 = ptrtoint ptr %ds_commit_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ds_commit_index.i, align 4
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.i.i = icmp ugt i32 %11, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %7, i32 0, i32 4, i32 %9
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.then.i.i ], [ null, %if.end9.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %data, ptr noundef %retval.0.i.i, i64 noundef %count.1.i, i64 noundef %count.1.i, i32 noundef 2) #17
  %14 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lseg.i, align 4
  %pls_flags.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %15, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pls_flags.i) #17
  br label %ff_layout_commit_record_layoutstats_done.exit

ff_layout_commit_record_layoutstats_done.exit:    ; preds = %FF_LAYOUT_COMP.exit.i, %entry.ff_layout_commit_record_layoutstats_done.exit_crit_edge
  tail call void @pnfs_generic_commit_release(ptr noundef %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ff_layout_commit_prepare_common(ptr nocapture noundef readonly %task, ptr noundef %cdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs_commit_data, ptr %cdata, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ff_layout_commit_record_layoutstats_start.exit_crit_edge

entry.ff_layout_commit_record_layoutstats_start.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_commit_record_layoutstats_start.exit

if.end.i:                                         ; preds = %entry
  %inode.i = getelementptr inbounds %struct.nfs_commit_data, ptr %cdata, i32 0, i32 1
  %0 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode.i, align 8
  %lseg.i = getelementptr inbounds %struct.nfs_commit_data, ptr %cdata, i32 0, i32 11
  %2 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lseg.i, align 4
  %ds_commit_index.i = getelementptr inbounds %struct.nfs_commit_data, ptr %cdata, i32 0, i32 13
  %4 = ptrtoint ptr %ds_commit_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds_commit_index.i, align 4
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i.i = icmp ugt i32 %7, %5
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %3, i32 0, i32 4, i32 %5
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.then.i.i ], [ null, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  %tk_start.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 18
  %10 = ptrtoint ptr %tk_start.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tk_start.i, align 8
  %lock.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #17
  %write_stat.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 15
  %call.i.i = tail call fastcc zeroext i1 @nfs4_ff_layoutstat_start_io(ptr noundef %retval.0.i.i, ptr noundef %write_stat.i.i, i64 noundef %11) #17
  %12 = ptrtoint ptr %write_stat.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %write_stat.i.i, align 8
  %inc.i.i.i = add i64 %13, 1
  store i64 %inc.i.i.i, ptr %write_stat.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #17
  br i1 %call.i.i, label %if.then.i5.i, label %FF_LAYOUT_COMP.exit.i.ff_layout_commit_record_layoutstats_start.exit_crit_edge

FF_LAYOUT_COMP.exit.i.ff_layout_commit_record_layoutstats_start.exit_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_commit_record_layoutstats_start.exit

if.then.i5.i:                                     ; preds = %FF_LAYOUT_COMP.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i.i = tail call i32 @pnfs_report_layoutstat(ptr noundef %1, i32 noundef 3072) #17
  br label %ff_layout_commit_record_layoutstats_start.exit

ff_layout_commit_record_layoutstats_start.exit:   ; preds = %if.then.i5.i, %FF_LAYOUT_COMP.exit.i.ff_layout_commit_record_layoutstats_start.exit_crit_edge, %entry.ff_layout_commit_record_layoutstats_start.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nfs4_ff_layoutstat_start_io(ptr nocapture noundef %mirror, ptr noundef %layoutstat, i64 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mirror to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror, align 8
  %n_ops.i = getelementptr inbounds %struct.nfs4_ff_layoutstat, ptr %layoutstat, i32 0, i32 1, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_ops.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !286
  tail call void @llvm.prefetch.p0(ptr %n_ops.i, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_ops.i, ptr %n_ops.i, i32 1, ptr elementtype(i32) %n_ops.i) #17, !srcloc !287
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !288
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.nfs4_ff_start_busy_timer.exit_crit_edge

entry.nfs4_ff_start_busy_timer.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfs4_ff_start_busy_timer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %busy_timer = getelementptr inbounds %struct.nfs4_ff_layoutstat, ptr %layoutstat, i32 0, i32 1
  %3 = ptrtoint ptr %busy_timer to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %now, ptr %busy_timer, align 8
  br label %nfs4_ff_start_busy_timer.exit

nfs4_ff_start_busy_timer.exit:                    ; preds = %if.then.i, %entry.nfs4_ff_start_busy_timer.exit_crit_edge
  %start_time = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 16
  %4 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.then, label %nfs4_ff_start_busy_timer.exit.if.end_crit_edge

nfs4_ff_start_busy_timer.exit.if.end_crit_edge:   ; preds = %nfs4_ff_start_busy_timer.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %nfs4_ff_start_busy_timer.exit
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %now, ptr %start_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %nfs4_ff_start_busy_timer.exit.if.end_crit_edge
  %report_interval2 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 17
  %7 = ptrtoint ptr %report_interval2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %report_interval2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i32 %8 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @layoutstats_timer to i32))
  %9 = load i32, ptr @layoutstats_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %if.else.if.end11_crit_edge, label %if.then7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %conv8 = zext i32 %9 to i64
  %mul9 = mul nuw nsw i64 %conv8, 1000
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else.if.end11_crit_edge, %if.then3
  %report_interval.0 = phi i64 [ %mul, %if.then3 ], [ %mul9, %if.then7 ], [ 60000, %if.else.if.end11_crit_edge ]
  %last_report_time = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %last_report_time to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last_report_time, align 8
  %sub = sub i64 %now, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %12 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #17
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %12) #23, !srcloc !289
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %12, i64 %13, i32 0) #23, !srcloc !290
  %asmresult10.i.i.i = extractvalue { i64, i32 } %14, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i, i64 %report_interval.0)
  %cmp13.not = icmp slt i64 %cond213.i.i, %report_interval.0
  br i1 %cmp13.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %last_report_time to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %now, ptr %last_report_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge
  %16 = xor i1 %cmp13.not, true
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_report_layoutstat(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_write_commit_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_count_iostats_metrics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_ff_layout_stat_io_end_write(ptr nocapture noundef readonly %task, ptr noundef %mirror, i64 noundef %requested, i64 noundef %completed, i32 noundef %committed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %committed)
  %cmp = icmp eq i32 %committed, 0
  %spec.select = select i1 %cmp, i64 0, i64 %completed
  %spec.select5 = select i1 %cmp, i64 0, i64 %requested
  %lock = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %call = tail call i64 @ktime_get() #17
  %tk_start = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 18
  %0 = ptrtoint ptr %tk_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tk_start, align 8
  %ops_completed.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 2
  %2 = ptrtoint ptr %ops_completed.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ops_completed.i, align 8
  %inc.i = add i64 %3, 1
  store i64 %inc.i, ptr %ops_completed.i, align 8
  %bytes_completed.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %bytes_completed.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes_completed.i, align 8
  %add.i = add i64 %5, %spec.select
  store i64 %add.i, ptr %bytes_completed.i, align 8
  %sub1.i = sub i64 %spec.select5, %spec.select
  %bytes_not_delivered.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 4
  %6 = ptrtoint ptr %bytes_not_delivered.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_not_delivered.i, align 8
  %add2.i = add i64 %sub1.i, %7
  store i64 %add2.i, ptr %bytes_not_delivered.i, align 8
  %n_ops.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 1, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_ops.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %n_ops.i.i, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_ops.i.i, ptr %n_ops.i.i, i32 1, ptr elementtype(i32) %n_ops.i.i) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.end.i.i, label %entry.nfs4_ff_layout_stat_io_update_completed.exit_crit_edge

entry.nfs4_ff_layout_stat_io_update_completed.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfs4_ff_layout_stat_io_update_completed.exit

land.end.i.i:                                     ; preds = %entry
  %.b41.i.i = load i1, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  br i1 %.b41.i.i, label %land.end.i.i.nfs4_ff_layout_stat_io_update_completed.exit_crit_edge, label %if.then5.i.i, !prof !262

land.end.i.i.nfs4_ff_layout_stat_io_update_completed.exit_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfs4_ff_layout_stat_io_update_completed.exit

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 588, i32 noundef 9, ptr noundef null) #17
  br label %nfs4_ff_layout_stat_io_update_completed.exit

nfs4_ff_layout_stat_io_update_completed.exit:     ; preds = %if.then5.i.i, %land.end.i.i.nfs4_ff_layout_stat_io_update_completed.exit_crit_edge, %entry.nfs4_ff_layout_stat_io_update_completed.exit_crit_edge
  %busy_timer.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 1
  %sub.i = sub i64 %call, %1
  %9 = ptrtoint ptr %busy_timer.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %busy_timer.i, align 8
  store i64 %call, ptr %busy_timer.i, align 8
  %sub.i.i = sub i64 %call, %10
  %total_busy_time.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 5
  %11 = ptrtoint ptr %total_busy_time.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %total_busy_time.i, align 8
  %add3.i = add i64 %sub.i.i, %12
  store i64 %add3.i, ptr %total_busy_time.i, align 8
  %aggregate_completion_time.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %aggregate_completion_time.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %aggregate_completion_time.i, align 8
  %add5.i = add i64 %sub.i, %14
  store i64 %add5.i, ptr %aggregate_completion_time.i, align 8
  %flags = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #17
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_commit_prepare_v4(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ds_clp = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds_clp, align 8
  %args = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 8
  %res = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 9
  %call = tail call i32 @nfs4_setup_sequence(ptr noundef %1, ptr noundef %args, ptr noundef %res, ptr noundef %task) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ff_layout_commit_prepare_common(ptr noundef %task, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_sequence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_name(ptr noundef %xdr, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !264

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end19_crit_edge, label %do.end, !prof !262

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %1) #21
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %call20 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #17
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end19.cleanup_crit_edge, label %if.end31, !prof !264

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end31:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #19
  %call32 = tail call i32 @nfs_map_string_to_numeric(ptr noundef nonnull %call20, i32 noundef %1, ptr noundef %id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %. = select i1 %tobool33.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -105, %do.end19.cleanup_crit_edge ], [ %., %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ff_layout_add_mirror(ptr noundef %lo, ptr noundef %mirror) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 15
  %0 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plh_inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #17
  %mirrors = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %lo, i32 0, i32 2
  %2 = ptrtoint ptr %mirrors to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn40 = load ptr, ptr %mirrors, align 4
  %cmp.not41 = icmp eq ptr %.pn40, %mirrors
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %devid = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 4
  %fh_versions_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 6
  %fh_versions.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn42 = phi ptr [ %.pn40, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %devid3 = getelementptr i8, ptr %.pn42, i32 16
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %devid, ptr noundef dereferenceable(16) %devid3, i32 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp5.not = icmp eq i32 %bcmp, 0
  br i1 %cmp5.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %fh_versions_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fh_versions_cnt.i, align 8
  %fh_versions_cnt1.i = getelementptr i8, ptr %.pn42, i32 36
  %5 = ptrtoint ptr %fh_versions_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fh_versions_cnt1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not.i = icmp eq i32 %4, %6
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp333.not.i = icmp eq i32 %4, 0
  br i1 %cmp333.not.i, label %for.cond.preheader.i.if.end8_crit_edge, label %for.cond4.preheader.lr.ph.split.i

for.cond.preheader.i.if.end8_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

for.cond4.preheader.lr.ph.split.i:                ; preds = %for.cond.preheader.i
  %fh_versions8.i = getelementptr i8, ptr %.pn42, i32 40
  %7 = ptrtoint ptr %fh_versions.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_versions.i, align 4
  %9 = ptrtoint ptr %fh_versions8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_versions8.i, align 4
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc15.critedge.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.split.i
  %i.034.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.split.i ], [ %inc16.i, %for.inc15.critedge.i.for.cond4.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs_fh, ptr %8, i32 %i.034.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %data.i.i = getelementptr %struct.nfs_fh, ptr %8, i32 %i.034.i, i32 1
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.cond4.preheader.i
  %j.031.i = phi i32 [ 0, %for.cond4.preheader.i ], [ %inc.i, %for.inc.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.nfs_fh, ptr %10, i32 %j.031.i
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp.not.i.i = icmp eq i16 %12, %14
  br i1 %cmp.not.i.i, label %nfs_compare_fh.exit.i, label %for.body7.i.for.inc.i_crit_edge

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

nfs_compare_fh.exit.i:                            ; preds = %for.body7.i
  %data4.i.i = getelementptr %struct.nfs_fh, ptr %10, i32 %j.031.i, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr %data.i.i, ptr %data4.i.i, i32 %conv.i.i) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp8.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp8.i.not.i, label %for.inc15.critedge.i, label %nfs_compare_fh.exit.i.for.inc.i_crit_edge

nfs_compare_fh.exit.i.for.inc.i_crit_edge:        ; preds = %nfs_compare_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %nfs_compare_fh.exit.i.for.inc.i_crit_edge, %for.body7.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body7.i_crit_edge

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc15.critedge.i:                             ; preds = %nfs_compare_fh.exit.i
  %inc16.i = add nuw i32 %i.034.i, 1
  %exitcond36.not.i = icmp eq i32 %inc16.i, %4
  br i1 %exitcond36.not.i, label %for.inc15.critedge.i.if.end8_crit_edge, label %for.inc15.critedge.i.for.cond4.preheader.i_crit_edge

for.inc15.critedge.i.for.cond4.preheader.i_crit_edge: ; preds = %for.inc15.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond4.preheader.i

for.inc15.critedge.i.if.end8_crit_edge:           ; preds = %for.inc15.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end8:                                          ; preds = %for.inc15.critedge.i.if.end8_crit_edge, %for.cond.preheader.i.if.end8_crit_edge
  %ref = getelementptr i8, ptr %.pn42, i32 72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #17
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #17
  %15 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end8
  %17 = phi i32 [ %16, %if.end8 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #17
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %20, i32 %add.i.i.i, ptr elementtype(i32) %ref) #17, !srcloc !291
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !262

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !262

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #17
  %25 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #17
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.then10

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then10:                                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  %pos.0.le = getelementptr i8, ptr %.pn42, i32 -4
  br label %cleanup

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %mirrors
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mirrors18 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 1
  %28 = ptrtoint ptr %mirrors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mirrors, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mirrors18, ptr noundef %mirrors, ptr noundef %29) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mirrors18, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %mirrors18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %mirrors18, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mirrors, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %mirrors to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %mirrors18, ptr %mirrors, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %34 = ptrtoint ptr %mirror to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lo, ptr %mirror, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then10
  %retval.0 = phi ptr [ %pos.0.le, %if.then10 ], [ %mirror, %list_add.exit ]
  call void @_raw_spin_unlock(ptr noundef %i_lock) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ff_layout_free_mirror(ptr noundef %mirror) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mirror to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.ff_layout_remove_mirror.exit_crit_edge, label %if.end.i

entry.ff_layout_remove_mirror.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_remove_mirror.exit

if.end.i:                                         ; preds = %entry
  %plh_inode.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %plh_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plh_inode.i, align 4
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #17
  %mirrors.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mirrors.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %mirrors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mirrors.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %mirrors.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mirrors.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #17
  %12 = ptrtoint ptr %mirror to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %mirror, align 8
  br label %ff_layout_remove_mirror.exit

ff_layout_remove_mirror.exit:                     ; preds = %list_del.exit.i, %entry.ff_layout_remove_mirror.exit_crit_edge
  %fh_versions = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 7
  %13 = ptrtoint ptr %fh_versions to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_versions, align 4
  tail call void @kfree(ptr noundef %14) #17
  %ro_cred = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 9
  %15 = ptrtoint ptr %ro_cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ro_cred, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %ff_layout_remove_mirror.exit.put_cred.exit_crit_edge, label %do.body.i

ff_layout_remove_mirror.exit.put_cred.exit_crit_edge: ; preds = %ff_layout_remove_mirror.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_cred.exit

do.body.i:                                        ; preds = %ff_layout_remove_mirror.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %16) #17
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !264

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %16, ptr noundef nonnull @.str.25, i32 noundef 286) #17
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #17
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %16) #17
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %ff_layout_remove_mirror.exit.put_cred.exit_crit_edge
  %rw_cred = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 10
  %18 = ptrtoint ptr %rw_cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %rw_cred, align 8
  %tobool.not.i14 = icmp eq ptr %19, null
  br i1 %tobool.not.i14, label %put_cred.exit.put_cred.exit23_crit_edge, label %do.body.i16

put_cred.exit.put_cred.exit23_crit_edge:          ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_cred.exit23

do.body.i16:                                      ; preds = %put_cred.exit
  %call.i.i15 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %19) #17
  br i1 %call.i.i15, label %if.then.i.i17, label %do.body.i16.__validate_creds.exit.i21_crit_edge, !prof !264

do.body.i16.__validate_creds.exit.i21_crit_edge:  ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i21

if.then.i.i17:                                    ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %19, ptr noundef nonnull @.str.25, i32 noundef 286) #17
  br label %__validate_creds.exit.i21

__validate_creds.exit.i21:                        ; preds = %if.then.i.i17, %do.body.i16.__validate_creds.exit.i21_crit_edge
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #17
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i19 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i19)
  %cmp.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i19, 0
  br i1 %cmp.i.i.i20, label %if.then1.i22, label %__validate_creds.exit.i21.put_cred.exit23_crit_edge

__validate_creds.exit.i21.put_cred.exit23_crit_edge: ; preds = %__validate_creds.exit.i21
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_cred.exit23

if.then1.i22:                                     ; preds = %__validate_creds.exit.i21
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %19) #17
  br label %put_cred.exit23

put_cred.exit23:                                  ; preds = %if.then1.i22, %__validate_creds.exit.i21.put_cred.exit23_crit_edge, %put_cred.exit.put_cred.exit23_crit_edge
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %21 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mirror_ds, align 4
  tail call void @nfs4_ff_layout_put_deviceid(ptr noundef %22) #17
  tail call void @kfree(ptr noundef %mirror) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ff_layout_free_lseg(ptr noundef %fls) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fls, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %fls, i32 0, i32 3
  %0 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %if.then.ff_layout_free_mirror_array.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ff_layout_free_mirror_array.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_free_mirror_array.exit

for.body.i:                                       ; preds = %ff_layout_put_mirror.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %ff_layout_put_mirror.exit.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %fls, i32 0, i32 4, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not.i.i = icmp eq ptr %3, null
  br i1 %cmp.not.i.i, label %for.body.i.ff_layout_put_mirror.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.ff_layout_put_mirror.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_put_mirror.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %ref.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %3, i32 0, i32 11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !293
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ff_layout_put_mirror.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.ff_layout_put_mirror.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_put_mirror.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %ff_layout_put_mirror.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !294
  tail call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %3) #17
  br label %ff_layout_put_mirror.exit.i

ff_layout_put_mirror.exit.i:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ff_layout_put_mirror.exit.i_crit_edge, %for.body.i.ff_layout_put_mirror.exit.i_crit_edge
  %inc.i = add nuw i32 %i.05.i, 1
  %5 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mirror_array_cnt.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %6
  br i1 %cmp.i, label %ff_layout_put_mirror.exit.i.for.body.i_crit_edge, label %ff_layout_put_mirror.exit.i.ff_layout_free_mirror_array.exit_crit_edge

ff_layout_put_mirror.exit.i.ff_layout_free_mirror_array.exit_crit_edge: ; preds = %ff_layout_put_mirror.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_free_mirror_array.exit

ff_layout_put_mirror.exit.i.for.body.i_crit_edge: ; preds = %ff_layout_put_mirror.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

ff_layout_free_mirror_array.exit:                 ; preds = %ff_layout_put_mirror.exit.i.ff_layout_free_mirror_array.exit_crit_edge, %if.then.ff_layout_free_mirror_array.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %fls) #17
  br label %if.end

if.end:                                           ; preds = %ff_layout_free_mirror_array.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_print_deviceid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_map_string_to_numeric(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_ff_layout_put_deviceid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_layout_insert_lseg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ff_lseg_range_is_after(ptr nocapture noundef readonly %l1, ptr nocapture noundef readonly %l2) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l1, align 8
  %2 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp ne i32 %1, 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.pnfs_layout_range, ptr %l1, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.pnfs_layout_range, ptr %l1, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %length, align 8
  %sub.i = xor i64 %5, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %sub.i)
  %cmp1.not.i = icmp ult i64 %7, %sub.i
  %add.i = add i64 %5, -1
  %sub2.i = add i64 %add.i, %7
  %retval.0.i = select i1 %cmp1.not.i, i64 %sub2.i, i64 -1
  %offset4 = getelementptr inbounds %struct.pnfs_layout_range, ptr %l2, i32 0, i32 1
  %8 = ptrtoint ptr %offset4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %9)
  %cmp8 = icmp ult i64 %retval.0.i, %9
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %length5 = getelementptr inbounds %struct.pnfs_layout_range, ptr %l2, i32 0, i32 2
  %10 = ptrtoint ptr %length5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length5, align 8
  %sub.i30 = xor i64 %9, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %sub.i30)
  %cmp1.not.i31 = icmp ult i64 %11, %sub.i30
  %add.i32 = add i64 %9, -1
  %sub2.i33 = add i64 %add.i32, %11
  %retval.0.i34 = select i1 %cmp1.not.i31, i64 %sub2.i33, i64 -1
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i34, i64 %5)
  %cmp12 = icmp ult i64 %retval.0.i34, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp17 = icmp ule i64 %9, %5
  %spec.select = select i1 %cmp12, i1 true, i1 %cmp17
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %cmp3, %if.then ], [ false, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end10 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ff_lseg_merge(ptr noundef %new, ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_flags = getelementptr inbounds %struct.pnfs_layout_segment, ptr %old, i32 0, i32 6
  %0 = ptrtoint ptr %pls_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pls_flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %new, i32 0, i32 3
  %3 = ptrtoint ptr %pls_range to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pls_range, align 8
  %pls_range1 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %old, i32 0, i32 3
  %5 = ptrtoint ptr %pls_range1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pls_range1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.pnfs_layout_segment, ptr %old, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.pnfs_layout_segment, ptr %old, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %length, align 8
  %sub.i = xor i64 %8, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %sub.i)
  %cmp1.not.i = icmp ult i64 %10, %sub.i
  %add.i = add i64 %8, -1
  %sub2.i = add i64 %add.i, %10
  %retval.0.i = select i1 %cmp1.not.i, i64 %sub2.i, i64 -1
  %offset9 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %new, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %12)
  %cmp10 = icmp ult i64 %retval.0.i, %12
  br i1 %cmp10, label %if.end4.cleanup_crit_edge, label %if.end12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %length16 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %new, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %length16 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length16, align 8
  %sub.i76 = xor i64 %12, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %sub.i76)
  %cmp1.not.i77 = icmp ult i64 %14, %sub.i76
  %add.i78 = add i64 %12, -1
  %sub2.i79 = add i64 %add.i78, %14
  %retval.0.i80 = select i1 %cmp1.not.i77, i64 %sub2.i79, i64 -1
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i80, i64 %8)
  %cmp20 = icmp ult i64 %retval.0.i80, %8
  br i1 %cmp20, label %if.end12.cleanup_crit_edge, label %if.end25

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %15 = tail call i64 @llvm.umax.i64(i64 %retval.0.i80, i64 %retval.0.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %8)
  %cmp33 = icmp ult i64 %12, %8
  br i1 %cmp33, label %if.then34, label %if.end25.if.end39_crit_edge

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %offset9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %8, ptr %offset9, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end25.if.end39_crit_edge
  %17 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp.i = icmp ne i64 %15, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %18)
  %cmp1.not.i81 = icmp ugt i64 %15, %18
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i81
  %add.i82 = add i64 %15, 1
  %sub.i83 = sub i64 %add.i82, %18
  %retval.0.i84 = select i1 %or.cond.i, i64 %sub.i83, i64 -1
  %19 = ptrtoint ptr %length16 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %retval.0.i84, ptr %length16, align 8
  %20 = ptrtoint ptr %pls_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %pls_flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool47.not = icmp eq i32 %22, 0
  br i1 %tobool47.not, label %if.end39.cleanup_crit_edge, label %if.then48

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %pls_flags49 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %new, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pls_flags49) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end39.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ], [ true, %if.then48 ], [ true, %if.end39.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_pg_init_read(ptr noundef %pgio, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %wb_lock_context.i.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 2
  %wb_index.i.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %wb_offset.i.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %pg_mirror_idx.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 15
  br label %retry

retry:                                            ; preds = %if.end18, %entry
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %pgio) #17
  tail call void @pnfs_generic_pg_check_range(ptr noundef %pgio, ptr noundef %req) #17
  %0 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %retry.if.end4_crit_edge

retry.if.end4_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then:                                          ; preds = %retry
  tail call void @pnfs_put_lseg(ptr noundef null) #17
  %2 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgio, align 4
  %4 = ptrtoint ptr %wb_lock_context.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb_lock_context.i.i, align 4
  %open_context.i.i = getelementptr inbounds %struct.nfs_lock_context, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %open_context.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_context.i.i, align 4
  %8 = ptrtoint ptr %wb_index.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wb_index.i.i, align 4
  %conv.i.i = zext i32 %9 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %10 = ptrtoint ptr %wb_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wb_offset.i.i, align 4
  %conv1.i.i = zext i32 %11 to i64
  %add.i.i = add nuw nsw i64 %shl.i.i, %conv1.i.i
  %12 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wb_bytes.i, align 4
  %conv.i = zext i32 %13 to i64
  %call2.i = tail call ptr @pnfs_update_layout(ptr noundef %3, ptr noundef %7, i64 noundef %add.i.i, i64 noundef %conv.i, i32 noundef 1, i1 noundef zeroext false, i32 noundef 3264) #17
  %14 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %pg_lseg, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.out_nolseg.sink.split_crit_edge, label %ff_layout_pg_get_read.exit

if.then.out_nolseg.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_nolseg.sink.split

ff_layout_pg_get_read.exit:                       ; preds = %if.then
  %tobool2.not = icmp eq ptr %call2.i, null
  br i1 %tobool2.not, label %ff_layout_pg_get_read.exit.out_nolseg_crit_edge, label %ff_layout_pg_get_read.exit.if.end4_crit_edge

ff_layout_pg_get_read.exit.if.end4_crit_edge:     ; preds = %ff_layout_pg_get_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

ff_layout_pg_get_read.exit.out_nolseg_crit_edge:  ; preds = %ff_layout_pg_get_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_nolseg

if.end4:                                          ; preds = %ff_layout_pg_get_read.exit.if.end4_crit_edge, %retry.if.end4_crit_edge
  %15 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pg_lseg, align 4
  %call = tail call zeroext i1 @ff_layout_avoid_read_on_rw(ptr noundef %16) #17
  br i1 %call, label %if.then6, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %17 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pg_lseg, align 4
  tail call void @pnfs_put_lseg(ptr noundef %18) #17
  %19 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pgio, align 4
  %21 = ptrtoint ptr %wb_lock_context.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wb_lock_context.i.i, align 4
  %open_context.i.i61 = getelementptr inbounds %struct.nfs_lock_context, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %open_context.i.i61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %open_context.i.i61, align 4
  %25 = ptrtoint ptr %wb_index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wb_index.i.i, align 4
  %conv.i.i63 = zext i32 %26 to i64
  %shl.i.i64 = shl nuw nsw i64 %conv.i.i63, 12
  %27 = ptrtoint ptr %wb_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wb_offset.i.i, align 4
  %conv1.i.i66 = zext i32 %28 to i64
  %add.i.i67 = add nuw nsw i64 %shl.i.i64, %conv1.i.i66
  %29 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wb_bytes.i, align 4
  %conv.i69 = zext i32 %30 to i64
  %call2.i70 = tail call ptr @pnfs_update_layout(ptr noundef %20, ptr noundef %24, i64 noundef %add.i.i67, i64 noundef %conv.i69, i32 noundef 1, i1 noundef zeroext true, i32 noundef 3264) #17
  %31 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call2.i70, ptr %pg_lseg, align 4
  %cmp.i.i71 = icmp ugt ptr %call2.i70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i71, label %if.then6.out_nolseg.sink.split_crit_edge, label %ff_layout_pg_get_read.exit74

if.then6.out_nolseg.sink.split_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_nolseg.sink.split

ff_layout_pg_get_read.exit74:                     ; preds = %if.then6
  %tobool8.not = icmp eq ptr %call2.i70, null
  br i1 %tobool8.not, label %ff_layout_pg_get_read.exit74.out_nolseg_crit_edge, label %ff_layout_pg_get_read.exit74.if.end11_crit_edge

ff_layout_pg_get_read.exit74.if.end11_crit_edge:  ; preds = %ff_layout_pg_get_read.exit74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

ff_layout_pg_get_read.exit74.out_nolseg_crit_edge: ; preds = %ff_layout_pg_get_read.exit74
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_nolseg

if.end11:                                         ; preds = %ff_layout_pg_get_read.exit74.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %32 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pg_lseg, align 4
  %34 = ptrtoint ptr %pg_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pg_mirror_idx.i, align 4
  %mirror_array_cnt.i.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp18.i.i.i.i = icmp ugt i32 %37, %35
  br i1 %cmp18.i.i.i.i, label %if.end11.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge, label %if.end11.if.end.i.i_crit_edge

if.end11.if.end.i.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.end11.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge:   ; preds = %if.end11
  br label %FF_LAYOUT_COMP.exit.i.i.i.i

FF_LAYOUT_COMP.exit.i.i.i.i:                      ; preds = %for.inc.i.i.i.i.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge, %if.end11.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge
  %idx.019.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge ], [ %35, %if.end11.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %33, i32 0, i32 4, i32 %idx.019.i.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call2.i.i.i.i = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %33, ptr noundef %39, i1 noundef zeroext false) #17
  %tobool.not.i.i.i.i = icmp eq ptr %call2.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %FF_LAYOUT_COMP.exit.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.end.i.i.i.i

FF_LAYOUT_COMP.exit.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %FF_LAYOUT_COMP.exit.i.i.i.i
  %mirror_ds.i.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %mirror_ds.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mirror_ds.i.i.i.i, align 4
  %call4.i.i.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %41) #17
  br i1 %call4.i.i.i.i, label %if.end.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.end.i.i.i.i.if.end19_crit_edge

if.end.i.i.i.i.if.end19_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.end.i.i.i.i.for.inc.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i.i.i.i.for.inc.i.i.i.i_crit_edge, %FF_LAYOUT_COMP.exit.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %idx.019.i.i.i.i, 1
  %42 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ult i32 %inc.i.i.i.i, %43
  br i1 %cmp.i.i.i.i, label %for.inc.i.i.i.i.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.if.end.i.i_crit_edge

for.inc.i.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

for.inc.i.i.i.i.FF_LAYOUT_COMP.exit.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i.i.i.i

if.end.i.i:                                       ; preds = %for.inc.i.i.i.i.if.end.i.i_crit_edge, %if.end11.if.end.i.i_crit_edge
  %44 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %35)
  %cmp18.i.i7.i.i = icmp ugt i32 %45, %35
  br i1 %cmp18.i.i7.i.i, label %if.end.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge, label %if.end.i.i.lor.lhs.false.i_crit_edge

if.end.i.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

if.end.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge: ; preds = %if.end.i.i
  br label %FF_LAYOUT_COMP.exit.i.i12.i.i

FF_LAYOUT_COMP.exit.i.i12.i.i:                    ; preds = %for.inc.i.i16.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge, %if.end.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge
  %idx.019.i.i8.i.i = phi i32 [ %inc.i.i14.i.i, %for.inc.i.i16.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge ], [ %35, %if.end.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge ]
  %arrayidx.i.i.i9.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %33, i32 0, i32 4, i32 %idx.019.i.i8.i.i
  %46 = ptrtoint ptr %arrayidx.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i9.i.i, align 4
  %call2.i.i10.i.i = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %33, ptr noundef %47, i1 noundef zeroext false) #17
  %tobool.not.i.i11.i.i = icmp eq ptr %call2.i.i10.i.i, null
  br i1 %tobool.not.i.i11.i.i, label %for.inc.i.i16.i.i, label %FF_LAYOUT_COMP.exit.i.i12.i.i.if.end19_crit_edge

FF_LAYOUT_COMP.exit.i.i12.i.i.if.end19_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

for.inc.i.i16.i.i:                                ; preds = %FF_LAYOUT_COMP.exit.i.i12.i.i
  %inc.i.i14.i.i = add nuw i32 %idx.019.i.i8.i.i, 1
  %48 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  %cmp.i.i15.i.i = icmp ult i32 %inc.i.i14.i.i, %49
  br i1 %cmp.i.i15.i.i, label %for.inc.i.i16.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge, label %for.inc.i.i16.i.i.lor.lhs.false.i_crit_edge

for.inc.i.i16.i.i.lor.lhs.false.i_crit_edge:      ; preds = %for.inc.i.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

for.inc.i.i16.i.i.FF_LAYOUT_COMP.exit.i.i12.i.i_crit_edge: ; preds = %for.inc.i.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i.i12.i.i

lor.lhs.false.i:                                  ; preds = %for.inc.i.i16.i.i.lor.lhs.false.i_crit_edge, %if.end.i.i.lor.lhs.false.i_crit_edge
  %50 = ptrtoint ptr %pg_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pg_mirror_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not.i = icmp eq i32 %51, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then14_crit_edge, label %if.end.i

lor.lhs.false.i.if.then14_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then14

if.end.i:                                         ; preds = %lor.lhs.false.i
  %52 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp18.i.i.i11.not.i = icmp eq i32 %53, 0
  br i1 %cmp18.i.i.i11.not.i, label %if.end.i.if.then14_crit_edge, label %if.end.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge: ; preds = %if.end.i
  br label %FF_LAYOUT_COMP.exit.i.i.i16.i

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then14

FF_LAYOUT_COMP.exit.i.i.i16.i:                    ; preds = %for.inc.i.i.i22.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge, %if.end.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge
  %idx.019.i.i.i12.i = phi i32 [ %inc.i.i.i20.i, %for.inc.i.i.i22.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge ], [ 0, %if.end.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge ]
  %arrayidx.i.i.i.i13.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %33, i32 0, i32 4, i32 %idx.019.i.i.i12.i
  %54 = ptrtoint ptr %arrayidx.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i.i13.i, align 4
  %call2.i.i.i14.i = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %33, ptr noundef %55, i1 noundef zeroext false) #17
  %tobool.not.i.i.i15.i = icmp eq ptr %call2.i.i.i14.i, null
  br i1 %tobool.not.i.i.i15.i, label %FF_LAYOUT_COMP.exit.i.i.i16.i.for.inc.i.i.i22.i_crit_edge, label %if.end.i.i.i19.i

FF_LAYOUT_COMP.exit.i.i.i16.i.for.inc.i.i.i22.i_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i22.i

if.end.i.i.i19.i:                                 ; preds = %FF_LAYOUT_COMP.exit.i.i.i16.i
  %mirror_ds.i.i.i17.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %mirror_ds.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mirror_ds.i.i.i17.i, align 4
  %call4.i.i.i18.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %57) #17
  br i1 %call4.i.i.i18.i, label %if.end.i.i.i19.i.for.inc.i.i.i22.i_crit_edge, label %if.end.i.i.i19.i.if.end19_crit_edge

if.end.i.i.i19.i.if.end19_crit_edge:              ; preds = %if.end.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.end.i.i.i19.i.for.inc.i.i.i22.i_crit_edge:     ; preds = %if.end.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i22.i

for.inc.i.i.i22.i:                                ; preds = %if.end.i.i.i19.i.for.inc.i.i.i22.i_crit_edge, %FF_LAYOUT_COMP.exit.i.i.i16.i.for.inc.i.i.i22.i_crit_edge
  %inc.i.i.i20.i = add nuw i32 %idx.019.i.i.i12.i, 1
  %58 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  %cmp.i.i.i21.i = icmp ult i32 %inc.i.i.i20.i, %59
  br i1 %cmp.i.i.i21.i, label %for.inc.i.i.i22.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge, label %if.end.i24.i

for.inc.i.i.i22.i.FF_LAYOUT_COMP.exit.i.i.i16.i_crit_edge: ; preds = %for.inc.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i.i.i16.i

if.end.i24.i:                                     ; preds = %for.inc.i.i.i22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp18.i.i7.i23.not.i = icmp eq i32 %59, 0
  br i1 %cmp18.i.i7.i23.not.i, label %if.end.i24.i.if.then14_crit_edge, label %if.end.i24.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge

if.end.i24.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge: ; preds = %if.end.i24.i
  br label %FF_LAYOUT_COMP.exit.i.i12.i29.i

if.end.i24.i.if.then14_crit_edge:                 ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then14

FF_LAYOUT_COMP.exit.i.i12.i29.i:                  ; preds = %for.inc.i.i16.i32.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge, %if.end.i24.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge
  %idx.019.i.i8.i25.i = phi i32 [ %inc.i.i14.i30.i, %for.inc.i.i16.i32.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge ], [ 0, %if.end.i24.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge ]
  %arrayidx.i.i.i9.i26.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %33, i32 0, i32 4, i32 %idx.019.i.i8.i25.i
  %60 = ptrtoint ptr %arrayidx.i.i.i9.i26.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i9.i26.i, align 4
  %call2.i.i10.i27.i = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %33, ptr noundef %61, i1 noundef zeroext false) #17
  %tobool.not.i.i11.i28.i = icmp eq ptr %call2.i.i10.i27.i, null
  br i1 %tobool.not.i.i11.i28.i, label %for.inc.i.i16.i32.i, label %FF_LAYOUT_COMP.exit.i.i12.i29.i.if.end19_crit_edge

FF_LAYOUT_COMP.exit.i.i12.i29.i.if.end19_crit_edge: ; preds = %FF_LAYOUT_COMP.exit.i.i12.i29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

for.inc.i.i16.i32.i:                              ; preds = %FF_LAYOUT_COMP.exit.i.i12.i29.i
  %inc.i.i14.i30.i = add nuw i32 %idx.019.i.i8.i25.i, 1
  %62 = ptrtoint ptr %mirror_array_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mirror_array_cnt.i.i.i.i, align 4
  %cmp.i.i15.i31.i = icmp ult i32 %inc.i.i14.i30.i, %63
  br i1 %cmp.i.i15.i31.i, label %for.inc.i.i16.i32.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge, label %for.inc.i.i16.i32.i.if.then14_crit_edge

for.inc.i.i16.i32.i.if.then14_crit_edge:          ; preds = %for.inc.i.i16.i32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then14

for.inc.i.i16.i32.i.FF_LAYOUT_COMP.exit.i.i12.i29.i_crit_edge: ; preds = %for.inc.i.i16.i32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i.i12.i29.i

if.then14:                                        ; preds = %for.inc.i.i16.i32.i.if.then14_crit_edge, %if.end.i24.i.if.then14_crit_edge, %if.end.i.if.then14_crit_edge, %lor.lhs.false.i.if.then14_crit_edge
  %64 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pg_lseg, align 4
  %flags.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %67, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then14.out_mds_crit_edge, label %if.end18

if.then14.out_mds_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_mds

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pnfs_generic_pg_cleanup(ptr noundef %pgio) #17
  tail call void @msleep(i32 noundef 1000) #17
  br label %retry

if.end19:                                         ; preds = %FF_LAYOUT_COMP.exit.i.i12.i29.i.if.end19_crit_edge, %if.end.i.i.i19.i.if.end19_crit_edge, %FF_LAYOUT_COMP.exit.i.i12.i.i.if.end19_crit_edge, %if.end.i.i.i.i.if.end19_crit_edge
  %ds_idx.1 = phi i32 [ %idx.019.i.i8.i25.i, %FF_LAYOUT_COMP.exit.i.i12.i29.i.if.end19_crit_edge ], [ %idx.019.i.i.i12.i, %if.end.i.i.i19.i.if.end19_crit_edge ], [ %idx.019.i.i8.i.i, %FF_LAYOUT_COMP.exit.i.i12.i.i.if.end19_crit_edge ], [ %idx.019.i.i.i.i, %if.end.i.i.i.i.if.end19_crit_edge ]
  %68 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pg_lseg, align 4
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %ds_idx.1)
  %cmp.i = icmp ugt i32 %71, %ds_idx.1
  br i1 %cmp.i, label %if.then.i76, label %if.end19.FF_LAYOUT_COMP.exit_crit_edge

if.end19.FF_LAYOUT_COMP.exit_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i76:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %69, i32 0, i32 4, i32 %ds_idx.1
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i76, %if.end19.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i77 = phi ptr [ %73, %if.then.i76 ], [ null, %if.end19.FF_LAYOUT_COMP.exit_crit_edge ]
  %pg_mirrors = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 12
  %74 = ptrtoint ptr %pg_mirrors to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pg_mirrors, align 4
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i77, i32 0, i32 5
  %76 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mirror_ds, align 4
  %ds_versions = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %ds_versions to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ds_versions, align 4
  %rsize = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rsize, align 4
  %pg_bsize = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %75, i32 0, i32 3
  %82 = ptrtoint ptr %pg_bsize to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %pg_bsize, align 4
  %83 = ptrtoint ptr %pg_mirror_idx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %ds_idx.1, ptr %pg_mirror_idx.i, align 4
  %84 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pgio, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 33
  %88 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags = getelementptr inbounds %struct.nfs_server, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags, align 8
  %and = and i32 %91, 4194305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %FF_LAYOUT_COMP.exit.cleanup_crit_edge, label %if.then25

FF_LAYOUT_COMP.exit.cleanup_crit_edge:            ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then25:                                        ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  %92 = load i16, ptr @io_maxretrans, align 2
  %pg_maxretrans = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 16
  %93 = ptrtoint ptr %pg_maxretrans to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %pg_maxretrans, align 4
  br label %cleanup

out_nolseg.sink.split:                            ; preds = %if.then6.out_nolseg.sink.split_crit_edge, %if.then.out_nolseg.sink.split_crit_edge
  %call2.i70.lcssa.sink = phi ptr [ %call2.i, %if.then.out_nolseg.sink.split_crit_edge ], [ %call2.i70, %if.then6.out_nolseg.sink.split_crit_edge ]
  %94 = ptrtoint ptr %call2.i70.lcssa.sink to i32
  %pg_error.i72 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %95 = ptrtoint ptr %pg_error.i72 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %pg_error.i72, align 4
  %96 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %pg_lseg, align 4
  br label %out_nolseg

out_nolseg:                                       ; preds = %out_nolseg.sink.split, %ff_layout_pg_get_read.exit74.out_nolseg_crit_edge, %ff_layout_pg_get_read.exit.out_nolseg_crit_edge
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %97 = ptrtoint ptr %pg_error to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pg_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp = icmp slt i32 %98, 0
  br i1 %cmp, label %out_nolseg.cleanup_crit_edge, label %out_nolseg.out_mds_crit_edge

out_nolseg.out_mds_crit_edge:                     ; preds = %out_nolseg
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_mds

out_nolseg.cleanup_crit_edge:                     ; preds = %out_nolseg
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_mds:                                          ; preds = %out_nolseg.out_mds_crit_edge, %if.then14.out_mds_crit_edge
  %99 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pgio, align 4
  %layout = getelementptr i8, ptr %100, i32 -32
  %101 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %layout, align 8
  %103 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pg_lseg, align 4
  tail call fastcc void @trace_pnfs_mds_fallback_pg_init_read(ptr noundef %100, ptr noundef %102, ptr noundef %104)
  %pg_maxretrans33 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 16
  %105 = ptrtoint ptr %pg_maxretrans33 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %pg_maxretrans33, align 4
  tail call void @nfs_pageio_reset_read_mds(ptr noundef %pgio) #17
  br label %cleanup

cleanup:                                          ; preds = %out_mds, %out_nolseg.cleanup_crit_edge, %if.then25, %FF_LAYOUT_COMP.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_test(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_readpages(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ff_layout_avoid_read_on_rw(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_pg_init_read(ptr noundef %inode, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_read, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_pg_init_read, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !295
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_pg_init_read(ptr noundef null, ptr noundef %inode, i64 noundef 0, i64 noundef -1, i32 noundef 1, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !296
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_pg_init_read.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_pg_init_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1909, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_read_mds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_check_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_check_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_update_layout(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_pg_init_read(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_pg_init_write(ptr noundef %pgio, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %wb_lock_context.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 2
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %wb_bytes = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %pg_mirror_count = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 11
  %pg_mirrors = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 12
  br label %retry

retry:                                            ; preds = %if.end33, %entry
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %pgio) #17
  tail call void @pnfs_generic_pg_check_range(ptr noundef %pgio, ptr noundef %req) #17
  %0 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %retry.if.end14_crit_edge

retry.if.end14_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then:                                          ; preds = %retry
  %2 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgio, align 4
  %4 = ptrtoint ptr %wb_lock_context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb_lock_context.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_context.i, align 4
  %8 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wb_index.i, align 4
  %conv.i = zext i32 %9 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %10 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wb_offset.i, align 4
  %conv1.i = zext i32 %11 to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  %12 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wb_bytes, align 4
  %conv = zext i32 %13 to i64
  %call2 = tail call ptr @pnfs_update_layout(ptr noundef %3, ptr noundef %7, i64 noundef %add.i, i64 noundef %conv, i32 noundef 2, i1 noundef zeroext false, i32 noundef 3136) #17
  %14 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %pg_lseg, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %call2 to i32
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %16 = ptrtoint ptr %pg_error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pg_error, align 4
  %17 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pg_lseg, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.end10.out_mds_crit_edge, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end10.out_mds_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_mds

if.end14:                                         ; preds = %if.end10.if.end14_crit_edge, %retry.if.end14_crit_edge
  %18 = phi ptr [ %call2, %if.end10.if.end14_crit_edge ], [ %1, %retry.if.end14_crit_edge ]
  %19 = ptrtoint ptr %pg_mirror_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pg_mirror_count, align 4
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp17.not = icmp eq i32 %20, %22
  br i1 %cmp17.not, label %for.cond.preheader, label %out_eagain

for.cond.preheader:                               ; preds = %if.end14
  %23 = ptrtoint ptr %pg_mirror_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pg_mirror_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2290.not = icmp eq i32 %24, 0
  br i1 %cmp2290.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %25 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pg_lseg, align 4
  %mirror_array_cnt.i84 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mirror_array_cnt.i84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mirror_array_cnt.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %i.091)
  %cmp.i85 = icmp ugt i32 %28, %i.091
  br i1 %cmp.i85, label %if.then.i, label %for.body.FF_LAYOUT_COMP.exit_crit_edge

for.body.FF_LAYOUT_COMP.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %26, i32 0, i32 4, i32 %i.091
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i, %for.body.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.then.i ], [ null, %for.body.FF_LAYOUT_COMP.exit_crit_edge ]
  %call27 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %26, ptr noundef %retval.0.i, i1 noundef zeroext true) #17
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end34

if.then29:                                        ; preds = %FF_LAYOUT_COMP.exit
  %31 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pg_lseg, align 4
  %flags.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %34, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then29.out_mds_crit_edge, label %if.end33

if.then29.out_mds_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_mds

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pnfs_generic_pg_cleanup(ptr noundef %pgio) #17
  tail call void @msleep(i32 noundef 1000) #17
  br label %retry

if.end34:                                         ; preds = %FF_LAYOUT_COMP.exit
  %35 = ptrtoint ptr %pg_mirrors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pg_mirrors, align 4
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 5
  %37 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mirror_ds, align 4
  %ds_versions = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ds_versions to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds_versions, align 4
  %wsize = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wsize, align 4
  %pg_bsize = getelementptr %struct.nfs_pgio_mirror, ptr %36, i32 %i.091, i32 3
  %43 = ptrtoint ptr %pg_bsize to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %pg_bsize, align 4
  %inc = add nuw i32 %i.091, 1
  %44 = ptrtoint ptr %pg_mirror_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pg_mirror_count, align 4
  %cmp22 = icmp ult i32 %inc, %45
  br i1 %cmp22, label %if.end34.for.body_crit_edge, label %if.end34.for.end_crit_edge

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %46 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pgio, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags = getelementptr inbounds %struct.nfs_server, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 8
  %and = and i32 %53, 4194305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %for.end.cleanup_crit_edge, label %if.then39

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %54 = load i16, ptr @io_maxretrans, align 2
  %pg_maxretrans = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 16
  %55 = ptrtoint ptr %pg_maxretrans to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %pg_maxretrans, align 4
  br label %cleanup

out_eagain:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pnfs_generic_pg_cleanup(ptr noundef %pgio) #17
  %pg_error41 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %56 = ptrtoint ptr %pg_error41 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -11, ptr %pg_error41, align 4
  br label %cleanup

out_mds:                                          ; preds = %if.then29.out_mds_crit_edge, %if.end10.out_mds_crit_edge
  %57 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pgio, align 4
  %layout = getelementptr i8, ptr %58, i32 -32
  %59 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %layout, align 8
  %61 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pg_lseg, align 4
  tail call fastcc void @trace_pnfs_mds_fallback_pg_init_write(ptr noundef %58, ptr noundef %60, ptr noundef %62)
  %pg_maxretrans46 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 16
  %63 = ptrtoint ptr %pg_maxretrans46 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %pg_maxretrans46, align 4
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %pgio) #17
  %pg_error47 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %64 = ptrtoint ptr %pg_error47 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -11, ptr %pg_error47, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_mds, %out_eagain, %if.then39, %for.end.cleanup_crit_edge, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_writepages(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_pg_get_mirror_count_write(ptr noundef %pgio, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %0 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgio, align 4
  %wb_lock_context.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %wb_lock_context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb_lock_context.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_context.i, align 4
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wb_index.i, align 4
  %conv.i = zext i32 %9 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wb_offset.i, align 4
  %conv1.i = zext i32 %11 to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  %wb_bytes = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %12 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wb_bytes, align 4
  %conv = zext i32 %13 to i64
  %call2 = tail call ptr @pnfs_update_layout(ptr noundef %3, ptr noundef %7, i64 noundef %add.i, i64 noundef %conv, i32 noundef 2, i1 noundef zeroext false, i32 noundef 3136) #17
  %14 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %pg_lseg, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %call2 to i32
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %16 = ptrtoint ptr %pg_error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pg_error, align 4
  %17 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pg_lseg, align 4
  br label %return

if.end10:                                         ; preds = %if.then
  %tobool12.not = icmp eq ptr %call2, null
  br i1 %tobool12.not, label %if.end16, label %if.end10.if.then13_crit_edge

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %entry.if.then13_crit_edge
  %18 = phi ptr [ %call2, %if.end10.if.then13_crit_edge ], [ %1, %entry.if.then13_crit_edge ]
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mirror_array_cnt.i, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pgio, align 4
  %layout = getelementptr i8, ptr %22, i32 -32
  %23 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %layout, align 8
  tail call fastcc void @trace_pnfs_mds_fallback_pg_get_mirror_count(ptr noundef %22, ptr noundef %24, ptr noundef null)
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %pgio) #17
  br label %return

return:                                           ; preds = %if.end16, %if.then13, %if.then6
  %retval.0 = phi i32 [ %20, %if.then13 ], [ 1, %if.end16 ], [ 1, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ff_layout_pg_get_mirror_write(ptr nocapture noundef readonly %desc, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_mirrors = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc, i32 0, i32 12
  %0 = ptrtoint ptr %pg_mirrors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_mirrors, align 4
  %arrayidx = getelementptr %struct.nfs_pgio_mirror, ptr %1, i32 %idx
  ret ptr %arrayidx
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ff_layout_pg_set_mirror_write(ptr nocapture noundef %desc, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_mirror_idx = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc, i32 0, i32 15
  %0 = ptrtoint ptr %pg_mirror_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_mirror_idx, align 4
  store i32 %idx, ptr %pg_mirror_idx, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_pg_init_write(ptr noundef %inode, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_write, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_pg_init_write, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !297
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_pg_init_write(ptr noundef null, ptr noundef %inode, i64 noundef 0, i64 noundef -1, i32 noundef 2, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !298
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_pg_init_write.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_pg_init_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1910, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_write_mds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_pg_init_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_pg_get_mirror_count(ptr noundef %inode, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_get_mirror_count, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_pg_get_mirror_count, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !299
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_pg_get_mirror_count(ptr noundef null, ptr noundef %inode, i64 noundef 0, i64 noundef -1, i32 noundef 2, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !300
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_get_mirror_count, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_get_mirror_count, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_pg_get_mirror_count.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_pg_get_mirror_count.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1911, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_pg_get_mirror_count(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_read_done_cb(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %2 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lseg, align 4
  %pgio_mirror_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %4 = ptrtoint ptr %pgio_mirror_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgio_mirror_idx, align 8
  %offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %conv = zext i32 %9 to i64
  %op_status = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 3
  tail call fastcc void @ff_layout_io_track_ds_error(ptr noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %conv, ptr noundef %op_status, i32 noundef 25, i32 noundef %1)
  tail call fastcc void @trace_ff_layout_read_error(ptr noundef %hdr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %10 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds_clp, align 8
  %lseg4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %12 = ptrtoint ptr %lseg4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lseg4, align 4
  %pgio_mirror_idx5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %14 = ptrtoint ptr %pgio_mirror_idx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pgio_mirror_idx5, align 8
  %call = tail call fastcc i32 @ff_layout_async_handle_error(ptr noundef %task, ptr noundef %11, ptr noundef %13, i32 noundef %15)
  tail call fastcc void @trace_nfs4_pnfs_read(ptr noundef %hdr, i32 noundef %call)
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #17
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #17
  %16 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 -12002, label %sw.bb
    i32 -12001, label %sw.bb9
    i32 -11, label %out_eagain
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #17
  %17 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tk_status, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #17
  %19 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tk_status, align 4
  br label %cleanup

out_eagain:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #17
  br label %cleanup

cleanup:                                          ; preds = %out_eagain, %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %out_eagain ], [ %20, %sw.bb9 ], [ %18, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_layout_select_ds_fh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_ff_layout_select_ds_stateid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_pgio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_read_pagelist(ptr noundef %inode, i64 noundef %pos, i64 noundef %count, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_pagelist, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_read_pagelist, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !301
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_read_pagelist(ptr noundef null, ptr noundef %inode, i64 noundef %pos, i64 noundef %count, i32 noundef 1, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_pagelist, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_pagelist, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_read_pagelist.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_read_pagelist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1914, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ff_layout_read_error(ptr noundef %hdr) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_read_error, i32 0, i32 1), ptr blockaddress(@trace_ff_layout_read_error, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %call42 = tail call i32 @__traceiter_ff_layout_read_error(ptr noundef null, ptr noundef %hdr) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !304
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_read_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_read_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ff_layout_read_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_ff_layout_read_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 2051, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_pnfs_read(ptr noundef %hdr, i32 noundef %error) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 1), ptr blockaddress(@trace_nfs4_pnfs_read, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !305
  %call42 = tail call i32 @__traceiter_nfs4_pnfs_read(ptr noundef null, ptr noundef %hdr, i32 noundef %error) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !306
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_pnfs_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfs4_pnfs_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1544, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ff_layout_read_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_read_prepare_v3(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ff_layout_read_prepare_common(ptr noundef %task, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rpc_call_start(ptr noundef %task) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_read_call_done(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %3 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call1 = tail call i32 @nfs4_sequence_done(ptr noundef %task, ptr noundef %res) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mds_ops = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %mds_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mds_ops, align 8
  %rpc_call_done = getelementptr inbounds %struct.rpc_call_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rpc_call_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rpc_call_done, align 4
  tail call void %8(ptr noundef %task, ptr noundef %data) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_read_count_stats(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ff_layout_read_record_layoutstats_done(ptr noundef %task, ptr noundef %data)
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %cl_metrics = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %cl_metrics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_metrics, align 4
  %arrayidx = getelementptr %struct.rpc_iostats, ptr %9, i32 1
  tail call void @rpc_count_iostats_metrics(ptr noundef %task, ptr noundef %arrayidx) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_read_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18
  tail call fastcc void @ff_layout_read_record_layoutstats_done(ptr noundef %task, ptr noundef %data)
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pgio_mirror_idx.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 28
  %3 = ptrtoint ptr %pgio_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgio_mirror_idx.i, align 8
  %add.i = add i32 %4, 1
  %lseg.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lseg.i, align 4
  %mirror_array_cnt.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add.i)
  %cmp18.i.i.i = icmp ugt i32 %8, %add.i
  br i1 %cmp18.i.i.i, label %if.then.FF_LAYOUT_COMP.exit.i.i.i_crit_edge, label %if.then.if.else.i_crit_edge

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.FF_LAYOUT_COMP.exit.i.i.i_crit_edge:      ; preds = %if.then
  br label %FF_LAYOUT_COMP.exit.i.i.i

FF_LAYOUT_COMP.exit.i.i.i:                        ; preds = %for.inc.i.i.i.FF_LAYOUT_COMP.exit.i.i.i_crit_edge, %if.then.FF_LAYOUT_COMP.exit.i.i.i_crit_edge
  %idx.019.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.FF_LAYOUT_COMP.exit.i.i.i_crit_edge ], [ %add.i, %if.then.FF_LAYOUT_COMP.exit.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %6, i32 0, i32 4, i32 %idx.019.i.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call2.i.i.i = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %6, ptr noundef %10, i1 noundef zeroext false) #17
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then.i

for.inc.i.i.i:                                    ; preds = %FF_LAYOUT_COMP.exit.i.i.i
  %inc.i.i.i = add nuw i32 %idx.019.i.i.i, 1
  %11 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %12
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.FF_LAYOUT_COMP.exit.i.i.i_crit_edge, label %for.inc.i.i.i.if.else.i_crit_edge

for.inc.i.i.i.if.else.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

for.inc.i.i.i.FF_LAYOUT_COMP.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i.i.i

if.then.i:                                        ; preds = %FF_LAYOUT_COMP.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lseg.i, align 4
  tail call void @ff_layout_send_layouterror(ptr noundef %14) #17
  br label %ff_layout_resend_pnfs_read.exit

if.else.i:                                        ; preds = %for.inc.i.i.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %17 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lseg.i, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %16, ptr noundef %18) #17
  br label %ff_layout_resend_pnfs_read.exit

ff_layout_resend_pnfs_read.exit:                  ; preds = %if.else.i, %if.then.i
  %new_idx.011.i = phi i32 [ 0, %if.else.i ], [ %idx.019.i.i.i, %if.then.i ]
  tail call void @pnfs_read_resend_pnfs(ptr noundef %data, i32 noundef %new_idx.011.i) #17
  br label %if.end5

if.else:                                          ; preds = %entry
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not = icmp eq i32 %21, 0
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.else
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %23, i1 noundef zeroext false) #17
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %lseg.i14 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %26 = ptrtoint ptr %lseg.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lseg.i14, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %25, ptr noundef %27) #17
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then4.if.end5_crit_edge

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

do.body.i:                                        ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %28 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end16.i_crit_edge, label %do.end.i, !prof !262

do.body.i.do.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %tk_pid.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 22
  %29 = ptrtoint ptr %tk_pid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tk_pid.i, align 8
  %conv.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 39
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 -448
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i.i.i, align 8
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %37 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count.i, align 8
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset.i, align 8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv.i, ptr noundef %s_id.i, i64 noundef %36, i32 noundef %38, i64 noundef %40) #21
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %do.body.i.do.end16.i_crit_edge
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 8
  %offset19.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %43 = ptrtoint ptr %offset19.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %offset19.i, align 8
  %count21.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %45 = ptrtoint ptr %count21.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count21.i, align 8
  %conv22.i = zext i32 %46 to i64
  %layout.i = getelementptr i8, ptr %42, i32 -32
  %47 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %layout.i, align 8
  %49 = ptrtoint ptr %lseg.i14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lseg.i14, align 4
  tail call fastcc void @trace_pnfs_mds_fallback_read_done(ptr noundef %42, i64 noundef %44, i64 noundef %conv22.i, ptr noundef %48, ptr noundef %50) #17
  %call26.i = tail call i32 @pnfs_read_done_resend_to_mds(ptr noundef %data) #17
  %tk_status.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call26.i, ptr %tk_status.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end16.i, %if.then4.if.end5_crit_edge, %if.else.if.end5_crit_edge, %ff_layout_resend_pnfs_read.exit
  tail call void @pnfs_generic_rw_release(ptr noundef %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ff_layout_read_prepare_common(ptr noundef %task, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rpc_exit(ptr noundef %task, i32 noundef -5) #17
  br label %return

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdr, align 8
  %lseg.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %7 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lseg.i, align 4
  %pgio_mirror_idx.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %9 = ptrtoint ptr %pgio_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgio_mirror_idx.i, align 8
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i.i = icmp ugt i32 %12, %10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 4, i32 %10
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.then.i.i ], [ null, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 8
  %conv.i = zext i32 %16 to i64
  %tk_start.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 18
  %17 = ptrtoint ptr %tk_start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tk_start.i, align 8
  %lock.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #17
  %read_stat.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 14
  %call.i.i = tail call fastcc zeroext i1 @nfs4_ff_layoutstat_start_io(ptr noundef %retval.0.i.i, ptr noundef %read_stat.i.i, i64 noundef %18) #17
  %19 = ptrtoint ptr %read_stat.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %read_stat.i.i, align 8
  %inc.i.i.i = add i64 %20, 1
  store i64 %inc.i.i.i, ptr %read_stat.i.i, align 8
  %bytes_requested.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 14, i32 0, i32 1
  %21 = ptrtoint ptr %bytes_requested.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes_requested.i.i.i, align 8
  %add.i.i.i = add i64 %22, %conv.i
  store i64 %add.i.i.i, ptr %bytes_requested.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #17
  br i1 %call.i.i, label %if.then.i6.i, label %FF_LAYOUT_COMP.exit.i.return_crit_edge

FF_LAYOUT_COMP.exit.i.return_crit_edge:           ; preds = %FF_LAYOUT_COMP.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then.i6.i:                                     ; preds = %FF_LAYOUT_COMP.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i.i = tail call i32 @pnfs_report_layoutstat(ptr noundef %6, i32 noundef 3264) #17
  br label %return

return:                                           ; preds = %if.then.i6.i, %FF_LAYOUT_COMP.exit.i.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end.return_crit_edge ], [ 0, %FF_LAYOUT_COMP.exit.i.return_crit_edge ], [ 0, %if.then.i6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ff_layout_read_record_layoutstats_done(ptr nocapture noundef readonly %task, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %0 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg, align 4
  %pgio_mirror_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %2 = ptrtoint ptr %pgio_mirror_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgio_mirror_idx, align 8
  %mirror_array_cnt.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mirror_array_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mirror_array_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.i = icmp ugt i32 %5, %3
  br i1 %cmp.i, label %if.then.i, label %if.end.FF_LAYOUT_COMP.exit_crit_edge

if.end.FF_LAYOUT_COMP.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %if.then.i, %if.end.FF_LAYOUT_COMP.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.then.i ], [ null, %if.end.FF_LAYOUT_COMP.exit_crit_edge ]
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %conv = zext i32 %9 to i64
  %count2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %10 = ptrtoint ptr %count2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count2, align 8
  %lock.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #17
  %call.i = tail call i64 @ktime_get() #17
  %tk_start.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 18
  %12 = ptrtoint ptr %tk_start.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tk_start.i, align 8
  %ops_completed.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 0, i32 2
  %14 = ptrtoint ptr %ops_completed.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ops_completed.i.i, align 8
  %inc.i.i = add i64 %15, 1
  store i64 %inc.i.i, ptr %ops_completed.i.i, align 8
  %bytes_completed.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 0, i32 3
  %16 = ptrtoint ptr %bytes_completed.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bytes_completed.i.i, align 8
  %add.i.i = add i64 %17, %11
  store i64 %add.i.i, ptr %bytes_completed.i.i, align 8
  %sub1.i.i = sub i64 %conv, %11
  %bytes_not_delivered.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 0, i32 4
  %18 = ptrtoint ptr %bytes_not_delivered.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bytes_not_delivered.i.i, align 8
  %add2.i.i = add i64 %sub1.i.i, %19
  store i64 %add2.i.i, ptr %bytes_not_delivered.i.i, align 8
  %n_ops.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 1, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_ops.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %n_ops.i.i.i, i32 1, i32 3, i32 1) #17
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_ops.i.i.i, ptr %n_ops.i.i.i, i32 1, ptr elementtype(i32) %n_ops.i.i.i) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.end.i.i.i, label %FF_LAYOUT_COMP.exit.nfs4_ff_layout_stat_io_end_read.exit_crit_edge

FF_LAYOUT_COMP.exit.nfs4_ff_layout_stat_io_end_read.exit_crit_edge: ; preds = %FF_LAYOUT_COMP.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfs4_ff_layout_stat_io_end_read.exit

land.end.i.i.i:                                   ; preds = %FF_LAYOUT_COMP.exit
  %.b41.i.i.i = load i1, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.end.i.i.i.nfs4_ff_layout_stat_io_end_read.exit_crit_edge, label %if.then5.i.i.i, !prof !262

land.end.i.i.i.nfs4_ff_layout_stat_io_end_read.exit_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nfs4_ff_layout_stat_io_end_read.exit

if.then5.i.i.i:                                   ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 588, i32 noundef 9, ptr noundef null) #17
  br label %nfs4_ff_layout_stat_io_end_read.exit

nfs4_ff_layout_stat_io_end_read.exit:             ; preds = %if.then5.i.i.i, %land.end.i.i.i.nfs4_ff_layout_stat_io_end_read.exit_crit_edge, %FF_LAYOUT_COMP.exit.nfs4_ff_layout_stat_io_end_read.exit_crit_edge
  %busy_timer.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 1
  %sub.i.i = sub i64 %call.i, %13
  %21 = ptrtoint ptr %busy_timer.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %busy_timer.i.i, align 8
  store i64 %call.i, ptr %busy_timer.i.i, align 8
  %sub.i.i.i = sub i64 %call.i, %22
  %total_busy_time.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 0, i32 5
  %23 = ptrtoint ptr %total_busy_time.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %total_busy_time.i.i, align 8
  %add3.i.i = add i64 %sub.i.i.i, %24
  store i64 %add3.i.i, ptr %total_busy_time.i.i, align 8
  %aggregate_completion_time.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 14, i32 0, i32 6
  %25 = ptrtoint ptr %aggregate_completion_time.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %aggregate_completion_time.i.i, align 8
  %add5.i.i = add i64 %sub.i.i, %26
  store i64 %add5.i.i, ptr %aggregate_completion_time.i.i, align 8
  %flags.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #17
  %27 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lseg, align 4
  %pls_flags = getelementptr inbounds %struct.pnfs_layout_segment, ptr %28, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pls_flags) #17
  br label %return

return:                                           ; preds = %nfs4_ff_layout_stat_io_end_read.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_rw_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_read_resend_pnfs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_read_done(ptr noundef %inode, i64 noundef %pos, i64 noundef %count, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_done, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_read_done, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !307
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_read_done(ptr noundef null, ptr noundef %inode, i64 noundef %pos, i64 noundef %count, i32 noundef 1, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !308
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_read_done.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_read_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1912, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_read_done_resend_to_mds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_read_done(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_read_prepare_v4(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 26
  %0 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds_clp, align 8
  %args = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call = tail call i32 @nfs4_setup_sequence(ptr noundef %1, ptr noundef %args, ptr noundef %res, ptr noundef %task) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call fastcc i32 @ff_layout_read_prepare_common(ptr noundef %task, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_read_pagelist(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ff_layout_write_done_cb(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %2 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lseg, align 4
  %pgio_mirror_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %4 = ptrtoint ptr %pgio_mirror_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgio_mirror_idx, align 8
  %offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %conv = zext i32 %9 to i64
  %op_status = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 3
  tail call fastcc void @ff_layout_io_track_ds_error(ptr noundef %3, i32 noundef %5, i64 noundef %7, i64 noundef %conv, ptr noundef %op_status, i32 noundef 38, i32 noundef %1)
  tail call fastcc void @trace_ff_layout_write_error(ptr noundef %hdr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %10 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds_clp, align 8
  %lseg4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %12 = ptrtoint ptr %lseg4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lseg4, align 4
  %pgio_mirror_idx5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %14 = ptrtoint ptr %pgio_mirror_idx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pgio_mirror_idx5, align 8
  %call = tail call fastcc i32 @ff_layout_async_handle_error(ptr noundef %task, ptr noundef %11, ptr noundef %13, i32 noundef %15)
  tail call fastcc void @trace_nfs4_pnfs_write(ptr noundef %hdr, i32 noundef %call)
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #17
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #17
  %16 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call, label %sw.epilog [
    i32 -12002, label %sw.bb
    i32 -12001, label %sw.bb9
    i32 -11, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #17
  %17 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tk_status, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #17
  %19 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tk_status, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %21 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %committed = getelementptr inbounds %struct.nfs_writeverf, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %committed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %committed, align 4
  %.off = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then21, label %sw.epilog.if.end24_crit_edge

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %mds_offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 24
  %26 = ptrtoint ptr %mds_offset to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mds_offset, align 8
  %count23 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %28 = ptrtoint ptr %count23 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %count23, align 8
  %add = add i64 %29, %27
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %sw.epilog.if.end24_crit_edge
  %end_offs.0 = phi i64 [ %add, %if.then21 ], [ 0, %sw.epilog.if.end24_crit_edge ]
  %30 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdr, align 8
  %32 = ptrtoint ptr %lseg4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lseg4, align 4
  %flags.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end24.ff_layout_set_layoutcommit.exit_crit_edge

if.end24.ff_layout_set_layoutcommit.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_set_layoutcommit.exit

if.end.i:                                         ; preds = %if.end24
  tail call void @pnfs_set_layoutcommit(ptr noundef %31, ptr noundef %33, i64 noundef %end_offs.0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %36 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.ff_layout_set_layoutcommit.exit_crit_edge, label %do.end.i, !prof !262

if.end.i.ff_layout_set_layoutcommit.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_set_layoutcommit.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino.i, align 8
  %layout.i = getelementptr i8, ptr %31, i32 -32
  %39 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %layout.i, align 8
  %plh_lwb.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %plh_lwb.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %plh_lwb.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %38, i64 noundef %42) #21
  br label %ff_layout_set_layoutcommit.exit

ff_layout_set_layoutcommit.exit:                  ; preds = %do.end.i, %if.end.i.ff_layout_set_layoutcommit.exit_crit_edge, %if.end24.ff_layout_set_layoutcommit.exit_crit_edge
  %fattr = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 19
  %43 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %fattr, align 8
  %44 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp27 = icmp sgt i32 %45, -1
  br i1 %cmp27, label %if.then29, label %ff_layout_set_layoutcommit.exit.cleanup_crit_edge

ff_layout_set_layoutcommit.exit.cleanup_crit_edge: ; preds = %ff_layout_set_layoutcommit.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then29:                                        ; preds = %ff_layout_set_layoutcommit.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @nfs_writeback_update_inode(ptr noundef %hdr) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %ff_layout_set_layoutcommit.exit.cleanup_crit_edge, %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %sw.bb9 ], [ %18, %sw.bb ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %ff_layout_set_layoutcommit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_write_pagelist(ptr noundef %inode, i64 noundef %pos, i64 noundef %count, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_pagelist, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_write_pagelist, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !309
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_write_pagelist(ptr noundef null, ptr noundef %inode, i64 noundef %pos, i64 noundef %count, i32 noundef 2, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !310
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_pagelist, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_pagelist, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_write_pagelist.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_write_pagelist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1915, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ff_layout_write_error(ptr noundef %hdr) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_write_error, i32 0, i32 1), ptr blockaddress(@trace_ff_layout_write_error, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !311
  %call42 = tail call i32 @__traceiter_ff_layout_write_error(ptr noundef null, ptr noundef %hdr) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !312
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_write_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_write_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ff_layout_write_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_ff_layout_write_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 2052, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_pnfs_write(ptr noundef %hdr, i32 noundef %error) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 1), ptr blockaddress(@trace_nfs4_pnfs_write, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !313
  %call42 = tail call i32 @__traceiter_nfs4_pnfs_write(ptr noundef null, ptr noundef %hdr, i32 noundef %error) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_pnfs_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_nfs4_pnfs_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1619, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ff_layout_write_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_write_prepare_v3(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ff_layout_write_prepare_common(ptr noundef %task, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rpc_call_start(ptr noundef %task) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_write_call_done(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %3 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call1 = tail call i32 @nfs4_sequence_done(ptr noundef %task, ptr noundef %res) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mds_ops = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %mds_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mds_ops, align 8
  %rpc_call_done = getelementptr inbounds %struct.rpc_call_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rpc_call_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rpc_call_done, align 4
  tail call void %8(ptr noundef %task, ptr noundef %data) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_write_count_stats(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ff_layout_write_record_layoutstats_done.exit_crit_edge, label %if.end.i

entry.ff_layout_write_record_layoutstats_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_write_record_layoutstats_done.exit

if.end.i:                                         ; preds = %entry
  %lseg.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg.i, align 4
  %pgio_mirror_idx.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 28
  %2 = ptrtoint ptr %pgio_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgio_mirror_idx.i, align 8
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.i.i = icmp ugt i32 %5, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.then.i.i ], [ null, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %conv.i = zext i32 %9 to i64
  %count2.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21, i32 2
  %10 = ptrtoint ptr %count2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count2.i, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %committed.i = getelementptr inbounds %struct.nfs_writeverf, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %committed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %committed.i, align 4
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %task, ptr noundef %retval.0.i.i, i64 noundef %conv.i, i64 noundef %11, i32 noundef %16) #17
  %17 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lseg.i, align 4
  %pls_flags.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %18, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pls_flags.i) #17
  br label %ff_layout_write_record_layoutstats_done.exit

ff_layout_write_record_layoutstats_done.exit:     ; preds = %FF_LAYOUT_COMP.exit.i, %entry.ff_layout_write_record_layoutstats_done.exit_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 4
  %cl_metrics = getelementptr inbounds %struct.rpc_clnt, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %cl_metrics to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cl_metrics, align 4
  %arrayidx = getelementptr %struct.rpc_iostats, ptr %28, i32 2
  tail call void @rpc_count_iostats_metrics(ptr noundef %task, ptr noundef %arrayidx) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_write_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ff_layout_write_record_layoutstats_done.exit_crit_edge, label %if.end.i

entry.ff_layout_write_record_layoutstats_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_write_record_layoutstats_done.exit

if.end.i:                                         ; preds = %entry
  %lseg.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg.i, align 4
  %pgio_mirror_idx.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 28
  %2 = ptrtoint ptr %pgio_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgio_mirror_idx.i, align 8
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.i.i = icmp ugt i32 %5, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 4, i32 %3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.then.i.i ], [ null, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %conv.i = zext i32 %9 to i64
  %count2.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21, i32 2
  %10 = ptrtoint ptr %count2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count2.i, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %committed.i = getelementptr inbounds %struct.nfs_writeverf, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %committed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %committed.i, align 4
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %task, ptr noundef %retval.0.i.i, i64 noundef %conv.i, i64 noundef %11, i32 noundef %16) #17
  %17 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lseg.i, align 4
  %pls_flags.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %18, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pls_flags.i) #17
  br label %ff_layout_write_record_layoutstats_done.exit

ff_layout_write_record_layoutstats_done.exit:     ; preds = %FF_LAYOUT_COMP.exit.i, %entry.ff_layout_write_record_layoutstats_done.exit_crit_edge
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ff_layout_write_record_layoutstats_done.exit
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lseg, align 4
  tail call void @ff_layout_send_layouterror(ptr noundef %23)
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %call.i15 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %25, i1 noundef zeroext false) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %26 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.ff_layout_reset_write.exit_crit_edge, label %do.end.i, !prof !262

if.then.ff_layout_reset_write.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_reset_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %tk_pid.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 22
  %27 = ptrtoint ptr %tk_pid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tk_pid.i, align 8
  %conv.i16 = zext i16 %28 to i32
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 39
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 -448
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.i.i.i, align 8
  %count.i17 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %35 = ptrtoint ptr %count.i17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i17, align 8
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %37 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset.i, align 8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %conv.i16, ptr noundef %s_id.i, i64 noundef %34, i32 noundef %36, i64 noundef %38) #21
  br label %ff_layout_reset_write.exit

ff_layout_reset_write.exit:                       ; preds = %do.end.i, %if.then.ff_layout_reset_write.exit_crit_edge
  %completion_ops.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 10
  %39 = ptrtoint ptr %completion_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %completion_ops.i, align 8
  %reschedule_io.i = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %reschedule_io.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reschedule_io.i, align 4
  tail call void %42(ptr noundef %data) #17
  br label %if.end5

if.else:                                          ; preds = %ff_layout_write_record_layoutstats_done.exit
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i, align 4
  %45 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not = icmp eq i32 %45, 0
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.else
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 8
  %call.i18 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %47, i1 noundef zeroext false) #17
  %call16.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.body19.i, label %if.then4.if.end5_crit_edge

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

do.body19.i:                                      ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %48 = load i32, ptr @nfs_debug, align 4
  %and20.i = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.do.end49.i_crit_edge, label %do.end31.i, !prof !262

do.body19.i.do.end49.i_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i

do.end31.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #19
  %tk_pid34.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 22
  %49 = ptrtoint ptr %tk_pid34.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tk_pid34.i, align 8
  %conv35.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 8
  %i_sb37.i = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %i_sb37.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb37.i, align 4
  %s_id38.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 39
  %add.ptr.i.i80.i = getelementptr i8, ptr %52, i32 -448
  %55 = ptrtoint ptr %add.ptr.i.i80.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr.i.i80.i, align 8
  %count43.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %57 = ptrtoint ptr %count43.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count43.i, align 8
  %offset45.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %59 = ptrtoint ptr %offset45.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %offset45.i, align 8
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.64, i32 noundef %conv35.i, ptr noundef %s_id38.i, i64 noundef %56, i32 noundef %58, i64 noundef %60) #21
  br label %do.end49.i

do.end49.i:                                       ; preds = %do.end31.i, %do.body19.i.do.end49.i_crit_edge
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 8
  %offset52.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %63 = ptrtoint ptr %offset52.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %offset52.i, align 8
  %count54.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %65 = ptrtoint ptr %count54.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count54.i, align 8
  %conv55.i = zext i32 %66 to i64
  %layout.i = getelementptr i8, ptr %62, i32 -32
  %67 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %layout.i, align 8
  %lseg.i20 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %69 = ptrtoint ptr %lseg.i20 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lseg.i20, align 4
  tail call fastcc void @trace_pnfs_mds_fallback_write_done(ptr noundef %62, i64 noundef %64, i64 noundef %conv55.i, ptr noundef %68, ptr noundef %70) #17
  %call58.i = tail call i32 @pnfs_write_done_resend_to_mds(ptr noundef %data) #17
  %tk_status.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 1
  %71 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call58.i, ptr %tk_status.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end49.i, %if.then4.if.end5_crit_edge, %if.else.if.end5_crit_edge, %ff_layout_reset_write.exit
  tail call void @pnfs_generic_rw_release(ptr noundef %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ff_layout_write_prepare_common(ptr noundef %task, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rpc_exit(ptr noundef %task, i32 noundef -5) #17
  br label %return

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdr, align 8
  %lseg.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %7 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lseg.i, align 4
  %pgio_mirror_idx.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 28
  %9 = ptrtoint ptr %pgio_mirror_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgio_mirror_idx.i, align 8
  %mirror_array_cnt.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %mirror_array_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mirror_array_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i.i = icmp ugt i32 %12, %10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %FF_LAYOUT_COMP.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 4, i32 %10
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  br label %FF_LAYOUT_COMP.exit.i

FF_LAYOUT_COMP.exit.i:                            ; preds = %if.then.i.i, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.then.i.i ], [ null, %if.end.i.FF_LAYOUT_COMP.exit.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 8
  %conv.i = zext i32 %16 to i64
  %tk_start.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 18
  %17 = ptrtoint ptr %tk_start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tk_start.i, align 8
  %lock.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #17
  %write_stat.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 15
  %call.i.i = tail call fastcc zeroext i1 @nfs4_ff_layoutstat_start_io(ptr noundef %retval.0.i.i, ptr noundef %write_stat.i.i, i64 noundef %18) #17
  %19 = ptrtoint ptr %write_stat.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %write_stat.i.i, align 8
  %inc.i.i.i = add i64 %20, 1
  store i64 %inc.i.i.i, ptr %write_stat.i.i, align 8
  %bytes_requested.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 15, i32 0, i32 1
  %21 = ptrtoint ptr %bytes_requested.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes_requested.i.i.i, align 8
  %add.i.i.i = add i64 %22, %conv.i
  store i64 %add.i.i.i, ptr %bytes_requested.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %retval.0.i.i, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #17
  br i1 %call.i.i, label %if.then.i6.i, label %FF_LAYOUT_COMP.exit.i.return_crit_edge

FF_LAYOUT_COMP.exit.i.return_crit_edge:           ; preds = %FF_LAYOUT_COMP.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then.i6.i:                                     ; preds = %FF_LAYOUT_COMP.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i.i = tail call i32 @pnfs_report_layoutstat(ptr noundef %6, i32 noundef 3072) #17
  br label %return

return:                                           ; preds = %if.then.i6.i, %FF_LAYOUT_COMP.exit.i.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end.return_crit_edge ], [ 0, %FF_LAYOUT_COMP.exit.i.return_crit_edge ], [ 0, %if.then.i6.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pnfs_mds_fallback_write_done(ptr noundef %inode, i64 noundef %pos, i64 noundef %count, ptr noundef %lo, ptr noundef %lseg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_done, i32 0, i32 1), ptr blockaddress(@trace_pnfs_mds_fallback_write_done, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !276

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %call42 = tail call i32 @__traceiter_pnfs_mds_fallback_write_done(ptr noundef null, ptr noundef %inode, i64 noundef %pos, i64 noundef %count, i32 noundef 2, ptr noundef %lo, ptr noundef %lseg) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !262

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pnfs_mds_fallback_write_done.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pnfs_mds_fallback_write_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1913, ptr noundef nonnull @.str.9) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !280
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_write_done_resend_to_mds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_write_done(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_write_prepare_v4(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 26
  %0 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds_clp, align 8
  %args = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call = tail call i32 @nfs4_setup_sequence(ptr noundef %1, ptr noundef %args, ptr noundef %res, ptr noundef %task) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call fastcc i32 @ff_layout_write_prepare_common(ptr noundef %task, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_write_pagelist(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_ff_layout_free_deviceid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_alloc_deviceid_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ff_layout_mirror_prepare_stats(ptr noundef readonly %lo, ptr nocapture noundef writeonly %devinfo) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mirrors = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %lo, i32 0, i32 2
  %0 = ptrtoint ptr %mirrors to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn1 = load ptr, ptr %mirrors, align 4
  %cmp.not3 = icmp eq ptr %.pn1, %mirrors
  br i1 %cmp.not3, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %entry.if.end_crit_edge
  %.pn6 = phi ptr [ %.pn, %for.inc.if.end_crit_edge ], [ %.pn1, %entry.if.end_crit_edge ]
  %devinfo.addr.05 = phi ptr [ %devinfo.addr.1, %for.inc.if.end_crit_edge ], [ %devinfo, %entry.if.end_crit_edge ]
  %i.04 = phi i32 [ %i.1, %for.inc.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %mirror.07 = getelementptr i8, ptr %.pn6, i32 -4
  %mirror_ds = getelementptr i8, ptr %.pn6, i32 32
  %1 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mirror_ds, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %flags = getelementptr i8, ptr %.pn6, i32 120
  %call7 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end6.for.inc_crit_edge, label %if.end9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %ref = getelementptr i8, ptr %.pn6, i32 72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #17
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #17
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end9
  %5 = phi i32 [ %4, %if.end9 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #17
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %8, i32 %add.i.i.i, ptr elementtype(i32) %ref) #17, !srcloc !291
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !262

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !262

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #17
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %14 = phi i32 [ %11, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.not = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #17
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end12

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end12:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mirror_ds, align 4
  %deviceid = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %16, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %devinfo.addr.05, ptr %deviceid, i32 16)
  %offset = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 1
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %length, align 8
  %lock = getelementptr i8, ptr %.pn6, i32 76
  call void @_raw_spin_lock(ptr noundef %lock) #17
  %ops_completed = getelementptr i8, ptr %.pn6, i32 140
  %20 = ptrtoint ptr %ops_completed to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ops_completed, align 8
  %read_count = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 3
  %22 = ptrtoint ptr %read_count to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %read_count, align 8
  %bytes_completed = getelementptr i8, ptr %.pn6, i32 148
  %23 = ptrtoint ptr %bytes_completed to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes_completed, align 8
  %read_bytes = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 4
  %25 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %read_bytes, align 8
  %ops_completed17 = getelementptr i8, ptr %.pn6, i32 212
  %26 = ptrtoint ptr %ops_completed17 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ops_completed17, align 8
  %write_count = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 5
  %28 = ptrtoint ptr %write_count to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %write_count, align 8
  %bytes_completed20 = getelementptr i8, ptr %.pn6, i32 220
  %29 = ptrtoint ptr %bytes_completed20 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_completed20, align 8
  %write_bytes = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 6
  %31 = ptrtoint ptr %write_bytes to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %write_bytes, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #17
  %layout_type = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 7
  %32 = ptrtoint ptr %layout_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %layout_type, align 8
  %ld_private = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 8
  %33 = ptrtoint ptr %ld_private to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @layoutstat_ops, ptr %ld_private, align 4
  %data = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mirror.07, ptr %data, align 4
  %incdec.ptr = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %devinfo.addr.05, i32 1
  %inc = add i32 %i.04, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %i.1 = phi i32 [ %i.04, %if.end.for.inc_crit_edge ], [ %inc, %if.end12 ], [ %i.04, %refcount_inc_not_zero.exit.for.inc_crit_edge ], [ %i.04, %if.end6.for.inc_crit_edge ]
  %devinfo.addr.1 = phi ptr [ %devinfo.addr.05, %if.end.for.inc_crit_edge ], [ %incdec.ptr, %if.end12 ], [ %devinfo.addr.05, %refcount_inc_not_zero.exit.for.inc_crit_edge ], [ %devinfo.addr.05, %if.end6.for.inc_crit_edge ]
  %35 = ptrtoint ptr %.pn6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn6, align 4
  %cmp.not = icmp eq ptr %.pn, %mirrors
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1)
  %cmp3 = icmp sgt i32 %i.1, 3
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp3
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.1, %for.inc.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_encode_layoutstats(ptr noundef %xdr, ptr nocapture noundef readnone %args, ptr nocapture noundef readonly %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #17
  %data = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %opaque, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @ff_layout_encode_ff_layoutupdate(ptr noundef %xdr, ptr noundef %1)
  %2 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 -4, %sub.ptr.rhs.cast
  %mul = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %call, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_free_layoutstats(ptr nocapture noundef readonly %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %opaque, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.ff_layout_put_mirror.exit_crit_edge, label %land.lhs.true.i

entry.ff_layout_put_mirror.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_put_mirror.exit

land.lhs.true.i:                                  ; preds = %entry
  %ref.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #17, !srcloc !293
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ff_layout_put_mirror.exit_crit_edge, label %if.then10.i.i.i.i, !prof !262

if.end5.i.i.i.i.ff_layout_put_mirror.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_put_mirror.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #17
  br label %ff_layout_put_mirror.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !294
  tail call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %1) #17
  br label %ff_layout_put_mirror.exit

ff_layout_put_mirror.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ff_layout_put_mirror.exit_crit_edge, %entry.ff_layout_put_mirror.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ff_layout_encode_ff_layoutupdate(ptr noundef %xdr, ptr noundef %mirror) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp.i22.i2 = alloca %struct.timespec64, align 8
  %tmp.i.i3 = alloca %struct.timespec64, align 8
  %tmp.i22.i = alloca %struct.timespec64, align 8
  %tmp.i.i = alloca %struct.timespec64, align 8
  %portbuf.i = alloca [9 x i8], align 1
  %addrbuf.i = alloca [57 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %0 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror_ds, align 4
  %ds1 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %fh_versions = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 7
  %4 = ptrtoint ptr %fh_versions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_versions, align 4
  %ds_addrs = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ds_addrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds_addrs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %8 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !262

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ds_remotestr = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ds_remotestr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds_remotestr, align 4
  %da_remotestr = getelementptr i8, ptr %7, i32 8
  %11 = ptrtoint ptr %da_remotestr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %da_remotestr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef %10, ptr noundef %12) #21
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %add.ptr = getelementptr i8, ptr %7, i32 -132
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %portbuf.i) #17
  %13 = call ptr @memset(ptr %portbuf.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %addrbuf.i) #17
  %14 = call ptr @memset(ptr %addrbuf.i, i32 255, i32 57)
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %16, label %land.end.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %do.end7
  %sin_addr.i.i = getelementptr i8, ptr %7, i32 -128
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %addrbuf.i, i32 noundef 57, ptr noundef nonnull @.str.70, ptr noundef %sin_addr.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.i.ff_layout_encode_netaddr.exit_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.bb.i.ff_layout_encode_netaddr.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_netaddr.exit

sw.bb2.i:                                         ; preds = %do.end7
  %sin6_addr.i.i = getelementptr i8, ptr %7, i32 -124
  %18 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin6_addr.i.i, align 4
  %arrayidx2.i.i.i = getelementptr i8, ptr %7, i32 -120
  %20 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %21, %19
  %arrayidx4.i.i.i = getelementptr i8, ptr %7, i32 -116
  %22 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %23
  %arrayidx7.i.i.i = getelementptr i8, ptr %7, i32 -112
  %24 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or8.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = call ptr @memcpy(ptr %addrbuf.i, ptr @.str.71, i32 3)
  br label %sw.epilog.i

if.end.i.i:                                       ; preds = %sw.bb2.i
  %xor.i.i.i = xor i32 %25, 1
  %or8.i6.i.i = or i32 %xor.i.i.i, %or5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i6.i.i)
  %cmp.i7.i.i = icmp eq i32 %or8.i6.i.i, 0
  br i1 %cmp.i7.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %addrbuf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 976892160, ptr %addrbuf.i, align 4
  br label %sw.epilog.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %xor.i11.i.i = xor i32 %23, 65535
  %or5.i12.i.i = or i32 %xor.i11.i.i, %or.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i12.i.i)
  %cmp.i13.i.i = icmp eq i32 %or5.i12.i.i, 0
  br i1 %cmp.i13.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %addrbuf.i, i32 noundef 57, ptr noundef nonnull @.str.73, ptr noundef %arrayidx7.i.i.i) #17
  br label %ff_layout_ntop6_noscopeid.exit.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call10.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %addrbuf.i, i32 noundef 57, ptr noundef nonnull @.str.74, ptr noundef %sin6_addr.i.i) #17
  br label %ff_layout_ntop6_noscopeid.exit.i

ff_layout_ntop6_noscopeid.exit.i:                 ; preds = %if.end9.i.i, %if.then7.i.i
  %retval.0.i.i = phi i32 [ %call8.i.i, %if.then7.i.i ], [ %call10.i.i, %if.end9.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp5.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp5.i, label %ff_layout_ntop6_noscopeid.exit.i.ff_layout_encode_netaddr.exit_crit_edge, label %ff_layout_ntop6_noscopeid.exit.i.sw.epilog.i_crit_edge

ff_layout_ntop6_noscopeid.exit.i.sw.epilog.i_crit_edge: ; preds = %ff_layout_ntop6_noscopeid.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

ff_layout_ntop6_noscopeid.exit.i.ff_layout_encode_netaddr.exit_crit_edge: ; preds = %ff_layout_ntop6_noscopeid.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_netaddr.exit

land.end.i:                                       ; preds = %do.end7
  %.b78.i = load i1, ptr @ff_layout_encode_netaddr.__already_done, align 1
  br i1 %.b78.i, label %land.end.i.ff_layout_encode_netaddr.exit_crit_edge, label %if.then14.i, !prof !262

land.end.i.ff_layout_encode_netaddr.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_netaddr.exit

if.then14.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ff_layout_encode_netaddr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2297, i32 noundef 9, ptr noundef null) #17
  br label %ff_layout_encode_netaddr.exit

sw.epilog.i:                                      ; preds = %ff_layout_ntop6_noscopeid.exit.i.sw.epilog.i_crit_edge, %if.then3.i.i, %if.then.i.i, %sw.bb.i.sw.epilog.i_crit_edge
  %port.0.in.i = getelementptr i8, ptr %7, i32 -130
  %28 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %port.0.i = load i16, ptr %port.0.in.i, align 2
  %conv45.i = zext i16 %port.0.i to i32
  %29 = lshr i32 %conv45.i, 8
  %and.i = and i32 %conv45.i, 255
  %call47.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %portbuf.i, i32 noundef 9, ptr noundef nonnull @.str.69, i32 noundef %29, i32 noundef %and.i) #17
  %call50.i = call i32 @strlcat(ptr noundef nonnull %addrbuf.i, ptr noundef nonnull %portbuf.i, i32 noundef 57) #17
  %da_netid.i = getelementptr i8, ptr %7, i32 12
  %30 = ptrtoint ptr %da_netid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %da_netid.i, align 4
  %call51.i = call i32 @strlen(ptr noundef %31) #25
  %add.i = add i32 %call51.i, 4
  %call52.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #17
  %32 = ptrtoint ptr %da_netid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %da_netid.i, align 4
  %call54.i = call ptr @xdr_encode_opaque(ptr noundef %call52.i, ptr noundef %33, i32 noundef %call51.i) #17
  %add55.i = add i32 %call50.i, 4
  %call56.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add55.i) #17
  %call58.i = call ptr @xdr_encode_opaque(ptr noundef %call56.i, ptr noundef nonnull %addrbuf.i, i32 noundef %call50.i) #17
  br label %ff_layout_encode_netaddr.exit

ff_layout_encode_netaddr.exit:                    ; preds = %sw.epilog.i, %if.then14.i, %land.end.i.ff_layout_encode_netaddr.exit_crit_edge, %ff_layout_ntop6_noscopeid.exit.i.ff_layout_encode_netaddr.exit_crit_edge, %sw.bb.i.ff_layout_encode_netaddr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %addrbuf.i) #17
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %portbuf.i) #17
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %5, align 2
  %conv = zext i16 %35 to i32
  %add = add nuw nsw i32 %conv, 4
  %call8 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add) #17
  %data = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %5, align 2
  %conv10 = zext i16 %37 to i32
  %call11 = call ptr @xdr_encode_opaque(ptr noundef %call8, ptr noundef %data, i32 noundef %conv10) #17
  %lock = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock) #17
  %read_stat = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14
  %call.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 40) #17
  %38 = ptrtoint ptr %read_stat to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %read_stat, align 8
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %call.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 2
  %bytes_requested.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14, i32 0, i32 1
  %41 = ptrtoint ptr %bytes_requested.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bytes_requested.i, align 8
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %add.ptr.i.i, align 1
  %add.ptr.i18.i = getelementptr i32, ptr %call.i, i32 4
  %ops_completed.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14, i32 0, i32 2
  %44 = ptrtoint ptr %ops_completed.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ops_completed.i, align 8
  %46 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %add.ptr.i18.i, align 1
  %add.ptr.i19.i = getelementptr i32, ptr %call.i, i32 6
  %bytes_completed.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14, i32 0, i32 3
  %47 = ptrtoint ptr %bytes_completed.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %bytes_completed.i, align 8
  %49 = ptrtoint ptr %add.ptr.i19.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %add.ptr.i19.i, align 1
  %add.ptr.i20.i = getelementptr i32, ptr %call.i, i32 8
  %bytes_not_delivered.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14, i32 0, i32 4
  %50 = ptrtoint ptr %bytes_not_delivered.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %bytes_not_delivered.i, align 8
  %52 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %add.ptr.i20.i, align 1
  %total_busy_time.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14, i32 0, i32 5
  %53 = ptrtoint ptr %total_busy_time.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %total_busy_time.i, align 8
  %call.i.i1 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, i64 noundef %54) #17
  %55 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %ts.sroa.0.0.copyload3.i.i = load i64, ptr %tmp.i.i, align 8
  %ts.sroa.5.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 8
  %56 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %ts.sroa.5.0.copyload4.i.i = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #17
  %57 = ptrtoint ptr %call.i.i1 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %ts.sroa.0.0.copyload3.i.i, ptr %call.i.i1, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i.i1, i32 2
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %ts.sroa.5.0.copyload4.i.i, ptr %add.ptr.i.i.i, align 4
  %aggregate_completion_time.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 14, i32 0, i32 6
  %59 = ptrtoint ptr %aggregate_completion_time.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %aggregate_completion_time.i, align 8
  %call.i23.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i22.i) #17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i22.i, i64 noundef %60) #17
  %61 = ptrtoint ptr %tmp.i22.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %ts.sroa.0.0.copyload3.i24.i = load i64, ptr %tmp.i22.i, align 8
  %ts.sroa.5.0.tmp.sroa_idx.i25.i = getelementptr inbounds i8, ptr %tmp.i22.i, i32 8
  %62 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx.i25.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %ts.sroa.5.0.copyload4.i26.i = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx.i25.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i22.i) #17
  %63 = ptrtoint ptr %call.i23.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %ts.sroa.0.0.copyload3.i24.i, ptr %call.i23.i, align 1
  %add.ptr.i.i27.i = getelementptr i32, ptr %call.i23.i, i32 2
  %64 = ptrtoint ptr %add.ptr.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %ts.sroa.5.0.copyload4.i26.i, ptr %add.ptr.i.i27.i, align 4
  %write_stat = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15
  %call.i4 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 40) #17
  %65 = ptrtoint ptr %write_stat to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %write_stat, align 8
  %67 = ptrtoint ptr %call.i4 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %66, ptr %call.i4, align 1
  %add.ptr.i.i5 = getelementptr i32, ptr %call.i4, i32 2
  %bytes_requested.i6 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 1
  %68 = ptrtoint ptr %bytes_requested.i6 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bytes_requested.i6, align 8
  %70 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %69, ptr %add.ptr.i.i5, align 1
  %add.ptr.i18.i7 = getelementptr i32, ptr %call.i4, i32 4
  %ops_completed.i8 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 2
  %71 = ptrtoint ptr %ops_completed.i8 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %ops_completed.i8, align 8
  %73 = ptrtoint ptr %add.ptr.i18.i7 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %add.ptr.i18.i7, align 1
  %add.ptr.i19.i9 = getelementptr i32, ptr %call.i4, i32 6
  %bytes_completed.i10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 3
  %74 = ptrtoint ptr %bytes_completed.i10 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %bytes_completed.i10, align 8
  %76 = ptrtoint ptr %add.ptr.i19.i9 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %add.ptr.i19.i9, align 1
  %add.ptr.i20.i11 = getelementptr i32, ptr %call.i4, i32 8
  %bytes_not_delivered.i12 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 4
  %77 = ptrtoint ptr %bytes_not_delivered.i12 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %bytes_not_delivered.i12, align 8
  %79 = ptrtoint ptr %add.ptr.i20.i11 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %78, ptr %add.ptr.i20.i11, align 1
  %total_busy_time.i13 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 5
  %80 = ptrtoint ptr %total_busy_time.i13 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %total_busy_time.i13, align 8
  %call.i.i14 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i3) #17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i3, i64 noundef %81) #17
  %82 = ptrtoint ptr %tmp.i.i3 to i32
  call void @__asan_load8_noabort(i32 %82)
  %ts.sroa.0.0.copyload3.i.i15 = load i64, ptr %tmp.i.i3, align 8
  %ts.sroa.5.0.tmp.sroa_idx.i.i16 = getelementptr inbounds i8, ptr %tmp.i.i3, i32 8
  %83 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %83)
  %ts.sroa.5.0.copyload4.i.i17 = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx.i.i16, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i3) #17
  %84 = ptrtoint ptr %call.i.i14 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %ts.sroa.0.0.copyload3.i.i15, ptr %call.i.i14, align 1
  %add.ptr.i.i.i18 = getelementptr i32, ptr %call.i.i14, i32 2
  %85 = ptrtoint ptr %add.ptr.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %ts.sroa.5.0.copyload4.i.i17, ptr %add.ptr.i.i.i18, align 4
  %aggregate_completion_time.i19 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 15, i32 0, i32 6
  %86 = ptrtoint ptr %aggregate_completion_time.i19 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %aggregate_completion_time.i19, align 8
  %call.i23.i20 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i22.i2) #17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i22.i2, i64 noundef %87) #17
  %88 = ptrtoint ptr %tmp.i22.i2 to i32
  call void @__asan_load8_noabort(i32 %88)
  %ts.sroa.0.0.copyload3.i24.i21 = load i64, ptr %tmp.i22.i2, align 8
  %ts.sroa.5.0.tmp.sroa_idx.i25.i22 = getelementptr inbounds i8, ptr %tmp.i22.i2, i32 8
  %89 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx.i25.i22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %ts.sroa.5.0.copyload4.i26.i23 = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx.i25.i22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i22.i2) #17
  %90 = ptrtoint ptr %call.i23.i20 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %ts.sroa.0.0.copyload3.i24.i21, ptr %call.i23.i20, align 1
  %add.ptr.i.i27.i24 = getelementptr i32, ptr %call.i23.i20, i32 2
  %91 = ptrtoint ptr %add.ptr.i.i27.i24 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %ts.sroa.5.0.copyload4.i26.i23, ptr %add.ptr.i.i27.i24, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #17
  %call14 = call i64 @ktime_get() #17
  %start_time = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 16
  %92 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %start_time, align 8
  %sub = sub i64 %call14, %93
  %call.i25 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %sub) #17
  %94 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %ts.sroa.0.0.copyload3.i = load i64, ptr %tmp.i, align 8
  %ts.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %95 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %ts.sroa.5.0.copyload4.i = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #17
  %96 = ptrtoint ptr %call.i25 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %ts.sroa.0.0.copyload3.i, ptr %call.i25, align 1
  %add.ptr.i.i26 = getelementptr i32, ptr %call.i25, i32 2
  %97 = ptrtoint ptr %add.ptr.i.i26 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %ts.sroa.5.0.copyload4.i, ptr %add.ptr.i.i26, align 4
  %call15 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #17
  %98 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %call15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_encode_layoutreturn(ptr noundef %xdr, ptr nocapture noundef readonly %voidargs, ptr nocapture noundef readonly %ff_opaque) #0 align 64 {
entry:
  %tmp_buf = alloca %struct.xdr_buf, align 4
  %tmp_xdr = alloca %struct.xdr_stream, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %ff_opaque, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp_buf) #17
  %2 = getelementptr inbounds i8, ptr %tmp_buf, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %pages = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %call = tail call ptr @page_address(ptr noundef %5) #17
  %6 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %tmp_buf, align 4
  %buflen = getelementptr inbounds %struct.xdr_buf, ptr %tmp_buf, i32 0, i32 7
  %7 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %buflen, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp_xdr) #17
  %8 = call ptr @memset(ptr %tmp_xdr, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !262

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #21
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @xdr_init_encode(ptr noundef nonnull %tmp_xdr, ptr noundef nonnull %tmp_buf, ptr noundef null, ptr noundef null) #17
  %call.i = call ptr @xdr_reserve_space(ptr noundef nonnull %tmp_xdr, i32 noundef 4) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end7.ff_layout_encode_ioerr.exit_crit_edge, label %if.end.i, !prof !264

do.end7.ff_layout_encode_ioerr.exit_crit_edge:    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_ioerr.exit

if.end.i:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  %num_errors.i = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %num_errors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_errors.i, align 8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 4
  %call4.i = call i32 @ff_layout_encode_ds_ioerr(ptr noundef nonnull %tmp_xdr, ptr noundef %1) #17
  br label %ff_layout_encode_ioerr.exit

ff_layout_encode_ioerr.exit:                      ; preds = %if.end.i, %do.end7.ff_layout_encode_ioerr.exit_crit_edge
  %call.i35 = call ptr @xdr_reserve_space(ptr noundef nonnull %tmp_xdr, i32 noundef 4) #17
  %num_dev.i = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %num_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_dev.i, align 4
  %15 = ptrtoint ptr %call.i35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i35, align 4
  %16 = load i32, ptr %num_dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.not.i = icmp eq i32 %16, 0
  br i1 %cmp7.not.i, label %ff_layout_encode_ioerr.exit.ff_layout_encode_iostats_array.exit_crit_edge, label %for.body.lr.ph.i

ff_layout_encode_ioerr.exit.ff_layout_encode_iostats_array.exit_crit_edge: ; preds = %ff_layout_encode_ioerr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_iostats_array.exit

for.body.lr.ph.i:                                 ; preds = %ff_layout_encode_ioerr.exit
  %layout.i = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %voidargs, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %ff_layout_encode_ff_iostat.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %ff_layout_encode_ff_iostat.exit.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout.i, align 8
  %arrayidx.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i
  %call.i.i.i = call ptr @xdr_reserve_space(ptr noundef nonnull %tmp_xdr, i32 noundef 16) #17
  %offset.i.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 1
  %19 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset.i.i.i, align 8
  %21 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %call.i.i.i, align 1
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %length.i.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 2
  %22 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length.i.i.i, align 8
  %24 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %add.ptr.i.i.i.i, align 1
  %call.i.i.i.i.i = call ptr @xdr_reserve_space(ptr noundef nonnull %tmp_xdr, i32 noundef 16) #17
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %land.rhs.i.i.i.i, label %xdr_stream_encode_opaque_fixed.exit.i.i.i.i, !prof !264

xdr_stream_encode_opaque_fixed.exit.i.i.i.i:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %plh_stateid.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %18, i32 0, i32 9
  %call4.i.i.i.i.i = call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %call.i.i.i.i.i, ptr noundef %plh_stateid.i, i32 noundef 16) #17
  br label %encode_opaque_fixed.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i
  %.b1.i.i.i.i = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.encode_opaque_fixed.exit.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.encode_opaque_fixed.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %encode_opaque_fixed.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2020, i32 noundef 9, ptr noundef null) #17
  br label %encode_opaque_fixed.exit.i.i.i

encode_opaque_fixed.exit.i.i.i:                   ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.encode_opaque_fixed.exit.i.i.i_crit_edge, %xdr_stream_encode_opaque_fixed.exit.i.i.i.i
  %call3.i.i.i = call ptr @xdr_reserve_space(ptr noundef nonnull %tmp_xdr, i32 noundef 32) #17
  %read_count.i.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 3
  %25 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %read_count.i.i.i, align 8
  %27 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %call3.i.i.i, align 1
  %add.ptr.i24.i.i.i = getelementptr i32, ptr %call3.i.i.i, i32 2
  %read_bytes.i.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 4
  %28 = ptrtoint ptr %read_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %read_bytes.i.i.i, align 8
  %30 = ptrtoint ptr %add.ptr.i24.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %add.ptr.i24.i.i.i, align 1
  %add.ptr.i25.i.i.i = getelementptr i32, ptr %call3.i.i.i, i32 4
  %write_count.i.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 5
  %31 = ptrtoint ptr %write_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %write_count.i.i.i, align 8
  %33 = ptrtoint ptr %add.ptr.i25.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %add.ptr.i25.i.i.i, align 1
  %add.ptr.i26.i.i.i = getelementptr i32, ptr %call3.i.i.i, i32 6
  %write_bytes.i.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 6
  %34 = ptrtoint ptr %write_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %write_bytes.i.i.i, align 8
  %36 = ptrtoint ptr %add.ptr.i26.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %add.ptr.i26.i.i.i, align 1
  %call.i.i28.i.i.i = call ptr @xdr_reserve_space(ptr noundef nonnull %tmp_xdr, i32 noundef 16) #17
  %tobool.not.i.i29.i.i.i = icmp eq ptr %call.i.i28.i.i.i, null
  br i1 %tobool.not.i.i29.i.i.i, label %land.rhs.i33.i.i.i, label %xdr_stream_encode_opaque_fixed.exit.i31.i.i.i, !prof !264

xdr_stream_encode_opaque_fixed.exit.i31.i.i.i:    ; preds = %encode_opaque_fixed.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i.i30.i.i.i = call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %call.i.i28.i.i.i, ptr noundef %arrayidx.i, i32 noundef 16) #17
  br label %ff_layout_encode_ff_iostat.exit.i

land.rhs.i33.i.i.i:                               ; preds = %encode_opaque_fixed.exit.i.i.i
  %.b1.i32.i.i.i = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %.b1.i32.i.i.i, label %land.rhs.i33.i.i.i.ff_layout_encode_ff_iostat.exit.i_crit_edge, label %if.then.i34.i.i.i, !prof !262

land.rhs.i33.i.i.i.ff_layout_encode_ff_iostat.exit.i_crit_edge: ; preds = %land.rhs.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_ff_iostat.exit.i

if.then.i34.i.i.i:                                ; preds = %land.rhs.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2020, i32 noundef 9, ptr noundef null) #17
  br label %ff_layout_encode_ff_iostat.exit.i

ff_layout_encode_ff_iostat.exit.i:                ; preds = %if.then.i34.i.i.i, %land.rhs.i33.i.i.i.ff_layout_encode_ff_iostat.exit.i_crit_edge, %xdr_stream_encode_opaque_fixed.exit.i31.i.i.i
  %data.i.i = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1, i32 %i.08.i, i32 8, i32 1
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  call fastcc void @ff_layout_encode_ff_layoutupdate(ptr noundef nonnull %tmp_xdr, ptr noundef %38) #17
  %inc.i = add nuw i32 %i.08.i, 1
  %39 = ptrtoint ptr %num_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_dev.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %ff_layout_encode_ff_iostat.exit.i.for.body.i_crit_edge, label %ff_layout_encode_ff_iostat.exit.i.ff_layout_encode_iostats_array.exit_crit_edge

ff_layout_encode_ff_iostat.exit.i.ff_layout_encode_iostats_array.exit_crit_edge: ; preds = %ff_layout_encode_ff_iostat.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_encode_iostats_array.exit

ff_layout_encode_ff_iostat.exit.i.for.body.i_crit_edge: ; preds = %ff_layout_encode_ff_iostat.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

ff_layout_encode_iostats_array.exit:              ; preds = %ff_layout_encode_ff_iostat.exit.i.ff_layout_encode_iostats_array.exit_crit_edge, %ff_layout_encode_ioerr.exit.ff_layout_encode_iostats_array.exit_crit_edge
  %call9 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #17
  %len = getelementptr inbounds %struct.xdr_buf, ptr %tmp_buf, i32 0, i32 8
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %43 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call9, align 4
  %44 = load i32, ptr %len, align 4
  call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %pages, i32 noundef 0, i32 noundef %44) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %45 = load i32, ptr @nfs_debug, align 4
  %and13 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %ff_layout_encode_iostats_array.exit.do.end29_crit_edge, label %do.end24, !prof !262

ff_layout_encode_iostats_array.exit.do.end29_crit_edge: ; preds = %ff_layout_encode_iostats_array.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

do.end24:                                         ; preds = %ff_layout_encode_iostats_array.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76) #21
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %ff_layout_encode_iostats_array.exit.do.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_xdr) #17
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp_buf) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ff_layout_free_layoutreturn(ptr nocapture noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data, align 4
  tail call void @ff_layout_free_ds_ioerr(ptr noundef nonnull %1) #17
  %devinfo = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 1
  %num_dev = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %num_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp22.not.i = icmp eq i32 %4, 0
  br i1 %cmp22.not.i, label %if.end.ff_layout_free_iostats_array.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ff_layout_free_iostats_array.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_free_iostats_array.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %ld_private.i = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %devinfo, i32 %i.023.i, i32 8
  %5 = ptrtoint ptr %ld_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ld_private.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %free.i = getelementptr inbounds %struct.nfs4_xdr_opaque_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %8(ptr noundef %ld_private.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.ff_layout_free_iostats_array.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.ff_layout_free_iostats_array.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ff_layout_free_iostats_array.exit

ff_layout_free_iostats_array.exit:                ; preds = %for.inc.i.ff_layout_free_iostats_array.exit_crit_edge, %if.end.ff_layout_free_iostats_array.exit_crit_edge
  %pages = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages, align 8
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !262

if.then.i.i:                                      ; preds = %ff_layout_free_iostats_array.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ff_layout_free_iostats_array.exit
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !264

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.80) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #17, !srcloc !317
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #17
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #17, !srcloc !274
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ff_layout_free_layoutreturn, %if.then.i.i.i.i.i)) #17
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !276

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %15, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #17
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_page(ptr noundef %15) #17
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #17
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ff_layout_encode_ds_ioerr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_register_layoutdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readnone }
attributes #24 = { nobuiltin }
attributes #25 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !143, !145, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !170, !171, !172, !173, !175, !176, !178, !180, !181, !183, !184, !185, !186, !188, !189, !191, !192, !194, !196, !197, !198, !199, !201, !202, !204, !205, !207, !209, !210, !212, !214, !215, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !236, !237, !238, !240, !241, !242, !244, !246, !248, !249, !250, !251}
!llvm.named.register.sp = !{!252}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2518, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4flexfilelayout_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4flexfilelayout_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias722, !7, !"__UNIQUE_ID_alias722", i1 false, i1 false}
!7 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2523, i32 1}
!8 = !{ptr @__UNIQUE_ID_file723, !9, !"__UNIQUE_ID_file723", i1 false, i1 false}
!9 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2525, i32 1}
!10 = !{ptr @__UNIQUE_ID_license724, !9, !"__UNIQUE_ID_license724", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description725, !12, !"__UNIQUE_ID_description725", i1 false, i1 false}
!12 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2526, i32 1}
!13 = !{ptr @__initcall__kmod_nfs_layout_flexfiles__726_2528_nfs4flexfilelayout_init6, !14, !"__initcall__kmod_nfs_layout_flexfiles__726_2528_nfs4flexfilelayout_init6", i1 false, i1 false}
!14 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2528, i32 1}
!15 = !{ptr @__exitcall_nfs4flexfilelayout_exit, !16, !"__exitcall_nfs4flexfilelayout_exit", i1 false, i1 false}
!16 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2529, i32 1}
!17 = !{ptr @__param_io_maxretrans, !18, !"__param_io_maxretrans", i1 false, i1 false}
!18 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2531, i32 1}
!19 = !{ptr @__UNIQUE_ID_io_maxretranstype727, !18, !"__UNIQUE_ID_io_maxretranstype727", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_io_maxretrans728, !21, !"__UNIQUE_ID_io_maxretrans728", i1 false, i1 false}
!21 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2532, i32 1}
!22 = !{ptr @io_maxretrans, !23, !"io_maxretrans", i1 false, i1 false}
!23 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 33, i32 23}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2487, i32 12}
!26 = !{ptr @flexfilelayout_type, !27, !"flexfilelayout_type", i1 false, i1 false}
!27 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2485, i32 38}
!28 = !{ptr @ff_layout_commit_ops, !29, !"ff_layout_commit_ops", i1 false, i1 false}
!29 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2475, i32 37}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1926, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ff_layout_initiate_commit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ff_layout_initiate_commit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1281, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ff_layout_io_track_ds_error._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ff_layout_io_track_ds_error._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 2054, i32 1}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1220, i32 3}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1181, i32 3}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ff_layout_async_handle_error_v3._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ff_layout_async_handle_error_v3._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1105, i32 3}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ff_layout_async_handle_error_v4._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ff_layout_async_handle_error_v4._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1123, i32 3}
!62 = !{ptr @ff_layout_async_handle_error_v4._entry.15, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ff_layout_async_handle_error_v4._entry_ptr.17, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ff_layout_async_handle_error_v4._entry.18, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1143, i32 3}
!66 = !{ptr @ff_layout_async_handle_error_v4._entry_ptr.19, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1153, i32 3}
!69 = !{ptr @ff_layout_async_handle_error_v4._entry.20, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ff_layout_async_handle_error_v4._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1681, i32 1}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1346, i32 2}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ff_layout_set_layoutcommit._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ff_layout_set_layoutcommit._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @ff_layout_commit_call_ops_v3, !80, !"ff_layout_commit_call_ops_v3", i1 false, i1 false}
!80 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1727, i32 34}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 588, i32 3}
!83 = !{ptr @ff_layout_commit_call_ops_v4, !84, !"ff_layout_commit_call_ops_v4", i1 false, i1 false}
!84 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1734, i32 34}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/cred.h", i32 286, i32 3}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 374, i32 2}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ff_layout_alloc_lseg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ff_layout_alloc_lseg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 391, i32 2}
!94 = !{ptr @ff_layout_alloc_lseg._entry.28, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ff_layout_alloc_lseg._entry_ptr.30, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 522, i32 3}
!98 = !{ptr @ff_layout_alloc_lseg._entry.31, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ff_layout_alloc_lseg._entry_ptr.33, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 542, i32 2}
!104 = !{ptr @ff_layout_alloc_lseg._entry.36, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ff_layout_alloc_lseg._entry_ptr.38, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 549, i32 2}
!108 = !{ptr @ff_layout_alloc_lseg._entry.39, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ff_layout_alloc_lseg._entry_ptr.41, !107, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!112 = !{ptr @ff_layout_alloc_mirror.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 225, i32 3}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 84, i32 2}
!117 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @decode_pnfs_stateid._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @decode_pnfs_stateid._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 110, i32 3}
!122 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @decode_nfs_fh._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @decode_nfs_fh._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 119, i32 2}
!127 = !{ptr @decode_nfs_fh._entry.48, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @decode_nfs_fh._entry_ptr.50, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 146, i32 2}
!131 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @decode_name._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @decode_name._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 558, i32 2}
!136 = !{ptr @ff_layout_free_lseg._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ff_layout_free_lseg._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @ff_layout_pg_read_ops, !139, !"ff_layout_pg_read_ops", i1 false, i1 false}
!139 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 997, i32 36}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1909, i32 1}
!142 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!143 = !{ptr @ff_layout_pg_write_ops, !144, !"ff_layout_pg_write_ops", i1 false, i1 false}
!144 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1004, i32 36}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1910, i32 1}
!147 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1911, i32 1}
!150 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1754, i32 2}
!153 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ff_layout_read_pagelist._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ff_layout_read_pagelist._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1774, i32 2}
!158 = !{ptr @ff_layout_read_pagelist._entry.56, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ff_layout_read_pagelist._entry_ptr.58, !157, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 2051, i32 1}
!162 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1544, i32 1}
!165 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!166 = !{ptr @ff_layout_read_call_ops_v3, !167, !"ff_layout_read_call_ops_v3", i1 false, i1 false}
!167 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1699, i32 34}
!168 = !{ptr @.str.59, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1070, i32 3}
!170 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ff_layout_reset_read._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ff_layout_reset_read._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1912, i32 1}
!175 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!176 = !{ptr @ff_layout_read_call_ops_v4, !177, !"ff_layout_read_call_ops_v4", i1 false, i1 false}
!177 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1706, i32 34}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1914, i32 1}
!180 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1840, i32 2}
!183 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @ff_layout_write_pagelist._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @ff_layout_write_pagelist._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 2052, i32 1}
!188 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1619, i32 1}
!191 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!192 = !{ptr @ff_layout_write_call_ops_v3, !193, !"ff_layout_write_call_ops_v3", i1 false, i1 false}
!193 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1713, i32 34}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1021, i32 3}
!196 = !{ptr @.str.64, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ff_layout_reset_write._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @ff_layout_reset_write._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @ff_layout_reset_write._entry.65, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1034, i32 3}
!201 = !{ptr @ff_layout_reset_write._entry_ptr.66, !200, !"_entry_ptr", i1 false, i1 false}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1913, i32 1}
!204 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!205 = !{ptr @ff_layout_write_call_ops_v4, !206, !"ff_layout_write_call_ops_v4", i1 false, i1 false}
!206 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 1720, i32 34}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../fs/nfs/flexfilelayout/../nfs4trace.h", i32 1915, i32 1}
!209 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!210 = !{ptr @layoutstat_ops, !211, !"layoutstat_ops", i1 false, i1 false}
!211 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2395, i32 41}
!212 = !{ptr @.str.67, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2352, i32 2}
!214 = !{ptr @.str.68, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @ff_layout_encode_ff_layoutupdate._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @ff_layout_encode_ff_layoutupdate._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!218 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2297, i32 3}
!219 = !{ptr @.str.69, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2301, i32 37}
!221 = !{ptr @.str.70, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2232, i32 31}
!223 = !{ptr @.str.71, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2248, i32 32}
!225 = distinct !{null, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2256, i32 32}
!227 = !{ptr @.str.73, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2265, i32 32}
!229 = !{ptr @.str.74, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2271, i32 31}
!231 = !{ptr @layoutreturn_ops, !232, !"layoutreturn_ops", i1 false, i1 false}
!232 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2144, i32 41}
!233 = !{ptr @.str.75, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2113, i32 2}
!235 = !{ptr @.str.76, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ff_layout_encode_layoutreturn._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @ff_layout_encode_layoutreturn._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.78, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2124, i32 2}
!240 = !{ptr @ff_layout_encode_layoutreturn._entry.77, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @ff_layout_encode_layoutreturn._entry_ptr.79, !239, !"_entry_ptr", i1 false, i1 false}
!242 = distinct !{null, !243, !"__already_done", i1 false, i1 false}
!243 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2020, i32 2}
!244 = !{ptr @.str.80, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../include/linux/mm.h", i32 717, i32 2}
!246 = !{ptr @.str.81, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/nfs/flexfilelayout/flexfilelayout.c", i32 2511, i32 2}
!248 = !{ptr @.str.82, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @nfs4flexfilelayout_init._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @nfs4flexfilelayout_init._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @__param_str_io_maxretrans, !18, !"__param_str_io_maxretrans", i1 false, i1 false}
!252 = !{!"sp"}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"branch_weights", i32 2000, i32 1}
!263 = !{!"auto-init"}
!264 = !{!"branch_weights", i32 1, i32 2000}
!265 = !{i64 2160051700}
!266 = !{i64 865265, i64 865282, i64 865306, i64 865332, i64 865350}
!267 = !{i64 2160052046}
!268 = !{i64 2160058124}
!269 = !{i64 2160061847}
!270 = !{i64 2160066254}
!271 = !{i64 2160072332}
!272 = !{i64 2148360027, i64 2148360059, i64 2148360088, i64 2148360122, i64 2148360153, i64 2148360176}
!273 = !{i64 2148446949}
!274 = !{i64 2148361682, i64 2148361714, i64 2148361743, i64 2148361777, i64 2148361808, i64 2148361831}
!275 = !{i64 2148447178}
!276 = !{i64 2148840312, i64 2148840317, i64 2148840330, i64 2148840374, i64 2148840408, i64 2148840429}
!277 = !{i64 2159792391}
!278 = !{i64 2159792606}
!279 = !{i64 2149443357}
!280 = !{i64 2149444393}
!281 = !{i64 750978, i64 751039}
!282 = !{i64 753710}
!283 = !{i64 753995}
!284 = !{i64 2159393140}
!285 = !{i64 2159393363}
!286 = !{i64 2148443908}
!287 = !{i64 2148359217, i64 2148359249, i64 2148359278, i64 2148359312, i64 2148359343, i64 2148359366}
!288 = !{i64 2148444137}
!289 = !{i64 1263200, i64 1263227}
!290 = !{i64 1263895, i64 1263922, i64 1263955, i64 1263976, i64 1264003, i64 1264029}
!291 = !{i64 842233, i64 842257, i64 842278, i64 842295, i64 842312}
!292 = !{i64 2148448028}
!293 = !{i64 2148362492, i64 2148362524, i64 2148362553, i64 2148362587, i64 2148362618, i64 2148362641}
!294 = !{i64 2149384308}
!295 = !{i64 2159548034}
!296 = !{i64 2159548327}
!297 = !{i64 2159568465}
!298 = !{i64 2159568760}
!299 = !{i64 2159593245}
!300 = !{i64 2159593552}
!301 = !{i64 2159658434}
!302 = !{i64 2159658729}
!303 = !{i64 2159754595}
!304 = !{i64 2159754804}
!305 = !{i64 2159322600}
!306 = !{i64 2159322811}
!307 = !{i64 2159613898}
!308 = !{i64 2159614185}
!309 = !{i64 2159678958}
!310 = !{i64 2159679255}
!311 = !{i64 2159775540}
!312 = !{i64 2159775751}
!313 = !{i64 2159355657}
!314 = !{i64 2159355870}
!315 = !{i64 2159634050}
!316 = !{i64 2159638400}
!317 = !{i64 2153271575, i64 2153272058, i64 2153271612, i64 2153271668, i64 2153271702, i64 2153271726, i64 2153271767, i64 2153271788, i64 2153271816, i64 2153271850}
