; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs4callback.c_pt.bc'
source_filename = "../fs/nfsd/nfs4callback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.133 }
%struct.atomic_t = type { i32 }
%union.anon.133 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.166 = type { i32, i32 }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfs4_client = type { %struct.list_head, %struct.rb_node, ptr, %struct.list_head, %struct.idr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.xdr_netobj, %struct.nfs4_verifier, i64, %struct.__kernel_sockaddr_storage, i8, %struct.svc_cred, %struct.clientid_t, %struct.nfs4_verifier, i32, %struct.xdr_netobj, %struct.xdr_netobj, %struct.timespec64, %struct.nfs4_cb_conn, i32, ptr, ptr, i32, i32, %struct.nfsd4_callback, ptr, %struct.spinlock, %struct.list_head, %struct.nfsd4_clid_slot, i32, %struct.atomic_t, %struct.nfsdfs_client, %struct.nfs4_op_map, ptr, ptr, i32, %struct.rpc_wait_queue, ptr, %struct.list_head, %struct.spinlock, %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_cb_conn = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, i32, ptr }
%struct.nfsd4_callback = type { ptr, %struct.rpc_message, ptr, %struct.work_struct, i32, i32, i8, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfsd4_clid_slot = type { i32, i32, %struct.nfsd4_create_session }
%struct.nfsd4_create_session = type { %struct.clientid_t, %struct.nfs4_sessionid, i32, i32, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, i32, %struct.nfsd4_cb_sec }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfsd4_channel_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd4_cb_sec = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.nfsdfs_client = type { %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_op_map = type { %union.anon.142 }
%union.anon.142 = type { [3 x i32] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nfsd4_conn = type { %struct.list_head, ptr, %struct.svc_xpt_user, ptr, i8 }
%struct.svc_xpt_user = type { %struct.list_head, ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.92, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.92 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.112, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.112 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nfsd4_session = type { %struct.atomic_t, %struct.list_head, %struct.list_head, i32, ptr, %struct.nfs4_sessionid, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, %struct.nfsd4_cb_sec, %struct.list_head, i32, i32, [0 x ptr] }
%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.135, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%union.anon.135 = type { %struct.work_struct }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.nfs4_file = type { %struct.refcount_struct, ptr, i8, %struct.spinlock, %struct.hlist_node, %struct.list_head, %union.anon.162, %struct.list_head, [3 x ptr], [2 x %struct.atomic_t], i32, ptr, i32, %struct.knfsd_fh, i8, %struct.list_head, %struct.atomic_t }
%union.anon.162 = type { %struct.list_head }
%struct.knfsd_fh = type { i32, %union.anon.164 }
%union.anon.164 = type { %struct.anon.165, [124 x i8] }
%struct.anon.165 = type { i8, i8, i8, i8, [0 x i32] }
%struct.nfs4_stateowner = type { %struct.list_head, %struct.list_head, ptr, ptr, %struct.atomic_t, i32, %struct.xdr_netobj, %struct.nfs4_replay, i8 }
%struct.nfs4_replay = type { i32, i32, ptr, %struct.knfsd_fh, %struct.mutex, [112 x i8] }
%struct.nfsd4_callback_ops = type { ptr, ptr, ptr }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.134, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.134 = type { %struct.work_struct }

@callback_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd4_callbacks\00", [16 x i8] zeroinitializer }, align 32
@nfs4_cb_procedures = internal constant { [6 x %struct.rpc_procinfo], [32 x i8] } { [6 x %struct.rpc_procinfo] [%struct.rpc_procinfo { i32 0, ptr @nfs4_xdr_enc_cb_null, ptr @nfs4_xdr_dec_cb_null, i32 0, i32 0, i32 0, i32 0, ptr @.str.6 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_cb_recall, ptr @nfs4_xdr_dec_cb_recall, i32 51, i32 20, i32 0, i32 1, ptr @.str.7 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_cb_layout, ptr @nfs4_xdr_dec_cb_layout, i32 54, i32 20, i32 0, i32 1, ptr @.str.8 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_cb_offload, ptr @nfs4_xdr_dec_cb_offload, i32 57, i32 20, i32 0, i32 1, ptr @.str.9 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_cb_notify_lock, ptr @nfs4_xdr_dec_cb_notify_lock, i32 305, i32 20, i32 0, i32 1, ptr @.str.10 }], [32 x i8] zeroinitializer }, align 32
@nfsd4_init_cb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&cb->cb_work)\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_cb_probe = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_cb_probe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_cb_state = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_cb_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_cb_shutdown = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_cb_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/nfsd/nfs4callback.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CB_NULL\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CB_RECALL\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CB_LAYOUT\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CB_OFFLOAD\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CB_NOTIFY_LOCK\00", [17 x i8] zeroinitializer }, align 32
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@decode_cb_sequence4resok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFS: %s Invalid session id\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"decode_cb_sequence4resok\00", [39 x i8] zeroinitializer }, align 32
@decode_cb_sequence4resok._entry_ptr = internal global ptr @decode_cb_sequence4resok._entry, section ".printk_index", align 4
@decode_cb_sequence4resok._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFS: %s Invalid sequence number\0A\00", [63 x i8] zeroinitializer }, align 32
@decode_cb_sequence4resok._entry_ptr.15 = internal global ptr @decode_cb_sequence4resok._entry.13, section ".printk_index", align 4
@decode_cb_sequence4resok._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.5, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFS: %s Invalid slotid\0A\00", [40 x i8] zeroinitializer }, align 32
@decode_cb_sequence4resok._entry_ptr.18 = internal global ptr @decode_cb_sequence4resok._entry.16, section ".printk_index", align 4
@decode_cb_op_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"NFSD: Callback server returned operation %d but we issued a request for %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decode_cb_op_status\00", [44 x i8] zeroinitializer }, align 32
@decode_cb_op_status._entry_ptr = internal global ptr @decode_cb_op_status._entry, section ".printk_index", align 4
@nfs_cb_errtbl = internal constant { [31 x %struct.anon.166], [40 x i8] } { [31 x %struct.anon.166] [%struct.anon.166 zeroinitializer, %struct.anon.166 { i32 1, i32 -1 }, %struct.anon.166 { i32 2, i32 -2 }, %struct.anon.166 { i32 5, i32 -5 }, %struct.anon.166 { i32 6, i32 -6 }, %struct.anon.166 { i32 13, i32 -13 }, %struct.anon.166 { i32 17, i32 -17 }, %struct.anon.166 { i32 18, i32 -18 }, %struct.anon.166 { i32 20, i32 -20 }, %struct.anon.166 { i32 21, i32 -21 }, %struct.anon.166 { i32 22, i32 -22 }, %struct.anon.166 { i32 27, i32 -27 }, %struct.anon.166 { i32 28, i32 -28 }, %struct.anon.166 { i32 30, i32 -30 }, %struct.anon.166 { i32 31, i32 -31 }, %struct.anon.166 { i32 63, i32 -36 }, %struct.anon.166 { i32 66, i32 -39 }, %struct.anon.166 { i32 69, i32 -122 }, %struct.anon.166 { i32 70, i32 -116 }, %struct.anon.166 { i32 10001, i32 -521 }, %struct.anon.166 { i32 10003, i32 -523 }, %struct.anon.166 { i32 10004, i32 -524 }, %struct.anon.166 { i32 10005, i32 -525 }, %struct.anon.166 { i32 10006, i32 -526 }, %struct.anon.166 { i32 10007, i32 -527 }, %struct.anon.166 { i32 10012, i32 -11 }, %struct.anon.166 { i32 10018, i32 -121 }, %struct.anon.166 { i32 10029, i32 -40 }, %struct.anon.166 { i32 10044, i32 -95 }, %struct.anon.166 { i32 10045, i32 -35 }, %struct.anon.166 { i32 -1, i32 -5 }], [40 x i8] zeroinitializer }, align 32
@nfs_cb_stat_to_errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFSD: Unrecognized NFS CB status value: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs_cb_stat_to_errno\00", [43 x i8] zeroinitializer }, align 32
@nfs_cb_stat_to_errno._entry_ptr = internal global ptr @nfs_cb_stat_to_errno._entry, section ".printk_index", align 4
@nfsd4_cb_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nfsd4_cb_prepare, ptr @nfsd4_cb_done, ptr null, ptr @nfsd4_cb_release }, [16 x i8] zeroinitializer }, align 32
@nfsd4_cb_probe_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr null, ptr @nfsd4_cb_probe_done, ptr null, ptr @nfsd4_cb_probe_release }, [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@cb_program = internal constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str.25, i32 1073741824, i32 2, ptr @nfs_cb_version, ptr @cb_stats, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@max_cb_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfs4_cb\00", [24 x i8] zeroinitializer }, align 32
@nfs_cb_version = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr null, ptr @nfs_cb_version4], [24 x i8] zeroinitializer }, align 32
@cb_stats = internal global { %struct.rpc_stat, [56 x i8] } { %struct.rpc_stat { ptr @cb_program, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfsd4_cb\00", [23 x i8] zeroinitializer }, align 32
@nfs_cb_version4 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 1, i32 6, ptr @nfs4_cb_procedures, ptr @nfs4_cb_counts }, [16 x i8] zeroinitializer }, align 32
@nfs4_cb_counts = internal global { [6 x i32], [40 x i8] } zeroinitializer, align 32
@__tracepoint_nfsd_cb_setup_err = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_cb_setup_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_cb_setup = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_cb_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfsd41_cb_get_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s slot is busy\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd41_cb_get_slot\00", [45 x i8] zeroinitializer }, align 32
@nfsd41_cb_get_slot._entry_ptr = internal global ptr @nfsd41_cb_get_slot._entry, section ".printk_index", align 4
@nfsd4_cb_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsd4_cb_sequence_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unprocessed error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfsd4_cb_sequence_done\00", [41 x i8] zeroinitializer }, align 32
@nfsd4_cb_sequence_done._entry_ptr = internal global ptr @nfsd4_cb_sequence_done._entry, section ".printk_index", align 4
@nfsd4_cb_sequence_done._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: freed slot, new seqid=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@nfsd4_cb_sequence_done._entry_ptr.37 = internal global ptr @nfsd4_cb_sequence_done._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 4294957233, i64 4294957243, i64 4294957244, i64 4294957288, i64 4294966770]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 4294967186, i64 4294967283, i64 4294967291]
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"callback_wq\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 839, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1221, i32 16 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"nfs4_cb_procedures\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 779, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1368, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 974, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 860, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 780, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 781, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 783, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 786, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 785, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 404, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 411, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 417, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 236, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"nfs_cb_errtbl\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 165, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 215, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"nfsd4_cb_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1213, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"nfsd4_cb_probe_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 989, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 286, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"cb_program\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 815, i32 33 }
@___asan_gen_.137 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 45, i32 7 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 816, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"nfs_cb_version\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 804, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"cb_stats\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 810, i32 24 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 821, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"nfs_cb_version4\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 790, i32 33 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"nfs4_cb_counts\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 789, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 868, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 695, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 723, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1036, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1147, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [26 x i8] c"../fs/nfsd/nfs4callback.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1152, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @decode_cb_op_status._entry, ptr @decode_cb_op_status._entry_ptr, ptr @decode_cb_sequence4resok._entry, ptr @decode_cb_sequence4resok._entry.13, ptr @decode_cb_sequence4resok._entry.16, ptr @decode_cb_sequence4resok._entry_ptr, ptr @decode_cb_sequence4resok._entry_ptr.15, ptr @decode_cb_sequence4resok._entry_ptr.18, ptr @nfs_cb_stat_to_errno._entry, ptr @nfs_cb_stat_to_errno._entry_ptr, ptr @nfsd41_cb_get_slot._entry, ptr @nfsd41_cb_get_slot._entry_ptr, ptr @nfsd4_cb_sequence_done._entry, ptr @nfsd4_cb_sequence_done._entry.35, ptr @nfsd4_cb_sequence_done._entry_ptr, ptr @nfsd4_cb_sequence_done._entry_ptr.37, ptr @callback_wq, ptr @.str, ptr @nfs4_cb_procedures, ptr @nfsd4_init_cb.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @nfs_cb_errtbl, ptr @.str.21, ptr @.str.22, ptr @nfsd4_cb_ops, ptr @nfsd4_cb_probe_ops, ptr @.str.23, ptr @cb_program, ptr @.str.24, ptr @.str.25, ptr @nfs_cb_version, ptr @cb_stats, ptr @.str.26, ptr @nfs_cb_version4, ptr @nfs4_cb_counts, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callback_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_cb_procedures to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_init_cb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_cb_sequence4resok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_cb_sequence4resok._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_cb_sequence4resok._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_cb_op_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cb_errtbl to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cb_stat_to_errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_probe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cb_version to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cb_version4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_cb_counts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd41_cb_get_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_sequence_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cb_sequence_done._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_probe_callback(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_nfsd_cb_probe(ptr noundef %clp)
  %cl_cb_state.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 26
  %0 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_cb_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %entry.nfsd4_mark_cb_state.exit_crit_edge, label %if.then.i

entry.nfsd4_mark_cb_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cl_cb_state.i, align 8
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %clp) #9
  br label %nfsd4_mark_cb_state.exit

nfsd4_mark_cb_state.exit:                         ; preds = %if.then.i, %entry.nfsd4_mark_cb_state.exit_crit_edge
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cl_flags) #9
  %cl_cb_null = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 27
  tail call void @nfsd4_run_cb(ptr noundef %cl_cb_null)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_cb_probe(ptr noundef %clp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_probe, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cb_probe, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !128

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %call42 = tail call i32 @__traceiter_nfsd_cb_probe(ptr noundef null, ptr noundef %clp) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_probe, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_probe, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cb_probe.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_cb_probe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 974, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_run_cb(ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %cl_cb_inflight.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %cl_cb_inflight.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_cb_inflight.i, ptr %cl_cb_inflight.i, i32 1, ptr elementtype(i32) %cl_cb_inflight.i) #9, !srcloc !134
  %3 = load ptr, ptr @callback_wq, align 4
  %cb_work.i = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %cb_work.i) #9
  br i1 %call.i.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %cl_cb_inflight.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_cb_inflight.i, ptr %cl_cb_inflight.i, i32 1, ptr elementtype(i32) %cl_cb_inflight.i) #9, !srcloc !136
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %cl_cb_inflight.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_probe_callback_sync(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_nfsd_cb_probe(ptr noundef %clp) #9
  %cl_cb_state.i.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 26
  %0 = ptrtoint ptr %cl_cb_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_cb_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i.i, label %entry.nfsd4_probe_callback.exit_crit_edge, label %if.then.i.i

entry.nfsd4_probe_callback.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_probe_callback.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cl_cb_state.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cl_cb_state.i.i, align 8
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %clp) #9
  br label %nfsd4_probe_callback.exit

nfsd4_probe_callback.exit:                        ; preds = %if.then.i.i, %entry.nfsd4_probe_callback.exit_crit_edge
  %cl_flags.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cl_flags.i) #9
  %cl_cb_null.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 27
  tail call void @nfsd4_run_cb(ptr noundef %cl_cb_null.i) #9
  %3 = load ptr, ptr @callback_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_change_callback(ptr noundef %clp, ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_cb_state.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 26
  %0 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_cb_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %entry.nfsd4_mark_cb_state.exit_crit_edge, label %if.then.i

entry.nfsd4_mark_cb_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cl_cb_state.i, align 8
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %clp) #9
  br label %nfsd4_mark_cb_state.exit

nfsd4_mark_cb_state.exit:                         ; preds = %if.then.i, %entry.nfsd4_mark_cb_state.exit_crit_edge
  %cl_lock = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 29
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #9
  %cl_cb_conn = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 21
  %3 = call ptr @memcpy(ptr %cl_cb_conn, ptr %conn, i32 272)
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_create_callback_queue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1) #9
  store ptr %call, ptr @callback_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_destroy_callback_queue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @callback_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_shutdown_callback(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_cb_state = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 26
  %0 = ptrtoint ptr %cl_cb_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_cb_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_nfsd_cb_shutdown(ptr noundef %clp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cl_flags) #9
  %cl_cb_null = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 27
  tail call void @nfsd4_run_cb(ptr noundef %cl_cb_null)
  %2 = load ptr, ptr @callback_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 861) #9
  %cl_cb_inflight.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %cl_cb_inflight.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cl_cb_inflight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.nfsd41_cb_inflight_wait_complete.exit_crit_edge, label %if.end.i

if.end.nfsd41_cb_inflight_wait_complete.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_inflight_wait_complete.exit

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call ptr @__var_waitqueue(ptr noundef %cl_cb_inflight.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry.i) #9
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry.i, i32 0, i32 1
  %6 = call ptr @memset(ptr %__wbq_entry.i, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry.i, ptr noundef %cl_cb_inflight.i, i32 noundef 0) #9
  %call722.i = call i32 @prepare_to_wait_event(ptr noundef %call5.i, ptr noundef %5, i32 noundef 2) #9
  %call.i.i1923.i = call zeroext i1 @__kasan_check_read(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %cl_cb_inflight.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cl_cb_inflight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not24.i = icmp eq i32 %8, 0
  br i1 %tobool10.not24.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #9
  %call7.i = call i32 @prepare_to_wait_event(ptr noundef %call5.i, ptr noundef %5, i32 noundef 2) #9
  %call.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %cl_cb_inflight.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cl_cb_inflight.i, align 4
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %call5.i, ptr noundef %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry.i) #9
  br label %nfsd41_cb_inflight_wait_complete.exit

nfsd41_cb_inflight_wait_complete.exit:            ; preds = %for.end.i, %if.end.nfsd41_cb_inflight_wait_complete.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_cb_shutdown(ptr noundef %clp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_shutdown, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cb_shutdown, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !128

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !138
  %call42 = tail call i32 @__traceiter_nfsd_cb_shutdown(ptr noundef null, ptr noundef %clp) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_shutdown, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_shutdown, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cb_shutdown.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_cb_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 976, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
define dso_local void @nfsd4_init_cb(ptr noundef %cb, ptr noundef %clp, ptr noundef %ops, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %clp, ptr %cb, align 4
  %arrayidx = getelementptr [6 x %struct.rpc_procinfo], ptr @nfs4_cb_procedures, i32 0, i32 %op
  %cb_msg = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %cb_msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %cb_msg, align 4
  %rpc_argp = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %rpc_argp, align 4
  %rpc_resp = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb, ptr %rpc_resp, align 4
  %cb_ops = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 2
  %4 = ptrtoint ptr %cb_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %cb_ops, align 4
  %cb_work = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 3
  tail call void @__init_work(ptr noundef %cb_work, i32 noundef 0) #9
  %5 = ptrtoint ptr %cb_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %cb_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @nfsd4_init_cb.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry6 = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfsd4_run_cb_work, ptr %func, align 4
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 4
  %9 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %cb_seq_status, align 4
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 5
  %10 = ptrtoint ptr %cb_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cb_status, align 4
  %cb_need_restart = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 6
  %11 = ptrtoint ptr %cb_need_restart to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cb_need_restart, align 4
  %cb_holds_slot = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 7
  %12 = ptrtoint ptr %cb_holds_slot to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %cb_holds_slot, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_run_cb_work(ptr noundef %work) #0 align 64 {
entry:
  %timeparms.i.i = alloca %struct.rpc_timeout, align 4
  %args.i.i = alloca %struct.rpc_create_args, align 4
  %conn.i = alloca %struct.nfs4_cb_conn, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %cb_need_restart = getelementptr i8, ptr %work, i32 52
  %2 = ptrtoint ptr %cb_need_restart to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb_need_restart, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cb_need_restart to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cb_need_restart, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %cb_ops = getelementptr i8, ptr %work, i32 -4
  %5 = ptrtoint ptr %cb_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb_ops, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.else.if.end8_crit_edge, label %land.lhs.true

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.else
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then5

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %8(ptr noundef %add.ptr) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.else.if.end8_crit_edge, %if.then
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_flags, align 8
  %and = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %conn.i) #9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %cl_cb_client.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %cl_cb_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl_cb_client.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then10.if.end.i_crit_edge, label %if.then.i

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then10
  tail call void @rpc_shutdown_client(ptr noundef nonnull %14) #9
  %15 = ptrtoint ptr %cl_cb_client.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cl_cb_client.i, align 8
  %cl_cb_cred.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 23
  %16 = ptrtoint ptr %cl_cb_cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl_cb_cred.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.i.put_cred.exit.i_crit_edge, label %do.body.i.i

if.then.i.put_cred.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %17) #9
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !141

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %17, ptr noundef nonnull @.str.23, i32 noundef 286) #9
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #9, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then1.i.i, label %__validate_creds.exit.i.i.put_cred.exit.i_crit_edge

__validate_creds.exit.i.i.put_cred.exit.i_crit_edge: ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit.i

if.then1.i.i:                                     ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %17) #9
  br label %put_cred.exit.i

put_cred.exit.i:                                  ; preds = %if.then1.i.i, %__validate_creds.exit.i.i.put_cred.exit.i_crit_edge, %if.then.i.put_cred.exit.i_crit_edge
  %19 = ptrtoint ptr %cl_cb_cred.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cl_cb_cred.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %put_cred.exit.i, %if.then10.if.end.i_crit_edge
  %cb_xprt.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 21, i32 5
  %20 = ptrtoint ptr %cb_xprt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb_xprt.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @svc_xprt_put(ptr noundef nonnull %21) #9
  %22 = ptrtoint ptr %cb_xprt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cb_xprt.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %cl_flags.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 22
  %23 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cl_flags.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not.i = icmp eq i32 %25, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end10.i.nfsd4_process_cb_update.exit_crit_edge

if.end10.i.nfsd4_process_cb_update.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_process_cb_update.exit

if.end13.i:                                       ; preds = %if.end10.i
  %cl_lock.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 29
  tail call void @_raw_spin_lock(ptr noundef %cl_lock.i) #9
  %26 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cl_flags.i, align 8
  %and.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %do.body20.i, label %do.end26.i, !prof !141

do.body20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1299, 0\0A.popsection", ""() #9, !srcloc !142
  unreachable

do.end26.i:                                       ; preds = %if.end13.i
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cl_flags.i) #9
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %cl_cb_conn29.i = getelementptr inbounds %struct.nfs4_client, ptr %29, i32 0, i32 21
  %30 = call ptr @memcpy(ptr %conn.i, ptr %cl_cb_conn29.i, i32 272)
  %cl_sessions.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 30
  %31 = ptrtoint ptr %cl_sessions.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn33.i.i = load ptr, ptr %cl_sessions.i.i, align 4
  %cmp.not34.i.i = icmp eq ptr %.pn33.i.i, %cl_sessions.i.i
  br i1 %cmp.not34.i.i, label %do.end26.i.if.end35.i_crit_edge, label %do.end26.i.for.body.i.i_crit_edge

do.end26.i.for.body.i.i_crit_edge:                ; preds = %do.end26.i
  br label %for.body.i.i

do.end26.i.if.end35.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.cond.loopexit.i.i:                            ; preds = %for.cond6.i.i
  %32 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i = load ptr, ptr %.pn35.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cl_sessions.i.i
  br i1 %cmp.not.i.i, label %for.cond.loopexit.i.i.if.end35.i_crit_edge, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.loopexit.i.i.if.end35.i_crit_edge:       ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %do.end26.i.for.body.i.i_crit_edge
  %.pn35.i.i = phi ptr [ %.pn.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ], [ %.pn33.i.i, %do.end26.i.for.body.i.i_crit_edge ]
  %se_conns.i.i = getelementptr i8, ptr %.pn35.i.i, i32 108
  br label %for.cond6.i.i

for.cond6.i.i:                                    ; preds = %for.body10.i.i.for.cond6.i.i_crit_edge, %for.body.i.i
  %c.0.in.i.i = phi ptr [ %se_conns.i.i, %for.body.i.i ], [ %c.0.i.i, %for.body10.i.i.for.cond6.i.i_crit_edge ]
  %33 = ptrtoint ptr %c.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %c.0.i.i = load ptr, ptr %c.0.in.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %c.0.i.i, %se_conns.i.i
  br i1 %cmp8.not.i.i, label %for.cond.loopexit.i.i, label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.cond6.i.i
  %cn_flags.i.i = getelementptr inbounds %struct.nfsd4_conn, ptr %c.0.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %cn_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cn_flags.i.i, align 4
  %36 = and i8 %35, 2
  %tobool.not.i72.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i72.i, label %for.body10.i.i.for.cond6.i.i_crit_edge, label %__nfsd4_find_backchannel.exit.i

for.body10.i.i.for.cond6.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond6.i.i

__nfsd4_find_backchannel.exit.i:                  ; preds = %for.body10.i.i
  %tobool31.not.i = icmp eq ptr %c.0.i.i, null
  br i1 %tobool31.not.i, label %__nfsd4_find_backchannel.exit.i.if.end35.i_crit_edge, label %if.then32.i

__nfsd4_find_backchannel.exit.i.if.end35.i_crit_edge: ; preds = %__nfsd4_find_backchannel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then32.i:                                      ; preds = %__nfsd4_find_backchannel.exit.i
  %cn_xprt.i = getelementptr inbounds %struct.nfsd4_conn, ptr %c.0.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %cn_xprt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cn_xprt.i, align 4
  %xpt_ref.i.i = getelementptr inbounds %struct.svc_xprt, ptr %38, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xpt_ref.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %xpt_ref.i.i, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xpt_ref.i.i, ptr %xpt_ref.i.i, i32 1, ptr elementtype(i32) %xpt_ref.i.i) #9, !srcloc !143
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !141

if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then32.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.svc_xprt_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !129

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.svc_xprt_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_xprt_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %xpt_ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %svc_xprt_get.exit.i

svc_xprt_get.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.svc_xprt_get.exit.i_crit_edge
  %41 = ptrtoint ptr %cn_xprt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cn_xprt.i, align 4
  %cb_xprt34.i = getelementptr inbounds %struct.nfs4_cb_conn, ptr %conn.i, i32 0, i32 5
  %43 = ptrtoint ptr %cb_xprt34.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %cb_xprt34.i, align 4
  %cn_session.i = getelementptr inbounds %struct.nfsd4_conn, ptr %c.0.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %cn_session.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cn_session.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %svc_xprt_get.exit.i, %__nfsd4_find_backchannel.exit.i.if.end35.i_crit_edge, %for.cond.loopexit.i.i.if.end35.i_crit_edge, %do.end26.i.if.end35.i_crit_edge
  %tobool31.not84.i = phi i1 [ false, %svc_xprt_get.exit.i ], [ true, %__nfsd4_find_backchannel.exit.i.if.end35.i_crit_edge ], [ true, %do.end26.i.if.end35.i_crit_edge ], [ true, %for.cond.loopexit.i.i.if.end35.i_crit_edge ]
  %retval.0.i83.i = phi ptr [ %c.0.i.i, %svc_xprt_get.exit.i ], [ null, %__nfsd4_find_backchannel.exit.i.if.end35.i_crit_edge ], [ null, %do.end26.i.if.end35.i_crit_edge ], [ null, %for.cond.loopexit.i.i.if.end35.i_crit_edge ]
  %ses.0.i = phi ptr [ %45, %svc_xprt_get.exit.i ], [ null, %__nfsd4_find_backchannel.exit.i.if.end35.i_crit_edge ], [ null, %do.end26.i.if.end35.i_crit_edge ], [ null, %for.cond.loopexit.i.i.if.end35.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #9
  %net.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 40
  %46 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %48 = load i32, ptr @nfsd_net_id, align 4
  %49 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i.i, label %if.end35.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end35.i.rcu_read_lock.exit.i.i.i.i_crit_edge:  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end35.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #9
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.end35.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %gen.i.i.i.i = getelementptr inbounds %struct.net, ptr %47, i32 0, i32 43
  %53 = ptrtoint ptr %gen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %gen.i.i.i.i, align 128
  %call.i.i.i73.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i73.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i73.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b9.i.i.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i.i.i, label %land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 45, ptr noundef nonnull @.str.3) #9
  br label %do.end7.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.do.end7.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end7.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.do.end7.i.i.i.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr [0 x ptr], ptr %54, i32 0, i32 %48
  %55 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i10.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i.i.i.i, label %do.end7.i.i.i.i.net_generic.exit.i.i.i_crit_edge, label %land.lhs.true.i13.i.i.i.i

do.end7.i.i.i.i.net_generic.exit.i.i.i_crit_edge: ; preds = %do.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit.i.i.i

land.lhs.true.i13.i.i.i.i:                        ; preds = %do.end7.i.i.i.i
  %call1.i11.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i.i)
  %tobool.not.i12.i.i.i.i = icmp eq i32 %call1.i11.i.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i.i, label %land.lhs.true.i13.i.i.i.i.net_generic.exit.i.i.i_crit_edge, label %land.lhs.true2.i15.i.i.i.i

land.lhs.true.i13.i.i.i.i.net_generic.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit.i.i.i

land.lhs.true2.i15.i.i.i.i:                       ; preds = %land.lhs.true.i13.i.i.i.i
  %.b4.i14.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i.i, label %land.lhs.true2.i15.i.i.i.i.net_generic.exit.i.i.i_crit_edge, label %if.then.i16.i.i.i.i

land.lhs.true2.i15.i.i.i.i.net_generic.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit.i.i.i

if.then.i16.i.i.i.i:                              ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #9
  br label %net_generic.exit.i.i.i

net_generic.exit.i.i.i:                           ; preds = %if.then.i16.i.i.i.i, %land.lhs.true2.i15.i.i.i.i.net_generic.exit.i.i.i_crit_edge, %land.lhs.true.i13.i.i.i.i.net_generic.exit.i.i.i_crit_edge, %do.end7.i.i.i.i.net_generic.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %57 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i.i17.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i17.i.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %nfsd4_lease.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %56, i32 0, i32 26
  %61 = ptrtoint ptr %nfsd4_lease.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %nfsd4_lease.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3600, i64 %62)
  %cmp.i.i.i = icmp sgt i64 %62, 3600
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end37.i.i.i

land.rhs.i.i.i:                                   ; preds = %net_generic.exit.i.i.i
  %.b47.i.i.i = load i1, ptr @max_cb_time.__already_done, align 1
  br i1 %.b47.i.i.i, label %land.rhs.i.i.i.max_cb_time.exit.i.i_crit_edge, label %if.then.i81.i.i, !prof !129

land.rhs.i.i.i.max_cb_time.exit.i.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_cb_time.exit.i.i

if.then.i81.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @max_cb_time.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 833, i32 noundef 9, ptr noundef null) #9
  br label %max_cb_time.exit.i.i

if.end37.i.i.i:                                   ; preds = %net_generic.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = trunc i64 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %conv.i.i.i)
  %cmp40.i.i.i = icmp ugt i32 %conv.i.i.i, 19
  %div.i.i.i = udiv i32 %conv.i.i.i, 10
  %phi.bo.i.i.i = mul i32 %div.i.i.i, 100
  %cond.i.i.i = select i1 %cmp40.i.i.i, i32 %phi.bo.i.i.i, i32 100
  br label %max_cb_time.exit.i.i

max_cb_time.exit.i.i:                             ; preds = %if.end37.i.i.i, %if.then.i81.i.i, %land.rhs.i.i.i.max_cb_time.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %cond.i.i.i, %if.end37.i.i.i ], [ 36000, %if.then.i81.i.i ], [ 36000, %land.rhs.i.i.i.max_cb_time.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %timeparms.i.i) #9
  %63 = getelementptr inbounds i8, ptr %timeparms.i.i, i32 16
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16777215, ptr %63, align 4
  %65 = ptrtoint ptr %timeparms.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i.i.i, ptr %timeparms.i.i, align 4
  %to_maxval.i.i = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %to_maxval.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i.i, ptr %to_maxval.i.i, align 4
  %to_increment.i.i = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %to_increment.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %to_increment.i.i, align 4
  %to_retries.i.i = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %to_retries.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %to_retries.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %69 = getelementptr inbounds i8, ptr %args.i.i, i32 64
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 -1, ptr %69, align 4, !annotation !146
  %71 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net.i.i, align 4
  %73 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %args.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %protocol.i.i, align 4
  %address.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %conn.i, ptr %address.i.i, align 4
  %addrsize.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 3
  %cb_addrlen.i.i = getelementptr inbounds %struct.nfs4_cb_conn, ptr %conn.i, i32 0, i32 2
  %76 = ptrtoint ptr %cb_addrlen.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cb_addrlen.i.i, align 4
  %78 = ptrtoint ptr %addrsize.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %addrsize.i.i, align 4
  %saddress.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 4
  %cb_saddr.i.i = getelementptr inbounds %struct.nfs4_cb_conn, ptr %conn.i, i32 0, i32 1
  %79 = ptrtoint ptr %saddress.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %cb_saddr.i.i, ptr %saddress.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %timeparms.i.i, ptr %timeout.i.i, align 4
  %servername.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %servername.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %servername.i.i, align 4
  %nodename.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 7
  %82 = ptrtoint ptr %nodename.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %nodename.i.i, align 4
  %program.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 8
  %83 = ptrtoint ptr %program.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @cb_program, ptr %program.i.i, align 4
  %prognumber.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 9
  %84 = ptrtoint ptr %prognumber.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %prognumber.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 10
  %85 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %version.i.i, align 4
  %authflavor.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 11
  %86 = ptrtoint ptr %authflavor.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %authflavor.i.i, align 4
  %nconnect.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 12
  %87 = ptrtoint ptr %nconnect.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %nconnect.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 13
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 80, ptr %flags.i.i, align 4
  %client_name.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 14
  %89 = ptrtoint ptr %client_name.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %client_name.i.i, align 4
  %bc_xprt.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 15
  %90 = ptrtoint ptr %bc_xprt.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %bc_xprt.i.i, align 4
  %91 = call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i.i, align 8
  %cred4.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 99
  %95 = ptrtoint ptr %cred4.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cred4.i.i, align 16
  %97 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %69, align 4
  %max_connect.i.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i.i, i32 0, i32 17
  %98 = ptrtoint ptr %max_connect.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %max_connect.i.i, align 4
  %cl_minorversion.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 17
  %99 = ptrtoint ptr %cl_minorversion.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cl_minorversion.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i.i = icmp eq i32 %100, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %max_cb_time.exit.i.i
  %cr_principal.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 14, i32 5
  %101 = ptrtoint ptr %cr_principal.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cr_principal.i.i, align 4
  %tobool.not.i74.i = icmp eq ptr %102, null
  br i1 %tobool.not.i74.i, label %land.lhs.true.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %cr_flavor.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 14, i32 3
  %103 = ptrtoint ptr %cr_flavor.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cr_flavor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 390002, i32 %104)
  %cmp7.i.i = icmp ugt i32 %104, 390002
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_nfsd_cb_setup_err(ptr noundef %12, i32 noundef -22) #9
  br label %setup_callback_client.exit.thread.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %105 = ptrtoint ptr %client_name.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %client_name.i.i, align 4
  %cb_prog.i.i = getelementptr inbounds %struct.nfs4_cb_conn, ptr %conn.i, i32 0, i32 3
  %106 = ptrtoint ptr %cb_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cb_prog.i.i, align 4
  %108 = ptrtoint ptr %prognumber.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %prognumber.i.i, align 4
  %109 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 6, ptr %protocol.i.i, align 4
  %cr_flavor15.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 14, i32 3
  %110 = ptrtoint ptr %cr_flavor15.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cr_flavor15.i.i, align 4
  %112 = ptrtoint ptr %authflavor.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %authflavor.i.i, align 4
  %cb_ident.i.i = getelementptr inbounds %struct.nfs4_cb_conn, ptr %conn.i, i32 0, i32 4
  %113 = ptrtoint ptr %cb_ident.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cb_ident.i.i, align 4
  %cl_cb_ident.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 25
  %115 = ptrtoint ptr %cl_cb_ident.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %cl_cb_ident.i.i, align 4
  br label %if.end29.i.i

if.else.i.i:                                      ; preds = %max_cb_time.exit.i.i
  %cb_xprt.i.i = getelementptr inbounds %struct.nfs4_cb_conn, ptr %conn.i, i32 0, i32 5
  %116 = ptrtoint ptr %cb_xprt.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cb_xprt.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %117, null
  br i1 %tobool17.not.i.i, label %if.else.i.i.setup_callback_client.exit.thread.i_crit_edge, label %if.end19.i.i

if.else.i.i.setup_callback_client.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_callback_client.exit.thread.i

if.end19.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %cb_xprt.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %cb_xprt.i, align 4
  %cl_cb_session.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 28
  %119 = ptrtoint ptr %cl_cb_session.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %ses.0.i, ptr %cl_cb_session.i.i, align 4
  %120 = ptrtoint ptr %bc_xprt.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %bc_xprt.i.i, align 4
  %se_cb_prog.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %ses.0.i, i32 0, i32 10
  %121 = ptrtoint ptr %se_cb_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %se_cb_prog.i.i, align 4
  %123 = ptrtoint ptr %prognumber.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %prognumber.i.i, align 4
  %124 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %117, align 4
  %xcl_ident.i.i = getelementptr inbounds %struct.svc_xprt_class, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %xcl_ident.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %xcl_ident.i.i, align 4
  %or.i.i = or i32 %127, -2147483648
  %128 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or.i.i, ptr %protocol.i.i, align 4
  %se_cb_sec.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %ses.0.i, i32 0, i32 8
  %129 = ptrtoint ptr %se_cb_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %se_cb_sec.i.i, align 4
  %131 = ptrtoint ptr %authflavor.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %authflavor.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end19.i.i, %if.end.i.i
  %call30.i.i = call ptr @rpc_create(ptr noundef nonnull %args.i.i) #9
  %cmp.i82.i.i = icmp ugt ptr %call30.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.i.i, label %setup_callback_client.exit.i, label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.end29.i.i
  %132 = ptrtoint ptr %cl_minorversion.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cl_minorversion.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i83.i.i = icmp eq i32 %133, 0
  br i1 %cmp.i83.i.i, label %if.then.i87.i.i, label %if.else.i.i.i

if.then.i87.i.i:                                  ; preds = %if.end35.i.i
  %cr_targ_princ.i.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 14, i32 6
  %134 = ptrtoint ptr %cr_targ_princ.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cr_targ_princ.i.i.i, align 4
  %tobool.not.i84.i.i = icmp eq ptr %135, null
  %spec.select.i.i.i = select i1 %tobool.not.i84.i.i, ptr @.str.27, ptr %135
  %cl_principal.i.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %call30.i.i, i32 0, i32 25
  %136 = ptrtoint ptr %cl_principal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %spec.select.i.i.i, ptr %cl_principal.i.i.i, align 4
  %call.i85.i.i = call ptr @rpc_machine_cred() #9
  %tobool.not.i.i86.i.i = icmp eq ptr %call.i85.i.i, null
  br i1 %tobool.not.i.i86.i.i, label %if.then.i87.i.i.if.then38.i.i_crit_edge, label %do.body.i.i.i.i

if.then.i87.i.i.if.then38.i.i_crit_edge:          ; preds = %if.then.i87.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

do.body.i.i.i.i:                                  ; preds = %if.then.i87.i.i
  %call.i.i.i88.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i85.i.i) #9
  br i1 %call.i.i.i88.i.i, label %if.then.i.i.i89.i.i, label %do.body.i.i.i.i.__validate_creds.exit.i.i.i.i_crit_edge, !prof !141

do.body.i.i.i.i.__validate_creds.exit.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i.i.i.i

if.then.i.i.i89.i.i:                              ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__invalid_creds(ptr noundef nonnull %call.i85.i.i, ptr noundef nonnull @.str.23, i32 noundef 253) #9
  br label %__validate_creds.exit.i.i.i.i

__validate_creds.exit.i.i.i.i:                    ; preds = %if.then.i.i.i89.i.i, %do.body.i.i.i.i.__validate_creds.exit.i.i.i.i_crit_edge
  %137 = getelementptr inbounds %struct.cred, ptr %call.i85.i.i, i32 0, i32 28
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %137, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i85.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %call.i85.i.i, i32 1, i32 3, i32 1) #9
  %139 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i85.i.i, ptr nonnull %call.i85.i.i, i32 1, ptr nonnull elementtype(i32) %call.i85.i.i) #9, !srcloc !134
  br label %if.end39.i.i

if.else.i.i.i:                                    ; preds = %if.end35.i.i
  %call4.i.i.i = call ptr @prepare_kernel_cred(ptr noundef null) #9
  %tobool5.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %if.else.i.i.i.if.then38.i.i_crit_edge, label %if.end.i.i.i

if.else.i.i.i.if.then38.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %uid.i.i.i = getelementptr inbounds %struct.cred, ptr %call4.i.i.i, i32 0, i32 4
  %uid7.i.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %ses.0.i, i32 0, i32 8, i32 1
  %140 = ptrtoint ptr %uid7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %uid7.i.i.i, align 4
  %142 = ptrtoint ptr %uid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %uid.i.i.i, align 4
  %gid.i.i.i = getelementptr inbounds %struct.cred, ptr %call4.i.i.i, i32 0, i32 5
  %gid9.i.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %ses.0.i, i32 0, i32 8, i32 2
  %143 = ptrtoint ptr %gid9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %gid9.i.i.i, align 4
  %145 = ptrtoint ptr %gid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %gid.i.i.i, align 4
  br label %if.end39.i.i

if.then38.i.i:                                    ; preds = %if.else.i.i.i.if.then38.i.i_crit_edge, %if.then.i87.i.i.if.then38.i.i_crit_edge
  call fastcc void @trace_nfsd_cb_setup_err(ptr noundef %12, i32 noundef -12) #9
  call void @rpc_shutdown_client(ptr noundef %call30.i.i) #9
  br label %setup_callback_client.exit.thread.i

if.end39.i.i:                                     ; preds = %if.end.i.i.i, %__validate_creds.exit.i.i.i.i
  %retval.1.i.i.i = phi ptr [ %call4.i.i.i, %if.end.i.i.i ], [ %call.i85.i.i, %__validate_creds.exit.i.i.i.i ]
  %146 = ptrtoint ptr %cl_cb_client.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call30.i.i, ptr %cl_cb_client.i, align 8
  %cl_cb_cred.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 23
  %147 = ptrtoint ptr %cl_cb_cred.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %retval.1.i.i.i, ptr %cl_cb_cred.i.i, align 4
  %148 = call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %151, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i75.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i75.i, label %if.end39.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end39.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end39.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i76.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i76.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i76.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end39.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call40.i.i = call ptr @rpc_peeraddr2str(ptr noundef %call30.i.i, i32 noundef 5) #9
  %152 = ptrtoint ptr %authflavor.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %authflavor.i.i, align 4
  call fastcc void @trace_nfsd_cb_setup(ptr noundef %12, ptr noundef %call40.i.i, i32 noundef %153) #9
  %call.i90.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i90.i.i, label %rcu_read_lock.exit.i.i.setup_callback_client.exit.thread87.i_crit_edge, label %land.lhs.true.i93.i.i

rcu_read_lock.exit.i.i.setup_callback_client.exit.thread87.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_callback_client.exit.thread87.i

land.lhs.true.i93.i.i:                            ; preds = %rcu_read_lock.exit.i.i
  %call1.i91.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91.i.i)
  %tobool.not.i92.i.i = icmp eq i32 %call1.i91.i.i, 0
  br i1 %tobool.not.i92.i.i, label %land.lhs.true.i93.i.i.setup_callback_client.exit.thread87.i_crit_edge, label %land.lhs.true2.i95.i.i

land.lhs.true.i93.i.i.setup_callback_client.exit.thread87.i_crit_edge: ; preds = %land.lhs.true.i93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_callback_client.exit.thread87.i

land.lhs.true2.i95.i.i:                           ; preds = %land.lhs.true.i93.i.i
  %.b4.i94.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94.i.i, label %land.lhs.true2.i95.i.i.setup_callback_client.exit.thread87.i_crit_edge, label %if.then.i96.i.i

land.lhs.true2.i95.i.i.setup_callback_client.exit.thread87.i_crit_edge: ; preds = %land.lhs.true2.i95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_callback_client.exit.thread87.i

if.then.i96.i.i:                                  ; preds = %land.lhs.true2.i95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #9
  br label %setup_callback_client.exit.thread87.i

setup_callback_client.exit.thread87.i:            ; preds = %if.then.i96.i.i, %land.lhs.true2.i95.i.i.setup_callback_client.exit.thread87.i_crit_edge, %land.lhs.true.i93.i.i.setup_callback_client.exit.thread87.i_crit_edge, %rcu_read_lock.exit.i.i.setup_callback_client.exit.thread87.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %154 = call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i.i97.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i.i.i97.i.i to ptr
  %preempt_count.i.i.i.i98.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %preempt_count.i.i.i.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %preempt_count.i.i.i.i98.i.i, align 4
  %sub.i.i.i.i.i = add i32 %157, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i98.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timeparms.i.i) #9
  br label %nfsd4_process_cb_update.exit

setup_callback_client.exit.thread.i:              ; preds = %if.then38.i.i, %if.else.i.i.setup_callback_client.exit.thread.i_crit_edge, %if.then8.i.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timeparms.i.i) #9
  br label %if.then39.i

setup_callback_client.exit.i:                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %call30.i.i to i32
  call fastcc void @trace_nfsd_cb_setup_err(ptr noundef %12, i32 noundef %158) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timeparms.i.i) #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %setup_callback_client.exit.i, %setup_callback_client.exit.thread.i
  %159 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %cl_flags.i, align 4
  %and1.i.i.i = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i78.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i78.i, label %if.end.i79.i, label %if.then39.i.nfsd4_mark_cb_down.exit.i_crit_edge

if.then39.i.nfsd4_mark_cb_down.exit.i_crit_edge:  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_down.exit.i

if.end.i79.i:                                     ; preds = %if.then39.i
  %cl_cb_state.i.i.i = getelementptr inbounds %struct.nfs4_client, ptr %12, i32 0, i32 26
  %161 = ptrtoint ptr %cl_cb_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cl_cb_state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %162)
  %cmp.not.i.i.i = icmp eq i32 %162, 2
  br i1 %cmp.not.i.i.i, label %if.end.i79.i.nfsd4_mark_cb_down.exit.i_crit_edge, label %if.then.i.i80.i

if.end.i79.i.nfsd4_mark_cb_down.exit.i_crit_edge: ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_down.exit.i

if.then.i.i80.i:                                  ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %cl_cb_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 2, ptr %cl_cb_state.i.i.i, align 8
  call fastcc void @trace_nfsd_cb_state(ptr noundef %12) #9
  br label %nfsd4_mark_cb_down.exit.i

nfsd4_mark_cb_down.exit.i:                        ; preds = %if.then.i.i80.i, %if.end.i79.i.nfsd4_mark_cb_down.exit.i_crit_edge, %if.then39.i.nfsd4_mark_cb_down.exit.i_crit_edge
  br i1 %tobool31.not84.i, label %nfsd4_mark_cb_down.exit.i.nfsd4_process_cb_update.exit_crit_edge, label %if.then41.i

nfsd4_mark_cb_down.exit.i.nfsd4_process_cb_update.exit_crit_edge: ; preds = %nfsd4_mark_cb_down.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_process_cb_update.exit

if.then41.i:                                      ; preds = %nfsd4_mark_cb_down.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %cn_xprt42.i = getelementptr inbounds %struct.nfsd4_conn, ptr %retval.0.i83.i, i32 0, i32 1
  %164 = ptrtoint ptr %cn_xprt42.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cn_xprt42.i, align 4
  call void @svc_xprt_put(ptr noundef %165) #9
  br label %nfsd4_process_cb_update.exit

nfsd4_process_cb_update.exit:                     ; preds = %if.then41.i, %nfsd4_mark_cb_down.exit.i.nfsd4_process_cb_update.exit_crit_edge, %setup_callback_client.exit.thread87.i, %if.end10.i.nfsd4_process_cb_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %conn.i) #9
  br label %if.end11

if.end11:                                         ; preds = %nfsd4_process_cb_update.exit, %if.end8.if.end11_crit_edge
  %cl_cb_client = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 24
  %166 = ptrtoint ptr %cl_cb_client to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cl_cb_client, align 8
  %tobool12.not = icmp eq ptr %167, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nfsd41_destroy_cb(ptr noundef %add.ptr)
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %cb_ops15 = getelementptr i8, ptr %work, i32 -4
  %168 = ptrtoint ptr %cb_ops15 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cb_ops15, align 4
  %tobool16.not = icmp eq ptr %169, null
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true17:                                  ; preds = %if.end14
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %170 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cl_minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool18.not = icmp eq i32 %171, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.end20_crit_edge, label %if.then19

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true17
  %cl_cb_state.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 26
  %172 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cl_cb_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.not.i = icmp eq i32 %173, 0
  br i1 %cmp.not.i, label %if.then19.nfsd4_mark_cb_state.exit_crit_edge, label %if.then.i52

if.then19.nfsd4_mark_cb_state.exit_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_state.exit

if.then.i52:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %cl_cb_state.i, align 8
  call fastcc void @trace_nfsd_cb_state(ptr noundef %1) #9
  br label %nfsd4_mark_cb_state.exit

nfsd4_mark_cb_state.exit:                         ; preds = %if.then.i52, %if.then19.nfsd4_mark_cb_state.exit_crit_edge
  call fastcc void @nfsd41_destroy_cb(ptr noundef %add.ptr)
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true17.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %cond26 = phi ptr [ @nfsd4_cb_probe_ops, %land.lhs.true17.if.end20_crit_edge ], [ @nfsd4_cb_ops, %if.end14.if.end20_crit_edge ]
  %cl_cb_cred = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 23
  %175 = ptrtoint ptr %cl_cb_cred to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cl_cb_cred, align 4
  %cb_msg = getelementptr i8, ptr %work, i32 -20
  %rpc_cred = getelementptr i8, ptr %work, i32 -8
  %177 = ptrtoint ptr %rpc_cred to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %176, ptr %rpc_cred, align 4
  %cl_minorversion21 = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %178 = ptrtoint ptr %cl_minorversion21 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cl_minorversion21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool22.not = icmp eq i32 %179, 0
  %or = select i1 %tobool22.not, i32 1536, i32 8704
  %call = call i32 @rpc_call_async(ptr noundef nonnull %167, ptr noundef %cb_msg, i32 noundef %or, ptr noundef nonnull %cond26, ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %nfsd4_mark_cb_state.exit, %if.then13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_cb_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_cb_state(ptr noundef %clp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_state, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cb_state, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !128

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %call42 = tail call i32 @__traceiter_nfsd_cb_state(ptr noundef null, ptr noundef %clp) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cb_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_cb_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 973, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
declare dso_local i32 @__traceiter_nfsd_cb_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_cb_shutdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_cb_null(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readnone %__unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs4_xdr_dec_cb_null(ptr nocapture noundef readnone %req, ptr nocapture noundef readnone %xdr, ptr nocapture noundef readnone %__unused) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_cb_recall(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cl_cb_ident = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %cl_cb_ident to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_cb_ident, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_minorversion, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i, i32 1
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %call.i, i32 3
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %incdec.ptr.i, align 4
  %9 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %incdec.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.encode_cb_sequence4args.exit_crit_edge, label %if.end.i

entry.encode_cb_sequence4args.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_cb_sequence4args.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %cl_cb_session.i = getelementptr inbounds %struct.nfs4_client, ptr %11, i32 0, i32 28
  %12 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl_cb_session.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 11, ptr %call.i.i, align 4
  %call.i14.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %se_sessionid.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %13, i32 0, i32 5
  %call1.i.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %call.i14.i, ptr noundef %se_sessionid.i.i, i32 noundef 16) #9
  %call.i8 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #9
  %se_cb_seq_nr.i = getelementptr inbounds %struct.nfsd4_session, ptr %13, i32 0, i32 11
  %15 = ptrtoint ptr %se_cb_seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %se_cb_seq_nr.i, align 4
  %incdec.ptr.i9 = getelementptr i32, ptr %call.i8, i32 1
  %17 = ptrtoint ptr %call.i8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call.i8, align 4
  %18 = call ptr @memset(ptr %incdec.ptr.i9, i32 0, i32 16)
  br label %encode_cb_sequence4args.exit

encode_cb_sequence4args.exit:                     ; preds = %if.end.i, %entry.encode_cb_sequence4args.exit_crit_edge
  %hdr.sroa.5.0 = phi i32 [ 1, %entry.encode_cb_sequence4args.exit_crit_edge ], [ 2, %if.end.i ]
  %call.i.i11 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %19 = ptrtoint ptr %call.i.i11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %call.i.i11, align 4
  %sc_stateid.i = getelementptr i8, ptr %data, i32 -116
  %call.i6.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %20 = ptrtoint ptr %sc_stateid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sc_stateid.i, align 4
  %incdec.ptr.i.i12 = getelementptr i32, ptr %call.i6.i, i32 1
  %22 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call.i6.i, align 4
  %si_opaque.i.i = getelementptr i8, ptr %data, i32 -112
  %call1.i.i13 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr.i.i12, ptr noundef %si_opaque.i.i, i32 noundef 12) #9
  %call.i14 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %23 = ptrtoint ptr %call.i14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %call.i14, align 4
  %sc_file.i = getelementptr i8, ptr %data, i32 -52
  %24 = ptrtoint ptr %sc_file.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_file.i, align 8
  %fi_fhandle.i = getelementptr inbounds %struct.nfs4_file, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %fi_fhandle.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fi_fhandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %27)
  %cmp.i.i = icmp ugt i32 %27, 128
  br i1 %cmp.i.i, label %do.body2.i.i, label %encode_cb_nops.exit, !prof !141

do.body2.i.i:                                     ; preds = %encode_cb_sequence4args.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

encode_cb_nops.exit:                              ; preds = %encode_cb_sequence4args.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add nuw nsw i32 %27, 4
  %call.i7.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #9
  %28 = getelementptr inbounds %struct.nfs4_file, ptr %25, i32 0, i32 13, i32 1
  %call8.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i7.i, ptr noundef %28, i32 noundef %27) #9
  %29 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %hdr.sroa.5.0, ptr %incdec.ptr2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_cb_recall(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !141

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %0 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %incdec.ptr.i, align 4
  %add.i = add i32 %1, 4
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %add.i) #9
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end, !prof !141

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call fastcc i32 @decode_cb_sequence4res(ptr noundef %xdr, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.rhs, label %if.end.cleanup_crit_edge, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb_seq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end13, label %lor.rhs.cleanup_crit_edge, !prof !129

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %lor.rhs
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 5
  %call.i24 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i25 = icmp eq ptr %call.i24, null
  br i1 %cmp.i25, label %if.end13.cleanup_crit_edge, label %if.end.i26, !prof !141

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i26:                                       ; preds = %if.end13
  %4 = ptrtoint ptr %call.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 4
  br i1 %cmp3.not.i, label %if.end11.i, label %do.body.i, !prof !129

if.end11.i:                                       ; preds = %if.end.i26
  %incdec.ptr.i27 = getelementptr i32, ptr %call.i24, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i27, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i
  %8 = phi i32 [ 0, %if.end11.i ], [ %12, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp3.i.i = icmp eq i32 %8, %7
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %errno.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %i.016.i.i, i32 1
  %9 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %errno.i.i, align 4
  br label %nfs_cb_stat_to_errno.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %arrayidx.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.i.i, label %do.body.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %7) #12
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end9.i.i_crit_edge
  %sub.i.i = sub i32 0, %7
  br label %nfs_cb_stat_to_errno.exit.i

nfs_cb_stat_to_errno.exit.i:                      ; preds = %do.end9.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %sub.i.i, %do.end9.i.i ]
  %14 = ptrtoint ptr %cb_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %cb_status, align 4
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %nfs_cb_stat_to_errno.exit.i, %if.end13.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.rhs.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %nfs_cb_stat_to_errno.exit.i ], [ -5, %if.end13.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_cb_layout(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_minorversion, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i, i32 1
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %call.i, i32 3
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %incdec.ptr.i, align 4
  %7 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %incdec.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

do.end7.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %cl_cb_session.i = getelementptr inbounds %struct.nfs4_client, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cb_session.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %call.i.i, align 4
  %call.i14.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %se_sessionid.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %11, i32 0, i32 5
  %call1.i.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %call.i14.i, ptr noundef %se_sessionid.i.i, i32 noundef 16) #9
  %call.i6 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #9
  %se_cb_seq_nr.i = getelementptr inbounds %struct.nfsd4_session, ptr %11, i32 0, i32 11
  %13 = ptrtoint ptr %se_cb_seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %se_cb_seq_nr.i, align 4
  %incdec.ptr.i7 = getelementptr i32, ptr %call.i6, i32 1
  %15 = ptrtoint ptr %call.i6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i6, align 4
  %16 = call ptr @memset(ptr %incdec.ptr.i7, i32 0, i32 16)
  %call.i11 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #9
  %incdec.ptr.i12 = getelementptr i32, ptr %call.i11, i32 1
  %17 = ptrtoint ptr %call.i11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %call.i11, align 4
  %ls_layout_type.i = getelementptr i8, ptr %data, i32 -8
  %18 = ptrtoint ptr %ls_layout_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ls_layout_type.i, align 4
  %incdec.ptr8.i = getelementptr i32, ptr %call.i11, i32 2
  %20 = ptrtoint ptr %incdec.ptr.i12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr.i12, align 4
  %incdec.ptr9.i = getelementptr i32, ptr %call.i11, i32 3
  %21 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %incdec.ptr8.i, align 4
  %incdec.ptr10.i = getelementptr i32, ptr %call.i11, i32 4
  %22 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %incdec.ptr9.i, align 4
  %23 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %incdec.ptr10.i, align 4
  %sc_file.i = getelementptr i8, ptr %data, i32 -84
  %24 = ptrtoint ptr %sc_file.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_file.i, align 4
  %fi_fhandle.i = getelementptr inbounds %struct.nfs4_file, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %fi_fhandle.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fi_fhandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %27)
  %cmp.i.i = icmp ugt i32 %27, 128
  br i1 %cmp.i.i, label %do.body2.i.i, label %encode_cb_nops.exit, !prof !141

do.body2.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

encode_cb_nops.exit:                              ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add nuw nsw i32 %27, 4
  %call.i.i13 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #9
  %28 = getelementptr inbounds %struct.nfs4_file, ptr %25, i32 0, i32 13, i32 1
  %call8.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i13, ptr noundef %28, i32 noundef %27) #9
  %call11.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %29 = ptrtoint ptr %call11.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %call11.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call11.i, i32 2
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 -1, ptr %add.ptr.i.i, align 1
  %ls_recall_sid.i = getelementptr i8, ptr %data, i32 80
  %call.i27.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %31 = ptrtoint ptr %ls_recall_sid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ls_recall_sid.i, align 4
  %incdec.ptr.i.i14 = getelementptr i32, ptr %call.i27.i, i32 1
  %33 = ptrtoint ptr %call.i27.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call.i27.i, align 4
  %si_opaque.i.i = getelementptr i8, ptr %data, i32 84
  %call1.i.i15 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr.i.i14, ptr noundef %si_opaque.i.i, i32 noundef 12) #9
  %34 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %incdec.ptr2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_cb_layout(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !141

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %0 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %incdec.ptr.i, align 4
  %add.i = add i32 %1, 4
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %add.i) #9
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end, !prof !141

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call fastcc i32 @decode_cb_sequence4res(ptr noundef %xdr, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.rhs, label %if.end.cleanup_crit_edge, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb_seq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end13, label %lor.rhs.cleanup_crit_edge, !prof !129

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %lor.rhs
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 5
  %call.i24 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i25 = icmp eq ptr %call.i24, null
  br i1 %cmp.i25, label %if.end13.cleanup_crit_edge, label %if.end.i26, !prof !141

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i26:                                       ; preds = %if.end13
  %4 = ptrtoint ptr %call.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 5
  br i1 %cmp3.not.i, label %if.end11.i, label %do.body.i, !prof !129

if.end11.i:                                       ; preds = %if.end.i26
  %incdec.ptr.i27 = getelementptr i32, ptr %call.i24, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i27, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i
  %8 = phi i32 [ 0, %if.end11.i ], [ %12, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp3.i.i = icmp eq i32 %8, %7
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %errno.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %i.016.i.i, i32 1
  %9 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %errno.i.i, align 4
  br label %nfs_cb_stat_to_errno.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %arrayidx.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.i.i, label %do.body.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %7) #12
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end9.i.i_crit_edge
  %sub.i.i = sub i32 0, %7
  br label %nfs_cb_stat_to_errno.exit.i

nfs_cb_stat_to_errno.exit.i:                      ; preds = %do.end9.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %sub.i.i, %do.end9.i.i ]
  %14 = ptrtoint ptr %cb_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %cb_status, align 4
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %nfs_cb_stat_to_errno.exit.i, %if.end13.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.rhs.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %nfs_cb_stat_to_errno.exit.i ], [ -5, %if.end13.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_cb_offload(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_minorversion, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i, i32 1
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %call.i, i32 3
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %incdec.ptr.i, align 4
  %7 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %incdec.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.encode_cb_sequence4args.exit_crit_edge, label %if.end.i

entry.encode_cb_sequence4args.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_cb_sequence4args.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %cl_cb_session.i = getelementptr inbounds %struct.nfs4_client, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cb_session.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %call.i.i, align 4
  %call.i14.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %se_sessionid.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %11, i32 0, i32 5
  %call1.i.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %call.i14.i, ptr noundef %se_sessionid.i.i, i32 noundef 16) #9
  %call.i8 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #9
  %se_cb_seq_nr.i = getelementptr inbounds %struct.nfsd4_session, ptr %11, i32 0, i32 11
  %13 = ptrtoint ptr %se_cb_seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %se_cb_seq_nr.i, align 4
  %incdec.ptr.i9 = getelementptr i32, ptr %call.i8, i32 1
  %15 = ptrtoint ptr %call.i8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i8, align 4
  %16 = call ptr @memset(ptr %incdec.ptr.i9, i32 0, i32 16)
  br label %encode_cb_sequence4args.exit

encode_cb_sequence4args.exit:                     ; preds = %if.end.i, %entry.encode_cb_sequence4args.exit_crit_edge
  %hdr.sroa.5.0 = phi i32 [ 1, %entry.encode_cb_sequence4args.exit_crit_edge ], [ 2, %if.end.i ]
  %nfserr = getelementptr i8, ptr %data, i32 80
  %17 = ptrtoint ptr %nfserr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nfserr, align 8
  %fh = getelementptr i8, ptr %data, i32 84
  %call.i11 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %19 = ptrtoint ptr %call.i11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 15, ptr %call.i11, align 4
  %20 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %21)
  %cmp.i.i = icmp ugt i32 %21, 128
  br i1 %cmp.i.i, label %do.body2.i.i, label %encode_nfs_fh4.exit.i, !prof !141

do.body2.i.i:                                     ; preds = %encode_cb_sequence4args.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

encode_nfs_fh4.exit.i:                            ; preds = %encode_cb_sequence4args.exit
  %add.i.i = add nuw nsw i32 %21, 4
  %call.i.i12 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #9
  %22 = getelementptr i8, ptr %data, i32 88
  %call8.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i12, ptr noundef %22, i32 noundef %21) #9
  %cb_stateid.i = getelementptr i8, ptr %data, i32 -20
  %call.i5.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %23 = ptrtoint ptr %cb_stateid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cb_stateid.i, align 4
  %incdec.ptr.i.i13 = getelementptr i32, ptr %call.i5.i, i32 1
  %25 = ptrtoint ptr %call.i5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call.i5.i, align 4
  %si_opaque.i.i = getelementptr i8, ptr %data, i32 -16
  %call1.i.i14 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr.i.i13, ptr noundef %si_opaque.i.i, i32 noundef 12) #9
  %call.i6.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %26 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %18, ptr %call.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %encode_nfs_fh4.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i7.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 24) #9
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call1.i7.i, i32 1
  %27 = ptrtoint ptr %call1.i7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call1.i7.i, align 4
  %cp_res.i.i = getelementptr i8, ptr %data, i32 -40
  %28 = ptrtoint ptr %cp_res.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cp_res.i.i, align 8
  %30 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %incdec.ptr.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %call1.i7.i, i32 3
  %wr_stable_how.i.i = getelementptr i8, ptr %data, i32 -32
  %31 = ptrtoint ptr %wr_stable_how.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wr_stable_how.i.i, align 8
  %incdec.ptr5.i.i = getelementptr i32, ptr %call1.i7.i, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr.i.i.i, align 4
  %wr_verifier.i.i = getelementptr i8, ptr %data, i32 -28
  %call7.i.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr5.i.i, ptr noundef %wr_verifier.i.i, i32 noundef 8) #9
  br label %encode_cb_nops.exit

if.else.i.i:                                      ; preds = %encode_nfs_fh4.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i8.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #9
  %34 = ptrtoint ptr %call8.i8.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %call8.i8.i, align 1
  br label %encode_cb_nops.exit

encode_cb_nops.exit:                              ; preds = %if.else.i.i, %if.then.i.i
  %35 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %hdr.sroa.5.0, ptr %incdec.ptr2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_cb_offload(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !141

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %0 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %incdec.ptr.i, align 4
  %add.i = add i32 %1, 4
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %add.i) #9
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end, !prof !141

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call fastcc i32 @decode_cb_sequence4res(ptr noundef %xdr, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.rhs, label %if.end.cleanup_crit_edge, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb_seq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end13, label %lor.rhs.cleanup_crit_edge, !prof !129

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %lor.rhs
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 5
  %call.i24 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i25 = icmp eq ptr %call.i24, null
  br i1 %cmp.i25, label %if.end13.cleanup_crit_edge, label %if.end.i26, !prof !141

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i26:                                       ; preds = %if.end13
  %4 = ptrtoint ptr %call.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 15
  br i1 %cmp3.not.i, label %if.end11.i, label %do.body.i, !prof !129

if.end11.i:                                       ; preds = %if.end.i26
  %incdec.ptr.i27 = getelementptr i32, ptr %call.i24, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i27, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i
  %8 = phi i32 [ 0, %if.end11.i ], [ %12, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp3.i.i = icmp eq i32 %8, %7
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %errno.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %i.016.i.i, i32 1
  %9 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %errno.i.i, align 4
  br label %nfs_cb_stat_to_errno.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %arrayidx.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.i.i, label %do.body.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %7) #12
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end9.i.i_crit_edge
  %sub.i.i = sub i32 0, %7
  br label %nfs_cb_stat_to_errno.exit.i

nfs_cb_stat_to_errno.exit.i:                      ; preds = %do.end9.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %sub.i.i, %do.end9.i.i ]
  %14 = ptrtoint ptr %cb_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %cb_status, align 4
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef 15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %nfs_cb_stat_to_errno.exit.i, %if.end13.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.rhs.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %nfs_cb_stat_to_errno.exit.i ], [ -5, %if.end13.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_cb_notify_lock(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_owner = getelementptr i8, ptr %data, i32 -264
  %0 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_owner, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.body3, label %encode_cb_sequence4args.exit, !prof !141

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #9, !srcloc !151
  unreachable

encode_cb_sequence4args.exit:                     ; preds = %entry
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i, i32 1
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %call.i, i32 3
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %incdec.ptr.i, align 4
  %9 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %incdec.ptr2.i, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %cl_cb_session.i = getelementptr inbounds %struct.nfs4_client, ptr %11, i32 0, i32 28
  %12 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl_cb_session.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 11, ptr %call.i.i, align 4
  %call.i14.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %se_sessionid.i.i = getelementptr inbounds %struct.nfsd4_session, ptr %13, i32 0, i32 5
  %call1.i.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %call.i14.i, ptr noundef %se_sessionid.i.i, i32 noundef 16) #9
  %call.i17 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #9
  %se_cb_seq_nr.i = getelementptr inbounds %struct.nfsd4_session, ptr %13, i32 0, i32 11
  %15 = ptrtoint ptr %se_cb_seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %se_cb_seq_nr.i, align 4
  %incdec.ptr.i18 = getelementptr i32, ptr %call.i17, i32 1
  %17 = ptrtoint ptr %call.i17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call.i17, align 4
  %18 = call ptr @memset(ptr %incdec.ptr.i18, i32 0, i32 16)
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 13, ptr %call, align 4
  %nbl_fh = getelementptr i8, ptr %data, i32 -132
  %20 = ptrtoint ptr %nbl_fh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbl_fh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %21)
  %cmp.i20 = icmp ugt i32 %21, 128
  br i1 %cmp.i20, label %do.body2.i, label %encode_cb_nops.exit, !prof !141

do.body2.i:                                       ; preds = %encode_cb_sequence4args.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

encode_cb_nops.exit:                              ; preds = %encode_cb_sequence4args.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i32 %21, 4
  %call.i21 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #9
  %22 = getelementptr i8, ptr %data, i32 -128
  %call8.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i21, ptr noundef %22, i32 noundef %21) #9
  %so_owner.i = getelementptr inbounds %struct.nfs4_stateowner, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %so_owner.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %so_owner.i, align 4
  %add.i22 = add i32 %24, 12
  %call.i23 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i22) #9
  %so_client.i = getelementptr inbounds %struct.nfs4_stateowner, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %so_client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %so_client.i, align 4
  %cl_clientid.i = getelementptr inbounds %struct.nfs4_client, ptr %26, i32 0, i32 15
  %call1.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %call.i23, ptr noundef %cl_clientid.i, i32 noundef 8) #9
  %data.i = getelementptr inbounds %struct.nfs4_stateowner, ptr %1, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %so_owner.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %so_owner.i, align 4
  %call5.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i, ptr noundef %28, i32 noundef %30) #9
  %31 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %incdec.ptr2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_cb_notify_lock(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !141

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %0 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %incdec.ptr.i, align 4
  %add.i = add i32 %1, 4
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %add.i) #9
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end, !prof !141

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call fastcc i32 @decode_cb_sequence4res(ptr noundef %xdr, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.rhs, label %if.end.cleanup_crit_edge, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb_seq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end13, label %lor.rhs.cleanup_crit_edge, !prof !129

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %lor.rhs
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %data, i32 0, i32 5
  %call.i24 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i25 = icmp eq ptr %call.i24, null
  br i1 %cmp.i25, label %if.end13.cleanup_crit_edge, label %if.end.i26, !prof !141

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i26:                                       ; preds = %if.end13
  %4 = ptrtoint ptr %call.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 13
  br i1 %cmp3.not.i, label %if.end11.i, label %do.body.i, !prof !129

if.end11.i:                                       ; preds = %if.end.i26
  %incdec.ptr.i27 = getelementptr i32, ptr %call.i24, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i27, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i
  %8 = phi i32 [ 0, %if.end11.i ], [ %12, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp3.i.i = icmp eq i32 %8, %7
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %errno.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %i.016.i.i, i32 1
  %9 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %errno.i.i, align 4
  br label %nfs_cb_stat_to_errno.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %arrayidx.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.i.i, label %do.body.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %7) #12
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end9.i.i_crit_edge
  %sub.i.i = sub i32 0, %7
  br label %nfs_cb_stat_to_errno.exit.i

nfs_cb_stat_to_errno.exit.i:                      ; preds = %do.end9.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %sub.i.i, %do.end9.i.i ]
  %14 = ptrtoint ptr %cb_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %cb_status, align 4
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %nfs_cb_stat_to_errno.exit.i, %if.end13.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.rhs.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %nfs_cb_stat_to_errno.exit.i ], [ -5, %if.end13.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_cb_sequence4res(ptr noundef %xdr, ptr nocapture noundef %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !141

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 11
  br i1 %cmp3.not.i, label %if.end11.i, label %do.body.i, !prof !129

if.end11.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i
  %8 = phi i32 [ 0, %if.end11.i ], [ %12, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp3.i.i = icmp eq i32 %8, %7
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %errno.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %i.016.i.i, i32 1
  %9 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %errno.i.i, align 4
  br label %lor.rhs

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %arrayidx.i.i = getelementptr [31 x %struct.anon.166], ptr @nfs_cb_errtbl, i32 0, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.i.i, label %do.body.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %7) #12
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end9.i.i_crit_edge
  %sub.i.i = sub i32 0, %7
  br label %lor.rhs

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %14 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef 11) #12
  br label %cleanup

lor.rhs:                                          ; preds = %do.end9.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %sub.i.i, %do.end9.i.i ]
  %15 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.i, ptr %cb_seq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool2.not, label %if.end6, label %lor.rhs.cleanup_crit_edge, !prof !129

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %lor.rhs
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb, align 4
  %cl_cb_session.i = getelementptr inbounds %struct.nfs4_client, ptr %17, i32 0, i32 28
  %18 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_cb_session.i, align 4
  %call.i13 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #9
  %cmp.i14 = icmp eq ptr %call.i13, null
  br i1 %cmp.i14, label %if.end6.decode_cb_sequence4resok.exit_crit_edge, label %if.end.i15, !prof !141

if.end6.decode_cb_sequence4resok.exit_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_cb_sequence4resok.exit

if.end.i15:                                       ; preds = %if.end6
  %se_sessionid.i = getelementptr inbounds %struct.nfsd4_session, ptr %19, i32 0, i32 5
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %call.i13, ptr noundef dereferenceable(16) %se_sessionid.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %if.end12.i, label %do.body.i17

do.body.i17:                                      ; preds = %if.end.i15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %20 = load i32, ptr @nfsd_debug, align 4
  %and.i16 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool5.not.i = icmp eq i32 %and.i16, 0
  br i1 %tobool5.not.i, label %do.body.i17.decode_cb_sequence4resok.exit_crit_edge, label %do.body.i17.out.sink.split.i_crit_edge

do.body.i17.out.sink.split.i_crit_edge:           ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split.i

do.body.i17.decode_cb_sequence4resok.exit_crit_edge: ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_cb_sequence4resok.exit

if.end12.i:                                       ; preds = %if.end.i15
  %add.ptr.i = getelementptr i32, ptr %call.i13, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %se_cb_seq_nr.i = getelementptr inbounds %struct.nfsd4_session, ptr %19, i32 0, i32 11
  %23 = ptrtoint ptr %se_cb_seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %se_cb_seq_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp14.not.i = icmp eq i32 %22, %24
  br i1 %cmp14.not.i, label %if.end28.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %25 = load i32, ptr @nfsd_debug, align 4
  %and17.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.decode_cb_sequence4resok.exit_crit_edge, label %do.body16.i.out.sink.split.i_crit_edge

do.body16.i.out.sink.split.i_crit_edge:           ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split.i

do.body16.i.decode_cb_sequence4resok.exit_crit_edge: ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_cb_sequence4resok.exit

if.end28.i:                                       ; preds = %if.end12.i
  %incdec.ptr.i18 = getelementptr i32, ptr %call.i13, i32 5
  %26 = ptrtoint ptr %incdec.ptr.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp31.not.i = icmp eq i32 %27, 0
  br i1 %cmp31.not.i, label %if.end28.i.decode_cb_sequence4resok.exit_crit_edge, label %do.body33.i

if.end28.i.decode_cb_sequence4resok.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_cb_sequence4resok.exit

do.body33.i:                                      ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %28 = load i32, ptr @nfsd_debug, align 4
  %and34.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.decode_cb_sequence4resok.exit_crit_edge, label %do.body33.i.out.sink.split.i_crit_edge

do.body33.i.out.sink.split.i_crit_edge:           ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split.i

do.body33.i.decode_cb_sequence4resok.exit_crit_edge: ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_cb_sequence4resok.exit

out.sink.split.i:                                 ; preds = %do.body33.i.out.sink.split.i_crit_edge, %do.body16.i.out.sink.split.i_crit_edge, %do.body.i17.out.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.11, %do.body.i17.out.sink.split.i_crit_edge ], [ @.str.14, %do.body16.i.out.sink.split.i_crit_edge ], [ @.str.17, %do.body33.i.out.sink.split.i_crit_edge ]
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink.i, ptr noundef nonnull @.str.12) #12
  br label %decode_cb_sequence4resok.exit

decode_cb_sequence4resok.exit:                    ; preds = %out.sink.split.i, %do.body33.i.decode_cb_sequence4resok.exit_crit_edge, %if.end28.i.decode_cb_sequence4resok.exit_crit_edge, %do.body16.i.decode_cb_sequence4resok.exit_crit_edge, %do.body.i17.decode_cb_sequence4resok.exit_crit_edge, %if.end6.decode_cb_sequence4resok.exit_crit_edge
  %status.0.i = phi i32 [ -526, %do.body.i17.decode_cb_sequence4resok.exit_crit_edge ], [ -526, %do.body16.i.decode_cb_sequence4resok.exit_crit_edge ], [ -526, %do.body33.i.decode_cb_sequence4resok.exit_crit_edge ], [ 0, %if.end28.i.decode_cb_sequence4resok.exit_crit_edge ], [ -5, %if.end6.decode_cb_sequence4resok.exit_crit_edge ], [ -526, %out.sink.split.i ]
  %29 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %status.0.i, ptr %cb_seq_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %decode_cb_sequence4resok.exit, %lor.rhs.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0.i, %decode_cb_sequence4resok.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd41_destroy_cb(ptr noundef %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %cb_holds_slot.i = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 7
  %2 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb_holds_slot.i, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.nfsd41_cb_release_slot.exit_crit_edge, label %if.then.i

entry.nfsd41_cb_release_slot.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_release_slot.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cb_holds_slot.i, align 1
  %cl_cb_slot_busy.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cl_cb_slot_busy.i) #9
  %cl_cb_waitq.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 39
  %call.i = tail call ptr @rpc_wake_up_next(ptr noundef %cl_cb_waitq.i) #9
  br label %nfsd41_cb_release_slot.exit

nfsd41_cb_release_slot.exit:                      ; preds = %if.then.i, %entry.nfsd41_cb_release_slot.exit_crit_edge
  %cb_ops = getelementptr inbounds %struct.nfsd4_callback, ptr %cb, i32 0, i32 2
  %5 = ptrtoint ptr %cb_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb_ops, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %nfsd41_cb_release_slot.exit.if.end_crit_edge, label %land.lhs.true

nfsd41_cb_release_slot.exit.if.end_crit_edge:     ; preds = %nfsd41_cb_release_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %nfsd41_cb_release_slot.exit
  %release = getelementptr inbounds %struct.nfsd4_callback_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %release, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %8(ptr noundef %cb) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %nfsd41_cb_release_slot.exit.if.end_crit_edge
  %cl_cb_inflight.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %cl_cb_inflight.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_cb_inflight.i, ptr %cl_cb_inflight.i, i32 1, ptr elementtype(i32) %cl_cb_inflight.i) #9, !srcloc !136
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i11, label %if.end.nfsd41_cb_inflight_end.exit_crit_edge

if.end.nfsd41_cb_inflight_end.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_inflight_end.exit

if.then.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %cl_cb_inflight.i) #9
  br label %nfsd41_cb_inflight_end.exit

nfsd41_cb_inflight_end.exit:                      ; preds = %if.then.i11, %if.end.nfsd41_cb_inflight_end.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_async(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_cb_setup_err(ptr noundef %clp, i32 noundef %error) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_setup_err, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cb_setup_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !128

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !152
  %call42 = tail call i32 @__traceiter_nfsd_cb_setup_err(ptr noundef null, ptr noundef %clp, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !153
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_setup_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_setup_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cb_setup_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_cb_setup_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1041, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_cb_setup(ptr noundef %clp, ptr noundef %netid, i32 noundef %authflavor) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_setup, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cb_setup, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !128

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !154
  %call42 = tail call i32 @__traceiter_nfsd_cb_setup(ptr noundef null, ptr noundef %clp, ptr noundef %netid, i32 noundef %authflavor) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !155
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_setup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cb_setup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cb_setup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_cb_setup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1018, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #9
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
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_cb_setup_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_machine_cred() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_cb_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_wake_up_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_prepare(ptr noundef %task, ptr nocapture noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calldata, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_minorversion, align 4
  %cb_seq_status = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 4
  %4 = ptrtoint ptr %cb_seq_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %cb_seq_status, align 4
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 5
  %5 = ptrtoint ptr %cb_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cb_holds_slot.i = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 7
  %6 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cb_holds_slot.i, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true.nfsd41_cb_get_slot.exit_crit_edge

land.lhs.true.nfsd41_cb_get_slot.exit_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_get_slot.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %cl_cb_slot_busy.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 38
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %cl_cb_slot_busy.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.nfsd41_cb_get_slot.exit_crit_edge, label %if.then.i

land.lhs.true.i.nfsd41_cb_get_slot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_get_slot.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %cl_cb_waitq.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 39
  tail call void @rpc_sleep_on(ptr noundef %cl_cb_waitq.i, ptr noundef %task, ptr noundef null) #9
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %cl_cb_slot_busy.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end11.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %8 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end11.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rpc_wake_up_queued_task(ptr noundef %cl_cb_waitq.i, ptr noundef %task) #9
  br label %nfsd41_cb_get_slot.exit

nfsd41_cb_get_slot.exit:                          ; preds = %if.end11.i, %land.lhs.true.i.nfsd41_cb_get_slot.exit_crit_edge, %land.lhs.true.nfsd41_cb_get_slot.exit_crit_edge
  %9 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cb_holds_slot.i, align 1
  br label %if.end

if.end:                                           ; preds = %nfsd41_cb_get_slot.exit, %entry.if.end_crit_edge
  tail call void @rpc_call_start(ptr noundef %task) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %do.body.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_done(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calldata, align 4
  %cl_cb_session.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_cb_session.i, align 4
  %cl_minorversion.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %cl_minorversion.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_minorversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tk_runstate.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 6
  %6 = ptrtoint ptr %tk_runstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tk_runstate.i, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.need_restart.i_crit_edge

if.then.i.need_restart.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_restart.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end3.i:                                        ; preds = %entry
  %cb_holds_slot.i = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 7
  %9 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cb_holds_slot.i, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %if.end3.i.need_restart.i_crit_edge, label %if.end6.i

if.end3.i.need_restart.i_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_restart.i

if.end6.i:                                        ; preds = %if.end3.i
  %cb_seq_status.i = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 4
  %11 = ptrtoint ptr %cb_seq_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb_seq_status.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 -526, label %sw.bb7.i
    i32 1, label %if.end6.i.sw.bb10.i_crit_edge
    i32 -10052, label %if.end6.i.sw.bb10.i_crit_edge80
    i32 -10008, label %sw.bb13.i
    i32 -10053, label %if.end6.i.retry_nowait.i_crit_edge
    i32 -10063, label %sw.bb19.i
  ]

if.end6.i.retry_nowait.i_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_nowait.i

if.end6.i.sw.bb10.i_crit_edge80:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end6.i.sw.bb10.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

sw.bb.i:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %se_cb_seq_nr.i = getelementptr inbounds %struct.nfsd4_session, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %se_cb_seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %se_cb_seq_nr.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %se_cb_seq_nr.i, align 4
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %se_cb_seq_nr8.i = getelementptr inbounds %struct.nfsd4_session, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %se_cb_seq_nr8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %se_cb_seq_nr8.i, align 4
  %inc9.i = add i32 %17, 1
  store i32 %inc9.i, ptr %se_cb_seq_nr8.i, align 4
  br label %sw.bb10.i

sw.bb10.i:                                        ; preds = %sw.bb7.i, %if.end6.i.sw.bb10.i_crit_edge, %if.end6.i.sw.bb10.i_crit_edge80
  %18 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %calldata, align 4
  %cl_flags.i.i = getelementptr inbounds %struct.nfs4_client, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %cl_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %cl_flags.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb10.i.sw.epilog.i_crit_edge

sw.bb10.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i.i:                                       ; preds = %sw.bb10.i
  %cl_cb_state.i.i.i = getelementptr inbounds %struct.nfs4_client, ptr %19, i32 0, i32 26
  %22 = ptrtoint ptr %cl_cb_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cl_cb_state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.not.i.i.i = icmp eq i32 %23, 3
  br i1 %cmp.not.i.i.i, label %if.end.i.i.sw.epilog.i_crit_edge, label %if.then.i.i.i

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %cl_cb_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %cl_cb_state.i.i.i, align 8
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %19) #9
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end6.i
  %call14.i = tail call i32 @rpc_restart_call(ptr noundef %task) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %sw.bb13.i.if.end_crit_edge, label %if.end17.i

sw.bb13.i.if.end_crit_edge:                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end17.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 200) #9
  br label %cleanup

sw.bb19.i:                                        ; preds = %if.end6.i
  %se_cb_seq_nr20.i = getelementptr inbounds %struct.nfsd4_session, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %se_cb_seq_nr20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %se_cb_seq_nr20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 1
  br i1 %cmp.not.i, label %sw.bb19.i.sw.epilog.i_crit_edge, label %if.then21.i

sw.bb19.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then21.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %se_cb_seq_nr20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %se_cb_seq_nr20.i, align 4
  br label %retry_nowait.i

sw.default.i:                                     ; preds = %if.end6.i
  %cl_flags.i88.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 22
  %28 = ptrtoint ptr %cl_flags.i88.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %cl_flags.i88.i, align 4
  %and1.i.i89.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i89.i)
  %tobool.not.i90.i = icmp eq i32 %and1.i.i89.i, 0
  br i1 %tobool.not.i90.i, label %if.end.i93.i, label %sw.default.i.nfsd4_mark_cb_fault.exit95.i_crit_edge

sw.default.i.nfsd4_mark_cb_fault.exit95.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_fault.exit95.i

if.end.i93.i:                                     ; preds = %sw.default.i
  %cl_cb_state.i.i91.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 26
  %30 = ptrtoint ptr %cl_cb_state.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cl_cb_state.i.i91.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.not.i.i92.i = icmp eq i32 %31, 3
  br i1 %cmp.not.i.i92.i, label %if.end.i93.i.nfsd4_mark_cb_fault.exit95.i_crit_edge, label %if.then.i.i94.i

if.end.i93.i.nfsd4_mark_cb_fault.exit95.i_crit_edge: ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd4_mark_cb_fault.exit95.i

if.then.i.i94.i:                                  ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %cl_cb_state.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %cl_cb_state.i.i91.i, align 8
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %1) #9
  br label %nfsd4_mark_cb_fault.exit95.i

nfsd4_mark_cb_fault.exit95.i:                     ; preds = %if.then.i.i94.i, %if.end.i93.i.nfsd4_mark_cb_fault.exit95.i_crit_edge, %sw.default.i.nfsd4_mark_cb_fault.exit95.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %33 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %nfsd4_mark_cb_fault.exit95.i.sw.epilog.i_crit_edge, label %do.end.i

nfsd4_mark_cb_fault.exit95.i.sw.epilog.i_crit_edge: ; preds = %nfsd4_mark_cb_fault.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i:                                         ; preds = %nfsd4_mark_cb_fault.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %cb_seq_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cb_seq_status.i, align 4
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %35) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %nfsd4_mark_cb_fault.exit95.i.sw.epilog.i_crit_edge, %sw.bb19.i.sw.epilog.i_crit_edge, %if.then.i.i.i, %if.end.i.i.sw.epilog.i_crit_edge, %sw.bb10.i.sw.epilog.i_crit_edge, %sw.bb.i
  %ret.0.off0.i = phi i1 [ true, %do.end.i ], [ true, %nfsd4_mark_cb_fault.exit95.i.sw.epilog.i_crit_edge ], [ true, %sw.bb19.i.sw.epilog.i_crit_edge ], [ true, %sw.bb.i ], [ false, %sw.bb10.i.sw.epilog.i_crit_edge ], [ false, %if.end.i.i.sw.epilog.i_crit_edge ], [ false, %if.then.i.i.i ]
  %36 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cb_holds_slot.i, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i96.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i96.i, label %sw.epilog.i.nfsd41_cb_release_slot.exit.i_crit_edge, label %if.then.i.i

sw.epilog.i.nfsd41_cb_release_slot.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_release_slot.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %calldata, align 4
  %40 = ptrtoint ptr %cb_holds_slot.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %cb_holds_slot.i, align 1
  %cl_cb_slot_busy.i.i = getelementptr inbounds %struct.nfs4_client, ptr %39, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cl_cb_slot_busy.i.i) #9
  %cl_cb_waitq.i.i = getelementptr inbounds %struct.nfs4_client, ptr %39, i32 0, i32 39
  %call.i.i = tail call ptr @rpc_wake_up_next(ptr noundef %cl_cb_waitq.i.i) #9
  br label %nfsd41_cb_release_slot.exit.i

nfsd41_cb_release_slot.exit.i:                    ; preds = %if.then.i.i, %sw.epilog.i.nfsd41_cb_release_slot.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %41 = load i32, ptr @nfsd_debug, align 4
  %and35.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %nfsd41_cb_release_slot.exit.i.do.end47.i_crit_edge, label %do.end40.i

nfsd41_cb_release_slot.exit.i.do.end47.i_crit_edge: ; preds = %nfsd41_cb_release_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47.i

do.end40.i:                                       ; preds = %nfsd41_cb_release_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %cl_cb_session.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cl_cb_session.i, align 4
  %se_cb_seq_nr43.i = getelementptr inbounds %struct.nfsd4_session, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %se_cb_seq_nr43.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %se_cb_seq_nr43.i, align 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %45) #12
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end40.i, %nfsd41_cb_release_slot.exit.i.do.end47.i_crit_edge
  %tk_runstate48.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 6
  %46 = ptrtoint ptr %tk_runstate48.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %tk_runstate48.i, align 4
  %48 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool50.not.i = icmp eq i32 %48, 0
  br i1 %tobool50.not.i, label %nfsd4_cb_sequence_done.exit, label %do.end47.i.need_restart.i_crit_edge

do.end47.i.need_restart.i_crit_edge:              ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_restart.i

retry_nowait.i:                                   ; preds = %if.then21.i, %if.end6.i.retry_nowait.i_crit_edge
  %call54.i = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %retry_nowait.i.if.end_crit_edge, label %retry_nowait.i.cleanup_crit_edge

retry_nowait.i.cleanup_crit_edge:                 ; preds = %retry_nowait.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

retry_nowait.i.if.end_crit_edge:                  ; preds = %retry_nowait.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

need_restart.i:                                   ; preds = %do.end47.i.need_restart.i_crit_edge, %if.end3.i.need_restart.i_crit_edge, %if.then.i.need_restart.i_crit_edge
  %cl_flags.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 22
  %49 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %cl_flags.i, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool59.not.i = icmp eq i32 %51, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %need_restart.i.cleanup_crit_edge

need_restart.i.cleanup_crit_edge:                 ; preds = %need_restart.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60.i:                                      ; preds = %need_restart.i
  call void @__sanitizer_cov_trace_pc() #11
  %tk_status.i = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %52 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tk_status.i, align 4
  %cb_need_restart.i = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 6
  %53 = ptrtoint ptr %cb_need_restart.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %cb_need_restart.i, align 4
  br label %cleanup

nfsd4_cb_sequence_done.exit:                      ; preds = %do.end47.i
  br i1 %ret.0.off0.i, label %nfsd4_cb_sequence_done.exit.if.end_crit_edge, label %nfsd4_cb_sequence_done.exit.cleanup_crit_edge

nfsd4_cb_sequence_done.exit.cleanup_crit_edge:    ; preds = %nfsd4_cb_sequence_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nfsd4_cb_sequence_done.exit.if.end_crit_edge:     ; preds = %nfsd4_cb_sequence_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %nfsd4_cb_sequence_done.exit.if.end_crit_edge, %retry_nowait.i.if.end_crit_edge, %sw.bb13.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %cb_status = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 5
  %54 = ptrtoint ptr %cb_status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not = icmp eq i32 %55, 0
  br i1 %tobool.not, label %if.end.if.end42_crit_edge, label %if.then1

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then1:                                         ; preds = %if.end
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %56 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.not = icmp eq i32 %57, 0
  br i1 %tobool2.not, label %if.then1.if.end32_crit_edge, label %land.rhs

if.then1.if.end32_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs:                                         ; preds = %if.then1
  %.b72 = load i1, ptr @nfsd4_cb_done.__already_done, align 1
  br i1 %.b72, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !129

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfsd4_cb_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1180, i32 noundef 9, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.then1.if.end32_crit_edge
  %58 = ptrtoint ptr %cb_status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cb_status, align 4
  %60 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tk_status, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end32, %if.end.if.end42_crit_edge
  %cb_ops = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 2
  %61 = ptrtoint ptr %cb_ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cb_ops, align 4
  %done = getelementptr inbounds %struct.nfsd4_callback_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %done, align 4
  %call43 = tail call i32 %64(ptr noundef %calldata, ptr noundef %task) #9
  %65 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call43, label %do.body50 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %tk_status44 = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %66 = ptrtoint ptr %tk_status44 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tk_status44, align 4
  %call45 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end42
  %tk_status47 = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %67 = ptrtoint ptr %tk_status47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tk_status47, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %68, label %sw.bb46.cleanup_crit_edge [
    i32 -5, label %sw.bb46.sw.bb48_crit_edge
    i32 -110, label %sw.bb46.sw.bb48_crit_edge81
    i32 -13, label %sw.bb46.sw.bb48_crit_edge82
  ]

sw.bb46.sw.bb48_crit_edge82:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

sw.bb46.sw.bb48_crit_edge81:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

sw.bb46.sw.bb48_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb48:                                          ; preds = %sw.bb46.sw.bb48_crit_edge, %sw.bb46.sw.bb48_crit_edge81, %sw.bb46.sw.bb48_crit_edge82
  %cl_flags.i73 = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 22
  %70 = ptrtoint ptr %cl_flags.i73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %cl_flags.i73, align 4
  %and1.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i74 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i74, label %if.end.i, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb48
  %cl_cb_state.i.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 26
  %72 = ptrtoint ptr %cl_cb_state.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cl_cb_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp.not.i.i = icmp eq i32 %73, 2
  br i1 %cmp.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i75

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i75:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %cl_cb_state.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %cl_cb_state.i.i, align 8
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %1) #9
  br label %cleanup

do.body50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4callback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1198, 0\0A.popsection", ""() #9, !srcloc !156
  unreachable

cleanup:                                          ; preds = %if.then.i.i75, %if.end.i.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %sw.bb, %nfsd4_cb_sequence_done.exit.cleanup_crit_edge, %if.then60.i, %need_restart.i.cleanup_crit_edge, %retry_nowait.i.cleanup_crit_edge, %if.end17.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_release(ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_need_restart = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 6
  %0 = ptrtoint ptr %cb_need_restart to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb_need_restart, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @callback_wq, align 4
  %cb_work.i = getelementptr inbounds %struct.nfsd4_callback, ptr %calldata, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %cb_work.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nfsd41_destroy_cb(ptr noundef %calldata)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_queued_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_probe_done(ptr nocapture noundef readonly %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %calldata, i32 -660
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cl_flags.i = getelementptr i8, ptr %calldata, i32 -20
  %2 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cl_flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %cl_cb_state.i.i = getelementptr i8, ptr %calldata, i32 -4
  %4 = ptrtoint ptr %cl_cb_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_cb_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i.i, label %if.end.i.if.end_crit_edge, label %if.then.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %cl_cb_state.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %cl_cb_state.i.i, align 8
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %cl_cb_state.i = getelementptr i8, ptr %calldata, i32 -4
  %7 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl_cb_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %cl_cb_state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cl_cb_state.i, align 8
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then.i, %if.then.i.i
  tail call fastcc void @trace_nfsd_cb_state(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cb_probe_release(ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_cb_inflight.i = getelementptr i8, ptr %calldata, i32 552
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_cb_inflight.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %cl_cb_inflight.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_cb_inflight.i, ptr %cl_cb_inflight.i, i32 1, ptr elementtype(i32) %cl_cb_inflight.i) #9, !srcloc !136
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.nfsd41_cb_inflight_end.exit_crit_edge

entry.nfsd41_cb_inflight_end.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd41_cb_inflight_end.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %cl_cb_inflight.i) #9
  br label %nfsd41_cb_inflight_end.exit

nfsd41_cb_inflight_end.exit:                      ; preds = %if.then.i, %entry.nfsd41_cb_inflight_end.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !91, !92, !94, !95, !97, !98, !100, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs4callback.c", i32 1221, i32 16}
!2 = !{ptr @nfsd4_init_cb.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfs4callback.c", i32 1368, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @callback_wq, !6, !"callback_wq", i1 false, i1 false}
!6 = !{!"../fs/nfsd/nfs4callback.c", i32 839, i32 33}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../fs/nfsd/trace.h", i32 974, i32 1}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/nfsd/trace.h", i32 973, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/nfsd/trace.h", i32 976, i32 1}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfsd/nfs4callback.c", i32 860, i32 2}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nfsd/nfs4callback.c", i32 780, i32 2}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfsd/nfs4callback.c", i32 781, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/nfsd/nfs4callback.c", i32 783, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfsd/nfs4callback.c", i32 786, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nfsd/nfs4callback.c", i32 785, i32 2}
!33 = !{ptr @nfs4_cb_procedures, !34, !"nfs4_cb_procedures", i1 false, i1 false}
!34 = !{!"../fs/nfsd/nfs4callback.c", i32 779, i32 34}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nfsd/nfs4callback.c", i32 404, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @decode_cb_sequence4resok._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @decode_cb_sequence4resok._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfsd/nfs4callback.c", i32 411, i32 3}
!42 = !{ptr @decode_cb_sequence4resok._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @decode_cb_sequence4resok._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/nfsd/nfs4callback.c", i32 417, i32 3}
!46 = !{ptr @decode_cb_sequence4resok._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @decode_cb_sequence4resok._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/nfsd/nfs4callback.c", i32 236, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @decode_cb_op_status._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @decode_cb_op_status._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfs4callback.c", i32 215, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @nfs_cb_stat_to_errno._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @nfs_cb_stat_to_errno._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @nfs_cb_errtbl, !59, !"nfs_cb_errtbl", i1 false, i1 false}
!59 = !{!"../fs/nfsd/nfs4callback.c", i32 165, i32 3}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/cred.h", i32 286, i32 3}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../fs/nfsd/nfs4callback.c", i32 901, i32 12}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/nfsd/nfs4callback.c", i32 833, i32 6}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfsd/nfs4callback.c", i32 816, i32 12}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nfsd/nfs4callback.c", i32 821, i32 20}
!73 = !{ptr @cb_program, !74, !"cb_program", i1 false, i1 false}
!74 = !{!"../fs/nfsd/nfs4callback.c", i32 815, i32 33}
!75 = !{ptr @nfs_cb_version, !76, !"nfs_cb_version", i1 false, i1 false}
!76 = !{!"../fs/nfsd/nfs4callback.c", i32 804, i32 34}
!77 = !{ptr @nfs_cb_version4, !78, !"nfs_cb_version4", i1 false, i1 false}
!78 = !{!"../fs/nfsd/nfs4callback.c", i32 790, i32 33}
!79 = !{ptr @nfs4_cb_counts, !80, !"nfs4_cb_counts", i1 false, i1 false}
!80 = !{!"../fs/nfsd/nfs4callback.c", i32 789, i32 21}
!81 = !{ptr @cb_stats, !82, !"cb_stats", i1 false, i1 false}
!82 = !{!"../fs/nfsd/nfs4callback.c", i32 810, i32 24}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/nfsd/trace.h", i32 1020, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/nfsd/nfs4callback.c", i32 868, i32 33}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/nfsd/trace.h", i32 994, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!97 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @nfsd4_cb_ops, !99, !"nfsd4_cb_ops", i1 false, i1 false}
!99 = !{!"../fs/nfsd/nfs4callback.c", i32 1213, i32 34}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/nfsd/nfs4callback.c", i32 1036, i32 4}
!102 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nfsd41_cb_get_slot._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfsd41_cb_get_slot._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../fs/nfsd/nfs4callback.c", i32 1180, i32 3}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/nfsd/nfs4callback.c", i32 1147, i32 3}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @nfsd4_cb_sequence_done._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @nfsd4_cb_sequence_done._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/nfsd/nfs4callback.c", i32 1152, i32 2}
!114 = !{ptr @nfsd4_cb_sequence_done._entry.35, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @nfsd4_cb_sequence_done._entry_ptr.37, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @nfsd4_cb_probe_ops, !117, !"nfsd4_cb_probe_ops", i1 false, i1 false}
!117 = !{!"../fs/nfsd/nfs4callback.c", i32 989, i32 34}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2148768607, i64 2148768612, i64 2148768625, i64 2148768669, i64 2148768703, i64 2148768724}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{i64 2158915243}
!131 = !{i64 2158915438}
!132 = !{i64 2149373190}
!133 = !{i64 2149374226}
!134 = !{i64 2148286792, i64 2148286818, i64 2148286847, i64 2148286881, i64 2148286912, i64 2148286935}
!135 = !{i64 2148375244}
!136 = !{i64 2148289977, i64 2148290009, i64 2148290038, i64 2148290072, i64 2148290103, i64 2148290126}
!137 = !{i64 2148375473}
!138 = !{i64 2158947373}
!139 = !{i64 2158947574}
!140 = !{i8 0, i8 2}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 2159136548, i64 2159137036, i64 2159136585, i64 2159136641, i64 2159136675, i64 2159136699, i64 2159136740, i64 2159136761, i64 2159136789, i64 2159136823}
!143 = !{i64 2148288322, i64 2148288354, i64 2148288383, i64 2148288417, i64 2148288448, i64 2148288471}
!144 = !{i64 2149364631}
!145 = !{i64 2149364897}
!146 = !{!"auto-init"}
!147 = !{i64 2158895130}
!148 = !{i64 2158895325}
!149 = !{i64 2159080623, i64 2159081110, i64 2159080660, i64 2159080716, i64 2159080750, i64 2159080774, i64 2159080815, i64 2159080836, i64 2159080864, i64 2159080898}
!150 = !{i64 2159099481, i64 2159099968, i64 2159099518, i64 2159099574, i64 2159099608, i64 2159099632, i64 2159099673, i64 2159099694, i64 2159099722, i64 2159099756}
!151 = !{i64 2159103946, i64 2159104433, i64 2159103983, i64 2159104039, i64 2159104073, i64 2159104097, i64 2159104138, i64 2159104159, i64 2159104187, i64 2159104221}
!152 = !{i64 2158980985}
!153 = !{i64 2158981202}
!154 = !{i64 2158964387}
!155 = !{i64 2158964620}
!156 = !{i64 2159127651, i64 2159128139, i64 2159127688, i64 2159127744, i64 2159127778, i64 2159127802, i64 2159127843, i64 2159127864, i64 2159127892, i64 2159127926}
