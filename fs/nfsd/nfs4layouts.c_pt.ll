; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs4layouts.c_pt.bc'
source_filename = "../fs/nfsd/nfs4layouts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfsd4_layout_ops = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfsd4_callback_ops = type { ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.120 }
%struct.atomic_t = type { i32 }
%union.anon.120 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfsd4_deviceid_map = type { %struct.list_head, i64, i32, [0 x i32] }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.144 }
%union.anon.144 = type { %struct.anon.145, [124 x i8] }
%struct.anon.145 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.path = type { ptr, ptr }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.138 }
%union.anon.138 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nfs4_stid = type { %struct.refcount_struct, %struct.list_head, i8, %struct.stateid_t, %struct.spinlock, ptr, ptr, ptr }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nfs4_file = type { %struct.refcount_struct, ptr, i8, %struct.spinlock, %struct.hlist_node, %struct.list_head, %union.anon.147, %struct.list_head, [3 x ptr], [2 x %struct.atomic_t], i32, ptr, i32, %struct.knfsd_fh, i8, %struct.list_head, %struct.atomic_t }
%union.anon.147 = type { %struct.list_head }
%struct.nfsd4_compound_state = type { %struct.svc_fh, %struct.svc_fh, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.stateid_t, %struct.stateid_t, i32 }
%struct.nfs4_layout_stateid = type { %struct.nfs4_stid, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, i32, ptr, %struct.nfsd4_callback, %struct.stateid_t, i8, %struct.mutex }
%struct.nfsd4_callback = type { ptr, %struct.rpc_message, ptr, %struct.work_struct, i32, i32, i8, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.121 }
%union.anon.121 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.112, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.112 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nfsd_file = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, ptr, i32, ptr, i32, %struct.refcount_struct, i8, ptr }
%struct.nfs4_client = type { %struct.list_head, %struct.rb_node, ptr, %struct.list_head, %struct.idr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.xdr_netobj, %struct.nfs4_verifier, i64, %struct.__kernel_sockaddr_storage, i8, %struct.svc_cred, %struct.clientid_t, %struct.nfs4_verifier, i32, %struct.xdr_netobj, %struct.xdr_netobj, %struct.timespec64, %struct.nfs4_cb_conn, i32, ptr, ptr, i32, i32, %struct.nfsd4_callback, ptr, %struct.spinlock, %struct.list_head, %struct.nfsd4_clid_slot, i32, %struct.atomic_t, %struct.nfsdfs_client, %struct.nfs4_op_map, ptr, ptr, i32, %struct.rpc_wait_queue, ptr, %struct.list_head, %struct.spinlock, %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.nfs4_cb_conn = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, i32, ptr }
%struct.nfsd4_clid_slot = type { i32, i32, %struct.nfsd4_create_session }
%struct.nfsd4_create_session = type { %struct.clientid_t, %struct.nfs4_sessionid, i32, i32, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, i32, %struct.nfsd4_cb_sec }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfsd4_channel_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd4_cb_sec = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.nfsdfs_client = type { %struct.kref, ptr }
%struct.nfs4_op_map = type { %union.anon.143 }
%union.anon.143 = type { [3 x i32] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nfsd4_layoutget = type { i64, i32, i32, i32, %struct.stateid_t, %struct.nfsd4_layout_seg, ptr }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }
%struct.nfs4_layout = type { %struct.list_head, ptr, %struct.nfsd4_layout_seg }
%struct.nfsd4_layoutreturn = type { i32, i32, %struct.nfsd4_layout_seg, i32, i32, ptr, %struct.stateid_t, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.142, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.142 = type { %struct.work_struct }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@bl_layout_ops = external dso_local constant %struct.nfsd4_layout_ops, align 4
@ff_layout_ops = external dso_local constant %struct.nfsd4_layout_ops, align 4
@scsi_layout_ops = external dso_local constant %struct.nfsd4_layout_ops, align 4
@nfsd4_layout_ops = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr null, ptr null, ptr null, ptr @bl_layout_ops, ptr @ff_layout_ops, ptr @scsi_layout_ops], [40 x i8] zeroinitializer }, align 32
@nfsd4_find_devid_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/nfsd/nfs4layouts.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nfsd_devid_hash = internal global { [256 x %struct.list_head], [512 x i8] } zeroinitializer, align 32
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs4_layout_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfs4_layout\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfs4_layout_stateid\00", [44 x i8] zeroinitializer }, align 32
@nfs4_layout_stateid_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfsd_devid_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nfsd_devid_seq = internal global { i64, [24 x i8] } { i64 1, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd_devid_lock\00", [16 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfsd4_alloc_layout_stateid.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ls->ls_lock\00", [19 x i8] zeroinitializer }, align 32
@nfsd4_alloc_layout_stateid.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ls->ls_mutex\00", [18 x i8] zeroinitializer }, align 32
@nfsd4_cb_layout_ops = internal constant { %struct.nfsd4_callback_ops, [20 x i8] } { %struct.nfsd4_callback_ops { ptr @nfsd4_cb_layout_prepare, ptr @nfsd4_cb_layout_done, ptr @nfsd4_cb_layout_release }, [20 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_layoutstate_free = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_layoutstate_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_layout_recall_fail = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_recall_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd4_cb_layout_fail.nfsd_recall_failed = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"/sbin/nfsd-recall-failed\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_cb_layout_fail.envp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERM=linux\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@nfsd4_cb_layout_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014nfsd: client %s failed to respond to layout recall.   Fencing..\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd4_cb_layout_fail\00", [43 x i8] zeroinitializer }, align 32
@nfsd4_cb_layout_fail._entry_ptr = internal global ptr @nfsd4_cb_layout_fail._entry, section ".printk_index", align 4
@nfsd4_cb_layout_fail._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nfsd: fence failed for client %s: %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@nfsd4_cb_layout_fail._entry_ptr.22 = internal global ptr @nfsd4_cb_layout_fail._entry.20, section ".printk_index", align 4
@__tracepoint_nfsd_layout_recall_done = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_recall_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_layout_recall_release = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_recall_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd4_layouts_lm_ops = internal constant { %struct.lock_manager_operations, [32 x i8] } { %struct.lock_manager_operations { ptr null, ptr null, ptr null, ptr null, ptr @nfsd4_layout_lm_break, ptr @nfsd4_layout_lm_change, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_layout_recall = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_recall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_layoutstate_alloc = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layoutstate_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_layout_return_lookup_fail = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layout_return_lookup_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd4_return_file_layout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: split not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd4_return_file_layout\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_return_file_layout._entry_ptr = internal global ptr @nfsd4_return_file_layout._entry, section ".printk_index", align 4
@__tracepoint_nfsd_layoutstate_unhash = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_layoutstate_unhash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.nfsd4_set_deviceid = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.nfsd4_set_deviceid.25 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.nfsd4_return_client_layouts = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 8, i32 8, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294957236, i64 4294957288]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"nfsd4_layout_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 30, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 103, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"nfsd_devid_hash\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 47, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"nfs4_layout_cache\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 24, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 759, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 764, i32 48 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"nfs4_layout_stateid_cache\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 25, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"nfsd_devid_lock\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"nfsd_devid_seq\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 46, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 45, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 232, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 234, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"nfsd4_cb_layout_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 719, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 485, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 108, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"nfsd_recall_failed\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 612, i32 20 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"envp\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 613, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 614, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 615, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 616, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 624, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 636, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"nfsd4_layouts_lm_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 746, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [25 x i8] c"../fs/nfsd/nfs4layouts.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 480, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [32 x i8] c"switch.table.nfsd4_set_deviceid\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [35 x i8] c"switch.table.nfsd4_set_deviceid.25\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [41 x i8] c"switch.table.nfsd4_return_client_layouts\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @nfsd4_cb_layout_fail._entry, ptr @nfsd4_cb_layout_fail._entry.20, ptr @nfsd4_cb_layout_fail._entry_ptr, ptr @nfsd4_cb_layout_fail._entry_ptr.22, ptr @nfsd4_return_file_layout._entry, ptr @nfsd4_return_file_layout._entry_ptr, ptr @nfsd4_layout_ops, ptr @.str, ptr @.str.1, ptr @nfsd_devid_hash, ptr @nfs4_layout_cache, ptr @.str.2, ptr @.str.3, ptr @nfs4_layout_stateid_cache, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nfsd_devid_lock, ptr @nfsd_devid_seq, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nfsd4_alloc_layout_stateid.__key, ptr @.str.10, ptr @nfsd4_alloc_layout_stateid.__key.11, ptr @.str.12, ptr @nfsd4_cb_layout_ops, ptr @.str.13, ptr @.str.14, ptr @nfsd4_cb_layout_fail.nfsd_recall_failed, ptr @nfsd4_cb_layout_fail.envp, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @nfsd4_layouts_lm_ops, ptr @.str.23, ptr @.str.24, ptr @switch.table.nfsd4_set_deviceid, ptr @switch.table.nfsd4_set_deviceid.25, ptr @switch.table.nfsd4_return_client_layouts], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layout_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_devid_hash to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_layout_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_layout_stateid_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_devid_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_devid_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_alloc_layout_stateid.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_alloc_layout_stateid.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_layout_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_layout_fail.nfsd_recall_failed to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_layout_fail.envp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_layout_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_layout_fail._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_layouts_lm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_return_file_layout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfsd4_set_deviceid to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfsd4_set_deviceid.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfsd4_return_client_layouts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfsd4_find_devid_map(i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @nfsd4_find_devid_map.__warned, align 1
  br i1 %.b34, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfsd4_find_devid_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %conv = sext i32 %idx to i64
  %conv1.i = ashr i32 %idx, 31
  %add.i.i.i35 = add i32 %idx, -559038729
  %add1.i.i.i = add nsw i32 %conv1.i, -559038729
  %xor.i.i.i = xor i32 %add1.i.i.i, -559038729
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #11
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i35
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #11
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #11
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #11
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #11
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #11
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = lshr i32 %sub17.i.i.i, 8
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %and.i = and i32 %sub20.i.i.i, 255
  %arrayidx = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %map.072 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not73 = icmp eq ptr %map.072, %arrayidx
  br i1 %cmp.not73, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %map.075 = phi ptr [ %map.0, %for.body.for.body_crit_edge ], [ %map.072, %do.end.for.body_crit_edge ]
  %ret.074 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %idx14 = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %map.075, i32 0, i32 1
  %5 = ptrtoint ptr %idx14 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %idx14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv)
  %cmp16 = icmp eq i64 %6, %conv
  %spec.select = select i1 %cmp16, ptr %map.075, ptr %ret.074
  %7 = ptrtoint ptr %map.075 to i32
  call void @__asan_load4_noabort(i32 %7)
  %map.0 = load volatile ptr, ptr %map.075, align 4
  %cmp.not = icmp eq ptr %map.0, %arrayidx
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %ret.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i62, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %for.end
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %8 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i.i69 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %11, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %ret.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_set_deviceid(ptr nocapture noundef writeonly %id, ptr nocapture noundef readonly %fhp, i32 noundef %device_generation) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %0 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_export, align 4
  %ex_devid_map = getelementptr inbounds %struct.svc_export, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ex_devid_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ex_devid_map, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %fh_fsid_type.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_fsid_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %6 = icmp ult i8 %5, 8
  br i1 %6, label %switch.lookup, label %if.then.if.end8.i.i.i_crit_edge

if.then.if.end8.i.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = sext i8 %5 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.nfsd4_set_deviceid, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %switch.lookup, %if.then.if.end8.i.i.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then.if.end8.i.i.i_crit_edge ]
  %add.i = add nuw nsw i32 %retval.0.i.i, 24
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.nfsd4_alloc_devid_map.exit_crit_edge, label %if.end.i

if.end8.i.i.i.nfsd4_alloc_devid_map.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_alloc_devid_map.exit

if.end.i:                                         ; preds = %if.end8.i.i.i
  %9 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_fsid_type.i, align 2
  %conv3.i = zext i8 %10 to i32
  %fsid_type.i = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %call9.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %fsid_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3.i, ptr %fsid_type.i, align 16
  %fsid.i = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %call9.i.i.i, i32 0, i32 3
  %fh_fsid.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %12 = call ptr @memcpy(ptr %fsid.i, ptr %fh_fsid.i, i32 %retval.0.i.i)
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfsd_devid_lock) #11
  %13 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_export, align 4
  %ex_devid_map.i = getelementptr inbounds %struct.svc_export, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %ex_devid_map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ex_devid_map.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.out_unlock.i_crit_edge

if.end.i.out_unlock.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc37.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.085.i = phi i32 [ %inc.i, %for.inc37.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %i.085.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %old.082.i = load ptr, ptr %arrayidx.i, align 4
  %cmp10.not83.i = icmp eq ptr %old.082.i, %arrayidx.i
  br i1 %cmp10.not83.i, label %for.body.i.for.inc37.i_crit_edge, label %for.body12.lr.ph.i

for.body.i.for.inc37.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37.i

for.body12.lr.ph.i:                               ; preds = %for.body.i
  %18 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fh_fsid_type.i, align 2
  %conv15.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %20 = icmp ult i8 %19, 8
  %21 = sext i8 %19 to i32
  %switch.gep18 = getelementptr inbounds [8 x i32], ptr @switch.table.nfsd4_set_deviceid.25, i32 0, i32 %21
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %old.084.i = phi ptr [ %old.082.i, %for.body12.lr.ph.i ], [ %old.0.i, %for.inc.i.for.body12.i_crit_edge ]
  %fsid_type13.i = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %old.084.i, i32 0, i32 2
  %22 = ptrtoint ptr %fsid_type13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fsid_type13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %23, %conv15.i
  br i1 %cmp16.not.i, label %if.end19.i, label %for.body12.i.for.inc.i_crit_edge

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end19.i:                                       ; preds = %for.body12.i
  %fsid20.i = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %old.084.i, i32 0, i32 3
  br i1 %20, label %switch.lookup17, label %if.end19.i.key_len.exit79.i_crit_edge

if.end19.i.key_len.exit79.i_crit_edge:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_len.exit79.i

switch.lookup17:                                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load19 = load i32, ptr %switch.gep18, align 4
  br label %key_len.exit79.i

key_len.exit79.i:                                 ; preds = %switch.lookup17, %if.end19.i.key_len.exit79.i_crit_edge
  %retval.0.i78.i = phi i32 [ %switch.load19, %switch.lookup17 ], [ 0, %if.end19.i.key_len.exit79.i_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr %fsid20.i, ptr %fh_fsid.i, i32 %retval.0.i78.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool27.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %key_len.exit79.i.for.inc.i_crit_edge

key_len.exit79.i.for.inc.i_crit_edge:             ; preds = %key_len.exit79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end29.i:                                       ; preds = %key_len.exit79.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ex_devid_map.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %old.084.i, ptr %ex_devid_map.i, align 4
  br label %out_unlock.i

for.inc.i:                                        ; preds = %key_len.exit79.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %old.084.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %old.0.i = load ptr, ptr %old.084.i, align 4
  %cmp10.not.i = icmp eq ptr %old.0.i, %arrayidx.i
  br i1 %cmp10.not.i, label %for.inc.i.for.inc37.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.inc.i.for.inc37.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %for.inc.i.for.inc37.i_crit_edge, %for.body.i.for.inc37.i_crit_edge
  %inc.i = add nuw nsw i32 %i.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end38.i, label %for.inc37.i.for.body.i_crit_edge

for.inc37.i.for.body.i_crit_edge:                 ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end38.i:                                      ; preds = %for.inc37.i
  %27 = load i64, ptr @nfsd_devid_seq, align 8
  %inc39.i = add i64 %27, 1
  store i64 %inc39.i, ptr @nfsd_devid_seq, align 8
  %idx.i = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %call9.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %idx.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %idx.i, align 8
  %conv.i.i = trunc i64 %27 to i32
  %shr.i.i = lshr i64 %27, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %add.i.i.i.i = add i32 %conv.i.i, -559038729
  %add1.i.i.i.i = add i32 %conv1.i.i, -559038729
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, -559038729
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #11
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #11
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i1.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #11
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i2.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #11
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i3.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i4.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #11
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i4.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i5.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #11
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i5.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i6.i.i.i.i = lshr i32 %sub17.i.i.i.i, 8
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i6.i.i.i.i
  %and.i.i = and i32 %sub20.i.i.i.i, 255
  %arrayidx43.i = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %and.i.i
  %prev.i.i = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %and.i.i, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %30, ptr noundef %arrayidx43.i) #11
  br i1 %call.i.i.i, label %if.end.i.i80.i, label %for.end38.i.list_add_tail_rcu.exit.i_crit_edge

for.end38.i.list_add_tail_rcu.exit.i_crit_edge:   ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail_rcu.exit.i

if.end.i.i80.i:                                   ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx43.i, ptr %call9.i.i.i, align 128
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call9.i.i.i, ptr %30, align 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i80.i, %for.end38.i.list_add_tail_rcu.exit.i_crit_edge
  %35 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fh_export, align 4
  %ex_devid_map45.i = getelementptr inbounds %struct.svc_export, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %ex_devid_map45.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i.i, ptr %ex_devid_map45.i, align 4
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %list_add_tail_rcu.exit.i, %if.end29.i, %if.end.i.out_unlock.i_crit_edge
  %map.0.i = phi ptr [ %call9.i.i.i, %if.end.i.out_unlock.i_crit_edge ], [ %call9.i.i.i, %if.end29.i ], [ null, %list_add_tail_rcu.exit.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nfsd_devid_lock) #11
  tail call void @kfree(ptr noundef %map.0.i) #11
  br label %nfsd4_alloc_devid_map.exit

nfsd4_alloc_devid_map.exit:                       ; preds = %out_unlock.i, %if.end8.i.i.i.nfsd4_alloc_devid_map.exit_crit_edge
  %38 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fh_export, align 4
  %ex_devid_map2 = getelementptr inbounds %struct.svc_export, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %ex_devid_map2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ex_devid_map2, align 4
  %tobool3.not = icmp eq ptr %41, null
  br i1 %tobool3.not, label %nfsd4_alloc_devid_map.exit.return_crit_edge, label %nfsd4_alloc_devid_map.exit.if.end5_crit_edge

nfsd4_alloc_devid_map.exit.if.end5_crit_edge:     ; preds = %nfsd4_alloc_devid_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

nfsd4_alloc_devid_map.exit.return_crit_edge:      ; preds = %nfsd4_alloc_devid_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end5:                                          ; preds = %nfsd4_alloc_devid_map.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %42 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fh_export, align 4
  %ex_devid_map7 = getelementptr inbounds %struct.svc_export, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %ex_devid_map7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ex_devid_map7, align 4
  %idx = getelementptr inbounds %struct.nfsd4_deviceid_map, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %idx to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %idx, align 8
  %48 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %id, align 8
  %generation = getelementptr inbounds %struct.nfsd4_deviceid, ptr %id, i32 0, i32 1
  %49 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %device_generation, ptr %generation, align 8
  %pad = getelementptr inbounds %struct.nfsd4_deviceid, ptr %id, i32 0, i32 2
  %50 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %pad, align 4
  br label %return

return:                                           ; preds = %if.end5, %nfsd4_alloc_devid_map.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %nfsd4_alloc_devid_map.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfsd4_setup_layout_type(ptr nocapture noundef %exp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_path = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 3
  %0 = ptrtoint ptr %ex_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_path, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_sb, align 4
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %4 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ex_flags, align 4
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ex_layout_types = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 11
  %6 = ptrtoint ptr %ex_layout_types to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ex_layout_types, align 8
  %or = or i32 %7, 16
  store i32 %or, ptr %ex_layout_types, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_export_op, align 16
  %get_uuid = getelementptr inbounds %struct.export_operations, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_uuid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_uuid, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %map_blocks = getelementptr inbounds %struct.export_operations, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %map_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_blocks, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true4

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true4:                                   ; preds = %land.lhs.true
  %commit_blocks = getelementptr inbounds %struct.export_operations, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %commit_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %commit_blocks, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %land.lhs.true4.if.end10_crit_edge, label %if.then7

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  %or9 = or i32 %7, 24
  %16 = ptrtoint ptr %ex_layout_types to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or9, ptr %ex_layout_types, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %17 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_export_op, align 16
  %map_blocks12 = getelementptr inbounds %struct.export_operations, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %map_blocks12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map_blocks12, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %land.lhs.true14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true14:                                  ; preds = %if.end10
  %commit_blocks16 = getelementptr inbounds %struct.export_operations, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %commit_blocks16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %commit_blocks16, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %land.lhs.true14.cleanup_crit_edge, label %land.lhs.true18

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %23 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev, align 4
  %tobool19.not = icmp eq ptr %24, null
  br i1 %tobool19.not, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true20

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pr_ops, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true23

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %get_unique_id = getelementptr inbounds %struct.block_device_operations, ptr %28, i32 0, i32 13
  %31 = ptrtoint ptr %get_unique_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_unique_id, align 4
  %tobool27.not = icmp eq ptr %32, null
  br i1 %tobool27.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then28

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %ex_layout_types to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ex_layout_types, align 8
  %or30 = or i32 %34, 32
  store i32 %or30, ptr %ex_layout_types, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_preprocess_layout_stateid(ptr nocapture noundef readonly %rqstp, ptr noundef %cstate, ptr noundef %stateid, i1 noundef zeroext %create, i32 noundef %layout_type, ptr nocapture noundef writeonly %lsp) local_unnamed_addr #0 align 64 {
entry:
  %fl.i.i = alloca ptr, align 4
  %stid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stid) #11
  %0 = ptrtoint ptr %stid to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %stid, align 4, !annotation !107
  %spec.select = select i1 %create, i8 71, i8 64
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %1 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_xprt, align 8
  %tobool2.not = icmp eq ptr %2, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool2.not, ptr %rq_bc_net, ptr %xpt_net
  %3 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %4)
  %call4 = call i32 @nfsd4_lookup_stateid(ptr noundef %cstate, ptr noundef %stateid, i8 noundef zeroext %spec.select, ptr noundef nonnull %stid, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %5 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stid, align 4
  %sc_file = getelementptr inbounds %struct.nfs4_stid, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_file, align 4
  %fi_fhandle = getelementptr inbounds %struct.nfs4_file, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cstate, align 4
  %11 = ptrtoint ptr %fi_fhandle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fi_fhandle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i = icmp eq i32 %10, %12
  br i1 %cmp.not.i, label %fh_match.exit, label %if.end7.out_put_stid_crit_edge

if.end7.out_put_stid_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_stid

fh_match.exit:                                    ; preds = %if.end7
  %13 = getelementptr inbounds %struct.knfsd_fh, ptr %cstate, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nfs4_file, ptr %8, i32 0, i32 13, i32 1
  %bcmp.i = call i32 @bcmp(ptr %13, ptr %14, i32 %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp4.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp4.not.i, label %if.end10, label %fh_match.exit.out_put_stid_crit_edge

fh_match.exit.out_put_stid_crit_edge:             ; preds = %fh_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_stid

if.end10:                                         ; preds = %fh_match.exit
  %sc_type = getelementptr inbounds %struct.nfs4_stid, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %sc_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp.not = icmp eq i8 %16, 64
  br i1 %cmp.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %clp1.i = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %17 = ptrtoint ptr %clp1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clp1.i, align 4
  %19 = load ptr, ptr @nfs4_layout_stateid_cache, align 4
  %call.i = call ptr @nfs4_alloc_stid(ptr noundef %18, ptr noundef %19, ptr noundef nonnull @nfsd4_free_layout_stateid) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then13.nfsd4_alloc_layout_stateid.exit.thread_crit_edge, label %if.end.i44

if.then13.nfsd4_alloc_layout_stateid.exit.thread_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_alloc_layout_stateid.exit.thread

if.end.i44:                                       ; preds = %if.then13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %8, i32 1, i32 3, i32 1) #11
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #11, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i44.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !109

if.end.i44.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i44
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_nfs4_file.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !110

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_nfs4_file.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_nfs4_file.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i44.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i44.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %.sink.i.i.i.i.i) #11
  br label %get_nfs4_file.exit.i

get_nfs4_file.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_nfs4_file.exit.i_crit_edge
  %sc_file3.i = getelementptr inbounds %struct.nfs4_stid, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %sc_file3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %8, ptr %sc_file3.i, align 4
  %ls_perclnt.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %ls_perclnt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ls_perclnt.i, ptr %ls_perclnt.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ls_perclnt.i, ptr %prev.i.i, align 4
  %ls_perfile.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %ls_perfile.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %ls_perfile.i, ptr %ls_perfile.i, align 4
  %prev.i75.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i75.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ls_perfile.i, ptr %prev.i75.i, align 4
  %ls_lock.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %ls_lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @nfsd4_alloc_layout_stateid.__key, i16 noundef signext 3) #11
  %ls_layouts.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %ls_layouts.i, ptr %ls_layouts.i, align 4
  %prev.i76.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ls_layouts.i, ptr %prev.i76.i, align 4
  %ls_mutex.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %ls_mutex.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @nfsd4_alloc_layout_stateid.__key.11) #11
  %ls_layout_type.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %ls_layout_type.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %layout_type, ptr %ls_layout_type.i, align 4
  %ls_recall.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 7
  call void @nfsd4_init_cb(ptr noundef %ls_recall.i, ptr noundef %18, ptr noundef nonnull @nfsd4_cb_layout_ops, i32 noundef 2) #11
  %30 = ptrtoint ptr %sc_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp.i = icmp eq i8 %31, 4
  br i1 %cmp.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %get_nfs4_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %fi_deleg_file.i = getelementptr inbounds %struct.nfs4_file, ptr %8, i32 0, i32 11
  %32 = ptrtoint ptr %fi_deleg_file.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fi_deleg_file.i, align 4
  %call11.i = call ptr @nfsd_file_get(ptr noundef %33) #11
  br label %do.body15.i

if.else.i:                                        ; preds = %get_nfs4_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call ptr @find_any_file(ptr noundef %8) #11
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.else.i, %if.then10.i
  %call12.sink.i = phi ptr [ %call11.i, %if.then10.i ], [ %call12.i, %if.else.i ]
  %34 = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call12.sink.i, ptr %34, align 4
  %tobool17.not.i = icmp eq ptr %call12.sink.i, null
  br i1 %tobool17.not.i, label %do.body22.i, label %do.end30.i, !prof !109

do.body22.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4layouts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #11, !srcloc !111
  unreachable

do.end30.i:                                       ; preds = %do.body15.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fl.i.i) #11
  %36 = ptrtoint ptr %ls_layout_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ls_layout_type.i, align 4
  %arrayidx.i.i = getelementptr [6 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %disable_recalls.i.i = getelementptr inbounds %struct.nfsd4_layout_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %disable_recalls.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %disable_recalls.i.i, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end30.i.if.end35.i_crit_edge

do.end30.i.if.end35.i_crit_edge:                  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.end.i.i:                                       ; preds = %do.end30.i
  %call.i.i = call ptr @locks_alloc_lock() #11
  %42 = ptrtoint ptr %fl.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %fl.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.then33.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.then33.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @locks_init_lock(ptr noundef nonnull %call.i.i) #11
  %43 = ptrtoint ptr %fl.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fl.i.i, align 4
  %fl_lmops.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %fl_lmops.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @nfsd4_layouts_lm_ops, ptr %fl_lmops.i.i, align 8
  %fl_flags.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 6
  %46 = ptrtoint ptr %fl_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2048, ptr %fl_flags.i.i, align 8
  %fl_type.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 7
  %47 = ptrtoint ptr %fl_type.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %fl_type.i.i, align 4
  %fl_end.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 13
  %48 = ptrtoint ptr %fl_end.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 9223372036854775807, ptr %fl_end.i.i, align 8
  %fl_owner.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 5
  %49 = ptrtoint ptr %fl_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %fl_owner.i.i, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i, align 8
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 69
  %54 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tgid.i.i, align 4
  %fl_pid.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 8
  %56 = ptrtoint ptr %fl_pid.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %fl_pid.i.i, align 8
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %34, align 4
  %nf_file.i.i = getelementptr inbounds %struct.nfsd_file, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %nf_file.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nf_file.i.i, align 4
  %fl_file.i.i = getelementptr inbounds %struct.file_lock, ptr %44, i32 0, i32 11
  %61 = ptrtoint ptr %fl_file.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %fl_file.i.i, align 4
  %call7.i.i = call i32 @vfs_setlease(ptr noundef %60, i32 noundef 0, ptr noundef nonnull %fl.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  %62 = ptrtoint ptr %fl.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fl.i.i, align 4
  br i1 %tobool8.not.i.i, label %do.body.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @locks_free_lock(ptr noundef %63) #11
  br label %if.then33.i

do.body.i.i:                                      ; preds = %if.end3.i.i
  %cmp.not.i.i = icmp eq ptr %63, null
  br i1 %cmp.not.i.i, label %do.body.i.i.if.end35.i_crit_edge, label %do.body15.i.i, !prof !110

do.body.i.i.if.end35.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

do.body15.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4layouts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #11, !srcloc !113
  unreachable

if.then33.i:                                      ; preds = %if.then9.i.i, %if.end.i.i.if.then33.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fl.i.i) #11
  %64 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %34, align 4
  call void @nfsd_file_put(ptr noundef %65) #11
  call void @put_nfs4_file(ptr noundef %8) #11
  %66 = load ptr, ptr @nfs4_layout_stateid_cache, align 4
  call void @kmem_cache_free(ptr noundef %66, ptr noundef nonnull %call.i) #11
  br label %nfsd4_alloc_layout_stateid.exit.thread

if.end35.i:                                       ; preds = %do.body.i.i.if.end35.i_crit_edge, %do.end30.i.if.end35.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fl.i.i) #11
  %cl_lock.i = getelementptr inbounds %struct.nfs4_client, ptr %18, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %cl_lock.i) #11
  %sc_type36.i = getelementptr inbounds %struct.nfs4_stid, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %sc_type36.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 64, ptr %sc_type36.i, align 4
  %cl_lo_states.i = getelementptr inbounds %struct.nfs4_client, ptr %18, i32 0, i32 8
  %68 = ptrtoint ptr %cl_lo_states.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cl_lo_states.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ls_perclnt.i, ptr noundef %cl_lo_states.i, ptr noundef %69) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end35.i.list_add.exit.i_crit_edge

if.end35.i.list_add.exit.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %ls_perclnt.i, ptr %prev1.i.i.i, align 4
  %71 = ptrtoint ptr %ls_perclnt.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %ls_perclnt.i, align 4
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cl_lo_states.i, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %cl_lo_states.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %ls_perclnt.i, ptr %cl_lo_states.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end35.i.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #11
  %fi_lock.i = getelementptr inbounds %struct.nfs4_file, ptr %8, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %fi_lock.i) #11
  %fi_lo_states.i = getelementptr inbounds %struct.nfs4_file, ptr %8, i32 0, i32 15
  %74 = ptrtoint ptr %fi_lo_states.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fi_lo_states.i, align 4
  %call.i.i77.i = call zeroext i1 @__list_add_valid(ptr noundef %ls_perfile.i, ptr noundef %fi_lo_states.i, ptr noundef %75) #11
  br i1 %call.i.i77.i, label %if.end.i.i80.i, label %list_add.exit.i.if.end17_crit_edge

list_add.exit.i.if.end17_crit_edge:               ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.i.i80.i:                                   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i78.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ls_perfile.i, ptr %prev1.i.i78.i, align 4
  %77 = ptrtoint ptr %ls_perfile.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %ls_perfile.i, align 4
  %78 = ptrtoint ptr %prev.i75.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %fi_lo_states.i, ptr %prev.i75.i, align 4
  %79 = ptrtoint ptr %fi_lo_states.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %ls_perfile.i, ptr %fi_lo_states.i, align 4
  br label %if.end17

nfsd4_alloc_layout_stateid.exit.thread:           ; preds = %if.then33.i, %if.then13.nfsd4_alloc_layout_stateid.exit.thread_crit_edge
  %80 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %stid, align 4
  call void @nfs4_put_stid(ptr noundef %81) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end.i.i80.i, %list_add.exit.i.if.end17_crit_edge
  call void @_raw_spin_unlock(ptr noundef %fi_lock.i) #11
  %sc_stateid.i = getelementptr inbounds %struct.nfs4_stid, ptr %call.i, i32 0, i32 3
  call fastcc void @trace_nfsd_layoutstate_alloc(ptr noundef %sc_stateid.i) #11
  %82 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stid, align 4
  call void @nfs4_put_stid(ptr noundef %83) #11
  call void @mutex_lock_nested(ptr noundef %ls_mutex.i, i32 noundef 0) #11
  br label %if.end26

if.else:                                          ; preds = %if.end10
  %ls_mutex18 = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %6, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %ls_mutex18, i32 noundef 0) #11
  %84 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stid, align 4
  %sc_stateid = getelementptr inbounds %struct.nfs4_stid, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stateid, align 4
  %88 = ptrtoint ptr %sc_stateid to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sc_stateid, align 4
  %sub.i = sub i32 %87, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i46 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i46, label %if.else.out_unlock_stid_crit_edge, label %if.end21

if.else.out_unlock_stid_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock_stid

if.end21:                                         ; preds = %if.else
  %ls_layout_type = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %6, i32 0, i32 5
  %90 = ptrtoint ptr %ls_layout_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ls_layout_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %layout_type)
  %cmp22.not = icmp eq i32 %91, %layout_type
  br i1 %cmp22.not, label %if.end21.if.end26_crit_edge, label %if.end21.out_unlock_stid_crit_edge

if.end21.out_unlock_stid_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock_stid

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end26:                                         ; preds = %if.end21.if.end26_crit_edge, %if.end17
  %ls.0 = phi ptr [ %call.i, %if.end17 ], [ %6, %if.end21.if.end26_crit_edge ]
  %92 = ptrtoint ptr %lsp to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %ls.0, ptr %lsp, align 4
  br label %cleanup

out_unlock_stid:                                  ; preds = %if.end21.out_unlock_stid_crit_edge, %if.else.out_unlock_stid_crit_edge
  call void @mutex_unlock(ptr noundef %ls_mutex18) #11
  br label %out_put_stid

out_put_stid:                                     ; preds = %out_unlock_stid, %fh_match.exit.out_put_stid_crit_edge, %if.end7.out_put_stid_crit_edge
  %93 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stid, align 4
  call void @nfs4_put_stid(ptr noundef %94) #11
  br label %cleanup

cleanup:                                          ; preds = %out_put_stid, %if.end26, %nfsd4_alloc_layout_stateid.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call4, %entry.cleanup_crit_edge ], [ 10025, %out_put_stid ], [ 10008, %nfsd4_alloc_layout_stateid.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stid) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_lookup_stateid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 45, ptr noundef nonnull @.str.9) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %8 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_put_stid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_insert_layout(ptr noundef %lgp, ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i91 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lg_seg = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 5
  %sc_file = getelementptr inbounds %struct.nfs4_stid, ptr %ls, i32 0, i32 6
  %0 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_file, align 4
  %fi_lock = getelementptr inbounds %struct.nfs4_file, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %fi_lock) #11
  %2 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_file, align 4
  %fi_lock.i = getelementptr inbounds %struct.nfs4_file, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %4 = ptrtoint ptr %fi_lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %fi_lock.i, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !109

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4layouts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #11, !srcloc !114
  unreachable

do.end9.i:                                        ; preds = %entry
  %fi_lo_states.i = getelementptr inbounds %struct.nfs4_file, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %fi_lo_states.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fi_lo_states.i, align 4
  %cmp.not36.i = icmp eq ptr %7, %fi_lo_states.i
  br i1 %cmp.not36.i, label %do.end9.i.if.end_crit_edge, label %do.end9.i.for.body.i.outer_crit_edge

do.end9.i.for.body.i.outer_crit_edge:             ; preds = %do.end9.i
  br label %for.body.i.outer

do.end9.i.if.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %do.end9.i.for.body.i.outer_crit_edge
  %.pn39.in.i.ph = phi ptr [ %.pn39.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %7, %do.end9.i.for.body.i.outer_crit_edge ]
  %tobool.not = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %do.end9.i.for.body.i.outer_crit_edge ]
  %nfserr.037.i.ph = phi i32 [ 10061, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %do.end9.i.for.body.i.outer_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %.pn39.in.i = phi ptr [ %.pn39.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn39.in.i.ph, %for.body.i.outer ]
  %l.038.i = getelementptr i8, ptr %.pn39.in.i, i32 -96
  %8 = ptrtoint ptr %.pn39.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn39.i = load ptr, ptr %.pn39.in.i, align 4
  %cmp18.not.i = icmp eq ptr %l.038.i, %ls
  br i1 %cmp18.not.i, label %for.inc.i, label %for.inc.i.thread

for.inc.i:                                        ; preds = %for.body.i
  %cmp.not.i = icmp eq ptr %.pn39.i, %fi_lo_states.i
  br i1 %cmp.not.i, label %nfsd4_recall_conflict.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  tail call fastcc void @nfsd4_recall_file_layout(ptr noundef %l.038.i) #11
  %cmp.not.i155 = icmp eq ptr %.pn39.i, %fi_lo_states.i
  br i1 %cmp.not.i155, label %for.inc.i.thread.out.thread_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.outer

for.inc.i.thread.out.thread_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

nfsd4_recall_conflict.exit:                       ; preds = %for.inc.i
  br i1 %tobool.not, label %nfsd4_recall_conflict.exit.if.end_crit_edge, label %nfsd4_recall_conflict.exit.out.thread_crit_edge

nfsd4_recall_conflict.exit.out.thread_crit_edge:  ; preds = %nfsd4_recall_conflict.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

nfsd4_recall_conflict.exit.if.end_crit_edge:      ; preds = %nfsd4_recall_conflict.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

out.thread:                                       ; preds = %nfsd4_recall_conflict.exit.out.thread_crit_edge, %for.inc.i.thread.out.thread_crit_edge
  %nfserr.1.i156159 = phi i32 [ %nfserr.037.i.ph, %nfsd4_recall_conflict.exit.out.thread_crit_edge ], [ 10061, %for.inc.i.thread.out.thread_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %fi_lock) #11
  br label %cleanup

if.end:                                           ; preds = %nfsd4_recall_conflict.exit.if.end_crit_edge, %do.end9.i.if.end_crit_edge
  %ls_lock = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ls_lock) #11
  %ls_layouts = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 4
  %9 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %9)
  %lp.0143 = load ptr, ptr %ls_layouts, align 4
  %cmp.not144 = icmp eq ptr %lp.0143, %ls_layouts
  br i1 %cmp.not144, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %10 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lg_seg, align 8
  %offset.i.i = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %layouts_try_merge.exit.for.body_crit_edge, %for.body.lr.ph
  %lp.0145 = phi ptr [ %lp.0143, %for.body.lr.ph ], [ %lp.0, %layouts_try_merge.exit.for.body_crit_edge ]
  %lo_seg = getelementptr inbounds %struct.nfs4_layout, ptr %lp.0145, i32 0, i32 2
  %12 = ptrtoint ptr %lo_seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lo_seg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i90 = icmp eq i32 %13, %11
  br i1 %cmp.not.i90, label %if.end.i, label %for.body.layouts_try_merge.exit_crit_edge

for.body.layouts_try_merge.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %layouts_try_merge.exit

if.end.i:                                         ; preds = %for.body
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset.i.i, align 8
  %16 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length.i.i, align 8
  %18 = tail call i64 @llvm.uadd.sat.i64(i64 %15, i64 %17) #11
  %offset.i = getelementptr inbounds %struct.nfs4_layout, ptr %lp.0145, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp2.i = icmp ult i64 %18, %20
  br i1 %cmp2.i, label %if.end.i.layouts_try_merge.exit_crit_edge, label %if.end4.i

if.end.i.layouts_try_merge.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %layouts_try_merge.exit

if.end4.i:                                        ; preds = %if.end.i
  %length.i38.i = getelementptr inbounds %struct.nfs4_layout, ptr %lp.0145, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %length.i38.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %length.i38.i, align 8
  %23 = tail call i64 @llvm.uadd.sat.i64(i64 %20, i64 %22) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %15)
  %cmp7.i = icmp ult i64 %23, %15
  br i1 %cmp7.i, label %if.end4.i.layouts_try_merge.exit_crit_edge, label %layouts_try_merge.exit.thread

if.end4.i.layouts_try_merge.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %layouts_try_merge.exit

layouts_try_merge.exit.thread:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call i64 @llvm.umin.i64(i64 %20, i64 %15) #11
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %offset.i, align 8
  %26 = tail call i64 @llvm.uadd.sat.i64(i64 %24, i64 %22) #11
  %27 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset.i.i, align 8
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %length.i.i, align 8
  %31 = tail call i64 @llvm.uadd.sat.i64(i64 %28, i64 %30) #11
  %32 = tail call i64 @llvm.umax.i64(i64 %26, i64 %31) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %32)
  %cmp.i.i = icmp eq i64 %32, -1
  %sub.i.i = sub i64 %32, %24
  %spec.select.i = select i1 %cmp.i.i, i64 -1, i64 %sub.i.i
  %33 = ptrtoint ptr %length.i38.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %spec.select.i, ptr %length.i38.i, align 8
  br label %done

layouts_try_merge.exit:                           ; preds = %if.end4.i.layouts_try_merge.exit_crit_edge, %if.end.i.layouts_try_merge.exit_crit_edge, %for.body.layouts_try_merge.exit_crit_edge
  %34 = ptrtoint ptr %lp.0145 to i32
  call void @__asan_load4_noabort(i32 %34)
  %lp.0 = load ptr, ptr %lp.0145, align 4
  %cmp.not = icmp eq ptr %lp.0, %ls_layouts
  br i1 %cmp.not, label %layouts_try_merge.exit.for.end_crit_edge, label %layouts_try_merge.exit.for.body_crit_edge

layouts_try_merge.exit.for.body_crit_edge:        ; preds = %layouts_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

layouts_try_merge.exit.for.end_crit_edge:         ; preds = %layouts_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %layouts_try_merge.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_lock) #11
  tail call void @_raw_spin_unlock(ptr noundef %fi_lock) #11
  %35 = load ptr, ptr @nfs4_layout_cache, align 4
  %call12 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %35, i32 noundef 3264) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %lo_seg16 = getelementptr inbounds %struct.nfs4_layout, ptr %call12, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %lo_seg16, ptr %lg_seg, i32 24)
  %lo_state = getelementptr inbounds %struct.nfs4_layout, ptr %call12, i32 0, i32 1
  %37 = ptrtoint ptr %lo_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ls, ptr %lo_state, align 8
  tail call void @_raw_spin_lock(ptr noundef %fi_lock) #11
  %38 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc_file, align 4
  %fi_lock.i93 = getelementptr inbounds %struct.nfs4_file, ptr %39, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i91)
  %40 = ptrtoint ptr %fi_lock.i93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %agg.tmp.sroa.0.0.copyload.i.i94 = load volatile i32, ptr %fi_lock.i93, align 4
  %41 = ptrtoint ptr %agg.tmp.sroa.0.i.i91 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i94, ptr %agg.tmp.sroa.0.i.i91, align 4
  %lock.sroa.0.0.extract.shift.i.i.i95 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i94, 16
  %conv.i.i.i96 = and i32 %agg.tmp.sroa.0.0.copyload.i.i94, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i96, i32 %lock.sroa.0.0.extract.shift.i.i.i95)
  %cmp.i.i.not.i97 = icmp eq i32 %conv.i.i.i96, %lock.sroa.0.0.extract.shift.i.i.i95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i91)
  br i1 %cmp.i.i.not.i97, label %do.body4.i98, label %do.end9.i101, !prof !109

do.body4.i98:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4layouts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #11, !srcloc !114
  unreachable

do.end9.i101:                                     ; preds = %if.end15
  %fi_lo_states.i99 = getelementptr inbounds %struct.nfs4_file, ptr %39, i32 0, i32 15
  %42 = ptrtoint ptr %fi_lo_states.i99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fi_lo_states.i99, align 4
  %cmp.not36.i100 = icmp eq ptr %43, %fi_lo_states.i99
  br i1 %cmp.not36.i100, label %do.end9.i101.if.end21_crit_edge, label %do.end9.i101.for.body.i107.outer_crit_edge

do.end9.i101.for.body.i107.outer_crit_edge:       ; preds = %do.end9.i101
  br label %for.body.i107.outer

do.end9.i101.if.end21_crit_edge:                  ; preds = %do.end9.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.body.i107.outer:                              ; preds = %for.inc.i111.thread.for.body.i107.outer_crit_edge, %do.end9.i101.for.body.i107.outer_crit_edge
  %.pn39.in.i102.ph = phi ptr [ %.pn39.i105, %for.inc.i111.thread.for.body.i107.outer_crit_edge ], [ %43, %do.end9.i101.for.body.i107.outer_crit_edge ]
  %tobool19.not = phi i1 [ false, %for.inc.i111.thread.for.body.i107.outer_crit_edge ], [ true, %do.end9.i101.for.body.i107.outer_crit_edge ]
  %nfserr.037.i103.ph = phi i32 [ 10061, %for.inc.i111.thread.for.body.i107.outer_crit_edge ], [ 0, %do.end9.i101.for.body.i107.outer_crit_edge ]
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.inc.i111.for.body.i107_crit_edge, %for.body.i107.outer
  %.pn39.in.i102 = phi ptr [ %.pn39.i105, %for.inc.i111.for.body.i107_crit_edge ], [ %.pn39.in.i102.ph, %for.body.i107.outer ]
  %l.038.i104 = getelementptr i8, ptr %.pn39.in.i102, i32 -96
  %44 = ptrtoint ptr %.pn39.in.i102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn39.i105 = load ptr, ptr %.pn39.in.i102, align 4
  %cmp18.not.i106 = icmp eq ptr %l.038.i104, %ls
  br i1 %cmp18.not.i106, label %for.inc.i111, label %for.inc.i111.thread

for.inc.i111:                                     ; preds = %for.body.i107
  %cmp.not.i110 = icmp eq ptr %.pn39.i105, %fi_lo_states.i99
  br i1 %cmp.not.i110, label %nfsd4_recall_conflict.exit113, label %for.inc.i111.for.body.i107_crit_edge

for.inc.i111.for.body.i107_crit_edge:             ; preds = %for.inc.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i107

for.inc.i111.thread:                              ; preds = %for.body.i107
  tail call fastcc void @nfsd4_recall_file_layout(ptr noundef %l.038.i104) #11
  %cmp.not.i110161 = icmp eq ptr %.pn39.i105, %fi_lo_states.i99
  br i1 %cmp.not.i110161, label %for.inc.i111.thread.out_crit_edge, label %for.inc.i111.thread.for.body.i107.outer_crit_edge

for.inc.i111.thread.for.body.i107.outer_crit_edge: ; preds = %for.inc.i111.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i107.outer

for.inc.i111.thread.out_crit_edge:                ; preds = %for.inc.i111.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

nfsd4_recall_conflict.exit113:                    ; preds = %for.inc.i111
  br i1 %tobool19.not, label %nfsd4_recall_conflict.exit113.if.end21_crit_edge, label %nfsd4_recall_conflict.exit113.out_crit_edge

nfsd4_recall_conflict.exit113.out_crit_edge:      ; preds = %nfsd4_recall_conflict.exit113
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

nfsd4_recall_conflict.exit113.if.end21_crit_edge: ; preds = %nfsd4_recall_conflict.exit113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %nfsd4_recall_conflict.exit113.if.end21_crit_edge, %do.end9.i101.if.end21_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ls_lock) #11
  %45 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %45)
  %lp.1146 = load ptr, ptr %ls_layouts, align 4
  %cmp31.not147 = icmp eq ptr %lp.1146, %ls_layouts
  br i1 %cmp31.not147, label %if.end21.for.end44_crit_edge, label %for.body33.lr.ph

if.end21.for.end44_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44

for.body33.lr.ph:                                 ; preds = %if.end21
  %46 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lg_seg, align 8
  %offset.i.i115 = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 5, i32 1
  %length.i.i116 = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 5, i32 2
  br label %for.body33

for.body33:                                       ; preds = %layouts_try_merge.exit128.for.body33_crit_edge, %for.body33.lr.ph
  %lp.1148 = phi ptr [ %lp.1146, %for.body33.lr.ph ], [ %lp.1, %layouts_try_merge.exit128.for.body33_crit_edge ]
  %lo_seg34 = getelementptr inbounds %struct.nfs4_layout, ptr %lp.1148, i32 0, i32 2
  %48 = ptrtoint ptr %lo_seg34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lo_seg34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp.not.i114 = icmp eq i32 %49, %47
  br i1 %cmp.not.i114, label %if.end.i119, label %for.body33.layouts_try_merge.exit128_crit_edge

for.body33.layouts_try_merge.exit128_crit_edge:   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %layouts_try_merge.exit128

if.end.i119:                                      ; preds = %for.body33
  %50 = ptrtoint ptr %offset.i.i115 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %offset.i.i115, align 8
  %52 = ptrtoint ptr %length.i.i116 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %length.i.i116, align 8
  %54 = tail call i64 @llvm.uadd.sat.i64(i64 %51, i64 %53) #11
  %offset.i117 = getelementptr inbounds %struct.nfs4_layout, ptr %lp.1148, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %offset.i117 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %offset.i117, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %56)
  %cmp2.i118 = icmp ult i64 %54, %56
  br i1 %cmp2.i118, label %if.end.i119.layouts_try_merge.exit128_crit_edge, label %if.end4.i122

if.end.i119.layouts_try_merge.exit128_crit_edge:  ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %layouts_try_merge.exit128

if.end4.i122:                                     ; preds = %if.end.i119
  %length.i38.i120 = getelementptr inbounds %struct.nfs4_layout, ptr %lp.1148, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %length.i38.i120 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %length.i38.i120, align 8
  %59 = tail call i64 @llvm.uadd.sat.i64(i64 %56, i64 %58) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %51)
  %cmp7.i121 = icmp ult i64 %59, %51
  br i1 %cmp7.i121, label %if.end4.i122.layouts_try_merge.exit128_crit_edge, label %layouts_try_merge.exit128.thread

if.end4.i122.layouts_try_merge.exit128_crit_edge: ; preds = %if.end4.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %layouts_try_merge.exit128

layouts_try_merge.exit128.thread:                 ; preds = %if.end4.i122
  call void @__sanitizer_cov_trace_pc() #13
  %60 = tail call i64 @llvm.umin.i64(i64 %56, i64 %51) #11
  %61 = ptrtoint ptr %offset.i117 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %offset.i117, align 8
  %62 = tail call i64 @llvm.uadd.sat.i64(i64 %60, i64 %58) #11
  %63 = ptrtoint ptr %offset.i.i115 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %offset.i.i115, align 8
  %65 = ptrtoint ptr %length.i.i116 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %length.i.i116, align 8
  %67 = tail call i64 @llvm.uadd.sat.i64(i64 %64, i64 %66) #11
  %68 = tail call i64 @llvm.umax.i64(i64 %62, i64 %67) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %68)
  %cmp.i.i123 = icmp eq i64 %68, -1
  %sub.i.i124 = sub i64 %68, %60
  %spec.select.i125 = select i1 %cmp.i.i123, i64 -1, i64 %sub.i.i124
  %69 = ptrtoint ptr %length.i38.i120 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %spec.select.i125, ptr %length.i38.i120, align 8
  br label %done

layouts_try_merge.exit128:                        ; preds = %if.end4.i122.layouts_try_merge.exit128_crit_edge, %if.end.i119.layouts_try_merge.exit128_crit_edge, %for.body33.layouts_try_merge.exit128_crit_edge
  %70 = ptrtoint ptr %lp.1148 to i32
  call void @__asan_load4_noabort(i32 %70)
  %lp.1 = load ptr, ptr %lp.1148, align 4
  %cmp31.not = icmp eq ptr %lp.1, %ls_layouts
  br i1 %cmp31.not, label %layouts_try_merge.exit128.for.end44_crit_edge, label %layouts_try_merge.exit128.for.body33_crit_edge

layouts_try_merge.exit128.for.body33_crit_edge:   ; preds = %layouts_try_merge.exit128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

layouts_try_merge.exit128.for.end44_crit_edge:    ; preds = %layouts_try_merge.exit128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44

for.end44:                                        ; preds = %layouts_try_merge.exit128.for.end44_crit_edge, %if.end21.for.end44_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ls, i32 1, i32 3, i32 1) #11
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls, ptr %ls, i32 1, ptr elementtype(i32) %ls) #11, !srcloc !108
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %for.end44.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !109

for.end44.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %for.end44
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %72 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %.not.i.i.i = icmp sgt i32 %72, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !110

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %for.end44.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %for.end44.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ls, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call12, ptr noundef %74, ptr noundef %ls_layouts) #11
  br i1 %call.i.i, label %if.end.i.i, label %refcount_inc.exit.done_crit_edge

refcount_inc.exit.done_crit_edge:                 ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i.i:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call12, ptr %prev.i, align 4
  %76 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ls_layouts, ptr %call12, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call12, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call12, ptr %74, align 4
  br label %done

done:                                             ; preds = %if.end.i.i, %refcount_inc.exit.done_crit_edge, %layouts_try_merge.exit128.thread, %layouts_try_merge.exit.thread
  %new.0 = phi ptr [ null, %layouts_try_merge.exit.thread ], [ %call12, %layouts_try_merge.exit128.thread ], [ null, %refcount_inc.exit.done_crit_edge ], [ null, %if.end.i.i ]
  %lg_sid = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 4
  tail call void @nfs4_inc_and_copy_stateid(ptr noundef %lg_sid, ptr noundef %ls) #11
  tail call void @_raw_spin_unlock(ptr noundef %ls_lock) #11
  br label %out

out:                                              ; preds = %done, %nfsd4_recall_conflict.exit113.out_crit_edge, %for.inc.i111.thread.out_crit_edge
  %nfserr.1 = phi i32 [ 0, %done ], [ %nfserr.037.i103.ph, %nfsd4_recall_conflict.exit113.out_crit_edge ], [ 10061, %for.inc.i111.thread.out_crit_edge ]
  %new.1 = phi ptr [ %new.0, %done ], [ %call12, %nfsd4_recall_conflict.exit113.out_crit_edge ], [ %call12, %for.inc.i111.thread.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %fi_lock) #11
  %tobool51.not = icmp eq ptr %new.1, null
  br i1 %tobool51.not, label %out.cleanup_crit_edge, label %if.then52

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then52:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %79 = load ptr, ptr @nfs4_layout_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %new.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %out.cleanup_crit_edge, %for.end.cleanup_crit_edge, %out.thread
  %retval.0 = phi i32 [ 10008, %for.end.cleanup_crit_edge ], [ %nfserr.1, %if.then52 ], [ %nfserr.1, %out.cleanup_crit_edge ], [ %nfserr.1.i156159, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_inc_and_copy_stateid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_return_file_layouts(ptr nocapture noundef readonly %rqstp, ptr noundef %cstate, ptr noundef %lrp) local_unnamed_addr #0 align 64 {
entry:
  %ls = alloca ptr, align 4
  %reaplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ls) #11
  %0 = ptrtoint ptr %ls to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ls, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reaplist) #11
  %1 = getelementptr inbounds %struct.list_head, ptr %reaplist, i32 0, i32 1
  %2 = ptrtoint ptr %reaplist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reaplist, ptr %reaplist, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reaplist, ptr %1, align 4
  %lr_sid = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 6
  %lr_layout_type = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 1
  %4 = ptrtoint ptr %lr_layout_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lr_layout_type, align 4
  %call = call i32 @nfsd4_preprocess_layout_stateid(ptr noundef %rqstp, ptr noundef %cstate, ptr noundef %lr_sid, i1 noundef zeroext false, i32 noundef %5, ptr noundef nonnull %ls)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_nfsd_layout_return_lookup_fail(ptr noundef %lr_sid)
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ls, align 4
  %ls_lock = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %7, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %ls_lock) #11
  %ls_layouts = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ls_layouts, align 4
  %cmp.not61 = icmp eq ptr %9, %ls_layouts
  br i1 %cmp.not61, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %lr_seg = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 2
  %offset.i = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 2, i32 1
  %length.i20.i = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lp.063 = phi ptr [ %9, %for.body.lr.ph ], [ %n.065, %for.inc.for.body_crit_edge ]
  %found.062 = phi i32 [ 0, %for.body.lr.ph ], [ %found.1, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %lp.063 to i32
  call void @__asan_load4_noabort(i32 %10)
  %n.065 = load ptr, ptr %lp.063, align 8
  %11 = ptrtoint ptr %lr_seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lr_seg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 3
  br i1 %cmp.not.i, label %for.body.if.end.i_crit_edge, label %land.lhs.true.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %lo_seg.i = getelementptr inbounds %struct.nfs4_layout, ptr %lp.063, i32 0, i32 2
  %13 = ptrtoint ptr %lo_seg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lo_seg.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not.i = icmp eq i32 %12, %14
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %offset.i.i = getelementptr inbounds %struct.nfs4_layout, ptr %lp.063, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.nfs4_layout, ptr %lp.063, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length.i.i, align 8
  %19 = call i64 @llvm.uadd.sat.i64(i64 %16, i64 %18) #11
  %20 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp5.not.i = icmp ugt i64 %19, %21
  br i1 %cmp5.not.i, label %layouts_overlapping.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

layouts_overlapping.exit:                         ; preds = %if.end.i
  %22 = ptrtoint ptr %length.i20.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length.i20.i, align 8
  %24 = call i64 @llvm.uadd.sat.i64(i64 %21, i64 %23) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %16)
  %cmp11.not.i = icmp ugt i64 %24, %16
  br i1 %cmp11.not.i, label %if.then10, label %layouts_overlapping.exit.for.inc_crit_edge

layouts_overlapping.exit.for.inc_crit_edge:       ; preds = %layouts_overlapping.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %layouts_overlapping.exit
  %25 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset.i.i, align 8
  %27 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %length.i.i, align 8
  %29 = call i64 @llvm.uadd.sat.i64(i64 %26, i64 %28) #11
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %26)
  %cmp.not.i53 = icmp ugt i64 %31, %26
  %32 = ptrtoint ptr %length.i20.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %length.i20.i, align 8
  %34 = call i64 @llvm.uadd.sat.i64(i64 %31, i64 %33) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %29)
  %cmp8.i = icmp ult i64 %34, %29
  br i1 %cmp.not.i53, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  br i1 %cmp8.i, label %if.end.i54, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lp.063) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.__list_del_entry.exit.i.i_crit_edge

if.then4.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lp.063, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %lp.063 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lp.063, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then4.i.__list_del_entry.exit.i.i_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lp.063, ptr noundef %42, ptr noundef nonnull %reaplist) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.nfsd4_return_file_layout.exit_crit_edge

__list_del_entry.exit.i.i.nfsd4_return_file_layout.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_return_file_layout.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %lp.063, ptr %1, align 4
  %44 = ptrtoint ptr %lp.063 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %reaplist, ptr %lp.063, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %lp.063, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %lp.063, ptr %42, align 4
  br label %nfsd4_return_file_layout.exit

if.end.i54:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %34, ptr %offset.i.i, align 8
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then10
  br i1 %cmp8.i, label %do.body.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

do.body.i:                                        ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %48 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.nfsd4_return_file_layout.exit_crit_edge, label %do.end.i

do.body.i.nfsd4_return_file_layout.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_return_file_layout.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #16
  br label %nfsd4_return_file_layout.exit

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.end.i54
  %end.0.i = phi i64 [ %29, %if.end.i54 ], [ %31, %if.else.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %end.0.i)
  %cmp.i.i = icmp eq i64 %end.0.i, -1
  br i1 %cmp.i.i, label %if.end18.i.layout_update_len.exit.i_crit_edge, label %if.else.i.i

if.end18.i.layout_update_len.exit.i_crit_edge:    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %layout_update_len.exit.i

if.else.i.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %offset.i.i, align 8
  %sub.i.i = sub i64 %end.0.i, %50
  br label %layout_update_len.exit.i

layout_update_len.exit.i:                         ; preds = %if.else.i.i, %if.end18.i.layout_update_len.exit.i_crit_edge
  %sub.sink.i.i = phi i64 [ %sub.i.i, %if.else.i.i ], [ -1, %if.end18.i.layout_update_len.exit.i_crit_edge ]
  %51 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %sub.sink.i.i, ptr %length.i.i, align 8
  br label %nfsd4_return_file_layout.exit

nfsd4_return_file_layout.exit:                    ; preds = %layout_update_len.exit.i, %do.end.i, %do.body.i.nfsd4_return_file_layout.exit_crit_edge, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.nfsd4_return_file_layout.exit_crit_edge
  %inc = add i32 %found.062, 1
  br label %for.inc

for.inc:                                          ; preds = %nfsd4_return_file_layout.exit, %layouts_overlapping.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %found.1 = phi i32 [ %inc, %nfsd4_return_file_layout.exit ], [ %found.062, %layouts_overlapping.exit.for.inc_crit_edge ], [ %found.062, %land.lhs.true.i.for.inc_crit_edge ], [ %found.062, %if.end.i.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %n.065, %ls_layouts
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %52 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %ls_layouts, align 4
  %cmp.i.not = icmp eq ptr %53, %ls_layouts
  br i1 %cmp.i.not, label %for.end.if.else_crit_edge, label %if.then21

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.end.thread:                                   ; preds = %if.end
  %54 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %ls_layouts, align 4
  %cmp.i.not67 = icmp eq ptr %55, %ls_layouts
  br i1 %cmp.i.not67, label %for.end.thread.if.else_crit_edge, label %for.end.thread.if.end29_crit_edge

for.end.thread.if.end29_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.end.thread.if.else_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool22.not = icmp eq i32 %found.1, 0
  br i1 %tobool22.not, label %if.then21.if.end29_crit_edge, label %if.then23

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  call void @nfs4_inc_and_copy_stateid(ptr noundef %lr_sid, ptr noundef %7) #11
  br label %if.end29

if.else:                                          ; preds = %for.end.thread.if.else_crit_edge, %for.end.if.else_crit_edge
  %sc_stateid = getelementptr inbounds %struct.nfs4_stid, ptr %7, i32 0, i32 3
  call fastcc void @trace_nfsd_layoutstate_unhash(ptr noundef %sc_stateid)
  call void @nfs4_unhash_stid(ptr noundef %7) #11
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23, %if.then21.if.end29_crit_edge, %for.end.thread.if.end29_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 1, %for.end.thread.if.end29_crit_edge ], [ 1, %if.then23 ], [ 1, %if.then21.if.end29_crit_edge ]
  %lrs_present28 = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 7
  %56 = ptrtoint ptr %lrs_present28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %lrs_present28, align 4
  call void @_raw_spin_unlock(ptr noundef %ls_lock) #11
  %ls_mutex = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %7, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %ls_mutex) #11
  call void @nfs4_put_stid(ptr noundef %7) #11
  %57 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not4.i = icmp eq ptr %58, %reaplist
  br i1 %cmp.i.not4.i, label %if.end29.cleanup_crit_edge, label %if.end29.while.body.i_crit_edge

if.end29.while.body.i_crit_edge:                  ; preds = %if.end29
  br label %while.body.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end29.while.body.i_crit_edge
  %59 = phi ptr [ %72, %list_del.exit.i.while.body.i_crit_edge ], [ %58, %if.end29.while.body.i_crit_edge ]
  %call.i.i.i55 = call zeroext i1 @__list_del_entry_valid(ptr noundef %59) #11
  br i1 %call.i.i.i55, label %if.end.i.i.i58, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i58:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i56, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %prev1.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i57, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i58, %while.body.i.list_del.exit.i_crit_edge
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lo_state.i = getelementptr inbounds %struct.nfs4_layout, ptr %59, i32 0, i32 1
  %68 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lo_state.i, align 8
  call void @nfs4_put_stid(ptr noundef %69) #11
  %70 = load ptr, ptr @nfs4_layout_cache, align 4
  call void @kmem_cache_free(ptr noundef %70, ptr noundef %59) #11
  %71 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not.i = icmp eq ptr %72, %reaplist
  br i1 %cmp.i.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reaplist) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ls) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layout_return_lookup_fail(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_return_lookup_fail, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_return_lookup_fail, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  %call42 = tail call i32 @__traceiter_nfsd_layout_return_lookup_fail(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_return_lookup_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_return_lookup_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_return_lookup_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layout_return_lookup_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 488, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
define internal fastcc void @trace_nfsd_layoutstate_unhash(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_unhash, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layoutstate_unhash, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %call42 = tail call i32 @__traceiter_nfsd_layoutstate_unhash(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_unhash, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_unhash, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layoutstate_unhash.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layoutstate_unhash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 484, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
declare dso_local void @nfs4_unhash_stid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_return_client_layouts(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %cstate, ptr nocapture noundef %lrp) local_unnamed_addr #0 align 64 {
entry:
  %reaplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clp1 = getelementptr inbounds %struct.nfsd4_compound_state, ptr %cstate, i32 0, i32 3
  %0 = ptrtoint ptr %clp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reaplist) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %reaplist, i32 0, i32 1
  %3 = ptrtoint ptr %reaplist to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reaplist, ptr %reaplist, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reaplist, ptr %2, align 4
  %lrs_present = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 7
  %5 = ptrtoint ptr %lrs_present to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lrs_present, align 4
  %cl_lock = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %cl_lock) #11
  %cl_lo_states = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %cl_lo_states to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_lo_states, align 4
  %cmp.not80 = icmp eq ptr %7, %cl_lo_states
  br i1 %cmp.not80, label %entry.for.end47_crit_edge, label %for.body.lr.ph

entry.for.end47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47

for.body.lr.ph:                                   ; preds = %entry
  %lr_layout_type = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 1
  %fh_fsid_type1.i = getelementptr inbounds %struct.knfsd_fh, ptr %cstate, i32 0, i32 1, i32 0, i32 2
  %fh_fsid4.i = getelementptr inbounds %struct.knfsd_fh, ptr %cstate, i32 0, i32 1, i32 1
  %lr_seg = getelementptr inbounds %struct.nfsd4_layoutreturn, ptr %lrp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %.pn.in81 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn83, %for.inc41.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in81 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn83 = load ptr, ptr %.pn.in81, align 4
  %ls_layout_type = getelementptr i8, ptr %.pn.in81, i32 68
  %9 = ptrtoint ptr %ls_layout_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ls_layout_type, align 4
  %11 = ptrtoint ptr %lr_layout_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lr_layout_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp9.not = icmp eq i32 %10, %12
  br i1 %cmp9.not, label %if.end, label %for.body.for.inc41_crit_edge

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %lrp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lrp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %sc_file = getelementptr i8, ptr %.pn.in81, i32 -8
  %15 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc_file, align 4
  %fh_fsid_type.i = getelementptr inbounds %struct.nfs4_file, ptr %16, i32 0, i32 13, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fh_fsid_type.i, align 2
  %19 = ptrtoint ptr %fh_fsid_type1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fh_fsid_type1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp.not.i = icmp eq i8 %18, %20
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.for.inc41_crit_edge

land.lhs.true.for.inc41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41

if.end.i:                                         ; preds = %land.lhs.true
  %fh_fsid.i = getelementptr inbounds %struct.nfs4_file, ptr %16, i32 0, i32 13, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %21 = icmp ult i8 %18, 8
  br i1 %21, label %switch.lookup, label %if.end.i.fh_fsid_match.exit_crit_edge

if.end.i.fh_fsid_match.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fh_fsid_match.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = sext i8 %18 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.nfsd4_return_client_layouts, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %fh_fsid_match.exit

fh_fsid_match.exit:                               ; preds = %switch.lookup, %if.end.i.fh_fsid_match.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.fh_fsid_match.exit_crit_edge ]
  %bcmp.i = call i32 @bcmp(ptr %fh_fsid.i, ptr %fh_fsid4.i, i32 %retval.0.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp9.not.i, label %fh_fsid_match.exit.if.end12_crit_edge, label %fh_fsid_match.exit.for.inc41_crit_edge

fh_fsid_match.exit.for.inc41_crit_edge:           ; preds = %fh_fsid_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41

fh_fsid_match.exit.if.end12_crit_edge:            ; preds = %fh_fsid_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %fh_fsid_match.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %ls_lock = getelementptr i8, ptr %.pn.in81, i32 16
  call void @_raw_spin_lock(ptr noundef %ls_lock) #11
  %ls_layouts = getelementptr i8, ptr %.pn.in81, i32 60
  %24 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ls_layouts, align 4
  %cmp24.not75 = icmp eq ptr %25, %ls_layouts
  br i1 %cmp24.not75, label %if.end12.for.end_crit_edge, label %if.end12.for.body26_crit_edge

if.end12.for.body26_crit_edge:                    ; preds = %if.end12
  br label %for.body26

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %if.end12.for.body26_crit_edge
  %lp.076 = phi ptr [ %t.078, %for.inc.for.body26_crit_edge ], [ %25, %if.end12.for.body26_crit_edge ]
  %26 = ptrtoint ptr %lp.076 to i32
  call void @__asan_load4_noabort(i32 %26)
  %t.078 = load ptr, ptr %lp.076, align 8
  %27 = ptrtoint ptr %lr_seg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lr_seg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp27 = icmp eq i32 %28, 3
  br i1 %cmp27, label %for.body26.if.then32_crit_edge, label %lor.lhs.false

for.body26.if.then32_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %for.body26
  %lo_seg = getelementptr inbounds %struct.nfs4_layout, ptr %lp.076, i32 0, i32 2
  %29 = ptrtoint ptr %lo_seg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lo_seg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp31 = icmp eq i32 %28, %30
  br i1 %cmp31, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %for.body26.if.then32_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lp.076) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then32.__list_del_entry.exit.i_crit_edge

if.then32.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lp.076, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %lp.076 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lp.076, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then32.__list_del_entry.exit.i_crit_edge
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lp.076, ptr noundef %38, ptr noundef nonnull %reaplist) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %lp.076, ptr %2, align 4
  %40 = ptrtoint ptr %lp.076 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %reaplist, ptr %lp.076, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %lp.076, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %lp.076, ptr %38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp24.not = icmp eq ptr %t.078, %ls_layouts
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_lock) #11
  br label %for.inc41

for.inc41:                                        ; preds = %for.end, %fh_fsid_match.exit.for.inc41_crit_edge, %land.lhs.true.for.inc41_crit_edge, %for.body.for.inc41_crit_edge
  %cmp.not = icmp eq ptr %.pn83, %cl_lo_states
  br i1 %cmp.not, label %for.inc41.for.end47_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc41.for.end47_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47

for.end47:                                        ; preds = %for.inc41.for.end47_crit_edge, %entry.for.end47_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock) #11
  %43 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not4.i = icmp eq ptr %44, %reaplist
  br i1 %cmp.i.not4.i, label %for.end47.nfsd4_free_layouts.exit_crit_edge, label %for.end47.while.body.i_crit_edge

for.end47.while.body.i_crit_edge:                 ; preds = %for.end47
  br label %while.body.i

for.end47.nfsd4_free_layouts.exit_crit_edge:      ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %for.end47.while.body.i_crit_edge
  %45 = phi ptr [ %58, %list_del.exit.i.while.body.i_crit_edge ], [ %44, %for.end47.while.body.i_crit_edge ]
  %call.i.i.i70 = call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #11
  br i1 %call.i.i.i70, label %if.end.i.i.i71, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i71:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i71, %while.body.i.list_del.exit.i_crit_edge
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  %prev.i.i72 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i72, align 4
  %lo_state.i = getelementptr inbounds %struct.nfs4_layout, ptr %45, i32 0, i32 1
  %54 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lo_state.i, align 8
  call void @nfs4_put_stid(ptr noundef %55) #11
  %56 = load ptr, ptr @nfs4_layout_cache, align 4
  call void @kmem_cache_free(ptr noundef %56, ptr noundef %45) #11
  %57 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not.i = icmp eq ptr %58, %reaplist
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.nfsd4_free_layouts.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

nfsd4_free_layouts.exit:                          ; preds = %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, %for.end47.nfsd4_free_layouts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reaplist) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_return_all_client_layouts(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  %reaplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reaplist) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %reaplist, i32 0, i32 1
  %1 = ptrtoint ptr %reaplist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reaplist, ptr %reaplist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reaplist, ptr %0, align 4
  %cl_lock = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %cl_lock) #11
  %cl_lo_states = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 8
  %3 = ptrtoint ptr %cl_lo_states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_lo_states, align 4
  %cmp.not21 = icmp eq ptr %4, %cl_lo_states
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %nfsd4_return_all_layouts.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in22 = phi ptr [ %.pn, %nfsd4_return_all_layouts.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in22, align 4
  %ls_lock.i = getelementptr i8, ptr %.pn.in22, i32 16
  call void @_raw_spin_lock(ptr noundef %ls_lock.i) #11
  %ls_layouts.i = getelementptr i8, ptr %.pn.in22, i32 60
  %6 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ls_layouts.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %ls_layouts.i
  br i1 %cmp.i.not.i.i, label %for.body.nfsd4_return_all_layouts.exit_crit_edge, label %if.then.i.i

for.body.nfsd4_return_all_layouts.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_return_all_layouts.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reaplist, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in22, i32 64
  %10 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reaplist, ptr %prev3.i.i.i, align 4
  store ptr %7, ptr %reaplist, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %11, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev6.i.i.i, align 4
  %15 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ls_layouts.i, ptr %ls_layouts.i, align 4
  store ptr %ls_layouts.i, ptr %prev2.i.i.i, align 4
  br label %nfsd4_return_all_layouts.exit

nfsd4_return_all_layouts.exit:                    ; preds = %if.then.i.i, %for.body.nfsd4_return_all_layouts.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_lock.i) #11
  %cmp.not = icmp eq ptr %.pn, %cl_lo_states
  br i1 %cmp.not, label %nfsd4_return_all_layouts.exit.for.end_crit_edge, label %nfsd4_return_all_layouts.exit.for.body_crit_edge

nfsd4_return_all_layouts.exit.for.body_crit_edge: ; preds = %nfsd4_return_all_layouts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nfsd4_return_all_layouts.exit.for.end_crit_edge:  ; preds = %nfsd4_return_all_layouts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %nfsd4_return_all_layouts.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock) #11
  %16 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not4.i = icmp eq ptr %17, %reaplist
  br i1 %cmp.i.not4.i, label %for.end.nfsd4_free_layouts.exit_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.nfsd4_free_layouts.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %18 = phi ptr [ %31, %list_del.exit.i.while.body.i_crit_edge ], [ %17, %for.end.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lo_state.i = getelementptr inbounds %struct.nfs4_layout, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lo_state.i, align 8
  call void @nfs4_put_stid(ptr noundef %28) #11
  %29 = load ptr, ptr @nfs4_layout_cache, align 4
  call void @kmem_cache_free(ptr noundef %29, ptr noundef %18) #11
  %30 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not.i = icmp eq ptr %31, %reaplist
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.nfsd4_free_layouts.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

nfsd4_free_layouts.exit:                          ; preds = %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, %for.end.nfsd4_free_layouts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reaplist) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_return_all_file_layouts(ptr noundef readnone %clp, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  %reaplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reaplist) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %reaplist, i32 0, i32 1
  %1 = ptrtoint ptr %reaplist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reaplist, ptr %reaplist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reaplist, ptr %0, align 4
  %fi_lock = getelementptr inbounds %struct.nfs4_file, ptr %fp, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %fi_lock) #11
  %fi_lo_states = getelementptr inbounds %struct.nfs4_file, ptr %fp, i32 0, i32 15
  %3 = ptrtoint ptr %fi_lo_states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fi_lo_states, align 4
  %cmp.not24 = icmp eq ptr %4, %fi_lo_states
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn26, %for.inc.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn26 = load ptr, ptr %.pn.in25, align 4
  %sc_client = getelementptr i8, ptr %.pn.in25, i32 -20
  %6 = ptrtoint ptr %sc_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_client, align 4
  %cmp8 = icmp eq ptr %7, %clp
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %ls_lock.i = getelementptr i8, ptr %.pn.in25, i32 8
  call void @_raw_spin_lock(ptr noundef %ls_lock.i) #11
  %ls_layouts.i = getelementptr i8, ptr %.pn.in25, i32 52
  %8 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ls_layouts.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %ls_layouts.i
  br i1 %cmp.i.not.i.i, label %if.then.nfsd4_return_all_layouts.exit_crit_edge, label %if.then.i.i

if.then.nfsd4_return_all_layouts.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_return_all_layouts.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reaplist, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in25, i32 56
  %12 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reaplist, ptr %prev3.i.i.i, align 4
  store ptr %9, ptr %reaplist, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %13, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev6.i.i.i, align 4
  %17 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ls_layouts.i, ptr %ls_layouts.i, align 4
  store ptr %ls_layouts.i, ptr %prev2.i.i.i, align 4
  br label %nfsd4_return_all_layouts.exit

nfsd4_return_all_layouts.exit:                    ; preds = %if.then.i.i, %if.then.nfsd4_return_all_layouts.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_lock.i) #11
  br label %for.inc

for.inc:                                          ; preds = %nfsd4_return_all_layouts.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn26, %fi_lo_states
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %fi_lock) #11
  %18 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not4.i = icmp eq ptr %19, %reaplist
  br i1 %cmp.i.not4.i, label %for.end.nfsd4_free_layouts.exit_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.nfsd4_free_layouts.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %20 = phi ptr [ %33, %list_del.exit.i.while.body.i_crit_edge ], [ %19, %for.end.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lo_state.i = getelementptr inbounds %struct.nfs4_layout, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lo_state.i, align 8
  call void @nfs4_put_stid(ptr noundef %30) #11
  %31 = load ptr, ptr @nfs4_layout_cache, align 4
  call void @kmem_cache_free(ptr noundef %31, ptr noundef %20) #11
  %32 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not.i = icmp eq ptr %33, %reaplist
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.nfsd4_free_layouts.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

nfsd4_free_layouts.exit:                          ; preds = %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, %for.end.nfsd4_free_layouts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reaplist) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_init_pnfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %i.07, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @nfs4_layout_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.end
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 356, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call1, ptr @nfs4_layout_stateid_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @nfs4_layout_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_exit_pnfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfs4_layout_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  %1 = load ptr, ptr @nfs4_layout_stateid_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.list_head], ptr @nfsd_devid_hash, i32 0, i32 %i.025
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp8.not23 = icmp eq ptr %3, %arrayidx
  br i1 %cmp8.not23, label %for.body.for.end_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %map.024 = phi ptr [ %n.0, %for.body9.for.body9_crit_edge ], [ %3, %for.body.for.body9_crit_edge ]
  %4 = ptrtoint ptr %map.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %map.024, align 8
  tail call void @kfree(ptr noundef %map.024) #11
  %cmp8.not = icmp eq ptr %n.0, %arrayidx
  br i1 %cmp8.not, label %for.body9.for.end_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end16, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_alloc_stid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_free_layout_stateid(ptr noundef %stid) #0 align 64 {
entry:
  %ls = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ls) #11
  %0 = ptrtoint ptr %ls to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %stid, ptr %ls, align 4
  %sc_client = getelementptr inbounds %struct.nfs4_stid, ptr %stid, i32 0, i32 5
  %1 = ptrtoint ptr %sc_client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc_client, align 4
  %sc_file = getelementptr inbounds %struct.nfs4_stid, ptr %stid, i32 0, i32 6
  %3 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_file, align 4
  %sc_stateid = getelementptr inbounds %struct.nfs4_stid, ptr %stid, i32 0, i32 3
  tail call fastcc void @trace_nfsd_layoutstate_free(ptr noundef %sc_stateid)
  %cl_lock = getelementptr inbounds %struct.nfs4_client, ptr %2, i32 0, i32 29
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #11
  %ls_perclnt = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %stid, i32 0, i32 1
  %call.i.i14 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ls_perclnt) #11
  br i1 %call.i.i14, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %stid, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ls_perclnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ls_perclnt, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %ls_perclnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ls_perclnt, ptr %ls_perclnt, align 4
  %prev.i3.i = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %stid, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ls_perclnt, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #11
  %fi_lock = getelementptr inbounds %struct.nfs4_file, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %fi_lock) #11
  %13 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ls, align 4
  %ls_perfile = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %14, i32 0, i32 2
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ls_perfile) #11
  br i1 %call.i.i15, label %if.end.i.i18, label %list_del_init.exit.list_del_init.exit20_crit_edge

list_del_init.exit.list_del_init.exit20_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit20

if.end.i.i18:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i16 = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %14, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i16, align 4
  %17 = ptrtoint ptr %ls_perfile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ls_perfile, align 4
  %prev1.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i17, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit20

list_del_init.exit20:                             ; preds = %if.end.i.i18, %list_del_init.exit.list_del_init.exit20_crit_edge
  %21 = ptrtoint ptr %ls_perfile to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %ls_perfile, ptr %ls_perfile, align 4
  %prev.i3.i19 = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %14, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i3.i19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ls_perfile, ptr %prev.i3.i19, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fi_lock) #11
  %23 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ls, align 4
  %ls_layout_type = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %ls_layout_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ls_layout_type, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %disable_recalls = getelementptr inbounds %struct.nfsd4_layout_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %disable_recalls to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %disable_recalls, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.then, label %list_del_init.exit20.if.end_crit_edge

list_del_init.exit20.if.end_crit_edge:            ; preds = %list_del_init.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit20
  call void @__sanitizer_cov_trace_pc() #13
  %ls_file = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %ls_file to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ls_file, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nf_file, align 4
  %call5 = call i32 @vfs_setlease(ptr noundef %34, i32 noundef 2, ptr noundef null, ptr noundef nonnull %ls) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit20.if.end_crit_edge
  %35 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ls, align 4
  %ls_file6 = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %ls_file6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ls_file6, align 4
  call void @nfsd_file_put(ptr noundef %38) #11
  %39 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ls, align 4
  %ls_recalled = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %ls_recalled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ls_recalled, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool7.not = icmp eq i8 %42, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sc_file10 = getelementptr inbounds %struct.nfs4_stid, ptr %40, i32 0, i32 6
  %43 = ptrtoint ptr %sc_file10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sc_file10, align 4
  %fi_lo_recalls = getelementptr inbounds %struct.nfs4_file, ptr %44, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fi_lo_recalls, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %fi_lo_recalls, i32 1, i32 3, i32 1) #11
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fi_lo_recalls, ptr %fi_lo_recalls, i32 1, ptr elementtype(i32) %fi_lo_recalls) #11, !srcloc !122
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %46 = load ptr, ptr @nfs4_layout_stateid_cache, align 4
  %47 = ptrtoint ptr %ls to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ls, align 4
  call void @kmem_cache_free(ptr noundef %46, ptr noundef %48) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ls) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_init_cb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfsd_file_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_any_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs4_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layoutstate_alloc(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_alloc, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layoutstate_alloc, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %call42 = tail call i32 @__traceiter_nfsd_layoutstate_alloc(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layoutstate_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layoutstate_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 483, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
define internal fastcc void @trace_nfsd_layoutstate_free(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_free, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layoutstate_free, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %call42 = tail call i32 @__traceiter_nfsd_layoutstate_free(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layoutstate_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layoutstate_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layoutstate_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 485, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
declare dso_local i32 @vfs_setlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layoutstate_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_layout_prepare(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cb, i32 -164
  %ls_mutex = getelementptr i8, ptr %cb, i32 100
  tail call void @mutex_lock_nested(ptr noundef %ls_mutex, i32 noundef 0) #11
  %ls_recall_sid = getelementptr i8, ptr %cb, i32 80
  tail call void @nfs4_inc_and_copy_stateid(ptr noundef %ls_recall_sid, ptr noundef %add.ptr) #11
  tail call void @mutex_unlock(ptr noundef %ls_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_cb_layout_done(ptr noundef %cb, ptr noundef %task) #0 align 64 {
entry:
  %addr_str.i = alloca [48 x i8], align 1
  %argv.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cb, i32 -164
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.default_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 -10008, label %entry.sw.bb_crit_edge30
    i32 -10060, label %sw.bb12
  ]

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge30
  %ls_layouts = getelementptr i8, ptr %cb, i32 -16
  %3 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ls_layouts, align 4
  %cmp.i.not = icmp eq ptr %4, %ls_layouts
  br i1 %cmp.i.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call1 = tail call i64 @ktime_get() #11
  %sc_client = getelementptr i8, ptr %cb, i32 -88
  %5 = ptrtoint ptr %sc_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_client, align 4
  %net = getelementptr inbounds %struct.nfs4_client, ptr %6, i32 0, i32 40
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %9 = load i32, ptr @nfsd_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9)
  %tk_start = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 18
  %10 = ptrtoint ptr %tk_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tk_start, align 8
  %nfsd4_lease = getelementptr inbounds %struct.nfsd_net, ptr %call2, i32 0, i32 26
  %12 = ptrtoint ptr %nfsd4_lease to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nfsd4_lease, align 8
  %mul3 = mul i64 %13, 2000000000
  %add = add i64 %mul3, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %add)
  %cmp.i.i = icmp slt i64 %call1, %add
  br i1 %cmp.i.i, label %if.then5, label %if.end.sw.default_crit_edge

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 1) #11
  br label %cleanup

sw.default:                                       ; preds = %if.end.sw.default_crit_edge, %entry.sw.default_crit_edge
  %sc_stateid = getelementptr i8, ptr %cb, i32 -148
  tail call fastcc void @trace_nfsd_layout_recall_fail(ptr noundef %sc_stateid)
  %ls_layout_type = getelementptr i8, ptr %cb, i32 -8
  %14 = ptrtoint ptr %ls_layout_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ls_layout_type, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @nfsd4_layout_ops, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %fence_client = getelementptr inbounds %struct.nfsd4_layout_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %fence_client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fence_client, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %19(ptr noundef %add.ptr) #11
  br label %cleanup

if.else:                                          ; preds = %sw.default
  %sc_client.i = getelementptr i8, ptr %cb, i32 -88
  %20 = ptrtoint ptr %sc_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_client.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %addr_str.i) #11
  %22 = call ptr @memset(ptr %addr_str.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %argv.i) #11
  %23 = getelementptr inbounds [8 x ptr], ptr %argv.i, i32 0, i32 1
  %24 = getelementptr inbounds [8 x ptr], ptr %argv.i, i32 0, i32 2
  %25 = getelementptr inbounds [8 x ptr], ptr %argv.i, i32 0, i32 3
  %cl_addr.i = getelementptr inbounds %struct.nfs4_client, ptr %21, i32 0, i32 12
  %26 = getelementptr inbounds i8, ptr %argv.i, i32 16
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %call.i = call i32 @rpc_ntop(ptr noundef %cl_addr.i, ptr noundef nonnull %addr_str.i, i32 noundef 48) #11
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %addr_str.i) #16
  %28 = ptrtoint ptr %argv.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nfsd4_cb_layout_fail.nfsd_recall_failed, ptr %argv.i, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %addr_str.i, ptr %23, align 4
  %ls_file.i = getelementptr i8, ptr %cb, i32 -4
  %30 = ptrtoint ptr %ls_file.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ls_file.i, align 4
  %nf_file.i = getelementptr inbounds %struct.nfsd_file, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nf_file.i, align 4
  %f_path.i = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_path.i, align 8
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mnt_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %s_id.i, ptr %24, align 4
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %25, align 4
  %call9.i = call i32 @call_usermodehelper(ptr noundef nonnull @nfsd4_cb_layout_fail.nfsd_recall_failed, ptr noundef nonnull %argv.i, ptr noundef nonnull @nfsd4_cb_layout_fail.envp, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.else.nfsd4_cb_layout_fail.exit_crit_edge, label %do.end12.i

if.else.nfsd4_cb_layout_fail.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_cb_layout_fail.exit

do.end12.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %addr_str.i, i32 noundef %call9.i) #16
  br label %nfsd4_cb_layout_fail.exit

nfsd4_cb_layout_fail.exit:                        ; preds = %do.end12.i, %if.else.nfsd4_cb_layout_fail.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %argv.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %addr_str.i) #11
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sc_stateid14 = getelementptr i8, ptr %cb, i32 -148
  tail call fastcc void @trace_nfsd_layout_recall_done(ptr noundef %sc_stateid14)
  %40 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tk_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %nfsd4_cb_layout_fail.exit, %if.then9, %if.then5, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb12 ], [ 0, %if.then5 ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %nfsd4_cb_layout_fail.exit ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_layout_release(ptr noundef %cb) #0 align 64 {
entry:
  %reaplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reaplist) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %reaplist, i32 0, i32 1
  %1 = ptrtoint ptr %reaplist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reaplist, ptr %reaplist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reaplist, ptr %0, align 4
  %sc_stateid = getelementptr i8, ptr %cb, i32 -148
  call fastcc void @trace_nfsd_layout_recall_release(ptr noundef %sc_stateid)
  %ls_lock.i = getelementptr i8, ptr %cb, i32 -60
  call void @_raw_spin_lock(ptr noundef %ls_lock.i) #11
  %ls_layouts.i = getelementptr i8, ptr %cb, i32 -16
  %3 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ls_layouts.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %ls_layouts.i
  br i1 %cmp.i.not.i.i, label %entry.nfsd4_return_all_layouts.exit_crit_edge, label %if.then.i.i

entry.nfsd4_return_all_layouts.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_return_all_layouts.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reaplist, align 4
  %prev2.i.i.i = getelementptr i8, ptr %cb, i32 -12
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reaplist, ptr %prev3.i.i.i, align 4
  store ptr %4, ptr %reaplist, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i.i, align 4
  %12 = ptrtoint ptr %ls_layouts.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ls_layouts.i, ptr %ls_layouts.i, align 4
  store ptr %ls_layouts.i, ptr %prev2.i.i.i, align 4
  br label %nfsd4_return_all_layouts.exit

nfsd4_return_all_layouts.exit:                    ; preds = %if.then.i.i, %entry.nfsd4_return_all_layouts.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_lock.i) #11
  %13 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not4.i = icmp eq ptr %14, %reaplist
  br i1 %cmp.i.not4.i, label %nfsd4_return_all_layouts.exit.nfsd4_free_layouts.exit_crit_edge, label %nfsd4_return_all_layouts.exit.while.body.i_crit_edge

nfsd4_return_all_layouts.exit.while.body.i_crit_edge: ; preds = %nfsd4_return_all_layouts.exit
  br label %while.body.i

nfsd4_return_all_layouts.exit.nfsd4_free_layouts.exit_crit_edge: ; preds = %nfsd4_return_all_layouts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %nfsd4_return_all_layouts.exit.while.body.i_crit_edge
  %15 = phi ptr [ %28, %list_del.exit.i.while.body.i_crit_edge ], [ %14, %nfsd4_return_all_layouts.exit.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lo_state.i = getelementptr inbounds %struct.nfs4_layout, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lo_state.i, align 8
  call void @nfs4_put_stid(ptr noundef %25) #11
  %26 = load ptr, ptr @nfs4_layout_cache, align 4
  call void @kmem_cache_free(ptr noundef %26, ptr noundef %15) #11
  %27 = ptrtoint ptr %reaplist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %reaplist, align 4
  %cmp.i.not.i = icmp eq ptr %28, %reaplist
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.nfsd4_free_layouts.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd4_free_layouts.exit

nfsd4_free_layouts.exit:                          ; preds = %list_del.exit.i.nfsd4_free_layouts.exit_crit_edge, %nfsd4_return_all_layouts.exit.nfsd4_free_layouts.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %cb, i32 -164
  call void @nfs4_put_stid(ptr noundef %add.ptr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reaplist) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layout_recall_fail(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_fail, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_recall_fail, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !127
  %call42 = tail call i32 @__traceiter_nfsd_layout_recall_fail(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_recall_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layout_recall_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 491, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
define internal fastcc void @trace_nfsd_layout_recall_done(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_done, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_recall_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !129
  %call42 = tail call i32 @__traceiter_nfsd_layout_recall_done(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_recall_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layout_recall_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 490, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
declare dso_local i32 @__traceiter_nfsd_layout_recall_fail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layout_recall_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layout_recall_release(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_release, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_recall_release, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !131
  %call42 = tail call i32 @__traceiter_nfsd_layout_recall_release(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_recall_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layout_recall_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 492, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
declare dso_local i32 @__traceiter_nfsd_layout_recall_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @locks_alloc_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_free_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfsd4_layout_lm_break(ptr nocapture noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_break_time = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 15
  %0 = ptrtoint ptr %fl_break_time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fl_break_time, align 4
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %1 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fl_owner, align 4
  tail call fastcc void @nfsd4_recall_file_layout(ptr noundef %2)
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_layout_lm_change(ptr noundef %onlist, i32 noundef %arg, ptr noundef %dispose) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %arg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !109

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4layouts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 742, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @lease_modify(ptr noundef %onlist, i32 noundef %arg, ptr noundef %dispose) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd4_recall_file_layout(ptr noundef %ls) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_lock = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ls_lock) #11
  %ls_recalled = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 9
  %0 = ptrtoint ptr %ls_recalled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ls_recalled, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ls_recalled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ls_recalled, align 4
  %sc_file = getelementptr inbounds %struct.nfs4_stid, ptr %ls, i32 0, i32 6
  %3 = ptrtoint ptr %sc_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_file, align 4
  %fi_lo_recalls = getelementptr inbounds %struct.nfs4_file, ptr %4, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fi_lo_recalls, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fi_lo_recalls, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fi_lo_recalls, ptr %fi_lo_recalls, i32 1, ptr elementtype(i32) %fi_lo_recalls) #11, !srcloc !134
  %ls_layouts = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 4
  %6 = ptrtoint ptr %ls_layouts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ls_layouts, align 4
  %cmp.i.not = icmp eq ptr %7, %ls_layouts
  br i1 %cmp.i.not, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %sc_stateid = getelementptr inbounds %struct.nfs4_stid, ptr %ls, i32 0, i32 3
  tail call fastcc void @trace_nfsd_layout_recall(ptr noundef %sc_stateid)
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ls, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls, ptr %ls, i32 1, ptr elementtype(i32) %ls) #11, !srcloc !108
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end4.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !109

if.end4.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end4
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !110

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ls, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %ls_recall = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 7
  tail call void @nfsd4_run_cb(ptr noundef %ls_recall) #11
  br label %out_unlock

out_unlock:                                       ; preds = %refcount_inc.exit, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_lock) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_layout_recall(ptr noundef %stp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall, i32 0, i32 1), ptr blockaddress(@trace_nfsd_layout_recall, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !135
  %call42 = tail call i32 @__traceiter_nfsd_layout_recall(ptr noundef null, ptr noundef %stp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !110

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_layout_recall, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_layout_recall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_layout_recall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 489, ptr noundef nonnull @.str.9) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #11
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
declare dso_local void @nfsd4_run_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layout_recall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lease_modify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layoutstate_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layout_return_lookup_fail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_layoutstate_unhash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93}
!llvm.named.register.sp = !{!94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @nfsd4_layout_ops, !1, !"nfsd4_layout_ops", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs4layouts.c", i32 30, i32 32}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfs4layouts.c", i32 103, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/nfs4layouts.c", i32 759, i32 40}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfs4layouts.c", i32 764, i32 48}
!10 = !{ptr @nfs4_layout_cache, !11, !"nfs4_layout_cache", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfs4layouts.c", i32 24, i32 27}
!12 = !{ptr @nfs4_layout_stateid_cache, !13, !"nfs4_layout_stateid_cache", i1 false, i1 false}
!13 = !{!"../fs/nfsd/nfs4layouts.c", i32 25, i32 27}
!14 = !{ptr @nfsd_devid_hash, !15, !"nfsd_devid_hash", i1 false, i1 false}
!15 = !{!"../fs/nfsd/nfs4layouts.c", i32 47, i32 25}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nfsd/nfs4layouts.c", i32 48, i32 8}
!25 = !{ptr @nfsd_devid_lock, !24, !"nfsd_devid_lock", i1 false, i1 false}
!26 = !{ptr @nfsd_devid_seq, !27, !"nfsd_devid_seq", i1 false, i1 false}
!27 = !{!"../fs/nfsd/nfs4layouts.c", i32 46, i32 12}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nfsd4_alloc_layout_stateid.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../fs/nfsd/nfs4layouts.c", i32 232, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nfsd4_alloc_layout_stateid.__key.11, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/nfsd/nfs4layouts.c", i32 234, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../fs/nfsd/trace.h", i32 485, i32 1}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfsd4_cb_layout_ops, !46, !"nfsd4_cb_layout_ops", i1 false, i1 false}
!46 = !{!"../fs/nfsd/nfs4layouts.c", i32 719, i32 40}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/nfsd/trace.h", i32 491, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{ptr @nfsd4_cb_layout_fail.nfsd_recall_failed, !51, !"nfsd_recall_failed", i1 false, i1 false}
!51 = !{!"../fs/nfsd/nfs4layouts.c", i32 612, i32 20}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/nfsd/nfs4layouts.c", i32 614, i32 3}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/nfsd/nfs4layouts.c", i32 615, i32 3}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nfsd/nfs4layouts.c", i32 616, i32 3}
!58 = !{ptr @nfsd4_cb_layout_fail.envp, !59, !"envp", i1 false, i1 false}
!59 = !{!"../fs/nfsd/nfs4layouts.c", i32 613, i32 15}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nfsd/nfs4layouts.c", i32 624, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nfsd4_cb_layout_fail._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @nfsd4_cb_layout_fail._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfsd/nfs4layouts.c", i32 636, i32 3}
!67 = !{ptr @nfsd4_cb_layout_fail._entry.20, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nfsd4_cb_layout_fail._entry_ptr.22, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../fs/nfsd/trace.h", i32 490, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/nfsd/trace.h", i32 492, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{ptr @nfsd4_layouts_lm_ops, !76, !"nfsd4_layouts_lm_ops", i1 false, i1 false}
!76 = !{!"../fs/nfsd/nfs4layouts.c", i32 746, i32 45}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../fs/nfsd/trace.h", i32 489, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../fs/nfsd/trace.h", i32 483, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/nfsd/trace.h", i32 488, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/nfsd/nfs4layouts.c", i32 480, i32 4}
!88 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @nfsd4_return_file_layout._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @nfsd4_return_file_layout._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/nfsd/trace.h", i32 484, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = !{!"sp"}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2149303677}
!105 = !{i64 2149303943}
!106 = !{i64 2149329069}
!107 = !{!"auto-init"}
!108 = !{i64 2148477693, i64 2148477725, i64 2148477754, i64 2148477788, i64 2148477819, i64 2148477842}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2159198433, i64 2159198919, i64 2159198470, i64 2159198526, i64 2159198560, i64 2159198584, i64 2159198625, i64 2159198646, i64 2159198674, i64 2159198708}
!112 = !{i8 0, i8 2}
!113 = !{i64 2159196480, i64 2159196966, i64 2159196517, i64 2159196573, i64 2159196607, i64 2159196631, i64 2159196672, i64 2159196693, i64 2159196721, i64 2159196755}
!114 = !{i64 2159205290, i64 2159205776, i64 2159205327, i64 2159205383, i64 2159205417, i64 2159205441, i64 2159205482, i64 2159205503, i64 2159205531, i64 2159205565}
!115 = !{i64 2148289556, i64 2148289561, i64 2148289574, i64 2148289618, i64 2148289652, i64 2148289673}
!116 = !{i64 2158281124}
!117 = !{i64 2158281353}
!118 = !{i64 2149312236}
!119 = !{i64 2149313272}
!120 = !{i64 2158204912}
!121 = !{i64 2158205127}
!122 = !{i64 2148478628, i64 2148478654, i64 2148478683, i64 2148478717, i64 2148478748, i64 2148478771}
!123 = !{i64 2158188225}
!124 = !{i64 2158188438}
!125 = !{i64 2158225634}
!126 = !{i64 2158225845}
!127 = !{i64 2158335316}
!128 = !{i64 2158335531}
!129 = !{i64 2158314514}
!130 = !{i64 2158314729}
!131 = !{i64 2158352177}
!132 = !{i64 2158352398}
!133 = !{i64 2159259652, i64 2159260138, i64 2159259689, i64 2159259745, i64 2159259779, i64 2159259803, i64 2159259844, i64 2159259865, i64 2159259893, i64 2159259927}
!134 = !{i64 2148476163, i64 2148476189, i64 2148476218, i64 2148476252, i64 2148476283, i64 2148476306}
!135 = !{i64 2158298043}
!136 = !{i64 2158298248}
