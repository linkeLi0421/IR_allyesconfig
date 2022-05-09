; ModuleID = '/llk/IR_all_yes/fs/nfs/callback.c_pt.bc'
source_filename = "../fs/nfs/callback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs_callback_data = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.154, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.131 }
%union.anon.131 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.anon.154 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.124, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.124 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.69, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.45 }
%union.anon.45 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.69 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@nfs_callback_info = internal global { [3 x %struct.nfs_callback_data], [40 x i8] } zeroinitializer, align 32
@nfs_callback_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfs_callback_mutex, i64 52), ptr getelementptr (i8, ptr @nfs_callback_mutex, i64 52) }, ptr @nfs_callback_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_callback_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFS: Couldn't create server thread; err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_callback_up\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/callback.c\00", [46 x i8] zeroinitializer }, align 32
@nfs_callback_up._entry_ptr = internal global ptr @nfs_callback_up._entry, section ".printk_index", align 4
@nfs_callback_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfs_callback_down: service destroyed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs_callback_down\00", [46 x i8] zeroinitializer }, align 32
@nfs_callback_down._entry_ptr = internal global ptr @nfs_callback_down._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfs@\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfs_callback_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs_callback_mutex\00", [45 x i8] zeroinitializer }, align 32
@nfs_callback_create_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014nfs_callback_create_svc: no kthread, %d users??\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs_callback_create_svc\00", [40 x i8] zeroinitializer }, align 32
@nfs_callback_create_svc._entry_ptr = internal global ptr @nfs_callback_create_svc._entry, section ".printk_index", align 4
@nfs4_callback_program = internal global { %struct.svc_program, [48 x i8] } { %struct.svc_program { ptr null, i32 1073741824, i32 0, i32 0, i32 5, ptr @nfs4_callback_version, ptr @.str.21, ptr @.str.22, ptr @nfs4_callback_stats, ptr @nfs_callback_authenticate, ptr @svc_generic_init_request, ptr @svc_generic_rpcbind_set }, [48 x i8] zeroinitializer }, align 32
@nfs_callback_create_svc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nfs_callback_create_svc: create service failed\0A\00", [46 x i8] zeroinitializer }, align 32
@nfs_callback_create_svc._entry_ptr.12 = internal global ptr @nfs_callback_create_svc._entry.10, section ".printk_index", align 4
@nfs_callback_create_svc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfs_callback_create_svc: service created\0A\00", [54 x i8] zeroinitializer }, align 32
@nfs_callback_create_svc._entry_ptr.15 = internal global ptr @nfs_callback_create_svc._entry.13, section ".printk_index", align 4
@nfs40_cb_sv_ops = internal constant { %struct.svc_serv_ops, [16 x i8] } { %struct.svc_serv_ops { ptr null, ptr @nfs4_callback_svc, ptr @svc_xprt_do_enqueue, ptr null }, [16 x i8] zeroinitializer }, align 32
@nfs41_cb_sv_ops = internal constant { %struct.svc_serv_ops, [16 x i8] } { %struct.svc_serv_ops { ptr null, ptr @nfs41_callback_svc, ptr @svc_xprt_do_enqueue, ptr null }, [16 x i8] zeroinitializer }, align 32
@nfs41_callback_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invoking bc_svc_process()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs41_callback_svc\00", [45 x i8] zeroinitializer }, align 32
@nfs41_callback_svc._entry_ptr = internal global ptr @nfs41_callback_svc._entry, section ".printk_index", align 4
@nfs41_callback_svc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bc_svc_process() returned w/ error code= %d\0A\00", [51 x i8] zeroinitializer }, align 32
@nfs41_callback_svc._entry_ptr.20 = internal global ptr @nfs41_callback_svc._entry.18, section ".printk_index", align 4
@nfs4_callback_version = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @nfs4_callback_version1, ptr null, ptr null, ptr @nfs4_callback_version4], [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NFSv4 callback\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@nfs4_callback_stats = internal global { %struct.svc_stat, [60 x i8] } zeroinitializer, align 32
@nfs4_callback_version1 = external dso_local constant %struct.svc_version, align 4
@nfs4_callback_version4 = external dso_local constant %struct.svc_version, align 4
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs_callback_up_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFS: create per-net callback data; net=%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfs_callback_up_net\00", [44 x i8] zeroinitializer }, align 32
@nfs_callback_up_net._entry_ptr = internal global ptr @nfs_callback_up_net._entry, section ".printk_index", align 4
@nfs_callback_up_net._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014NFS: bind callback service failed\0A\00", [59 x i8] zeroinitializer }, align 32
@nfs_callback_up_net._entry_ptr.27 = internal global ptr @nfs_callback_up_net._entry.25, section ".printk_index", align 4
@nfs_callback_up_net._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013NFS: callback service start failed\0A\00", [58 x i8] zeroinitializer }, align 32
@nfs_callback_up_net._entry_ptr.30 = internal global ptr @nfs_callback_up_net._entry.28, section ".printk_index", align 4
@nfs_callback_up_net._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"NFS: Couldn't create callback socket: err = %d; net = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@nfs_callback_up_net._entry_ptr.33 = internal global ptr @nfs_callback_up_net._entry.31, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@nfs_callback_set_tcpport = external dso_local local_unnamed_addr global i32, align 4
@nfs4_callback_up_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFS: Callback listener port = %u (af %u, net %x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_callback_up_net\00", [43 x i8] zeroinitializer }, align 32
@nfs4_callback_up_net._entry_ptr = internal global ptr @nfs4_callback_up_net._entry, section ".printk_index", align 4
@nfs4_callback_up_net._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_callback_up_net._entry_ptr.43 = internal global ptr @nfs4_callback_up_net._entry.42, section ".printk_index", align 4
@nfs_callback_nr_threads = external dso_local local_unnamed_addr global i16, align 2
@nfs_callback_start_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfs_callback_up: service started\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfs_callback_start_svc\00", [41 x i8] zeroinitializer }, align 32
@nfs_callback_start_svc._entry_ptr = internal global ptr @nfs_callback_start_svc._entry, section ".printk_index", align 4
@nfs_callback_down_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFS: destroy per-net callback data; net=%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfs_callback_down_net\00", [42 x i8] zeroinitializer }, align 32
@nfs_callback_down_net._entry_ptr = internal global ptr @nfs_callback_down_net._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"nfs_callback_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 38, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"nfs_callback_mutex\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 340, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 360, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 399, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 39, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 286, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"nfs4_callback_program\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 445, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 291, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 299, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"nfs40_cb_sv_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 235, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"nfs41_cb_sv_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 241, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 128, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 130, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"nfs4_callback_version\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 438, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 449, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 450, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"nfs4_callback_stats\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 443, i32 24 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 204, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 208, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 221, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 230, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 45, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 695, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 723, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 48, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 54, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 62, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 180, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [21 x i8] c"../fs/nfs/callback.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 191, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @nfs41_callback_svc._entry, ptr @nfs41_callback_svc._entry.18, ptr @nfs41_callback_svc._entry_ptr, ptr @nfs41_callback_svc._entry_ptr.20, ptr @nfs4_callback_up_net._entry, ptr @nfs4_callback_up_net._entry.42, ptr @nfs4_callback_up_net._entry_ptr, ptr @nfs4_callback_up_net._entry_ptr.43, ptr @nfs_callback_create_svc._entry, ptr @nfs_callback_create_svc._entry.10, ptr @nfs_callback_create_svc._entry.13, ptr @nfs_callback_create_svc._entry_ptr, ptr @nfs_callback_create_svc._entry_ptr.12, ptr @nfs_callback_create_svc._entry_ptr.15, ptr @nfs_callback_down._entry, ptr @nfs_callback_down._entry_ptr, ptr @nfs_callback_down_net._entry, ptr @nfs_callback_down_net._entry_ptr, ptr @nfs_callback_start_svc._entry, ptr @nfs_callback_start_svc._entry_ptr, ptr @nfs_callback_up._entry, ptr @nfs_callback_up._entry_ptr, ptr @nfs_callback_up_net._entry, ptr @nfs_callback_up_net._entry.25, ptr @nfs_callback_up_net._entry.28, ptr @nfs_callback_up_net._entry.31, ptr @nfs_callback_up_net._entry_ptr, ptr @nfs_callback_up_net._entry_ptr.27, ptr @nfs_callback_up_net._entry_ptr.30, ptr @nfs_callback_up_net._entry_ptr.33, ptr @nfs_callback_info, ptr @nfs_callback_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nfs4_callback_program, ptr @.str.11, ptr @.str.14, ptr @nfs40_cb_sv_ops, ptr @nfs41_cb_sv_ops, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @nfs4_callback_version, ptr @.str.21, ptr @.str.22, ptr @nfs4_callback_stats, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_create_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_program to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_create_svc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_create_svc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs40_cb_sv_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_cb_sv_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_callback_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_callback_svc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_stats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_up_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_up_net._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_up_net._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_up_net._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_up_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_up_net._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_start_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_callback_down_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_callback_up(i32 noundef %minorversion, ptr nocapture noundef %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %minorversion
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 49
  %0 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt_net, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfs_callback_mutex, i32 noundef 0) #13
  %serv1.i = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %minorversion, i32 1
  %2 = ptrtoint ptr %serv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serv1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i.i = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i.i, ptr %sv_refcnt.i.i, i32 1, ptr elementtype(i32) %sv_refcnt.i.i) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !118

if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.nfs_callback_create_svc.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.nfs_callback_create_svc.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_callback_create_svc.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %nfs_callback_create_svc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minorversion)
  %cond.i = icmp eq i32 %minorversion, 0
  %nfs40_cb_sv_ops.nfs41_cb_sv_ops.i = select i1 %cond.i, ptr @nfs40_cb_sv_ops, ptr @nfs41_cb_sv_ops
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not.i = icmp eq i32 %7, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %do.end.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %7) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.if.end10.i_crit_edge
  %call11.i = tail call ptr @svc_create(ptr noundef nonnull @nfs4_callback_program, i32 noundef 3072, ptr noundef nonnull %nfs40_cb_sv_ops.nfs41_cb_sv_ops.i) #13
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %nfs_callback_create_svc.exit.thread, label %if.end20.i

nfs_callback_create_svc.exit.thread:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  br label %if.then

if.end20.i:                                       ; preds = %if.end10.i
  %8 = ptrtoint ptr %serv1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11.i, ptr %serv1.i, align 4
  %sv_maxconn.i = getelementptr inbounds %struct.svc_serv, ptr %call11.i, i32 0, i32 5
  %9 = ptrtoint ptr %sv_maxconn.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %sv_maxconn.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.nfs_callback_create_svc.exit_crit_edge, label %do.end29.i, !prof !119

if.end20.i.nfs_callback_create_svc.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_callback_create_svc.exit

do.end29.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  br label %nfs_callback_create_svc.exit

nfs_callback_create_svc.exit:                     ; preds = %do.end29.i, %if.end20.i.nfs_callback_create_svc.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.nfs_callback_create_svc.exit_crit_edge
  %retval.0.i = phi ptr [ %call11.i, %do.end29.i ], [ %call11.i, %if.end20.i.nfs_callback_create_svc.exit_crit_edge ], [ %3, %if.else.i.i.i.i.i.i.nfs_callback_create_svc.exit_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %nfs_callback_create_svc.exit.if.then_crit_edge, label %if.end

nfs_callback_create_svc.exit.if.then_crit_edge:   ; preds = %nfs_callback_create_svc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %nfs_callback_create_svc.exit.if.then_crit_edge, %nfs_callback_create_svc.exit.thread
  %retval.0.i69 = phi ptr [ inttoptr (i32 -12 to ptr), %nfs_callback_create_svc.exit.thread ], [ %retval.0.i, %nfs_callback_create_svc.exit.if.then_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i69 to i32
  br label %err_create

if.end:                                           ; preds = %nfs_callback_create_svc.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %12 = load i32, ptr @nfs_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %12) #13
  %arrayidx.i40 = getelementptr %struct.nfs_net, ptr %call.i, i32 0, i32 10, i32 %minorversion
  %13 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i40, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %arrayidx.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i41 = icmp eq i32 %14, 0
  br i1 %tobool.not.i41, label %do.body.i, label %if.end5

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and.i42 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool1.not.i = icmp eq i32 %and.i42, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end9.i_crit_edge, label %do.end.i43, !prof !119

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

do.end.i43:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %inum.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %16 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inum.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %17) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i43, %do.body.i.do.end9.i_crit_edge
  %call10.i = tail call i32 @svc_bind(ptr noundef nonnull %retval.0.i, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i44 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i44, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %err_bind.i

if.end17.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minorversion)
  %cmp18.i = icmp eq i32 %minorversion, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end17.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !107) #13
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %cred1.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred1.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %24 = load i32, ptr @nfs_net_id, align 4
  %call2.i.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %24) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_callback_set_tcpport to i32))
  %25 = load i32, ptr @nfs_callback_set_tcpport, align 4
  %conv.i.i = trunc i32 %25 to i16
  %call3.i.i = tail call i32 @svc_create_xprt(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.39, ptr noundef %1, i32 noundef 2, i16 noundef zeroext %conv.i.i, i32 noundef 1, ptr noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 1
  br i1 %cmp.i.i, label %if.then19.i.out_err.i.i_crit_edge, label %if.end.i.i

if.then19.i.out_err.i.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i.i

if.end.i.i:                                       ; preds = %if.then19.i
  %conv5.i.i = trunc i32 %call3.i.i to i16
  %nfs_callback_tcpport.i.i = getelementptr inbounds %struct.nfs_net, ptr %call2.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %nfs_callback_tcpport.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv5.i.i, ptr %nfs_callback_tcpport.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %27 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.do.end19.i.i_crit_edge, label %do.end12.i.i, !prof !119

if.end.i.i.do.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i.i

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv15.i.i = and i32 %call3.i.i, 65535
  %inum.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %28 = ptrtoint ptr %inum.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inum.i.i, align 8
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv15.i.i, i32 noundef 2, i32 noundef %29) #16
  br label %do.end19.i.i

do.end19.i.i:                                     ; preds = %do.end12.i.i, %if.end.i.i.do.end19.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_callback_set_tcpport to i32))
  %30 = load i32, ptr @nfs_callback_set_tcpport, align 4
  %conv20.i.i = trunc i32 %30 to i16
  %call21.i.i = tail call i32 @svc_create_xprt(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.39, ptr noundef %1, i32 noundef 10, i16 noundef zeroext %conv20.i.i, i32 noundef 1, ptr noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp sgt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.else.i.i

if.then24.i.i:                                    ; preds = %do.end19.i.i
  %conv25.i.i = trunc i32 %call21.i.i to i16
  %nfs_callback_tcpport6.i.i = getelementptr inbounds %struct.nfs_net, ptr %call2.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %nfs_callback_tcpport6.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv25.i.i, ptr %nfs_callback_tcpport6.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %32 = load i32, ptr @nfs_debug, align 4
  %and27.i.i = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then24.i.i.if.end5.thread_crit_edge, label %do.end38.i.i, !prof !119

if.then24.i.i.if.end5.thread_crit_edge:           ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.thread

do.end38.i.i:                                     ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv41.i.i = and i32 %call21.i.i, 65535
  %inum43.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %33 = ptrtoint ptr %inum43.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inum43.i.i, align 8
  %call44.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv41.i.i, i32 noundef 10, i32 noundef %34) #16
  br label %if.end5.thread

if.else.i.i:                                      ; preds = %do.end19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97, i32 %call21.i.i)
  %cmp48.not.i.i = icmp eq i32 %call21.i.i, -97
  br i1 %cmp48.not.i.i, label %if.else.i.i.if.end5.thread_crit_edge, label %if.else.i.i.out_err.i.i_crit_edge

if.else.i.i.out_err.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i.i

if.else.i.i.if.end5.thread_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.thread

out_err.i.i:                                      ; preds = %if.else.i.i.out_err.i.i_crit_edge, %if.then19.i.out_err.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call3.i.i, %if.then19.i.out_err.i.i_crit_edge ], [ %call21.i.i, %if.else.i.i.out_err.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool53.not.i.i = icmp eq i32 %ret.0.i.i, 0
  %spec.select.i = select i1 %tobool53.not.i.i, i32 -12, i32 %ret.0.i.i
  br label %do.end30.i

if.else.i:                                        ; preds = %if.end17.i
  %ops.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %bc_setup.i = getelementptr inbounds %struct.rpc_xprt_ops, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %bc_setup.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bc_setup.i, align 4
  %tobool21.not.i = icmp eq ptr %38, null
  br i1 %tobool21.not.i, label %if.else.i.do.end30.i_crit_edge, label %if.end5.thread81

if.else.i.do.end30.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.end5.thread81:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %sv_bc_enabled.i.i = getelementptr inbounds %struct.svc_serv, ptr %retval.0.i, i32 0, i32 20
  %39 = ptrtoint ptr %sv_bc_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %sv_bc_enabled.i.i, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @nfs_callback_nr_threads to i32))
  %40 = load i16, ptr @nfs_callback_nr_threads, align 2
  br label %if.then.i.i

do.end30.i:                                       ; preds = %if.else.i.do.end30.i_crit_edge, %out_err.i.i
  %ret.0.i = phi i32 [ -93, %if.else.i.do.end30.i_crit_edge ], [ %spec.select.i, %out_err.i.i ]
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  tail call void @svc_rpcb_cleanup(ptr noundef nonnull %retval.0.i, ptr noundef %1) #13
  br label %err_bind.i

err_bind.i:                                       ; preds = %do.end30.i, %do.end14.i
  %ret.1.i = phi i32 [ %call10.i, %do.end14.i ], [ %ret.0.i, %do.end30.i ]
  %41 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i40, align 4
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %arrayidx.i40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %43 = load i32, ptr @nfs_debug, align 4
  %and37.i = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %err_bind.i.err_netthread-pre-split_crit_edge, label %do.end48.i, !prof !119

err_bind.i.err_netthread-pre-split_crit_edge:     ; preds = %err_bind.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_netthread-pre-split

do.end48.i:                                       ; preds = %err_bind.i
  call void @__sanitizer_cov_trace_pc() #15
  %inum51.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %44 = ptrtoint ptr %inum51.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %inum51.i, align 8
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %ret.1.i, i32 noundef %45) #16
  br label %err_netthread-pre-split

if.end5.thread:                                   ; preds = %if.else.i.i.if.end5.thread_crit_edge, %do.end38.i.i, %if.then24.i.i.if.end5.thread_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @nfs_callback_nr_threads to i32))
  %46 = load i16, ptr @nfs_callback_nr_threads, align 2
  br label %nfs_callback_bc_serv.exit.i

if.end5:                                          ; preds = %if.end
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @nfs_callback_nr_threads to i32))
  %47 = load i16, ptr @nfs_callback_nr_threads, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minorversion)
  %tobool.not.i.i46 = icmp eq i32 %minorversion, 0
  br i1 %tobool.not.i.i46, label %if.end5.nfs_callback_bc_serv.exit.i_crit_edge, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end5.nfs_callback_bc_serv.exit.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_callback_bc_serv.exit.i

if.then.i.i:                                      ; preds = %if.end5.if.then.i.i_crit_edge, %if.end5.thread81
  %48 = phi i16 [ %40, %if.end5.thread81 ], [ %47, %if.end5.if.then.i.i_crit_edge ]
  %bc_serv.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 41
  %49 = ptrtoint ptr %bc_serv.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i, ptr %bc_serv.i.i, align 8
  br label %nfs_callback_bc_serv.exit.i

nfs_callback_bc_serv.exit.i:                      ; preds = %if.then.i.i, %if.end5.nfs_callback_bc_serv.exit.i_crit_edge, %if.end5.thread
  %50 = phi i16 [ %48, %if.then.i.i ], [ %47, %if.end5.nfs_callback_bc_serv.exit.i_crit_edge ], [ %46, %if.end5.thread ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp.i47 = icmp eq i16 %50, 0
  %narrow.i = select i1 %cmp.i47, i16 1, i16 %50
  %spec.store.select.i = zext i16 %narrow.i to i32
  %sv_nrthreads.i = getelementptr inbounds %struct.svc_serv, ptr %retval.0.i, i32 0, i32 4
  %51 = ptrtoint ptr %sv_nrthreads.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sv_nrthreads.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %spec.store.select.i)
  %cmp2.i = icmp eq i32 %52, %spec.store.select.i
  br i1 %cmp2.i, label %nfs_callback_bc_serv.exit.i.if.end9_crit_edge, label %if.end5.i

nfs_callback_bc_serv.exit.i.if.end9_crit_edge:    ; preds = %nfs_callback_bc_serv.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end5.i:                                        ; preds = %nfs_callback_bc_serv.exit.i
  %call.i48 = tail call i32 @svc_set_num_threads(ptr noundef nonnull %retval.0.i, ptr noundef null, i32 noundef %spec.store.select.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %do.body.i51, label %nfs_callback_start_svc.exit

do.body.i51:                                      ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %53 = load i32, ptr @nfs_debug, align 4
  %and.i50 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool9.not.i = icmp eq i32 %and.i50, 0
  br i1 %tobool9.not.i, label %do.body.i51.if.end9_crit_edge, label %do.end.i52, !prof !119

do.body.i51.if.end9_crit_edge:                    ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end.i52:                                       ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #15
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %if.end9

nfs_callback_start_svc.exit:                      ; preds = %if.end5.i
  %call7.i = tail call i32 @svc_set_num_threads(ptr noundef nonnull %retval.0.i, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp7 = icmp slt i32 %call.i48, 0
  br i1 %cmp7, label %err_start, label %nfs_callback_start_svc.exit.if.end9_crit_edge

nfs_callback_start_svc.exit.if.end9_crit_edge:    ; preds = %nfs_callback_start_svc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %nfs_callback_start_svc.exit.if.end9_crit_edge, %do.end.i52, %do.body.i51.if.end9_crit_edge, %nfs_callback_bc_serv.exit.i.if.end9_crit_edge
  %retval.0.i5388 = phi i32 [ %call.i48, %nfs_callback_start_svc.exit.if.end9_crit_edge ], [ 0, %nfs_callback_bc_serv.exit.i.if.end9_crit_edge ], [ 0, %do.end.i52 ], [ 0, %do.body.i51.if.end9_crit_edge ]
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %err_net

err_netthread-pre-split:                          ; preds = %do.end, %nfs_callback_down_net.exit.err_netthread-pre-split_crit_edge, %do.end48.i, %err_bind.i.err_netthread-pre-split_crit_edge
  %ret.0.ph = phi i32 [ %ret.1.i, %err_bind.i.err_netthread-pre-split_crit_edge ], [ %ret.1.i, %do.end48.i ], [ %call.i48, %nfs_callback_down_net.exit.err_netthread-pre-split_crit_edge ], [ %call.i48, %do.end ]
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %arrayidx, align 4
  br label %err_net

err_net:                                          ; preds = %err_netthread-pre-split, %if.end9
  %57 = phi i32 [ %.pr, %err_netthread-pre-split ], [ %inc, %if.end9 ]
  %ret.0 = phi i32 [ %ret.0.ph, %err_netthread-pre-split ], [ %retval.0.i5388, %if.end9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not = icmp eq i32 %57, 0
  br i1 %tobool.not, label %if.then11, label %err_net.if.end13_crit_edge

err_net.if.end13_crit_edge:                       ; preds = %err_net
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then11:                                        ; preds = %err_net
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %serv1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %serv1.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %err_net.if.end13_crit_edge
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %retval.0.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #13
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #13, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i54 = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i54)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i54, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i55, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i54)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i54, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err_create_crit_edge, label %if.then10.i.i.i.i.i, !prof !119

if.end5.i.i.i.i.i.err_create_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_create

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef 3) #13
  br label %err_create

if.then.i.i55:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @svc_destroy(ptr noundef %sv_refcnt.i) #13
  br label %err_create

err_create:                                       ; preds = %if.then.i.i55, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err_create_crit_edge, %if.then
  %ret.1 = phi i32 [ %11, %if.then ], [ %ret.0, %if.end5.i.i.i.i.i.err_create_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i55 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_callback_mutex) #13
  ret i32 %ret.1

err_start:                                        ; preds = %nfs_callback_start_svc.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %60 = load i32, ptr @nfs_net_id, align 4
  %call.i56 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %60) #13
  %arrayidx.i57 = getelementptr %struct.nfs_net, ptr %call.i56, i32 0, i32 10, i32 %minorversion
  %61 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i57, align 4
  %dec.i58 = add i32 %62, -1
  store i32 %dec.i58, ptr %arrayidx.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i58)
  %tobool.not.i59 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i59, label %do.body.i62, label %err_start.nfs_callback_down_net.exit_crit_edge

err_start.nfs_callback_down_net.exit_crit_edge:   ; preds = %err_start
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_callback_down_net.exit

do.body.i62:                                      ; preds = %err_start
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %63 = load i32, ptr @nfs_debug, align 4
  %and.i60 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool1.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool1.not.i61, label %do.body.i62.do.end9.i66_crit_edge, label %do.end.i65, !prof !119

do.body.i62.do.end9.i66_crit_edge:                ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i66

do.end.i65:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #15
  %inum.i63 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %64 = ptrtoint ptr %inum.i63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %inum.i63, align 8
  %call6.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %65) #16
  br label %do.end9.i66

do.end9.i66:                                      ; preds = %do.end.i65, %do.body.i62.do.end9.i66_crit_edge
  tail call void @svc_shutdown_net(ptr noundef nonnull %retval.0.i, ptr noundef %1) #13
  br label %nfs_callback_down_net.exit

nfs_callback_down_net.exit:                       ; preds = %do.end9.i66, %err_start.nfs_callback_down_net.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %66 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %nfs_callback_down_net.exit.err_netthread-pre-split_crit_edge, label %do.end, !prof !119

nfs_callback_down_net.exit.err_netthread-pre-split_crit_edge: ; preds = %nfs_callback_down_net.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_netthread-pre-split

do.end:                                           ; preds = %nfs_callback_down_net.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i48) #16
  br label %err_netthread-pre-split
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_callback_down(i32 noundef %minorversion, ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %minorversion
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfs_callback_mutex, i32 noundef 0) #13
  %serv1 = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %minorversion, i32 1
  %0 = ptrtoint ptr %serv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %2 = load i32, ptr @nfs_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2) #13
  %arrayidx.i = getelementptr %struct.nfs_net, ptr %call.i, i32 0, i32 10, i32 %minorversion
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %4, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.nfs_callback_down_net.exit_crit_edge

entry.nfs_callback_down_net.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_callback_down_net.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %5 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end9.i_crit_edge, label %do.end.i, !prof !119

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %inum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inum.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %7) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  tail call void @svc_shutdown_net(ptr noundef %1, ptr noundef %net) #13
  br label %nfs_callback_down_net.exit

nfs_callback_down_net.exit:                       ; preds = %do.end9.i, %entry.nfs_callback_down_net.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %nfs_callback_down_net.exit.if.end12_crit_edge

nfs_callback_down_net.exit.if.end12_crit_edge:    ; preds = %nfs_callback_down_net.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %nfs_callback_down_net.exit
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #13, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.svc_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.svc_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %svc_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %svc_get.exit

svc_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.svc_get.exit_crit_edge
  %call3 = tail call i32 @svc_set_num_threads(ptr noundef %1, ptr noundef null, i32 noundef 0) #13
  %call.i.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #13, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %svc_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i22, label %if.end5.i.i.i.i.i.svc_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !119

if.end5.i.i.i.i.i.svc_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %svc_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef 3) #13
  br label %svc_put.exit

if.then.i.i:                                      ; preds = %svc_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @svc_destroy(ptr noundef %sv_refcnt.i) #13
  br label %svc_put.exit

svc_put.exit:                                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.svc_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %svc_put.exit.do.end10_crit_edge, label %do.end, !prof !119

svc_put.exit.do.end10_crit_edge:                  ; preds = %svc_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %svc_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  br label %do.end10

do.end10:                                         ; preds = %do.end, %svc_put.exit.do.end10_crit_edge
  %14 = ptrtoint ptr %serv1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %serv1, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %nfs_callback_down_net.exit.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_callback_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_num_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @check_gss_callback_principal(ptr nocapture noundef readonly %clp, ptr nocapture noundef readonly %rqstp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_principal = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 5
  %0 = ptrtoint ptr %cr_principal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_principal, align 4
  %rq_authop = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 10
  %2 = ptrtoint ptr %rq_authop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_authop, align 8
  %flavour = getelementptr inbounds %struct.auth_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flavour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flavour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.not = icmp eq i32 %5, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_minorversion = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 15
  %6 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl_minorversion, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not = icmp ne i32 %7, 0
  %cmp4 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cl_acceptor = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 8
  %8 = ptrtoint ptr %cl_acceptor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_acceptor, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.5, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp12.not = icmp eq i32 %bcmp, 0
  br i1 %cmp12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %10 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_hostname, align 8
  %call15 = tail call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %tobool9.not, %if.then7 ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ %cmp16.not, %if.end14 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_callback_svc(ptr noundef %vrqstp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #13
  %call116 = tail call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #13
  br i1 %call116, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then_crit_edge, !prof !119

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

signal_pending.exit:                              ; preds = %while.body
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.if.end_crit_edge, label %signal_pending.exit.if.then_crit_edge

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

signal_pending.exit.if.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  tail call void @flush_signals(ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %signal_pending.exit.if.end_crit_edge
  %call6 = tail call i32 @svc_recv(ptr noundef %vrqstp, i32 noundef 2147483647) #13
  %11 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end9 [
    i32 -11, label %if.end.while.cond.backedge_crit_edge
    i32 -4, label %if.end.while.cond.backedge_crit_edge17
  ]

if.end.while.cond.backedge_crit_edge17:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end9, %if.end.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge17
  %call1 = tail call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #13
  br i1 %call1, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @svc_process(ptr noundef %vrqstp) #13
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @svc_exit_thread(ptr noundef %vrqstp) #13
  call void @__asan_handle_no_return()
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_do_enqueue(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_freezable_should_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_recv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_exit_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs41_callback_svc(ptr noundef %vrqstp) #6 align 64 {
entry:
  %wq = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %vrqstp, i32 0, i32 7
  %0 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_server, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wq) #13
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wq, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !107) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %call4 = call zeroext i1 @set_freezable() #13
  %call567 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #13
  br i1 %call567, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sv_cb_waitq = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 19
  %sv_cb_lock = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 18
  %sv_cb_list = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then_crit_edge, !prof !119

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

signal_pending.exit:                              ; preds = %while.body
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.if.end_crit_edge, label %signal_pending.exit.if.then_crit_edge

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

signal_pending.exit.if.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  call void @flush_signals(ptr noundef %16) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %signal_pending.exit.if.end_crit_edge
  call void @prepare_to_wait(ptr noundef %sv_cb_waitq, ptr noundef nonnull %wq, i32 noundef 1) #13
  call void @_raw_spin_lock_bh(ptr noundef %sv_cb_lock) #13
  %24 = ptrtoint ptr %sv_cb_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %sv_cb_list, align 4
  %cmp.i.not = icmp eq ptr %25, %sv_cb_list
  br i1 %cmp.i.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %25, i32 -268
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_del.exit_crit_edge

if.then13.list_del.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then13.list_del.exit_crit_edge
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %sv_cb_lock) #13
  call void @finish_wait(ptr noundef %sv_cb_waitq, ptr noundef nonnull %wq) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %34 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %list_del.exit.do.end28_crit_edge, label %do.end, !prof !119

list_del.exit.do.end28_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %do.end28

do.end28:                                         ; preds = %do.end, %list_del.exit.do.end28_crit_edge
  %call29 = call i32 @bc_svc_process(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %vrqstp) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %35 = load i32, ptr @nfs_debug, align 4
  %and31 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.end28.if.end53_crit_edge, label %do.end42, !prof !119

do.end28.if.end53_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.end42:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call29) #16
  br label %if.end53

if.else:                                          ; preds = %if.end
  call void @_raw_spin_unlock_bh(ptr noundef %sv_cb_lock) #13
  %call49 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call49, label %if.else.if.end51_crit_edge, label %if.then50

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @schedule() #13
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.else.if.end51_crit_edge
  call void @finish_wait(ptr noundef %sv_cb_waitq, ptr noundef nonnull %wq) #13
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %do.end42, %do.end28.if.end53_crit_edge
  %call5 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #13
  br i1 %call5, label %if.end53.while.end_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %entry.while.end_crit_edge
  call void @svc_exit_thread(ptr noundef %vrqstp) #13
  call void @__asan_handle_no_return()
  call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bc_svc_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs_callback_authenticate(ptr nocapture noundef %rqstp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %0 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %rq_auth_stat, align 4
  %rq_authop = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 10
  %1 = ptrtoint ptr %rq_authop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_authop, align 8
  %flavour = getelementptr inbounds %struct.auth_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %flavour to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flavour, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 6, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %rq_proc = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %6 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_proc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %rq_server.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %8 = ptrtoint ptr %rq_server.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_server.i, align 4
  %sv_bc_enabled.i = getelementptr inbounds %struct.svc_serv, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %sv_bc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sv_bc_enabled.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %12 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rq_auth_stat, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ 5, %sw.epilog ], [ 8, %sw.bb.return_crit_edge ], [ 8, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_init_request(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_rpcbind_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 45, ptr noundef nonnull @.str.35) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %8 = tail call i32 @llvm.read_register.i32(metadata !107) #13
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rpcb_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_create_xprt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_shutdown_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/callback.c", i32 340, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs_callback_up._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs_callback_up._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/callback.c", i32 360, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nfs_callback_down._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @nfs_callback_down._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfs/callback.c", i32 399, i32 16}
!13 = !{ptr @nfs_callback_info, !14, !"nfs_callback_info", i1 false, i1 false}
!14 = !{!"../fs/nfs/callback.c", i32 38, i32 33}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/callback.c", i32 39, i32 8}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfs_callback_mutex, !16, !"nfs_callback_mutex", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfs/callback.c", i32 286, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nfs_callback_create_svc._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfs_callback_create_svc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/callback.c", i32 291, i32 3}
!26 = !{ptr @nfs_callback_create_svc._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfs_callback_create_svc._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfs/callback.c", i32 299, i32 2}
!30 = !{ptr @nfs_callback_create_svc._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfs_callback_create_svc._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"nfs4_cb_sv_ops", i1 false, i1 false}
!33 = !{!"../fs/nfs/callback.c", i32 247, i32 35}
!34 = !{ptr @nfs40_cb_sv_ops, !35, !"nfs40_cb_sv_ops", i1 false, i1 false}
!35 = !{!"../fs/nfs/callback.c", i32 235, i32 34}
!36 = !{ptr @nfs41_cb_sv_ops, !37, !"nfs41_cb_sv_ops", i1 false, i1 false}
!37 = !{!"../fs/nfs/callback.c", i32 241, i32 34}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/callback.c", i32 128, i32 4}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfs41_callback_svc._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfs41_callback_svc._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nfs/callback.c", i32 130, i32 4}
!45 = !{ptr @nfs41_callback_svc._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfs41_callback_svc._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfs/callback.c", i32 449, i32 13}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nfs/callback.c", i32 450, i32 14}
!51 = !{ptr @nfs4_callback_program, !52, !"nfs4_callback_program", i1 false, i1 false}
!52 = !{!"../fs/nfs/callback.c", i32 445, i32 27}
!53 = !{ptr @nfs4_callback_version, !54, !"nfs4_callback_version", i1 false, i1 false}
!54 = !{!"../fs/nfs/callback.c", i32 438, i32 34}
!55 = !{ptr @nfs4_callback_stats, !56, !"nfs4_callback_stats", i1 false, i1 false}
!56 = !{!"../fs/nfs/callback.c", i32 443, i32 24}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfs/callback.c", i32 204, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nfs_callback_up_net._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nfs_callback_up_net._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfs/callback.c", i32 208, i32 3}
!64 = !{ptr @nfs_callback_up_net._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @nfs_callback_up_net._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nfs/callback.c", i32 221, i32 3}
!68 = !{ptr @nfs_callback_up_net._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @nfs_callback_up_net._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/nfs/callback.c", i32 230, i32 2}
!72 = !{ptr @nfs_callback_up_net._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nfs_callback_up_net._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../fs/nfs/callback.c", i32 44, i32 28}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfs/callback.c", i32 48, i32 30}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/nfs/callback.c", i32 54, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nfs4_callback_up_net._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @nfs4_callback_up_net._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @nfs4_callback_up_net._entry.42, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../fs/nfs/callback.c", i32 62, i32 3}
!96 = !{ptr @nfs4_callback_up_net._entry_ptr.43, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/nfs/callback.c", i32 180, i32 2}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @nfs_callback_start_svc._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @nfs_callback_start_svc._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/nfs/callback.c", i32 191, i32 2}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @nfs_callback_down_net._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @nfs_callback_down_net._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148501793, i64 2148501825, i64 2148501854, i64 2148501888, i64 2148501919, i64 2148501942}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2148589818}
!121 = !{i64 2148504258, i64 2148504290, i64 2148504319, i64 2148504353, i64 2148504384, i64 2148504407}
!122 = !{i64 2150545110}
!123 = !{i8 0, i8 2}
!124 = !{i64 2149670563}
!125 = !{i64 2149670829}
