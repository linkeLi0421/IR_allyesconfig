; ModuleID = '/llk/IR_all_yes/net/x25/af_x25.c_pt.bc'
source_filename = "../net/x25/af_x25.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.104, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.104 = type { ptr }
%struct.x25_address = type { [16 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.x25_sock = type { %struct.sock, %struct.x25_address, %struct.x25_address, ptr, i32, i32, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i16, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.x25_causediag, %struct.x25_facilities, %struct.x25_dte_facilities, %struct.x25_calluserdata, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.x25_causediag = type { i8, i8 }
%struct.x25_facilities = type { i32, i32, i32, i32, i32, i32 }
%struct.x25_dte_facilities = type { i16, i16, i16, i8, i8, i8, i8, [20 x i8], [20 x i8] }
%struct.x25_calluserdata = type { i32, [128 x i8] }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_x25 = type { i16, %struct.x25_address }
%struct.x25_route = type { %struct.list_head, %struct.x25_address, i32, ptr, %struct.refcount_struct }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.144 = type { ptr }
%struct.x25_subaddr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.103, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.83, %union.anon.84 }
%union.anon.83 = type { ptr }
%union.anon.84 = type { i64 }
%union.anon.103 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@sysctl_x25_restart_request_timeout = dso_local global { i32, [28 x i8] } { i32 18000, [28 x i8] zeroinitializer }, align 32
@sysctl_x25_call_request_timeout = dso_local global { i32, [28 x i8] } { i32 20000, [28 x i8] zeroinitializer }, align 32
@sysctl_x25_reset_request_timeout = dso_local global { i32, [28 x i8] } { i32 18000, [28 x i8] zeroinitializer }, align 32
@sysctl_x25_clear_request_timeout = dso_local global { i32, [28 x i8] } { i32 18000, [28 x i8] zeroinitializer }, align 32
@sysctl_x25_ack_holdback_timeout = dso_local global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@sysctl_x25_forward = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@x25_list = dso_local global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"x25_list_lock\00", [18 x i8] zeroinitializer }, align 32
@x25_list_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_x25__465_1819_x25_init6 = internal global ptr @x25_init, section ".initcall6.init", align 4
@x25_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @x25_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@x25_packet_type = internal global %struct.packet_type { i16 2053, i8 0, ptr null, ptr null, ptr @x25_lapb_receive_frame, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@x25_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1528, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.104 zeroinitializer, ptr null, [32 x i8] c"X25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_x25_exit = internal global ptr @x25_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author466 = internal constant [53 x i8] c"x25.author=Jonathan Naylor <g4klx@g4klx.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description467 = internal constant [61 x i8] c"x25.description=The X.25 Packet Layer network layer protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file468 = internal constant [21 x i8] c"x25.file=net/x25/x25\00", section ".modinfo", align 1
@__UNIQUE_ID_license469 = internal constant [16 x i8] c"x25.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias470 = internal constant [19 x i8] c"x25.alias=net-pf-9\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@null_x25_address = internal constant { %struct.x25_address, [16 x i8] } { %struct.x25_address { [16 x i8] c"               \00" }, [16 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@x25_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 9, ptr @x25_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@x25_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016X25: Linux Version 0.2\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x25_init\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/x25/af_x25.c\00", [47 x i8] zeroinitializer }, align 32
@x25_init._entry_ptr = internal global ptr @x25_init._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@x25_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 9, ptr null, ptr @x25_release, ptr @x25_bind, ptr @x25_connect, ptr @sock_no_socketpair, ptr @x25_accept, ptr @x25_getname, ptr @datagram_poll, ptr @x25_ioctl, ptr @sock_gettstamp, ptr @x25_listen, ptr @sock_no_shutdown, ptr @x25_setsockopt, ptr @x25_getsockopt, ptr null, ptr @x25_sendmsg, ptr @x25_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@x25_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017x25_bind: socket is bound\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x25_bind\00", [23 x i8] zeroinitializer }, align 32
@x25_bind._entry_ptr = internal global ptr @x25_bind._entry, section ".printk_index", align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017x25_sendmsg: sendto: Addresses built.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"x25_sendmsg\00", [20 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry_ptr = internal global ptr @x25_sendmsg._entry, section ".printk_index", align 4
@x25_sendmsg._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017x25_sendmsg: sendto: building packet.\0A\00", [55 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry_ptr.17 = internal global ptr @x25_sendmsg._entry.15, section ".printk_index", align 4
@x25_sendmsg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017x25_sendmsg: Copying user data\0A\00", [62 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry_ptr.20 = internal global ptr @x25_sendmsg._entry.18, section ".printk_index", align 4
@x25_sendmsg._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.5, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017x25_sendmsg: Building X.25 Header.\0A\00", [58 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry_ptr.23 = internal global ptr @x25_sendmsg._entry.21, section ".printk_index", align 4
@x25_sendmsg._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.5, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017x25_sendmsg: Built header.\0A\00", [34 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry_ptr.26 = internal global ptr @x25_sendmsg._entry.24, section ".printk_index", align 4
@x25_sendmsg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.5, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017x25_sendmsg: Transmitting buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@x25_sendmsg._entry_ptr.29 = internal global ptr @x25_sendmsg._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [29 x i64] [i64 27, i64 32, i64 21521, i64 21531, i64 35083, i64 35084, i64 35093, i64 35094, i64 35095, i64 35096, i64 35097, i64 35098, i64 35099, i64 35100, i64 35101, i64 35102, i64 35296, i64 35297, i64 35298, i64 35299, i64 35300, i64 35301, i64 35302, i64 35303, i64 35304, i64 35305, i64 35306, i64 35307, i64 35308]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 4, i64 5, i64 6, i64 15, i64 16]
@___asan_gen_.32 = private unnamed_addr constant [35 x i8] c"sysctl_x25_restart_request_timeout\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 60, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"sysctl_x25_call_request_timeout\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 61, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [33 x i8] c"sysctl_x25_reset_request_timeout\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 62, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [33 x i8] c"sysctl_x25_clear_request_timeout\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 63, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [32 x i8] c"sysctl_x25_ack_holdback_timeout\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 64, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"sysctl_x25_forward\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 65, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"x25_list\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 67, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"x25_list_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 68, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"x25_dev_notifier\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1758, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"x25_proto\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 496, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 729, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"null_x25_address\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 72, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1984, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"x25_family_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1613, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1804, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"x25_proto_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1728, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 701, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 230, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 214, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 174, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1157, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1160, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1179, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1203, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1237, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [20 x i8] c"../net/x25/af_x25.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1238, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias470, ptr @__UNIQUE_ID_author466, ptr @__UNIQUE_ID_description467, ptr @__UNIQUE_ID_file468, ptr @__UNIQUE_ID_license469, ptr @__exitcall_x25_exit, ptr @__initcall__kmod_x25__465_1819_x25_init6, ptr @x25_bind._entry, ptr @x25_bind._entry_ptr, ptr @x25_exit, ptr @x25_init._entry, ptr @x25_init._entry_ptr, ptr @x25_sendmsg._entry, ptr @x25_sendmsg._entry.15, ptr @x25_sendmsg._entry.18, ptr @x25_sendmsg._entry.21, ptr @x25_sendmsg._entry.24, ptr @x25_sendmsg._entry.27, ptr @x25_sendmsg._entry_ptr, ptr @x25_sendmsg._entry_ptr.17, ptr @x25_sendmsg._entry_ptr.20, ptr @x25_sendmsg._entry_ptr.23, ptr @x25_sendmsg._entry_ptr.26, ptr @x25_sendmsg._entry_ptr.29, ptr @sysctl_x25_restart_request_timeout, ptr @sysctl_x25_call_request_timeout, ptr @sysctl_x25_reset_request_timeout, ptr @sysctl_x25_clear_request_timeout, ptr @sysctl_x25_ack_holdback_timeout, ptr @sysctl_x25_forward, ptr @x25_list, ptr @.str, ptr @x25_list_lock, ptr @x25_dev_notifier, ptr @x25_proto, ptr @.str.1, ptr @null_x25_address, ptr @skb_queue_head_init.__key, ptr @.str.2, ptr @x25_family_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @x25_proto_ops, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_x25_restart_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_x25_call_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_x25_reset_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_x25_clear_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_x25_ack_holdback_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_x25_forward to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_x25_address to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_sendmsg._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_sendmsg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_sendmsg._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_sendmsg._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_sendmsg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_parse_address_block(ptr noundef %skb, ptr nocapture noundef writeonly %called_addr, ptr nocapture noundef writeonly %calling_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp eq i32 %3, %1
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !108

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i = icmp eq i32 %1, 0
  br i1 %cmp3.i, label %if.end.i.empty_crit_edge, label %pskb_may_pull.exit, !prof !108

if.end.i.empty_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %empty

pskb_may_pull.exit:                               ; preds = %if.end.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.empty_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

pskb_may_pull.exit.empty_crit_edge:               ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %empty

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %8 = lshr i32 %conv, 4
  %and = and i32 %conv, 15
  %add = add nuw nsw i32 %and, 1
  %add2 = add nuw nsw i32 %add, %8
  %div19 = lshr i32 %add2, 1
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i22 = sub i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %div19, i32 %sub.i.i22)
  %cmp.not.i23.not = icmp ult i32 %div19, %sub.i.i22
  br i1 %cmp.not.i23.not, label %if.end.if.end6_crit_edge, label %if.end.i25, !prof !109

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end.i25:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %div19)
  %cmp3.i24.not = icmp ugt i32 %10, %div19
  br i1 %cmp3.i24.not, label %pskb_may_pull.exit31, label %if.end.i25.empty_crit_edge, !prof !109

if.end.i25.empty_crit_edge:                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %empty

pskb_may_pull.exit31:                             ; preds = %if.end.i25
  %add3 = sub i32 1, %sub.i.i22
  %sub.i26 = add i32 %add3, %div19
  %call13.i27 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i26) #14
  %cmp14.i28.not = icmp eq ptr %call13.i27, null
  br i1 %cmp14.i28.not, label %pskb_may_pull.exit31.empty_crit_edge, label %pskb_may_pull.exit31.if.end6_crit_edge

pskb_may_pull.exit31.if.end6_crit_edge:           ; preds = %pskb_may_pull.exit31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

pskb_may_pull.exit31.empty_crit_edge:             ; preds = %pskb_may_pull.exit31
  call void @__sanitizer_cov_trace_pc() #16
  br label %empty

if.end6:                                          ; preds = %pskb_may_pull.exit31.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv.i = zext i8 %16 to i32
  %and.i = and i32 %conv.i, 15
  %17 = lshr i32 %conv.i, 4
  %add.i = add nuw nsw i32 %and.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp69.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp69.not.i, label %if.end6.x25_addr_ntoa.exit_crit_edge, label %for.body.preheader.i

if.end6.x25_addr_ntoa.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_addr_ntoa.exit

for.body.preheader.i:                             ; preds = %if.end6
  %incdec.ptr.i = getelementptr i8, ptr %14, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.073.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %calling.072.i = phi ptr [ %calling.1.i, %for.inc.i.for.body.i_crit_edge ], [ %calling_addr, %for.body.preheader.i ]
  %called.071.i = phi ptr [ %called.1.i, %for.inc.i.for.body.i_crit_edge ], [ %called_addr, %for.body.preheader.i ]
  %p.addr.070.i = phi ptr [ %p.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %incdec.ptr.i, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.073.i, i32 %and.i)
  %cmp7.i = icmp ult i32 %i.073.i, %and.i
  %rem.i = and i32 %i.073.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp9.not.i = icmp eq i32 %rem.i, 0
  %18 = ptrtoint ptr %p.addr.070.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p.addr.070.i, align 1
  br i1 %cmp7.i, label %if.then.i, label %if.else25.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %cmp9.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = and i8 %19, 15
  %21 = or i8 %20, 48
  %incdec.ptr17.i = getelementptr i8, ptr %called.071.i, i32 1
  %22 = ptrtoint ptr %called.071.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %called.071.i, align 1
  %incdec.ptr18.i = getelementptr i8, ptr %p.addr.070.i, i32 1
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = lshr i8 %19, 4
  %24 = or i8 %23, 48
  %incdec.ptr24.i = getelementptr i8, ptr %called.071.i, i32 1
  %25 = ptrtoint ptr %called.071.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %called.071.i, align 1
  br label %for.inc.i

if.else25.i:                                      ; preds = %for.body.i
  br i1 %cmp9.not.i, label %if.else37.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = and i8 %19, 15
  %27 = or i8 %26, 48
  %incdec.ptr35.i = getelementptr i8, ptr %calling.072.i, i32 1
  %28 = ptrtoint ptr %calling.072.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %calling.072.i, align 1
  %incdec.ptr36.i = getelementptr i8, ptr %p.addr.070.i, i32 1
  br label %for.inc.i

if.else37.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = lshr i8 %19, 4
  %30 = or i8 %29, 48
  %incdec.ptr43.i = getelementptr i8, ptr %calling.072.i, i32 1
  %31 = ptrtoint ptr %calling.072.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %calling.072.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else37.i, %if.then29.i, %if.else.i, %if.then11.i
  %p.addr.1.i = phi ptr [ %incdec.ptr18.i, %if.then11.i ], [ %p.addr.070.i, %if.else.i ], [ %incdec.ptr36.i, %if.then29.i ], [ %p.addr.070.i, %if.else37.i ]
  %called.1.i = phi ptr [ %incdec.ptr17.i, %if.then11.i ], [ %incdec.ptr24.i, %if.else.i ], [ %called.071.i, %if.then29.i ], [ %called.071.i, %if.else37.i ]
  %calling.1.i = phi ptr [ %calling.072.i, %if.then11.i ], [ %calling.072.i, %if.else.i ], [ %incdec.ptr35.i, %if.then29.i ], [ %incdec.ptr43.i, %if.else37.i ]
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.inc.i.x25_addr_ntoa.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.x25_addr_ntoa.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_addr_ntoa.exit

x25_addr_ntoa.exit:                               ; preds = %for.inc.i.x25_addr_ntoa.exit_crit_edge, %if.end6.x25_addr_ntoa.exit_crit_edge
  %called.0.lcssa.i = phi ptr [ %called_addr, %if.end6.x25_addr_ntoa.exit_crit_edge ], [ %called.1.i, %for.inc.i.x25_addr_ntoa.exit_crit_edge ]
  %calling.0.lcssa.i = phi ptr [ %calling_addr, %if.end6.x25_addr_ntoa.exit_crit_edge ], [ %calling.1.i, %for.inc.i.x25_addr_ntoa.exit_crit_edge ]
  %32 = ptrtoint ptr %calling.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %calling.0.lcssa.i, align 1
  %33 = ptrtoint ptr %called.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %called.0.lcssa.i, align 1
  %add47.i = add nuw nsw i32 %add.i, 1
  %div68.i = lshr i32 %add47.i, 1
  %add48.i = add nuw nsw i32 %div68.i, 1
  br label %cleanup

empty:                                            ; preds = %pskb_may_pull.exit31.empty_crit_edge, %if.end.i25.empty_crit_edge, %pskb_may_pull.exit.empty_crit_edge, %if.end.i.empty_crit_edge
  %rc.0 = phi i32 [ 0, %pskb_may_pull.exit.empty_crit_edge ], [ -1, %pskb_may_pull.exit31.empty_crit_edge ], [ 0, %if.end.i.empty_crit_edge ], [ -1, %if.end.i25.empty_crit_edge ]
  %34 = ptrtoint ptr %called_addr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %called_addr, align 1
  %35 = ptrtoint ptr %calling_addr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %calling_addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %empty, %x25_addr_ntoa.exit
  %retval.0 = phi i32 [ %add48.i, %x25_addr_ntoa.exit ], [ %rc.0, %empty ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !108

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !108

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #14
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_addr_ntoa(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %called_addr, ptr nocapture noundef writeonly %calling_addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 15
  %2 = lshr i32 %conv, 4
  %add = add nuw nsw i32 %and, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp69.not = icmp eq i32 %add, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %p, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.073 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %calling.072 = phi ptr [ %calling.1, %for.inc.for.body_crit_edge ], [ %calling_addr, %for.body.preheader ]
  %called.071 = phi ptr [ %called.1, %for.inc.for.body_crit_edge ], [ %called_addr, %for.body.preheader ]
  %p.addr.070 = phi ptr [ %p.addr.1, %for.inc.for.body_crit_edge ], [ %incdec.ptr, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.073, i32 %and)
  %cmp7 = icmp ult i32 %i.073, %and
  %rem = and i32 %i.073, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9.not = icmp eq i32 %rem, 0
  %3 = ptrtoint ptr %p.addr.070 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p.addr.070, align 1
  br i1 %cmp7, label %if.then, label %if.else25

if.then:                                          ; preds = %for.body
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %5 = and i8 %4, 15
  %6 = or i8 %5, 48
  %incdec.ptr17 = getelementptr i8, ptr %called.071, i32 1
  %7 = ptrtoint ptr %called.071 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %called.071, align 1
  %incdec.ptr18 = getelementptr i8, ptr %p.addr.070, i32 1
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %8 = lshr i8 %4, 4
  %9 = or i8 %8, 48
  %incdec.ptr24 = getelementptr i8, ptr %called.071, i32 1
  %10 = ptrtoint ptr %called.071 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %called.071, align 1
  br label %for.inc

if.else25:                                        ; preds = %for.body
  br i1 %cmp9.not, label %if.else37, label %if.then29

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %11 = and i8 %4, 15
  %12 = or i8 %11, 48
  %incdec.ptr35 = getelementptr i8, ptr %calling.072, i32 1
  %13 = ptrtoint ptr %calling.072 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %calling.072, align 1
  %incdec.ptr36 = getelementptr i8, ptr %p.addr.070, i32 1
  br label %for.inc

if.else37:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %14 = lshr i8 %4, 4
  %15 = or i8 %14, 48
  %incdec.ptr43 = getelementptr i8, ptr %calling.072, i32 1
  %16 = ptrtoint ptr %calling.072 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %calling.072, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else37, %if.then29, %if.else, %if.then11
  %p.addr.1 = phi ptr [ %incdec.ptr18, %if.then11 ], [ %p.addr.070, %if.else ], [ %incdec.ptr36, %if.then29 ], [ %p.addr.070, %if.else37 ]
  %called.1 = phi ptr [ %incdec.ptr17, %if.then11 ], [ %incdec.ptr24, %if.else ], [ %called.071, %if.then29 ], [ %called.071, %if.else37 ]
  %calling.1 = phi ptr [ %calling.072, %if.then11 ], [ %calling.072, %if.else ], [ %incdec.ptr35, %if.then29 ], [ %incdec.ptr43, %if.else37 ]
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %called.0.lcssa = phi ptr [ %called_addr, %entry.for.end_crit_edge ], [ %called.1, %for.inc.for.end_crit_edge ]
  %calling.0.lcssa = phi ptr [ %calling_addr, %entry.for.end_crit_edge ], [ %calling.1, %for.inc.for.end_crit_edge ]
  %17 = ptrtoint ptr %calling.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %calling.0.lcssa, align 1
  %18 = ptrtoint ptr %called.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %called.0.lcssa, align 1
  %add47 = add nuw nsw i32 %add, 1
  %div68 = lshr i32 %add47, 1
  %add48 = add nuw nsw i32 %div68, 1
  ret i32 %add48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_addr_aton(ptr nocapture noundef %p, ptr nocapture noundef readonly %called_addr, ptr nocapture noundef readonly %calling_addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %called_addr) #17
  %call3 = tail call i32 @strlen(ptr noundef %calling_addr) #17
  %shl = shl i32 %call3, 4
  %or = or i32 %shl, %call
  %conv = trunc i32 %or to i8
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %p, align 1
  %add = add i32 %call3, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp73.not = icmp eq i32 %add, 0
  br i1 %cmp73.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %p, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %calling.076 = phi ptr [ %calling.1, %for.inc.for.body_crit_edge ], [ %calling_addr, %for.body.preheader ]
  %called.075 = phi ptr [ %called.1, %for.inc.for.body_crit_edge ], [ %called_addr, %for.body.preheader ]
  %p.addr.074 = phi ptr [ %p.addr.1, %for.inc.for.body_crit_edge ], [ %incdec.ptr, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %call)
  %cmp6 = icmp ult i32 %i.077, %call
  %1 = and i32 %i.077, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp6, label %if.then, label %if.else25

if.then:                                          ; preds = %for.body
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr11 = getelementptr i8, ptr %called.075, i32 1
  %2 = ptrtoint ptr %called.075 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %called.075, align 1
  %sub = add i8 %3, -48
  %4 = ptrtoint ptr %p.addr.074 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.addr.074, align 1
  %or15 = or i8 %sub, %5
  store i8 %or15, ptr %p.addr.074, align 1
  %incdec.ptr17 = getelementptr i8, ptr %p.addr.074, i32 1
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %p.addr.074 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %p.addr.074, align 1
  %incdec.ptr18 = getelementptr i8, ptr %called.075, i32 1
  %7 = ptrtoint ptr %called.075 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %called.075, align 1
  %sub20 = shl i8 %8, 4
  store i8 %sub20, ptr %p.addr.074, align 1
  br label %for.inc

if.else25:                                        ; preds = %for.body
  br i1 %cmp8.not, label %if.else38, label %if.then29

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr30 = getelementptr i8, ptr %calling.076, i32 1
  %9 = ptrtoint ptr %calling.076 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %calling.076, align 1
  %sub32 = add i8 %10, -48
  %11 = ptrtoint ptr %p.addr.074 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p.addr.074, align 1
  %or35 = or i8 %sub32, %12
  store i8 %or35, ptr %p.addr.074, align 1
  %incdec.ptr37 = getelementptr i8, ptr %p.addr.074, i32 1
  br label %for.inc

if.else38:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %p.addr.074 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %p.addr.074, align 1
  %incdec.ptr39 = getelementptr i8, ptr %calling.076, i32 1
  %14 = ptrtoint ptr %calling.076 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %calling.076, align 1
  %sub41 = shl i8 %15, 4
  store i8 %sub41, ptr %p.addr.074, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else38, %if.then29, %if.else, %if.then10
  %p.addr.1 = phi ptr [ %incdec.ptr17, %if.then10 ], [ %p.addr.074, %if.else ], [ %incdec.ptr37, %if.then29 ], [ %p.addr.074, %if.else38 ]
  %called.1 = phi ptr [ %incdec.ptr11, %if.then10 ], [ %incdec.ptr18, %if.else ], [ %called.075, %if.then29 ], [ %called.075, %if.else38 ]
  %calling.1 = phi ptr [ %calling.076, %if.then10 ], [ %calling.076, %if.else ], [ %incdec.ptr30, %if.then29 ], [ %incdec.ptr39, %if.else38 ]
  %inc = add nuw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %add49 = add i32 %add, 1
  %div72 = lshr i32 %add49, 1
  %add50 = add nuw i32 %div72, 1
  ret i32 %add50
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @x25_find_socket(i32 noundef %lci, ptr noundef readnone %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %0 = load ptr, ptr @x25_list, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %add.ptr.i = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2933.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not29.i = or i1 %tobool.not.i, %tobool2.not2933.i
  br i1 %tobool2.not29.i, label %entry.__x25_find_socket.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__x25_find_socket.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__x25_find_socket.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %s.030.i = phi ptr [ %add.ptr12.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %lci3.i = getelementptr inbounds %struct.x25_sock, ptr %s.030.i, i32 0, i32 4
  %1 = ptrtoint ptr %lci3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lci3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lci)
  %cmp.i = icmp eq i32 %2, %lci
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %neighbour.i = getelementptr inbounds %struct.x25_sock, ptr %s.030.i, i32 0, i32 3
  %3 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neighbour.i, align 8
  %cmp5.i = icmp eq ptr %4, %nb
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !108

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__x25_find_socket.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__x25_find_socket.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__x25_find_socket.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %__x25_find_socket.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool8.not.i = icmp eq ptr %9, null
  %add.ptr12.i = getelementptr i8, ptr %9, i32 -84
  %tobool2.not35.i = icmp eq ptr %add.ptr12.i, null
  %tobool2.not.i = or i1 %tobool8.not.i, %tobool2.not35.i
  br i1 %tobool2.not.i, label %for.inc.i.__x25_find_socket.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.__x25_find_socket.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__x25_find_socket.exit

__x25_find_socket.exit:                           ; preds = %for.inc.i.__x25_find_socket.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__x25_find_socket.exit_crit_edge, %entry.__x25_find_socket.exit_crit_edge
  %s.028.i = phi ptr [ %s.030.i, %if.end15.sink.split.i.i.i.i.i ], [ %s.030.i, %if.else.i.i.i.i.i.__x25_find_socket.exit_crit_edge ], [ null, %entry.__x25_find_socket.exit_crit_edge ], [ null, %for.inc.i.__x25_find_socket.exit_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  ret ptr %s.028.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_destroy_socket_from_timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !108

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #14
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #14
  tail call fastcc void @__x25_destroy_socket(ptr noundef %sk)
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #14
  %call.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i9 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i9, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #14
  br label %sock_put.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @sk_free(ptr noundef %sk) #14
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__x25_destroy_socket(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @x25_stop_heartbeat(ptr noundef %sk) #14
  tail call void @x25_stop_timer(ptr noundef %sk) #14
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %entry.x25_remove_socket.exit_crit_edge, label %if.then.i.i.i

entry.x25_remove_socket.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_remove_socket.exit

if.then.i.i.i:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !108

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 729, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.x25_remove_socket.exit_crit_edge, !prof !108

if.end.i.i.x25_remove_socket.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_remove_socket.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  br label %x25_remove_socket.exit

x25_remove_socket.exit:                           ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.x25_remove_socket.exit_crit_edge, %entry.x25_remove_socket.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  tail call void @x25_clear_queues(ptr noundef %sk) #14
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %call25 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %cmp.not26 = icmp eq ptr %call25, null
  br i1 %cmp.not26, label %x25_remove_socket.exit.while.end_crit_edge, label %x25_remove_socket.exit.while.body_crit_edge

x25_remove_socket.exit.while.body_crit_edge:      ; preds = %x25_remove_socket.exit
  br label %while.body

x25_remove_socket.exit.while.end_crit_edge:       ; preds = %x25_remove_socket.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %x25_remove_socket.exit.while.body_crit_edge
  %call27 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call25, %x25_remove_socket.exit.while.body_crit_edge ]
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp1.not = icmp eq ptr %13, %sk
  br i1 %cmp1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 10, ptr %skc_state, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %or.i.i = or i32 %19, 1
  store i32 %or.i.i, ptr %17, align 4
  %20 = load ptr, ptr %11, align 4
  tail call void @x25_start_heartbeat(ptr noundef %20) #14
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 4
  %state = getelementptr inbounds %struct.x25_sock, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call27, i32 noundef 0) #14
  %call = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %x25_remove_socket.exit.while.end_crit_edge
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #14
  %24 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 1
  br i1 %tobool.not.i, label %sk_has_allocations.exit, label %while.end.if.then4_crit_edge

while.end.if.then4_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

sk_has_allocations.exit:                          ; preds = %while.end
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #14
  %26 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sk_backlog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.i.not = icmp eq i32 %27, 0
  br i1 %tobool2.i.not, label %if.else, label %sk_has_allocations.exit.if.then4_crit_edge

sk_has_allocations.exit.if.then4_crit_edge:       ; preds = %sk_has_allocations.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.then4:                                         ; preds = %sk_has_allocations.exit.if.then4_crit_edge, %while.end.if.then4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %28, 1000
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  %expires = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 1
  %29 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %expires, align 4
  %function = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 2
  %30 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @x25_destroy_timer, ptr %function, align 4
  tail call void @add_timer(ptr noundef %sk_timer) #14
  br label %if.end7

if.else:                                          ; preds = %sk_has_allocations.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.else.if.end7_crit_edge, !prof !108

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then3.i.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then3.i.i.i, %if.else.if.end7_crit_edge, %if.then4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !109

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @sk_free(ptr noundef %sk) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_rx_call_request(ptr noundef %skb, ptr noundef %nb, i32 noundef %lci) local_unnamed_addr #0 align 64 {
entry:
  %source_addr = alloca %struct.x25_address, align 1
  %dest_addr = alloca %struct.x25_address, align 1
  %facilities = alloca %struct.x25_facilities, align 4
  %dte_facilities = alloca %struct.x25_dte_facilities, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %source_addr) #14
  %0 = call ptr @memset(ptr %source_addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_addr) #14
  %1 = call ptr @memset(ptr %dest_addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %facilities) #14
  %2 = call ptr @memset(ptr %facilities, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %dte_facilities) #14
  %3 = call ptr @memset(ptr %dte_facilities, i32 255, i32 50)
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #14
  %call1 = call i32 @x25_parse_address_block(ptr noundef %skb, ptr noundef nonnull %source_addr, ptr noundef nonnull %dest_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.out_clear_request_crit_edge, label %if.end

entry.out_clear_request_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %call1) #14
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i = icmp eq i32 %7, %5
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end5_crit_edge, !prof !108

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %if.end.i.out_clear_request_crit_edge, label %pskb_may_pull.exit, !prof !108

if.end.i.out_clear_request_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

pskb_may_pull.exit:                               ; preds = %if.end.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_clear_request_crit_edge, label %pskb_may_pull.exit.if.end5_crit_edge

pskb_may_pull.exit.if.end5_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

pskb_may_pull.exit.out_clear_request_crit_edge:   ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

if.end5:                                          ; preds = %pskb_may_pull.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i141 = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i141, i32 %conv)
  %cmp.not.i142.not = icmp ugt i32 %sub.i.i141, %conv
  br i1 %cmp.not.i142.not, label %if.end5.if.end8_crit_edge, label %if.end.i144, !prof !109

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.i144:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp3.i143.not = icmp ugt i32 %13, %conv
  br i1 %cmp3.i143.not, label %pskb_may_pull.exit150, label %if.end.i144.out_clear_request_crit_edge, !prof !109

if.end.i144.out_clear_request_crit_edge:          ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

pskb_may_pull.exit150:                            ; preds = %if.end.i144
  %sub.i145 = sub i32 %add, %sub.i.i141
  %call13.i146 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i145) #14
  %cmp14.i147.not = icmp eq ptr %call13.i146, null
  br i1 %cmp14.i147.not, label %pskb_may_pull.exit150.out_clear_request_crit_edge, label %pskb_may_pull.exit150.if.end8_crit_edge

pskb_may_pull.exit150.if.end8_crit_edge:          ; preds = %pskb_may_pull.exit150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

pskb_may_pull.exit150.out_clear_request_crit_edge: ; preds = %pskb_may_pull.exit150
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

if.end8:                                          ; preds = %pskb_may_pull.exit150.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %call9 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #14
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %17)
  %cmp11 = icmp ugt i32 %17, 128
  br i1 %cmp11, label %if.end8.out_clear_request_crit_edge, label %if.end14

if.end8.out_clear_request_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

if.end14:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i153 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i153, i32 %17)
  %cmp.not.i154 = icmp ult i32 %sub.i.i153, %17
  br i1 %cmp.not.i154, label %pskb_may_pull.exit162, label %if.end14.if.end18_crit_edge, !prof !108

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

pskb_may_pull.exit162:                            ; preds = %if.end14
  %call13.i158 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %19) #14
  %cmp14.i159.not = icmp eq ptr %call13.i158, null
  br i1 %cmp14.i159.not, label %pskb_may_pull.exit162.out_clear_request_crit_edge, label %pskb_may_pull.exit162.if.end18_crit_edge

pskb_may_pull.exit162.if.end18_crit_edge:         ; preds = %pskb_may_pull.exit162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

pskb_may_pull.exit162.out_clear_request_crit_edge: ; preds = %pskb_may_pull.exit162
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

if.end18:                                         ; preds = %pskb_may_pull.exit162.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %20 = load ptr, ptr @x25_list, align 4
  %tobool.not.i = icmp eq ptr %20, null
  %add.ptr.i = getelementptr i8, ptr %20, i32 -84
  %tobool2.not7983.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not79.i = or i1 %tobool.not.i, %tobool2.not7983.i
  br i1 %tobool2.not79.i, label %if.end18.x25_find_listener.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.x25_find_listener.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_find_listener.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %s.081.i = phi ptr [ %add.ptr40.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end18.for.body.i_crit_edge ]
  %next_best.080.i = phi ptr [ %next_best.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end18.for.body.i_crit_edge ]
  %source_addr.i = getelementptr inbounds %struct.x25_sock, ptr %s.081.i, i32 0, i32 1
  %call5.i = call i32 @strcmp(ptr noundef nonnull %source_addr, ptr noundef %source_addr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call11.i = tail call i32 @strcmp(ptr noundef %source_addr.i, ptr noundef nonnull @null_x25_address) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %s.081.i, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp.i = icmp eq i8 %22, 10
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %cudmatchlength.i = getelementptr inbounds %struct.x25_sock, ptr %s.081.i, i32 0, i32 5
  %23 = ptrtoint ptr %cudmatchlength.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cudmatchlength.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp15.not.i = icmp eq i32 %24, 0
  br i1 %cmp15.not.i, label %if.then.i.for.inc.i_crit_edge, label %land.lhs.true17.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %if.then.i
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp20.not.i = icmp ult i32 %26, %24
  br i1 %cmp20.not.i, label %land.lhs.true17.i.for.inc.i_crit_edge, label %if.then22.i

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then22.i:                                      ; preds = %land.lhs.true17.i
  %cuddata.i = getelementptr inbounds %struct.x25_sock, ptr %s.081.i, i32 0, i32 26, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %cuddata.i, ptr %28, i32 %24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp28.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.then22.i.for.inc.i_crit_edge

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then30.i:                                      ; preds = %if.then22.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %s.081.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then30.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !108

if.then30.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then30.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.x25_find_listener.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.x25_find_listener.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_find_listener.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then30.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then30.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %x25_find_listener.exit

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %land.lhs.true17.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %next_best.1.i = phi ptr [ %next_best.080.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %next_best.080.i, %if.then22.i.for.inc.i_crit_edge ], [ %next_best.080.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %s.081.i, %land.lhs.true17.i.for.inc.i_crit_edge ], [ %s.081.i, %if.then.i.for.inc.i_crit_edge ]
  %31 = getelementptr inbounds %struct.sock_common, ptr %s.081.i, i32 0, i32 15
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool36.not.i = icmp eq ptr %33, null
  %add.ptr40.i = getelementptr i8, ptr %33, i32 -84
  %tobool2.not88.i = icmp eq ptr %add.ptr40.i, null
  %tobool2.not.i = or i1 %tobool36.not.i, %tobool2.not88.i
  br i1 %tobool2.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool44.not.i = icmp eq ptr %next_best.1.i, null
  br i1 %tobool44.not.i, label %for.end.i.x25_find_listener.exit_crit_edge, label %if.then45.i

for.end.i.x25_find_listener.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_find_listener.exit

if.then45.i:                                      ; preds = %for.end.i
  %skc_refcnt.i65.i = getelementptr inbounds %struct.sock_common, ptr %next_best.1.i, i32 0, i32 19
  %call.i.i.i.i.i.i66.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i65.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i65.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i65.i, ptr %skc_refcnt.i65.i, i32 1, ptr elementtype(i32) %skc_refcnt.i65.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i67.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i67.i)
  %tobool1.not.i.i.i.i68.i = icmp eq i32 %asmresult.i.i.i.i.i.i67.i, 0
  br i1 %tobool1.not.i.i.i.i68.i, label %if.then45.i.if.end15.sink.split.i.i.i.i73.i_crit_edge, label %if.else.i.i.i.i71.i, !prof !108

if.then45.i.if.end15.sink.split.i.i.i.i73.i_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i73.i

if.else.i.i.i.i71.i:                              ; preds = %if.then45.i
  %add.i.i.i.i69.i = add i32 %asmresult.i.i.i.i.i.i67.i, 1
  %35 = or i32 %add.i.i.i.i69.i, %asmresult.i.i.i.i.i.i67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i70.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i70.i, label %if.else.i.i.i.i71.i.x25_find_listener.exit_crit_edge, label %if.else.i.i.i.i71.i.if.end15.sink.split.i.i.i.i73.i_crit_edge, !prof !109

if.else.i.i.i.i71.i.if.end15.sink.split.i.i.i.i73.i_crit_edge: ; preds = %if.else.i.i.i.i71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i73.i

if.else.i.i.i.i71.i.x25_find_listener.exit_crit_edge: ; preds = %if.else.i.i.i.i71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_find_listener.exit

if.end15.sink.split.i.i.i.i73.i:                  ; preds = %if.else.i.i.i.i71.i.if.end15.sink.split.i.i.i.i73.i_crit_edge, %if.then45.i.if.end15.sink.split.i.i.i.i73.i_crit_edge
  %.sink.i.i.i.i72.i = phi i32 [ 2, %if.then45.i.if.end15.sink.split.i.i.i.i73.i_crit_edge ], [ 1, %if.else.i.i.i.i71.i.if.end15.sink.split.i.i.i.i73.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i65.i, i32 noundef %.sink.i.i.i.i72.i) #14
  br label %x25_find_listener.exit

x25_find_listener.exit:                           ; preds = %if.end15.sink.split.i.i.i.i73.i, %if.else.i.i.i.i71.i.x25_find_listener.exit_crit_edge, %for.end.i.x25_find_listener.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.x25_find_listener.exit_crit_edge, %if.end18.x25_find_listener.exit_crit_edge
  %s.1.i = phi ptr [ null, %for.end.i.x25_find_listener.exit_crit_edge ], [ %s.081.i, %if.else.i.i.i.i.i.x25_find_listener.exit_crit_edge ], [ %s.081.i, %if.end15.sink.split.i.i.i.i.i ], [ %next_best.1.i, %if.else.i.i.i.i71.i.x25_find_listener.exit_crit_edge ], [ %next_best.1.i, %if.end15.sink.split.i.i.i.i73.i ], [ null, %if.end18.x25_find_listener.exit_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  %call20 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add) #14
  %cond = icmp eq ptr %s.1.i, null
  br i1 %cond, label %if.then29, label %land.lhs.true

land.lhs.true:                                    ; preds = %x25_find_listener.exit
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %s.1.i, i32 0, i32 53
  %36 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %s.1.i, i32 0, i32 54
  %38 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.i163 = icmp ugt i32 %37, %39
  br i1 %cmp.i163, label %land.lhs.true.out_sock_put_crit_edge, label %if.end37

land.lhs.true.out_sock_put_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_sock_put

if.then29:                                        ; preds = %x25_find_listener.exit
  %add30 = add i32 %call1, 3
  %call31 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add30) #14
  %40 = load i32, ptr @sysctl_x25_forward, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %if.then29.out_clear_request_crit_edge, label %land.lhs.true32

if.then29.out_clear_request_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

land.lhs.true32:                                  ; preds = %if.then29
  %call33 = call i32 @x25_forward_call(ptr noundef nonnull %dest_addr, ptr noundef %nb, ptr noundef %skb, i32 noundef %lci) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %land.lhs.true32.out_clear_request_crit_edge

land.lhs.true32.out_clear_request_crit_edge:      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clear_request

if.then36:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %out

if.end37:                                         ; preds = %land.lhs.true
  %call38 = call i32 @x25_negotiate_facilities(ptr noundef %skb, ptr noundef nonnull %s.1.i, ptr noundef nonnull %facilities, ptr noundef nonnull %dte_facilities) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %if.end37.out_sock_put_crit_edge, label %if.end42

if.end37.out_sock_put_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_sock_put

if.end42:                                         ; preds = %if.end37
  call void @x25_limit_facilities(ptr noundef nonnull %facilities, ptr noundef %nb) #14
  %call43 = call fastcc ptr @x25_make_new(ptr noundef nonnull %s.1.i)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.out_sock_put_crit_edge, label %if.end46

if.end42.out_sock_put_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_sock_put

if.end46:                                         ; preds = %if.end42
  %call47 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %call38) #14
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call43, ptr %41, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call43, i32 0, i32 4
  %43 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %43)
  store volatile i8 1, ptr %skc_state, align 2
  %lci49 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 4
  %44 = ptrtoint ptr %lci49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %lci, ptr %lci49, align 4
  %dest_addr50 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 2
  %45 = call ptr @memcpy(ptr %dest_addr50, ptr %dest_addr, i32 16)
  %source_addr51 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 1
  %46 = call ptr @memcpy(ptr %source_addr51, ptr %source_addr, i32 16)
  call fastcc void @x25_neigh_hold(ptr noundef %nb)
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 3
  %47 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %nb, ptr %neighbour, align 8
  %facilities52 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 24
  %48 = call ptr @memcpy(ptr %facilities52, ptr %facilities, i32 24)
  %dte_facilities53 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 25
  %49 = call ptr @memcpy(ptr %dte_facilities53, ptr %dte_facilities, i32 50)
  %vc_facil_mask = getelementptr inbounds %struct.x25_sock, ptr %s.1.i, i32 0, i32 27
  %50 = ptrtoint ptr %vc_facil_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vc_facil_mask, align 4
  %vc_facil_mask55 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 27
  %and58 = and i32 %51, -18
  %52 = ptrtoint ptr %vc_facil_mask55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and58, ptr %vc_facil_mask55, align 4
  %cudmatchlength = getelementptr inbounds %struct.x25_sock, ptr %s.1.i, i32 0, i32 5
  %53 = ptrtoint ptr %cudmatchlength to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cudmatchlength, align 8
  %cudmatchlength60 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 5
  %55 = ptrtoint ptr %cudmatchlength60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %cudmatchlength60, align 8
  %flags = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 17
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool62.not = icmp eq i32 %58, 0
  br i1 %tobool62.not, label %if.end46.if.end66_crit_edge, label %if.then63

if.end46.if.end66_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then63:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  call void @x25_write_internal(ptr noundef nonnull %call43, i32 noundef 15) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end46.if.end66_crit_edge
  %.sink = phi i8 [ 3, %if.then63 ], [ 5, %if.end46.if.end66_crit_edge ]
  %59 = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink, ptr %59, align 4
  %calluserdata = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 26
  %cuddata = getelementptr inbounds %struct.x25_sock, ptr %call43, i32 0, i32 26, i32 1
  %61 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i, align 4
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = call ptr @memcpy(ptr %cuddata, ptr %64, i32 %62)
  %66 = load i32, ptr %len.i.i, align 4
  %67 = ptrtoint ptr %calluserdata to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %calluserdata, align 8
  %68 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sk_ack_backlog.i, align 4
  %add.i = add i32 %69, 1
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  call fastcc void @x25_insert_socket(ptr noundef nonnull %call43)
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %s.1.i, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef %skb) #14
  call void @x25_start_heartbeat(ptr noundef nonnull %call43) #14
  %70 = getelementptr inbounds %struct.sock_common, ptr %s.1.i, i32 0, i32 13
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %73 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not = icmp eq i32 %73, 0
  br i1 %tobool.i.not, label %if.then71, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %s.1.i, i32 0, i32 77
  %74 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk_data_ready, align 8
  call void %75(ptr noundef nonnull %s.1.i) #14
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end66.if.end72_crit_edge
  call fastcc void @sock_put(ptr noundef nonnull %s.1.i)
  br label %out

out:                                              ; preds = %out_clear_request, %if.end72, %if.then36
  %rc.0 = phi i32 [ 0, %out_clear_request ], [ 1, %if.then36 ], [ 1, %if.end72 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %dte_facilities) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %facilities) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_addr) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %source_addr) #14
  ret i32 %rc.0

out_sock_put:                                     ; preds = %if.end42.out_sock_put_crit_edge, %if.end37.out_sock_put_crit_edge, %land.lhs.true.out_sock_put_crit_edge
  call fastcc void @sock_put(ptr noundef nonnull %s.1.i)
  br label %out_clear_request

out_clear_request:                                ; preds = %out_sock_put, %land.lhs.true32.out_clear_request_crit_edge, %if.then29.out_clear_request_crit_edge, %pskb_may_pull.exit162.out_clear_request_crit_edge, %if.end8.out_clear_request_crit_edge, %pskb_may_pull.exit150.out_clear_request_crit_edge, %if.end.i144.out_clear_request_crit_edge, %pskb_may_pull.exit.out_clear_request_crit_edge, %if.end.i.out_clear_request_crit_edge, %entry.out_clear_request_crit_edge
  call void @x25_transmit_clear_request(ptr noundef %nb, i32 noundef %lci, i8 noundef zeroext 1) #14
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_forward_call(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_negotiate_facilities(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_limit_facilities(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @x25_make_new(ptr nocapture noundef readonly %osk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_type = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %cmp.not = icmp eq i16 %1, 5
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %osk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call fastcc ptr @x25_alloc_socket(ptr noundef %3, i32 noundef 0)
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  %sk_type9 = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type9 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %sk_type9, align 2
  %sk_priority = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 33
  %7 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_priority, align 4
  %sk_priority10 = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 33
  %9 = ptrtoint ptr %sk_priority10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sk_priority10, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_protocol, align 4
  %sk_protocol11 = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 46
  %12 = ptrtoint ptr %sk_protocol11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %sk_protocol11, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 15
  %13 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_rcvbuf, align 8
  %sk_rcvbuf12 = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 15
  %15 = ptrtoint ptr %sk_rcvbuf12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sk_rcvbuf12, align 8
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 21
  %16 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_sndbuf, align 4
  %sk_sndbuf13 = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 21
  %18 = ptrtoint ptr %sk_sndbuf13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sk_sndbuf13, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store volatile i8 1, ptr %skc_state, align 2
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 80
  %20 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_backlog_rcv, align 4
  %sk_backlog_rcv14 = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 80
  %22 = ptrtoint ptr %sk_backlog_rcv14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sk_backlog_rcv14, align 4
  %23 = getelementptr inbounds %struct.sock_common, ptr %osk, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %26 = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 8
  %t21 = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 13
  %28 = ptrtoint ptr %t21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t21, align 4
  %t2116 = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 13
  %30 = ptrtoint ptr %t2116 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %t2116, align 4
  %t22 = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 14
  %31 = ptrtoint ptr %t22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t22, align 8
  %t2217 = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 14
  %33 = ptrtoint ptr %t2217 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %t2217, align 8
  %t23 = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 15
  %34 = ptrtoint ptr %t23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t23, align 4
  %t2318 = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 15
  %36 = ptrtoint ptr %t2318 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %t2318, align 4
  %t2 = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 12
  %37 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t2, align 8
  %t219 = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 12
  %39 = ptrtoint ptr %t219 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %t219, align 8
  %flags = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 17
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %flags20 = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 17
  %42 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %flags20, align 4
  %facilities = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 24
  %facilities21 = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 24
  %43 = call ptr @memcpy(ptr %facilities, ptr %facilities21, i32 24)
  %dte_facilities = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 25
  %dte_facilities22 = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 25
  %44 = call ptr @memcpy(ptr %dte_facilities, ptr %dte_facilities22, i32 50)
  %cudmatchlength = getelementptr inbounds %struct.x25_sock, ptr %osk, i32 0, i32 5
  %45 = ptrtoint ptr %cudmatchlength to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cudmatchlength, align 8
  %cudmatchlength23 = getelementptr inbounds %struct.x25_sock, ptr %call2, i32 0, i32 5
  %47 = ptrtoint ptr %cudmatchlength23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cudmatchlength23, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags20) #14
  tail call void @x25_init_timers(ptr noundef nonnull %call2) #14
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %sk.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call2, %if.end6 ]
  ret ptr %sk.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x25_neigh_hold(ptr noundef %nb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !110
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !108

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !109

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x25_insert_socket(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !108

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = load ptr, ptr @x25_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %2, ptr @x25_list, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr @x25_list, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_start_heartbeat(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_transmit_clear_request(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_kill_by_neigh(ptr noundef readonly %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %0 = load ptr, ptr @x25_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2326 = icmp eq ptr %add.ptr, null
  %tobool2.not23 = or i1 %tobool.not, %tobool2.not2326
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %s.024 = phi ptr [ %add.ptr9, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %s.024, i32 0, i32 3
  %1 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %neighbour, align 8
  %cmp = icmp eq ptr %2, %nb
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @x25_disconnect(ptr noundef nonnull %s.024, i32 noundef 101, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %3 = getelementptr inbounds %struct.sock_common, ptr %s.024, i32 0, i32 15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool5.not = icmp eq ptr %5, null
  %add.ptr9 = getelementptr i8, ptr %5, i32 -84
  %tobool2.not27 = icmp eq ptr %add.ptr9, null
  %tobool2.not = or i1 %tobool5.not, %tobool2.not27
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  %dev = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @x25_clear_forward_by_dev(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_disconnect(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_clear_forward_by_dev(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @x25_proto, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sock_register(ptr noundef nonnull @x25_family_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_proto_crit_edge

if.end.out_proto_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_proto

if.end4:                                          ; preds = %if.end
  tail call void @dev_add_pack(ptr noundef nonnull @x25_packet_type) #14
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @x25_dev_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_sock_crit_edge

if.end4.out_sock_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_sock

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @x25_register_sysctl() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_dev_crit_edge

if.end8.out_dev_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dev

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @x25_proc_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end, label %out_sysctl

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #19
  br label %out

out:                                              ; preds = %out_proto, %do.end, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %rc.3, %out_proto ], [ 0, %do.end ]
  ret i32 %rc.0

out_sysctl:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @x25_unregister_sysctl() #14
  br label %out_dev

out_dev:                                          ; preds = %out_sysctl, %if.end8.out_dev_crit_edge
  %rc.1 = phi i32 [ %call9, %if.end8.out_dev_crit_edge ], [ %call13, %out_sysctl ]
  %call18 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @x25_dev_notifier) #14
  br label %out_sock

out_sock:                                         ; preds = %out_dev, %if.end4.out_sock_crit_edge
  %rc.2 = phi i32 [ %call5, %if.end4.out_sock_crit_edge ], [ %rc.1, %out_dev ]
  tail call void @dev_remove_pack(ptr noundef nonnull @x25_packet_type) #14
  tail call void @sock_unregister(i32 noundef 9) #14
  br label %out_proto

out_proto:                                        ; preds = %out_sock, %if.end.out_proto_crit_edge
  %rc.3 = phi i32 [ %call1, %if.end.out_proto_crit_edge ], [ %rc.2, %out_sock ]
  tail call void @proto_unregister(ptr noundef nonnull @x25_proto) #14
  br label %out
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @x25_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @x25_proc_exit() #14
  tail call void @x25_link_free() #14
  tail call void @x25_route_free() #14
  tail call void @x25_unregister_sysctl() #14
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @x25_dev_notifier) #14
  tail call void @dev_remove_pack(ptr noundef nonnull @x25_packet_type) #14
  tail call void @sock_unregister(i32 noundef 9) #14
  tail call void @proto_unregister(ptr noundef nonnull @x25_proto) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_proc_exit() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_link_free() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_route_free() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_unregister_sysctl() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_stop_heartbeat(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_stop_timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_clear_queues(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_destroy_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  tail call void @x25_destroy_socket_from_timer(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @x25_alloc_socket(ptr noundef %net, i32 noundef %kern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 9, i32 noundef 2592, ptr noundef nonnull @x25_proto, i32 noundef %kern) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call) #14
  %ack_queue = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 18
  %lock.i = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 18, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %0 = ptrtoint ptr %ack_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ack_queue, ptr %ack_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 18, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ack_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %fragment_queue = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 19
  %lock.i8 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i8, ptr noundef nonnull @.str.2, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %3 = ptrtoint ptr %fragment_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fragment_queue, ptr %fragment_queue, align 4
  %prev.i.i9 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 19, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fragment_queue, ptr %prev.i.i9, align 4
  %qlen.i.i10 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %qlen.i.i10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i10, align 4
  %interrupt_in_queue = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 20
  %lock.i11 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 20, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i11, ptr noundef nonnull @.str.2, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %6 = ptrtoint ptr %interrupt_in_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %interrupt_in_queue, ptr %interrupt_in_queue, align 4
  %prev.i.i12 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 20, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %interrupt_in_queue, ptr %prev.i.i12, align 4
  %qlen.i.i13 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %qlen.i.i13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i13, align 4
  %interrupt_out_queue = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 21
  %lock.i14 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 21, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i14, ptr noundef nonnull @.str.2, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %9 = ptrtoint ptr %interrupt_out_queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %interrupt_out_queue, ptr %interrupt_out_queue, align 4
  %prev.i.i15 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 21, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %interrupt_out_queue, ptr %prev.i.i15, align 4
  %qlen.i.i16 = getelementptr inbounds %struct.x25_sock, ptr %call, i32 0, i32 21, i32 1
  %11 = ptrtoint ptr %qlen.i.i16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i16, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_init_timers(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_register_sysctl() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_proc_init() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %cmp.not = icmp eq i16 %1, 5
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %tobool4.not = icmp eq i32 %protocol, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %if.end3
  %call7 = tail call fastcc ptr @x25_alloc_socket(ptr noundef nonnull @init_net, i32 noundef %kern)
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end6.out_crit_edge, label %if.end11

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call7) #14
  tail call void @x25_init_timers(ptr noundef nonnull %call7) #14
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @x25_proto_ops, ptr %ops, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call7, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %sk_protocol, align 4
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call7, i32 0, i32 80
  %4 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @x25_backlog_rcv, ptr %sk_backlog_rcv, align 4
  %5 = load i32, ptr @sysctl_x25_call_request_timeout, align 4
  %t21 = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 13
  %6 = ptrtoint ptr %t21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %t21, align 4
  %7 = load i32, ptr @sysctl_x25_reset_request_timeout, align 4
  %t22 = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 14
  %8 = ptrtoint ptr %t22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %t22, align 8
  %9 = load i32, ptr @sysctl_x25_clear_request_timeout, align 4
  %t23 = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 15
  %10 = ptrtoint ptr %t23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %t23, align 4
  %11 = load i32, ptr @sysctl_x25_ack_holdback_timeout, align 4
  %t2 = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 12
  %12 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %t2, align 8
  %state = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 6
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %state, align 4
  %cudmatchlength = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 5
  %14 = ptrtoint ptr %cudmatchlength to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cudmatchlength, align 8
  %flags = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #14
  %facilities = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 24
  %15 = ptrtoint ptr %facilities to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %facilities, align 4
  %winsize_out = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 24, i32 1
  %16 = ptrtoint ptr %winsize_out to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %winsize_out, align 4
  %pacsize_in = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 24, i32 2
  %17 = ptrtoint ptr %pacsize_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %pacsize_in, align 4
  %pacsize_out = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 24, i32 3
  %18 = ptrtoint ptr %pacsize_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %pacsize_out, align 4
  %throughput = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 24, i32 4
  %19 = ptrtoint ptr %throughput to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %throughput, align 4
  %reverse = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 24, i32 5
  %20 = ptrtoint ptr %reverse to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reverse, align 4
  %calling_len = getelementptr inbounds %struct.x25_sock, ptr %call7, i32 0, i32 25, i32 5
  %21 = call ptr @memset(ptr %calling_len, i32 0, i32 42)
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -94, %if.end.out_crit_edge ], [ -22, %if.end3.out_crit_edge ], [ -12, %if.end6.out_crit_edge ], [ 0, %if.end11 ], [ -97, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_backlog_rcv(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_release(ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !108

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #14
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #14
  %state = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sock_hold.exit.sw.epilog_crit_edge [
    i8 0, label %sock_hold.exit.sw.bb_crit_edge
    i8 2, label %sock_hold.exit.sw.bb_crit_edge33
    i8 1, label %sock_hold.exit.sw.bb2_crit_edge
    i8 3, label %sock_hold.exit.sw.bb2_crit_edge34
    i8 4, label %sock_hold.exit.sw.bb2_crit_edge35
    i8 5, label %sw.bb6
  ]

sock_hold.exit.sw.bb2_crit_edge35:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

sock_hold.exit.sw.bb2_crit_edge34:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

sock_hold.exit.sw.bb2_crit_edge:                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

sock_hold.exit.sw.bb_crit_edge33:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sock_hold.exit.sw.bb_crit_edge:                   ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sock_hold.exit.sw.epilog_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %sock_hold.exit.sw.bb_crit_edge, %sock_hold.exit.sw.bb_crit_edge33
  tail call void @x25_disconnect(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  tail call fastcc void @__x25_destroy_socket(ptr noundef nonnull %1)
  br label %out

sw.bb2:                                           ; preds = %sock_hold.exit.sw.bb2_crit_edge, %sock_hold.exit.sw.bb2_crit_edge34, %sock_hold.exit.sw.bb2_crit_edge35
  tail call void @x25_clear_queues(ptr noundef nonnull %1) #14
  tail call void @x25_write_internal(ptr noundef nonnull %1, i32 noundef 19) #14
  tail call void @x25_start_t23timer(ptr noundef nonnull %1) #14
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %state, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  %11 = or i8 %10, 2
  store i8 %11, ptr %sk_shutdown, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %12 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_state_change, align 4
  tail call void %13(ptr noundef nonnull %1) #14
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or.i.i29 = or i32 %16, 33
  store i32 %or.i.i29, ptr %14, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @x25_write_internal(ptr noundef nonnull %1, i32 noundef 19) #14
  tail call void @x25_disconnect(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  tail call fastcc void @__x25_destroy_socket(ptr noundef nonnull %1)
  br label %out

sw.epilog:                                        ; preds = %sw.bb2, %sock_hold.exit.sw.epilog_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #14
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %or.i.i.i = or i32 %19, 1
  store i32 %or.i.i.i, ptr %17, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %20 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sk_socket.i.i, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #14
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb6, %sw.bb
  tail call void @release_sock(ptr noundef nonnull %1) #14
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #14
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @sk_free(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %addr_len)
  %cmp.not = icmp eq i32 %addr_len, 18
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %3)
  %cmp2.not = icmp eq i16 %3, 9
  br i1 %cmp2.not, label %lor.lhs.false4, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %sx25_addr = getelementptr inbounds %struct.sockaddr_x25, ptr %uaddr, i32 0, i32 1
  %call = tail call i32 @strnlen(ptr noundef %sx25_addr, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp5 = icmp eq i32 %call, 16
  br i1 %cmp5, label %lor.lhs.false4.out_crit_edge, label %if.end

lor.lhs.false4.out_crit_edge:                     ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %lor.lhs.false4
  %call10 = tail call i32 @strcmp(ptr noundef %sx25_addr, ptr noundef nonnull @null_x25_address) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %if.then11

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then11:                                        ; preds = %if.end
  %call15 = tail call i32 @strlen(ptr noundef %sx25_addr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp1655 = icmp sgt i32 %call15, 0
  br i1 %cmp1655, label %if.then11.for.body_crit_edge, label %if.then11.if.end25_crit_edge

if.then11.if.end25_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %call15
  br i1 %exitcond.not, label %for.cond.if.end25_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.if.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then11.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then11.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i8], ptr %sx25_addr, i32 0, i32 %i.056
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %5 to i32
  %6 = add nsw i32 %conv20, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %6)
  %7 = icmp ult i32 %6, -10
  br i1 %7, label %for.body.out_crit_edge, label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end25:                                         ; preds = %for.cond.if.end25_crit_edge, %if.then11.if.end25_crit_edge, %if.end.if.end25_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  %source_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %source_addr, ptr %sx25_addr, i32 16)
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #14, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !108

if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then27
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then27.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %15 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr @x25_list, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %15, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.x25_insert_socket.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.x25_insert_socket.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %x25_insert_socket.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %pprev.i.i.i.i, align 4
  br label %x25_insert_socket.exit

x25_insert_socket.exit:                           ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.x25_insert_socket.exit_crit_edge
  store volatile ptr %15, ptr @x25_list, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr @x25_list, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %8, align 4
  %and.i.i = and i32 %21, -257
  store i32 %and.i.i, ptr %8, align 4
  br label %if.end30

if.end30:                                         ; preds = %x25_insert_socket.exit, %if.end25.if.end30_crit_edge
  %rc.0 = phi i32 [ 0, %x25_insert_socket.exit ], [ -22, %if.end25.if.end30_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #14
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %if.end30.out_crit_edge, label %land.lhs.true

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true:                                    ; preds = %if.end30
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %8, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i54.not = icmp eq i32 %24, 0
  br i1 %tobool.i54.not, label %land.lhs.true.out_crit_edge, label %do.end

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #19
  br label %out

out:                                              ; preds = %do.end, %land.lhs.true.out_crit_edge, %if.end30.out_crit_edge, %for.body.out_crit_edge, %lor.lhs.false4.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %do.end ], [ %rc.0, %land.lhs.true.out_crit_edge ], [ %rc.0, %if.end30.out_crit_edge ], [ -22, %lor.lhs.false4.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %for.body.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_connect(ptr nocapture noundef %sock, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %sock, align 128
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp9 = icmp eq i8 %8, 7
  br i1 %cmp9, label %land.lhs.true11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true11:                                  ; preds = %if.end
  %9 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %if.then15, label %land.lhs.true11.if.end17_crit_edge

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sock, align 128
  br label %out

if.end17:                                         ; preds = %land.lhs.true11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp21 = icmp eq i8 %13, 1
  br i1 %cmp21, label %if.end17.out_crit_edge, label %if.end24

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end24:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp28 = icmp eq i8 %15, 2
  br i1 %cmp28, label %if.end24.out_crit_edge, label %if.end31

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end31:                                         ; preds = %if.end24
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %16)
  store volatile i8 7, ptr %skc_state, align 2
  %17 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %addr_len)
  %cmp35.not = icmp eq i32 %addr_len, 18
  br i1 %cmp35.not, label %lor.lhs.false, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false:                                    ; preds = %if.end31
  %18 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %19)
  %cmp38.not = icmp eq i16 %19, 9
  br i1 %cmp38.not, label %lor.lhs.false40, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %sx25_addr = getelementptr inbounds %struct.sockaddr_x25, ptr %uaddr, i32 0, i32 1
  %call41 = tail call i32 @strnlen(ptr noundef %sx25_addr, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 16
  br i1 %cmp42, label %lor.lhs.false40.out_crit_edge, label %if.end45

lor.lhs.false40.out_crit_edge:                    ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end45:                                         ; preds = %lor.lhs.false40
  %call47 = tail call ptr @x25_get_route(ptr noundef %sx25_addr) #14
  %tobool.not = icmp eq ptr %call47, null
  br i1 %tobool.not, label %if.end45.out_crit_edge, label %if.end49

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end49:                                         ; preds = %if.end45
  %dev = getelementptr inbounds %struct.x25_route, ptr %call47, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call50 = tail call ptr @x25_get_neigh(ptr noundef %21) #14
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call50, ptr %neighbour, align 8
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.end49.out_put_route_crit_edge, label %if.end54

if.end49.out_put_route_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put_route

if.end54:                                         ; preds = %if.end49
  %facilities = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 24
  tail call void @x25_limit_facilities(ptr noundef %facilities, ptr noundef nonnull %call50) #14
  %23 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %neighbour, align 8
  %call57 = tail call fastcc i32 @x25_new_lci(ptr noundef %24)
  %lci = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %lci to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call57, ptr %lci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %if.end54.land.lhs.true92_crit_edge, label %if.end61

if.end54.land.lhs.true92_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true92

if.end61:                                         ; preds = %if.end54
  %26 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %if.end64, label %if.end61.land.lhs.true92_crit_edge

if.end61.land.lhs.true92_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true92

if.end64:                                         ; preds = %if.end61
  %source_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 1
  %call67 = tail call i32 @strcmp(ptr noundef %source_addr, ptr noundef nonnull @null_x25_address) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end64.if.end71_crit_edge

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %30 = call ptr @memset(ptr %source_addr, i32 0, i32 16)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end64.if.end71_crit_edge
  %dest_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %dest_addr, ptr %sx25_addr, i32 16)
  %32 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %sock, align 128
  %33 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %33)
  store volatile i8 2, ptr %skc_state, align 2
  %state76 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %state76 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %state76, align 4
  tail call void @x25_write_internal(ptr noundef %1, i32 noundef 11) #14
  tail call void @x25_start_heartbeat(ptr noundef %1) #14
  tail call void @x25_start_t21timer(ptr noundef %1) #14
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp80.not = icmp eq i8 %36, 1
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool83.not, %cmp80.not
  br i1 %or.cond, label %if.end85, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end85:                                         ; preds = %if.end71
  %call86 = tail call fastcc i32 @x25_wait_for_connection_establishment(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %out_put_neigh, label %if.end85.land.lhs.true92_crit_edge

if.end85.land.lhs.true92_crit_edge:               ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true92

out_put_neigh:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %sock, align 128
  br label %out_put_route

land.lhs.true92:                                  ; preds = %if.end85.land.lhs.true92_crit_edge, %if.end61.land.lhs.true92_crit_edge, %if.end54.land.lhs.true92_crit_edge
  %rc.0.ph = phi i32 [ -101, %if.end54.land.lhs.true92_crit_edge ], [ %call86, %if.end85.land.lhs.true92_crit_edge ], [ -22, %if.end61.land.lhs.true92_crit_edge ]
  %38 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %neighbour, align 8
  %tobool94.not = icmp eq ptr %39, null
  br i1 %tobool94.not, label %land.lhs.true92.out_put_route_crit_edge, label %if.then95

land.lhs.true92.out_put_route_crit_edge:          ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put_route

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_list_lock) #14
  %40 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %neighbour, align 8
  tail call fastcc void @x25_neigh_put(ptr noundef %41)
  %42 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %neighbour, align 8
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_list_lock) #14
  %state98 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %state98 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %state98, align 4
  br label %out_put_route

out_put_route:                                    ; preds = %if.then95, %land.lhs.true92.out_put_route_crit_edge, %out_put_neigh, %if.end49.out_put_route_crit_edge
  %rc.1 = phi i32 [ %rc.0.ph, %if.then95 ], [ %rc.0.ph, %land.lhs.true92.out_put_route_crit_edge ], [ 0, %out_put_neigh ], [ -101, %if.end49.out_put_route_crit_edge ]
  tail call fastcc void @x25_route_put(ptr noundef nonnull %call47)
  br label %out

out:                                              ; preds = %out_put_route, %if.end71.out_crit_edge, %if.end45.out_crit_edge, %lor.lhs.false40.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end31.out_crit_edge, %if.end24.out_crit_edge, %if.end17.out_crit_edge, %if.then15, %if.then
  %rc.2 = phi i32 [ 0, %if.then ], [ -111, %if.then15 ], [ -106, %if.end17.out_crit_edge ], [ -114, %if.end24.out_crit_edge ], [ -22, %if.end31.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %lor.lhs.false40.out_crit_edge ], [ %rc.1, %out_put_route ], [ -101, %if.end45.out_crit_edge ], [ -115, %if.end71.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #14
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp.not = icmp eq i16 %3, 5
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp6.not = icmp eq i8 %5, 10
  br i1 %cmp6.not, label %if.end9, label %if.end4.out2_crit_edge

if.end4.out2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out2

if.end9:                                          ; preds = %if.end4
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %6 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_rcvtimeo, align 4
  %call = tail call fastcc i32 @x25_wait_for_data(ptr noundef nonnull %1, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.out2_crit_edge

if.end9.out2_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out2

if.end12:                                         ; preds = %if.end9
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %call13 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %8 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.end12.out2_crit_edge, label %if.end16

if.end12.out2_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out2

if.end16:                                         ; preds = %if.end12
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %11 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end16.sock_graft.exit_crit_edge, label %do.end.i, !prof !109

if.end16.sock_graft.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2024, i32 noundef 9, ptr noundef null) #14
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.end16.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #14
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !114
  %13 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %wq.i, ptr %13, align 8
  %15 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %16 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 55
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_uid.i, align 4
  %19 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sk_uid.i, align 4
  tail call void @security_sock_graft(ptr noundef nonnull %10, ptr noundef %newsock) #14
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #14
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %8, align 4
  tail call void @kfree_skb_reason(ptr noundef %call13, i32 noundef 0) #14
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %21 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  %23 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %newsock, align 128
  br label %out2

out2:                                             ; preds = %sock_graft.exit, %if.end12.out2_crit_edge, %if.end9.out2_crit_edge, %if.end4.out2_crit_edge
  %rc.0 = phi i32 [ -22, %if.end4.out2_crit_edge ], [ %call, %if.end9.out2_crit_edge ], [ 0, %sock_graft.exit ], [ -22, %if.end12.out2_crit_edge ]
  tail call void @release_sock(ptr noundef nonnull %1) #14
  br label %out

out:                                              ; preds = %out2, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -95, %if.end.out_crit_edge ], [ %rc.0, %out2 ], [ -22, %entry.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @x25_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sx25_addr = getelementptr inbounds %struct.sockaddr_x25, ptr %uaddr, i32 0, i32 1
  %dest_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %sx25_addr, ptr %dest_addr, i32 16)
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sx25_addr4 = getelementptr inbounds %struct.sockaddr_x25, ptr %uaddr, i32 0, i32 1
  %source_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %sx25_addr4, ptr %source_addr, i32 16)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 9, ptr %uaddr, align 2
  br label %out

out:                                              ; preds = %if.end5, %if.then.out_crit_edge
  %rc.0 = phi i32 [ 18, %if.end5 ], [ -107, %if.then.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %facilities42 = alloca %struct.x25_facilities, align 4
  %dtefacs = alloca %struct.x25_dte_facilities, align 2
  %calluserdata160 = alloca %struct.x25_calluserdata, align 4
  %causediag176 = alloca %struct.x25_causediag, align 2
  %sub_addr = alloca %struct.x25_subaddr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb5
    i32 35093, label %entry.sw.epilog_crit_edge
    i32 35094, label %entry.sw.epilog_crit_edge488
    i32 35095, label %entry.sw.epilog_crit_edge489
    i32 35096, label %entry.sw.epilog_crit_edge490
    i32 35097, label %entry.sw.epilog_crit_edge491
    i32 35098, label %entry.sw.epilog_crit_edge492
    i32 35099, label %entry.sw.epilog_crit_edge493
    i32 35100, label %entry.sw.epilog_crit_edge494
    i32 35101, label %entry.sw.epilog_crit_edge495
    i32 35102, label %entry.sw.epilog_crit_edge496
    i32 35083, label %entry.sw.bb27_crit_edge
    i32 35084, label %entry.sw.bb27_crit_edge497
    i32 35296, label %sw.bb32
    i32 35297, label %sw.bb34
    i32 35298, label %sw.bb39
    i32 35299, label %sw.bb41
    i32 35306, label %sw.bb120
    i32 35307, label %sw.bb125
    i32 35300, label %sw.bb155
    i32 35301, label %sw.bb159
    i32 35302, label %sw.bb171
    i32 35308, label %sw.bb175
    i32 35303, label %sw.bb183
    i32 35304, label %sw.bb202
    i32 35305, label %sw.bb210
  ]

entry.sw.bb27_crit_edge497:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb27

entry.sw.epilog_crit_edge496:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge495:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge494:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge493:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge492:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge491:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge490:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge489:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge488:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %5, 1
  %sub = sub i32 %sub.i.neg, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1382) #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !115
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %8, i32 -1226833921) #14, !srcloc !118
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %14, %sk_receive_queue
  %cmp8.not487 = icmp eq ptr %14, null
  %cmp8.not = or i1 %cmp.i, %cmp8.not487
  br i1 %cmp8.not, label %sw.bb5.if.end10_crit_edge, label %if.then9

sw.bb5.if.end10_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb5.if.end10_crit_edge
  %amount6.0 = phi i32 [ %16, %if.then9 ], [ 0, %sw.bb5.if.end10_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1397) #14
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i305 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i305 to ptr
  %cpu_domain.i.i306 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i306) #11, !srcloc !115
  %and.i307 = and i32 %19, -13
  %or.i308 = or i32 %and.i307, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i308) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %amount6.0, i32 -1226833921) #14, !srcloc !119
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge497
  %call28 = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call28, label %if.end30, label %sw.bb27.sw.epilog_crit_edge

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = tail call i32 @x25_route_ioctl(i32 noundef %cmd, ptr noundef %2) #14
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call33 = tail call i32 @x25_subscr_ioctl(i32 noundef 35296, ptr noundef %2) #14
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %call35 = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call35, label %if.end37, label %sw.bb34.sw.epilog_crit_edge

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end37:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call i32 @x25_subscr_ioctl(i32 noundef 35297, ptr noundef %2) #14
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %facilities = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 24
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %sw.bb39.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb39.copy_to_user.exit.thread_crit_edge:       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb39
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #20, !srcloc !120
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %facilities, i32 noundef 24) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %facilities, i32 noundef 24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb39.copy_to_user.exit.thread_crit_edge
  %22 = phi i32 [ -14, %sw.bb39.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @release_sock(ptr noundef %1) #14
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %facilities42) #14
  %23 = getelementptr inbounds %struct.x25_facilities, ptr %facilities42, i32 0, i32 2
  %24 = getelementptr inbounds %struct.x25_facilities, ptr %facilities42, i32 0, i32 3
  %25 = getelementptr inbounds %struct.x25_facilities, ptr %facilities42, i32 0, i32 4
  %26 = getelementptr inbounds %struct.x25_facilities, ptr %facilities42, i32 0, i32 5
  %27 = call ptr @memset(ptr %facilities42, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i313 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i313, label %sw.bb41.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb41.if.then11.i.i_crit_edge:                  ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb41
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i314 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i314)
  %cmp.i6.i315 = icmp eq i32 %asmresult.i.i314, 0
  br i1 %cmp.i6.i315, label %if.end.i.i317, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !109

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i317:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i316 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %facilities42, i32 noundef 24) #14
  %29 = call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !115
  %and.i.i.i.i = and i32 %31, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %facilities42, ptr noundef %2, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end46, label %if.end.i.i317.if.then11.i.i_crit_edge, !prof !109

if.end.i.i317.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i317.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb41.if.then11.i.i_crit_edge
  %res.0.i.i454 = phi i32 [ %call1.i.i.i, %if.end.i.i317.if.then11.i.i_crit_edge ], [ 24, %sw.bb41.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i454
  %add.ptr.i.i = getelementptr i8, ptr %facilities42, i32 %sub.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i454)
  br label %cleanup119

if.end46:                                         ; preds = %if.end.i.i317
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %cmp47.not = icmp eq i8 %34, 10
  br i1 %cmp47.not, label %if.end46.if.end55_crit_edge, label %land.lhs.true

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end46
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %36)
  %cmp52.not = icmp eq i8 %36, 7
  br i1 %cmp52.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.out_fac_release_crit_edge

land.lhs.true.out_fac_release_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %23, align 4
  %39 = add i32 %38, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %39)
  %40 = icmp ult i32 %39, -9
  br i1 %40, label %if.end55.out_fac_release_crit_edge, label %if.end62

if.end55.out_fac_release_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

if.end62:                                         ; preds = %if.end55
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %24, align 4
  %43 = add i32 %42, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %43)
  %44 = icmp ult i32 %43, -9
  br i1 %44, label %if.end62.out_fac_release_crit_edge, label %if.end70

if.end62.out_fac_release_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

if.end70:                                         ; preds = %if.end62
  %45 = ptrtoint ptr %facilities42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %facilities42, align 4
  %47 = add i32 %46, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %47)
  %48 = icmp ult i32 %47, -127
  br i1 %48, label %if.end70.out_fac_release_crit_edge, label %if.end78

if.end70.out_fac_release_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

if.end78:                                         ; preds = %if.end70
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool79.not = icmp eq i32 %50, 0
  br i1 %tobool79.not, label %if.end78.if.end109_crit_edge, label %if.then80

if.end78.if.end109_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.then80:                                        ; preds = %if.end78
  %and = and i32 %50, 240
  %and83 = and i32 %50, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %50, 160
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or, ptr %25, align 4
  br label %if.end94

if.else:                                          ; preds = %if.then80
  %52 = add nsw i32 %and, -209
  call void @__sanitizer_cov_trace_const_cmp4(i32 -161, i32 %52)
  %53 = icmp ult i32 %52, -161
  br i1 %53, label %if.else.out_fac_release_crit_edge, label %if.else.if.end94_crit_edge

if.else.if.end94_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.else.out_fac_release_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

if.end94:                                         ; preds = %if.else.if.end94_crit_edge, %if.then85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool95.not = icmp eq i32 %and83, 0
  br i1 %tobool95.not, label %if.then96, label %if.else99

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %25, align 4
  %or98 = or i32 %55, 10
  store i32 %or98, ptr %25, align 4
  br label %if.end109

if.else99:                                        ; preds = %if.end94
  %56 = add nsw i32 %and83, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %56)
  %57 = icmp ult i32 %56, -11
  br i1 %57, label %if.else99.out_fac_release_crit_edge, label %if.else99.if.end109_crit_edge

if.else99.if.end109_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.else99.out_fac_release_crit_edge:              ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

if.end109:                                        ; preds = %if.else99.if.end109_crit_edge, %if.then96, %if.end78.if.end109_crit_edge
  %58 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool110.not = icmp eq i32 %59, 0
  %and113 = and i32 %59, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and113)
  %cmp114.not = icmp eq i32 %and113, 129
  %or.cond304 = or i1 %tobool110.not, %cmp114.not
  br i1 %or.cond304, label %if.end117, label %if.end109.out_fac_release_crit_edge

if.end109.out_fac_release_crit_edge:              ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fac_release

if.end117:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %facilities118 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 24
  %60 = call ptr @memcpy(ptr %facilities118, ptr %facilities42, i32 24)
  br label %out_fac_release

out_fac_release:                                  ; preds = %if.end117, %if.end109.out_fac_release_crit_edge, %if.else99.out_fac_release_crit_edge, %if.else.out_fac_release_crit_edge, %if.end70.out_fac_release_crit_edge, %if.end62.out_fac_release_crit_edge, %if.end55.out_fac_release_crit_edge, %land.lhs.true.out_fac_release_crit_edge
  %rc.0 = phi i32 [ -22, %land.lhs.true.out_fac_release_crit_edge ], [ -22, %if.end55.out_fac_release_crit_edge ], [ -22, %if.end62.out_fac_release_crit_edge ], [ -22, %if.end70.out_fac_release_crit_edge ], [ 0, %if.end117 ], [ -22, %if.end109.out_fac_release_crit_edge ], [ -22, %if.else.out_fac_release_crit_edge ], [ -22, %if.else99.out_fac_release_crit_edge ]
  call void @release_sock(ptr noundef %1) #14
  br label %cleanup119

cleanup119:                                       ; preds = %out_fac_release, %if.then11.i.i
  %rc.1 = phi i32 [ %rc.0, %out_fac_release ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %facilities42) #14
  br label %sw.epilog

sw.bb120:                                         ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %dte_facilities = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 25
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i323 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i323, label %sw.bb120.copy_to_user.exit331.thread_crit_edge, label %if.end.i.i326

sw.bb120.copy_to_user.exit331.thread_crit_edge:   ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit331.thread

if.end.i.i326:                                    ; preds = %sw.bb120
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 50, i32 -1226833920) #20, !srcloc !120
  %asmresult.i.i324 = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i324)
  %cmp.i6.i325 = icmp eq i32 %asmresult.i.i324, 0
  br i1 %cmp.i6.i325, label %copy_to_user.exit331, label %if.end.i.i326.copy_to_user.exit331.thread_crit_edge

if.end.i.i326.copy_to_user.exit331.thread_crit_edge: ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit331.thread

copy_to_user.exit331.thread:                      ; preds = %if.end.i.i326.copy_to_user.exit331.thread_crit_edge, %sw.bb120.copy_to_user.exit331.thread_crit_edge
  tail call void @release_sock(ptr noundef %1) #14
  br label %sw.epilog

copy_to_user.exit331:                             ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i327 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dte_facilities, i32 noundef 50) #14
  %call.i12.i.i328 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %dte_facilities, i32 noundef 50) #14
  tail call void @release_sock(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i328)
  %tobool122.not = icmp eq i32 %call.i12.i.i328, 0
  %spec.select484 = select i1 %tobool122.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb125:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %dtefacs) #14
  %62 = call ptr @memset(ptr %dtefacs, i32 255, i32 50)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i336 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i336, label %sw.bb125.if.then11.i.i352_crit_edge, label %land.lhs.true.i.i339

sw.bb125.if.then11.i.i352_crit_edge:              ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i352

land.lhs.true.i.i339:                             ; preds = %sw.bb125
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 50, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i337 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i337)
  %cmp.i6.i338 = icmp eq i32 %asmresult.i.i337, 0
  br i1 %cmp.i6.i338, label %if.end.i.i349, label %land.lhs.true.i.i339.if.then11.i.i352_crit_edge, !prof !109

land.lhs.true.i.i339.if.then11.i.i352_crit_edge:  ; preds = %land.lhs.true.i.i339
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i352

if.end.i.i349:                                    ; preds = %land.lhs.true.i.i339
  %call.i.i.i340 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dtefacs, i32 noundef 50) #14
  %64 = call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i.i.i.i341 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i341 to ptr
  %cpu_domain.i.i.i.i.i342 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i342) #11, !srcloc !115
  %and.i.i.i.i343 = and i32 %66, -13
  %or.i.i.i.i344 = or i32 %and.i.i.i.i343, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i344) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %call1.i.i.i345 = call i32 @arm_copy_from_user(ptr noundef nonnull %dtefacs, ptr noundef %2, i32 noundef 50) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i345)
  %tobool4.not.i.i348 = icmp eq i32 %call1.i.i.i345, 0
  br i1 %tobool4.not.i.i348, label %if.end129, label %if.end.i.i349.if.then11.i.i352_crit_edge, !prof !109

if.end.i.i349.if.then11.i.i352_crit_edge:         ; preds = %if.end.i.i349
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i352

if.then11.i.i352:                                 ; preds = %if.end.i.i349.if.then11.i.i352_crit_edge, %land.lhs.true.i.i339.if.then11.i.i352_crit_edge, %sw.bb125.if.then11.i.i352_crit_edge
  %res.0.i.i347462 = phi i32 [ %call1.i.i.i345, %if.end.i.i349.if.then11.i.i352_crit_edge ], [ 50, %sw.bb125.if.then11.i.i352_crit_edge ], [ 50, %land.lhs.true.i.i339.if.then11.i.i352_crit_edge ]
  %sub.i.i350 = sub i32 50, %res.0.i.i347462
  %add.ptr.i.i351 = getelementptr i8, ptr %dtefacs, i32 %sub.i.i350
  %67 = call ptr @memset(ptr %add.ptr.i.i351, i32 0, i32 %res.0.i.i347462)
  br label %cleanup154

if.end129:                                        ; preds = %if.end.i.i349
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state131 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %skc_state131 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %skc_state131, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %69)
  %cmp133.not = icmp eq i8 %69, 10
  br i1 %cmp133.not, label %if.end129.if.end142_crit_edge, label %land.lhs.true135

if.end129.if.end142_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

land.lhs.true135:                                 ; preds = %if.end129
  %70 = ptrtoint ptr %skc_state131 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load volatile i8, ptr %skc_state131, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %71)
  %cmp139.not = icmp eq i8 %71, 7
  br i1 %cmp139.not, label %land.lhs.true135.if.end142_crit_edge, label %land.lhs.true135.out_dtefac_release_crit_edge

land.lhs.true135.out_dtefac_release_crit_edge:    ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dtefac_release

land.lhs.true135.if.end142_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

if.end142:                                        ; preds = %land.lhs.true135.if.end142_crit_edge, %if.end129.if.end142_crit_edge
  %calling_len = getelementptr inbounds %struct.x25_dte_facilities, ptr %dtefacs, i32 0, i32 5
  %72 = ptrtoint ptr %calling_len to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %calling_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %73)
  %cmp144 = icmp ugt i8 %73, 40
  br i1 %cmp144, label %if.end142.out_dtefac_release_crit_edge, label %if.end147

if.end142.out_dtefac_release_crit_edge:           ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dtefac_release

if.end147:                                        ; preds = %if.end142
  %called_len = getelementptr inbounds %struct.x25_dte_facilities, ptr %dtefacs, i32 0, i32 6
  %74 = ptrtoint ptr %called_len to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %called_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %75)
  %cmp149 = icmp ugt i8 %75, 40
  br i1 %cmp149, label %if.end147.out_dtefac_release_crit_edge, label %if.end152

if.end147.out_dtefac_release_crit_edge:           ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dtefac_release

if.end152:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  %dte_facilities153 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 25
  %76 = call ptr @memcpy(ptr %dte_facilities153, ptr %dtefacs, i32 50)
  br label %out_dtefac_release

out_dtefac_release:                               ; preds = %if.end152, %if.end147.out_dtefac_release_crit_edge, %if.end142.out_dtefac_release_crit_edge, %land.lhs.true135.out_dtefac_release_crit_edge
  %rc.2 = phi i32 [ -22, %land.lhs.true135.out_dtefac_release_crit_edge ], [ -22, %if.end142.out_dtefac_release_crit_edge ], [ -22, %if.end147.out_dtefac_release_crit_edge ], [ 0, %if.end152 ]
  call void @release_sock(ptr noundef %1) #14
  br label %cleanup154

cleanup154:                                       ; preds = %out_dtefac_release, %if.then11.i.i352
  %rc.3 = phi i32 [ %rc.2, %out_dtefac_release ], [ -14, %if.then11.i.i352 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %dtefacs) #14
  br label %sw.epilog

sw.bb155:                                         ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %calluserdata = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 26
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i359 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i359, label %sw.bb155.copy_to_user.exit367.thread_crit_edge, label %if.end.i.i362

sw.bb155.copy_to_user.exit367.thread_crit_edge:   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit367.thread

if.end.i.i362:                                    ; preds = %sw.bb155
  %77 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 132, i32 -1226833920) #20, !srcloc !120
  %asmresult.i.i360 = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i360)
  %cmp.i6.i361 = icmp eq i32 %asmresult.i.i360, 0
  br i1 %cmp.i6.i361, label %copy_to_user.exit367, label %if.end.i.i362.copy_to_user.exit367.thread_crit_edge

if.end.i.i362.copy_to_user.exit367.thread_crit_edge: ; preds = %if.end.i.i362
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit367.thread

copy_to_user.exit367:                             ; preds = %if.end.i.i362
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i363 = tail call zeroext i1 @__kasan_check_read(ptr noundef %calluserdata, i32 noundef 132) #14
  %call.i12.i.i364 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %calluserdata, i32 noundef 132) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i364)
  %tobool157.not = icmp eq i32 %call.i12.i.i364, 0
  %spec.select485 = select i1 %tobool157.not, i32 0, i32 -14
  br label %copy_to_user.exit367.thread

copy_to_user.exit367.thread:                      ; preds = %copy_to_user.exit367, %if.end.i.i362.copy_to_user.exit367.thread_crit_edge, %sw.bb155.copy_to_user.exit367.thread_crit_edge
  %78 = phi i32 [ -14, %sw.bb155.copy_to_user.exit367.thread_crit_edge ], [ -14, %if.end.i.i362.copy_to_user.exit367.thread_crit_edge ], [ %spec.select485, %copy_to_user.exit367 ]
  tail call void @release_sock(ptr noundef %1) #14
  br label %sw.epilog

sw.bb159:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %calluserdata160) #14
  %79 = call ptr @memset(ptr %calluserdata160, i32 255, i32 132)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i372 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i372, label %sw.bb159.if.then11.i.i388_crit_edge, label %land.lhs.true.i.i375

sw.bb159.if.then11.i.i388_crit_edge:              ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i388

land.lhs.true.i.i375:                             ; preds = %sw.bb159
  %80 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 132, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i373 = extractvalue { i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i373)
  %cmp.i6.i374 = icmp eq i32 %asmresult.i.i373, 0
  br i1 %cmp.i6.i374, label %if.end.i.i385, label %land.lhs.true.i.i375.if.then11.i.i388_crit_edge, !prof !109

land.lhs.true.i.i375.if.then11.i.i388_crit_edge:  ; preds = %land.lhs.true.i.i375
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i388

if.end.i.i385:                                    ; preds = %land.lhs.true.i.i375
  %call.i.i.i376 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %calluserdata160, i32 noundef 132) #14
  %81 = call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i.i.i.i377 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i.i377 to ptr
  %cpu_domain.i.i.i.i.i378 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 4
  %83 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i378) #11, !srcloc !115
  %and.i.i.i.i379 = and i32 %83, -13
  %or.i.i.i.i380 = or i32 %and.i.i.i.i379, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i380) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %call1.i.i.i381 = call i32 @arm_copy_from_user(ptr noundef nonnull %calluserdata160, ptr noundef %2, i32 noundef 132) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i381)
  %tobool4.not.i.i384 = icmp eq i32 %call1.i.i.i381, 0
  br i1 %tobool4.not.i.i384, label %if.end164, label %if.end.i.i385.if.then11.i.i388_crit_edge, !prof !109

if.end.i.i385.if.then11.i.i388_crit_edge:         ; preds = %if.end.i.i385
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i388

if.then11.i.i388:                                 ; preds = %if.end.i.i385.if.then11.i.i388_crit_edge, %land.lhs.true.i.i375.if.then11.i.i388_crit_edge, %sw.bb159.if.then11.i.i388_crit_edge
  %res.0.i.i383469 = phi i32 [ %call1.i.i.i381, %if.end.i.i385.if.then11.i.i388_crit_edge ], [ 132, %sw.bb159.if.then11.i.i388_crit_edge ], [ 132, %land.lhs.true.i.i375.if.then11.i.i388_crit_edge ]
  %sub.i.i386 = sub i32 132, %res.0.i.i383469
  %add.ptr.i.i387 = getelementptr i8, ptr %calluserdata160, i32 %sub.i.i386
  %84 = call ptr @memset(ptr %add.ptr.i.i387, i32 0, i32 %res.0.i.i383469)
  br label %cleanup170

if.end164:                                        ; preds = %if.end.i.i385
  %85 = ptrtoint ptr %calluserdata160 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %calluserdata160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %86)
  %cmp165 = icmp ugt i32 %86, 128
  br i1 %cmp165, label %if.end164.cleanup170_crit_edge, label %if.end168

if.end164.cleanup170_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup170

if.end168:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %calluserdata169 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 26
  %87 = call ptr @memcpy(ptr %calluserdata169, ptr %calluserdata160, i32 132)
  call void @release_sock(ptr noundef %1) #14
  br label %cleanup170

cleanup170:                                       ; preds = %if.end168, %if.end164.cleanup170_crit_edge, %if.then11.i.i388
  %rc.4 = phi i32 [ 0, %if.end168 ], [ -22, %if.end164.cleanup170_crit_edge ], [ -14, %if.then11.i.i388 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %calluserdata160) #14
  br label %sw.epilog

sw.bb171:                                         ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %causediag = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 23
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i395 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i395, label %sw.bb171.copy_to_user.exit403.thread_crit_edge, label %if.end.i.i398

sw.bb171.copy_to_user.exit403.thread_crit_edge:   ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit403.thread

if.end.i.i398:                                    ; preds = %sw.bb171
  %88 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #20, !srcloc !120
  %asmresult.i.i396 = extractvalue { i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i396)
  %cmp.i6.i397 = icmp eq i32 %asmresult.i.i396, 0
  br i1 %cmp.i6.i397, label %copy_to_user.exit403, label %if.end.i.i398.copy_to_user.exit403.thread_crit_edge

if.end.i.i398.copy_to_user.exit403.thread_crit_edge: ; preds = %if.end.i.i398
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit403.thread

copy_to_user.exit403:                             ; preds = %if.end.i.i398
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i399 = tail call zeroext i1 @__kasan_check_read(ptr noundef %causediag, i32 noundef 2) #14
  %call.i12.i.i400 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %causediag, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i400)
  %tobool173.not = icmp eq i32 %call.i12.i.i400, 0
  %spec.select486 = select i1 %tobool173.not, i32 0, i32 -14
  br label %copy_to_user.exit403.thread

copy_to_user.exit403.thread:                      ; preds = %copy_to_user.exit403, %if.end.i.i398.copy_to_user.exit403.thread_crit_edge, %sw.bb171.copy_to_user.exit403.thread_crit_edge
  %89 = phi i32 [ -14, %sw.bb171.copy_to_user.exit403.thread_crit_edge ], [ -14, %if.end.i.i398.copy_to_user.exit403.thread_crit_edge ], [ %spec.select486, %copy_to_user.exit403 ]
  tail call void @release_sock(ptr noundef %1) #14
  br label %sw.epilog

sw.bb175:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %causediag176) #14
  %90 = ptrtoint ptr %causediag176 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %causediag176, align 2, !annotation !122
  %91 = getelementptr inbounds %struct.x25_causediag, ptr %causediag176, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %91, align 1, !annotation !122
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i408 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i408, label %sw.bb175.if.then11.i.i424_crit_edge, label %land.lhs.true.i.i411

sw.bb175.if.then11.i.i424_crit_edge:              ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i424

land.lhs.true.i.i411:                             ; preds = %sw.bb175
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i409 = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i409)
  %cmp.i6.i410 = icmp eq i32 %asmresult.i.i409, 0
  br i1 %cmp.i6.i410, label %if.end.i.i421, label %land.lhs.true.i.i411.if.then11.i.i424_crit_edge, !prof !109

land.lhs.true.i.i411.if.then11.i.i424_crit_edge:  ; preds = %land.lhs.true.i.i411
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i424

if.end.i.i421:                                    ; preds = %land.lhs.true.i.i411
  %call.i.i.i412 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %causediag176, i32 noundef 2) #14
  %94 = call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i.i.i.i413 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i.i413 to ptr
  %cpu_domain.i.i.i.i.i414 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 4
  %96 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i414) #11, !srcloc !115
  %and.i.i.i.i415 = and i32 %96, -13
  %or.i.i.i.i416 = or i32 %and.i.i.i.i415, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i416) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %call1.i.i.i417 = call i32 @arm_copy_from_user(ptr noundef nonnull %causediag176, ptr noundef %2, i32 noundef 2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i417)
  %tobool4.not.i.i420 = icmp eq i32 %call1.i.i.i417, 0
  br i1 %tobool4.not.i.i420, label %if.end180, label %if.end.i.i421.if.then11.i.i424_crit_edge, !prof !109

if.end.i.i421.if.then11.i.i424_crit_edge:         ; preds = %if.end.i.i421
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i424

if.then11.i.i424:                                 ; preds = %if.end.i.i421.if.then11.i.i424_crit_edge, %land.lhs.true.i.i411.if.then11.i.i424_crit_edge, %sw.bb175.if.then11.i.i424_crit_edge
  %res.0.i.i419476 = phi i32 [ %call1.i.i.i417, %if.end.i.i421.if.then11.i.i424_crit_edge ], [ 2, %sw.bb175.if.then11.i.i424_crit_edge ], [ 2, %land.lhs.true.i.i411.if.then11.i.i424_crit_edge ]
  %sub.i.i422 = sub i32 2, %res.0.i.i419476
  %add.ptr.i.i423 = getelementptr i8, ptr %causediag176, i32 %sub.i.i422
  %97 = call ptr @memset(ptr %add.ptr.i.i423, i32 0, i32 %res.0.i.i419476)
  br label %cleanup182

if.end180:                                        ; preds = %if.end.i.i421
  call void @__sanitizer_cov_trace_pc() #16
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %causediag181 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 23
  %98 = ptrtoint ptr %causediag176 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %causediag176, align 2
  %100 = ptrtoint ptr %causediag181 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %causediag181, align 8
  call void @release_sock(ptr noundef %1) #14
  br label %cleanup182

cleanup182:                                       ; preds = %if.end180, %if.then11.i.i424
  %rc.5 = phi i32 [ 0, %if.end180 ], [ -14, %if.then11.i.i424 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %causediag176) #14
  br label %sw.epilog

sw.bb183:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sub_addr) #14
  %101 = ptrtoint ptr %sub_addr to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %sub_addr, align 4, !annotation !122
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state185 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %skc_state185 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load volatile i8, ptr %skc_state185, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %103)
  %cmp187.not = icmp eq i8 %103, 7
  br i1 %cmp187.not, label %if.end59.i.i430, label %sw.bb183.out_cud_release_crit_edge

sw.bb183.out_cud_release_crit_edge:               ; preds = %sw.bb183
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_cud_release

if.end59.i.i430:                                  ; preds = %sw.bb183
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i431 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i431, label %if.end59.i.i430.if.then11.i.i447_crit_edge, label %land.lhs.true.i.i434

if.end59.i.i430.if.then11.i.i447_crit_edge:       ; preds = %if.end59.i.i430
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i447

land.lhs.true.i.i434:                             ; preds = %if.end59.i.i430
  %104 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i432 = extractvalue { i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i432)
  %cmp.i6.i433 = icmp eq i32 %asmresult.i.i432, 0
  br i1 %cmp.i6.i433, label %if.end.i.i444, label %land.lhs.true.i.i434.if.then11.i.i447_crit_edge, !prof !109

land.lhs.true.i.i434.if.then11.i.i447_crit_edge:  ; preds = %land.lhs.true.i.i434
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i447

if.end.i.i444:                                    ; preds = %land.lhs.true.i.i434
  %call.i.i.i435 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sub_addr, i32 noundef 4) #14
  %105 = call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i.i.i.i436 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i.i436 to ptr
  %cpu_domain.i.i.i.i.i437 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 4
  %107 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i437) #11, !srcloc !115
  %and.i.i.i.i438 = and i32 %107, -13
  %or.i.i.i.i439 = or i32 %and.i.i.i.i438, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i439) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %call1.i.i.i440 = call i32 @arm_copy_from_user(ptr noundef nonnull %sub_addr, ptr noundef %2, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i440)
  %tobool4.not.i.i443 = icmp eq i32 %call1.i.i.i440, 0
  br i1 %tobool4.not.i.i443, label %if.end194, label %if.end.i.i444.if.then11.i.i447_crit_edge, !prof !109

if.end.i.i444.if.then11.i.i447_crit_edge:         ; preds = %if.end.i.i444
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i447

if.then11.i.i447:                                 ; preds = %if.end.i.i444.if.then11.i.i447_crit_edge, %land.lhs.true.i.i434.if.then11.i.i447_crit_edge, %if.end59.i.i430.if.then11.i.i447_crit_edge
  %res.0.i.i442481 = phi i32 [ %call1.i.i.i440, %if.end.i.i444.if.then11.i.i447_crit_edge ], [ 4, %if.end59.i.i430.if.then11.i.i447_crit_edge ], [ 4, %land.lhs.true.i.i434.if.then11.i.i447_crit_edge ]
  %sub.i.i445 = sub i32 4, %res.0.i.i442481
  %add.ptr.i.i446 = getelementptr i8, ptr %sub_addr, i32 %sub.i.i445
  %108 = call ptr @memset(ptr %add.ptr.i.i446, i32 0, i32 %res.0.i.i442481)
  br label %out_cud_release

if.end194:                                        ; preds = %if.end.i.i444
  %109 = ptrtoint ptr %sub_addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sub_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %110)
  %cmp195 = icmp ugt i32 %110, 128
  br i1 %cmp195, label %if.end194.out_cud_release_crit_edge, label %if.end198

if.end194.out_cud_release_crit_edge:              ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_cud_release

if.end198:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  %cudmatchlength200 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %cudmatchlength200 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %cudmatchlength200, align 8
  br label %out_cud_release

out_cud_release:                                  ; preds = %if.end198, %if.end194.out_cud_release_crit_edge, %if.then11.i.i447, %sw.bb183.out_cud_release_crit_edge
  %rc.6 = phi i32 [ -22, %sw.bb183.out_cud_release_crit_edge ], [ -22, %if.end194.out_cud_release_crit_edge ], [ 0, %if.end198 ], [ -14, %if.then11.i.i447 ]
  call void @release_sock(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_addr) #14
  br label %sw.epilog

sw.bb202:                                         ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state204 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %112 = ptrtoint ptr %skc_state204 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load volatile i8, ptr %skc_state204, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %113)
  %cmp206 = icmp eq i8 %113, 7
  br i1 %cmp206, label %if.then208, label %sw.bb202.if.end209_crit_edge

sw.bb202.if.end209_crit_edge:                     ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end209

if.then208:                                       ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #14
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %sw.bb202.if.end209_crit_edge
  %rc.7 = phi i32 [ 0, %if.then208 ], [ -22, %sw.bb202.if.end209_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #14
  br label %sw.epilog

sw.bb210:                                         ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state212 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %114 = ptrtoint ptr %skc_state212 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load volatile i8, ptr %skc_state212, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %115)
  %cmp214.not = icmp eq i8 %115, 1
  br i1 %cmp214.not, label %if.end217, label %sw.bb210.out_sendcallaccpt_release_crit_edge

sw.bb210.out_sendcallaccpt_release_crit_edge:     ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_sendcallaccpt_release

if.end217:                                        ; preds = %sw.bb210
  %flags218 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 17
  %116 = ptrtoint ptr %flags218 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %flags218, align 4
  %118 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool220.not = icmp eq i32 %118, 0
  br i1 %tobool220.not, label %if.end222, label %if.end217.out_sendcallaccpt_release_crit_edge

if.end217.out_sendcallaccpt_release_crit_edge:    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_sendcallaccpt_release

if.end222:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @x25_write_internal(ptr noundef %1, i32 noundef 15) #14
  %state = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 6
  %119 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %state, align 4
  br label %out_sendcallaccpt_release

out_sendcallaccpt_release:                        ; preds = %if.end222, %if.end217.out_sendcallaccpt_release_crit_edge, %sw.bb210.out_sendcallaccpt_release_crit_edge
  %rc.8 = phi i32 [ -22, %sw.bb210.out_sendcallaccpt_release_crit_edge ], [ -22, %if.end217.out_sendcallaccpt_release_crit_edge ], [ 0, %if.end222 ]
  tail call void @release_sock(ptr noundef %1) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %out_sendcallaccpt_release, %if.end209, %out_cud_release, %cleanup182, %copy_to_user.exit403.thread, %cleanup170, %copy_to_user.exit367.thread, %cleanup154, %copy_to_user.exit331, %copy_to_user.exit331.thread, %cleanup119, %copy_to_user.exit.thread, %if.end37, %sw.bb34.sw.epilog_crit_edge, %sw.bb32, %if.end30, %sw.bb27.sw.epilog_crit_edge, %if.end10, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge488, %entry.sw.epilog_crit_edge489, %entry.sw.epilog_crit_edge490, %entry.sw.epilog_crit_edge491, %entry.sw.epilog_crit_edge492, %entry.sw.epilog_crit_edge493, %entry.sw.epilog_crit_edge494, %entry.sw.epilog_crit_edge495, %entry.sw.epilog_crit_edge496
  %rc.9 = phi i32 [ -515, %sw.default ], [ %rc.8, %out_sendcallaccpt_release ], [ %rc.7, %if.end209 ], [ %rc.6, %out_cud_release ], [ %rc.5, %cleanup182 ], [ %89, %copy_to_user.exit403.thread ], [ %rc.4, %cleanup170 ], [ %78, %copy_to_user.exit367.thread ], [ %rc.3, %cleanup154 ], [ %rc.1, %cleanup119 ], [ %22, %copy_to_user.exit.thread ], [ %call38, %if.end37 ], [ -1, %sw.bb34.sw.epilog_crit_edge ], [ %call33, %sw.bb32 ], [ %call31, %if.end30 ], [ -1, %sw.bb27.sw.epilog_crit_edge ], [ %20, %if.end10 ], [ %12, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge488 ], [ -22, %entry.sw.epilog_crit_edge489 ], [ -22, %entry.sw.epilog_crit_edge490 ], [ -22, %entry.sw.epilog_crit_edge491 ], [ -22, %entry.sw.epilog_crit_edge492 ], [ -22, %entry.sw.epilog_crit_edge493 ], [ -22, %entry.sw.epilog_crit_edge494 ], [ -22, %entry.sw.epilog_crit_edge495 ], [ -22, %entry.sw.epilog_crit_edge496 ], [ -14, %copy_to_user.exit331.thread ], [ %spec.select484, %copy_to_user.exit331 ]
  ret i32 %rc.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.not = icmp eq i8 %3, 10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dest_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 2
  %4 = call ptr @memset(ptr %dest_addr, i32 0, i32 16)
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 10, ptr %skc_state, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.then ], [ -95, %entry.if.end_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #14
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #14
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %opt, align 4, !annotation !122
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %level)
  %cmp.not = icmp eq i32 %level, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp2.not = icmp eq i32 %optname, 1
  %or.cond = and i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp3 = icmp ult i32 %optlen, 4
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !109

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #14
  %5 = call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #11, !srcloc !115
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %3, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end7thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !109

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %out

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %opt, align 4
  br label %if.end7

if.end7thread-pre-split:                          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.end.i.i
  %13 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %10, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  %flags12 = getelementptr inbounds %struct.x25_sock, ptr %2, i32 0, i32 17
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 0, ptr noundef %flags12) #14
  br label %out

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags12) #14
  br label %out

out:                                              ; preds = %if.else, %if.then9, %if.then11.i.i.i.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -92, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ 0, %if.else ], [ 0, %if.then9 ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #14
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %level)
  %cmp.not = icmp eq i32 %level, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp2.not = icmp eq i32 %optname, 1
  %or.cond = and i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 460) #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !115
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #14, !srcloc !123
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %if.end
  %asmresult3 = extractvalue { i32, i32 } %5, 1
  %6 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 470) #14
  %7 = tail call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i.i.i35 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i35 to ptr
  %cpu_domain.i.i36 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i36) #11, !srcloc !115
  %and.i37 = and i32 %9, -13
  %or.i38 = or i32 %and.i37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i38) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %6, i32 -1226833921) #14, !srcloc !124
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %if.end23, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end23:                                         ; preds = %if.end6
  %flags = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %12, 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and1.i, ptr %val, align 4
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %6, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end23.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end23.copy_to_user.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end23
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %6, i32 -1226833920) #20, !srcloc !120
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %6) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %6) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end23.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %6, %if.end23.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %6, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool27.not = icmp eq i32 %n.addr.0.i, 0
  %cond28 = select i1 %tobool27.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -92, %entry.out_crit_edge ], [ -14, %if.end.out_crit_edge ], [ -14, %if.end6.out_crit_edge ], [ %cond28, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %sx25 = alloca %struct.sockaddr_x25, align 2
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %sx25) #14
  %4 = getelementptr inbounds %struct.sockaddr_x25, ptr %sx25, i32 0, i32 1
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = call ptr @memset(ptr %sx25, i32 255, i32 18)
  %6 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_flags, align 4
  %and = and i32 %7, 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #14
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -22, ptr %rc, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_flags, align 4
  %and3 = and i32 %10, -194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp ne i32 %and3, 0
  %and5 = and i32 %10, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = or i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end8

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end8:                                          ; preds = %entry
  %11 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -99, ptr %rc, align 4
  %12 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end11:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -32, ptr %rc, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %17 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sk_shutdown, align 2
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %20 = tail call i32 @llvm.read_register.i32(metadata !98) #14
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %call16 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %23, i32 noundef 0) #14
  br label %out

if.end17:                                         ; preds = %if.end11
  %24 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -101, ptr %rc, align 4
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neighbour, align 8
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.end17.out_crit_edge, label %if.end20

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end20:                                         ; preds = %if.end17
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %27 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -22, ptr %rc, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %28 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %29)
  %cmp = icmp ult i32 %29, 18
  br i1 %cmp, label %if.then22.out_crit_edge, label %if.end25

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end25:                                         ; preds = %if.then22
  %30 = call ptr @memcpy(ptr %sx25, ptr %3, i32 18)
  %31 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -106, ptr %rc, align 4
  %dest_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 2
  %call28 = call i32 @strcmp(ptr noundef %dest_addr, ptr noundef %4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end31:                                         ; preds = %if.end25
  %32 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -22, ptr %rc, align 4
  %33 = ptrtoint ptr %sx25 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sx25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %34)
  %cmp33.not = icmp eq i16 %34, 9
  br i1 %cmp33.not, label %if.end31.if.end45_crit_edge, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.else:                                          ; preds = %if.end20
  %35 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -107, ptr %rc, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp38.not = icmp eq i8 %37, 1
  br i1 %cmp38.not, label %if.end41, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %sx25 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 9, ptr %sx25, align 2
  %dest_addr44 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %4, ptr %dest_addr44, i32 16)
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.end31.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp46 = icmp ugt i32 %len, 65535
  br i1 %cmp46, label %if.then48, label %do.body50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -90, ptr %rc, align 4
  br label %out

do.body50:                                        ; preds = %if.end45
  %tobool51.not = icmp eq ptr %1, null
  br i1 %tobool51.not, label %do.body50.do.end76_crit_edge, label %land.lhs.true

do.body50.do.end76_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true:                                    ; preds = %do.body50
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %12, align 4
  %43 = and i32 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i350.not = icmp eq i32 %43, 0
  br i1 %tobool.i350.not, label %land.lhs.true.land.lhs.true65_crit_edge, label %do.end57

land.lhs.true.land.lhs.true65_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true65

do.end57:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #19
  br label %land.lhs.true65

land.lhs.true65:                                  ; preds = %do.end57, %land.lhs.true.land.lhs.true65_crit_edge
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %12, align 4
  %46 = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i351.not = icmp eq i32 %46, 0
  br i1 %tobool.i351.not, label %land.lhs.true65.do.end76_crit_edge, label %do.end71

land.lhs.true65.do.end76_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

do.end71:                                         ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #19
  br label %do.end76

do.end76:                                         ; preds = %do.end71, %land.lhs.true65.do.end76_crit_edge, %do.body50.do.end76_crit_edge
  %47 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_flags, align 4
  %and78 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %49 = tail call i32 @llvm.umin.i32(i32 %len, i32 32)
  %spec.select = select i1 %tobool79.not, i32 %len, i32 %49
  %add85 = add nuw nsw i32 %spec.select, 22
  tail call void @release_sock(ptr noundef %1) #14
  %call86 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add85, i32 noundef %and, ptr noundef nonnull %rc) #14
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %do.end76.out_crit_edge, label %if.end89

do.end76.out_crit_edge:                           ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end89:                                         ; preds = %do.end76
  %50 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_flags, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 3
  %52 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %cb, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 19
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 22
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %56, i32 22
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br i1 %tobool51.not, label %if.end89.do.end105_crit_edge, label %land.lhs.true94

if.end89.do.end105_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end105

land.lhs.true94:                                  ; preds = %if.end89
  %57 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %12, align 4
  %59 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i352.not = icmp eq i32 %59, 0
  br i1 %tobool.i352.not, label %land.lhs.true94.do.end105_crit_edge, label %do.end100

land.lhs.true94.do.end105_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end105

do.end100:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #16
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #19
  br label %do.end105

do.end105:                                        ; preds = %do.end100, %land.lhs.true94.do.end105_crit_edge, %if.end89.do.end105_crit_edge
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 18
  %62 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 15, i32 0, i32 19
  %64 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call106 = call ptr @skb_put(ptr noundef nonnull %call86, i32 noundef %spec.select) #14
  %65 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i, align 8
  %67 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %transport_header.i, align 2
  %conv.i356 = zext i16 %68 to i32
  %add.ptr.i357 = getelementptr i8, ptr %66, i32 %conv.i356
  %call108 = call fastcc i32 @memcpy_from_msg(ptr noundef %add.ptr.i357, ptr noundef %msg, i32 noundef %spec.select)
  %69 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call108, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %do.end105.out_kfree_skb_crit_edge

do.end105.out_kfree_skb_crit_edge:                ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_kfree_skb

if.end111:                                        ; preds = %do.end105
  %flags112 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 17
  %70 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags112, align 4
  %and1.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool114.not = icmp eq i32 %and1.i, 0
  br i1 %tobool114.not, label %if.end111.do.body122_crit_edge, label %if.then115

if.end111.do.body122_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body122

if.then115:                                       ; preds = %if.end111
  %call116 = call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %call86, i32 noundef 1)
  br i1 %call116, label %if.end118, label %if.then115.out_kfree_skb_crit_edge

if.then115.out_kfree_skb_crit_edge:               ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_kfree_skb

if.end118:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv119 = zext i8 %75 to i32
  %call120 = call ptr @skb_pull(ptr noundef nonnull %call86, i32 noundef 1) #14
  br label %do.body122

do.body122:                                       ; preds = %if.end118, %if.end111.do.body122_crit_edge
  %qbit.0 = phi i32 [ %conv119, %if.end118 ], [ 0, %if.end111.do.body122_crit_edge ]
  br i1 %tobool51.not, label %do.body122.do.end135_crit_edge, label %land.lhs.true124

do.body122.do.end135_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end135

land.lhs.true124:                                 ; preds = %do.body122
  %76 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %12, align 4
  %78 = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i358.not = icmp eq i32 %78, 0
  br i1 %tobool.i358.not, label %land.lhs.true124.do.end135_crit_edge, label %do.end130

land.lhs.true124.do.end135_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end135

do.end130:                                        ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #19
  br label %do.end135

do.end135:                                        ; preds = %do.end130, %land.lhs.true124.do.end135_crit_edge, %do.body122.do.end135_crit_edge
  %79 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_flags, align 4
  %and137 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  %81 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %neighbour, align 8
  %extended169 = getelementptr inbounds %struct.x25_neigh, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %extended169 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %extended169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool170.not = icmp eq i32 %84, 0
  br i1 %tobool138.not, label %if.else167, label %if.then139

if.then139:                                       ; preds = %do.end135
  %call153 = call ptr @skb_push(ptr noundef nonnull %call86, i32 noundef 3) #14
  %lci154 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 4
  %85 = ptrtoint ptr %lci154 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lci154, align 4
  %shr155 = lshr i32 %86, 8
  %87 = trunc i32 %shr155 to i8
  %88 = and i8 %87, 15
  br i1 %tobool170.not, label %if.else152, label %if.then142

if.then142:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  %conv145 = or i8 %88, 32
  %incdec.ptr = getelementptr i8, ptr %call153, i32 1
  %89 = ptrtoint ptr %call153 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv145, ptr %call153, align 1
  %90 = ptrtoint ptr %lci154 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lci154, align 4
  %conv149 = trunc i32 %91 to i8
  %incdec.ptr150 = getelementptr i8, ptr %call153, i32 2
  %92 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv149, ptr %incdec.ptr, align 1
  %93 = ptrtoint ptr %incdec.ptr150 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 35, ptr %incdec.ptr150, align 1
  br label %do.body210

if.else152:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  %conv158 = or i8 %88, 16
  %incdec.ptr159 = getelementptr i8, ptr %call153, i32 1
  %94 = ptrtoint ptr %call153 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv158, ptr %call153, align 1
  %95 = ptrtoint ptr %lci154 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lci154, align 4
  %conv163 = trunc i32 %96 to i8
  %incdec.ptr164 = getelementptr i8, ptr %call153, i32 2
  %97 = ptrtoint ptr %incdec.ptr159 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv163, ptr %incdec.ptr159, align 1
  %98 = ptrtoint ptr %incdec.ptr164 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 35, ptr %incdec.ptr164, align 1
  br label %do.body210

if.else167:                                       ; preds = %do.end135
  br i1 %tobool170.not, label %if.else186, label %if.then171

if.then171:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #16
  %call172 = call ptr @skb_push(ptr noundef nonnull %call86, i32 noundef 4) #14
  %lci173 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 4
  %99 = ptrtoint ptr %lci173 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lci173, align 4
  %shr174 = lshr i32 %100, 8
  %101 = trunc i32 %shr174 to i8
  %102 = and i8 %101, 15
  %conv177 = or i8 %102, 32
  %incdec.ptr178 = getelementptr i8, ptr %call172, i32 1
  %103 = ptrtoint ptr %call172 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv177, ptr %call172, align 1
  %104 = load i32, ptr %lci173, align 4
  %conv182 = trunc i32 %104 to i8
  %incdec.ptr183 = getelementptr i8, ptr %call172, i32 2
  %105 = ptrtoint ptr %incdec.ptr178 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv182, ptr %incdec.ptr178, align 1
  %incdec.ptr184 = getelementptr i8, ptr %call172, i32 3
  %106 = ptrtoint ptr %incdec.ptr183 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %incdec.ptr183, align 1
  br label %if.end200

if.else186:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #16
  %call187 = call ptr @skb_push(ptr noundef nonnull %call86, i32 noundef 3) #14
  %lci188 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %lci188 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lci188, align 4
  %shr189 = lshr i32 %108, 8
  %109 = trunc i32 %shr189 to i8
  %110 = and i8 %109, 15
  %conv192 = or i8 %110, 16
  %incdec.ptr193 = getelementptr i8, ptr %call187, i32 1
  %111 = ptrtoint ptr %call187 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv192, ptr %call187, align 1
  %112 = load i32, ptr %lci188, align 4
  %conv197 = trunc i32 %112 to i8
  %incdec.ptr198 = getelementptr i8, ptr %call187, i32 2
  %113 = ptrtoint ptr %incdec.ptr193 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv197, ptr %incdec.ptr193, align 1
  br label %if.end200

if.end200:                                        ; preds = %if.else186, %if.then171
  %incdec.ptr198.sink = phi ptr [ %incdec.ptr198, %if.else186 ], [ %incdec.ptr184, %if.then171 ]
  %114 = ptrtoint ptr %incdec.ptr198.sink to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %incdec.ptr198.sink, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qbit.0)
  %tobool201.not = icmp eq i32 %qbit.0, 0
  br i1 %tobool201.not, label %if.end200.do.body210_crit_edge, label %if.then202

if.end200.do.body210_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body210

if.then202:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  %115 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 1
  %119 = or i8 %118, -128
  store i8 %119, ptr %116, align 1
  br label %do.body210

do.body210:                                       ; preds = %if.then202, %if.end200.do.body210_crit_edge, %if.else152, %if.then142
  br i1 %tobool51.not, label %do.body210.do.end237_crit_edge, label %land.lhs.true212

do.body210.do.end237_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end237

land.lhs.true212:                                 ; preds = %do.body210
  %120 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %12, align 4
  %122 = and i32 %121, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.i359.not = icmp eq i32 %122, 0
  br i1 %tobool.i359.not, label %land.lhs.true212.land.lhs.true226_crit_edge, label %do.end218

land.lhs.true212.land.lhs.true226_crit_edge:      ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true226

do.end218:                                        ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #16
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #19
  br label %land.lhs.true226

land.lhs.true226:                                 ; preds = %do.end218, %land.lhs.true212.land.lhs.true226_crit_edge
  %123 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %12, align 4
  %125 = and i32 %124, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i360.not = icmp eq i32 %125, 0
  br i1 %tobool.i360.not, label %land.lhs.true226.do.end237_crit_edge, label %do.end232

land.lhs.true226.do.end237_crit_edge:             ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end237

do.end232:                                        ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #16
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #19
  br label %do.end237

do.end237:                                        ; preds = %do.end232, %land.lhs.true226.do.end237_crit_edge, %do.body210.do.end237_crit_edge
  %126 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -107, ptr %rc, align 4
  %skc_state239 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %127 = ptrtoint ptr %skc_state239 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load volatile i8, ptr %skc_state239, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %128)
  %cmp241.not = icmp eq i8 %128, 1
  br i1 %cmp241.not, label %if.end244, label %do.end237.out_kfree_skb_crit_edge

do.end237.out_kfree_skb_crit_edge:                ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_kfree_skb

if.end244:                                        ; preds = %do.end237
  %129 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %msg_flags, align 4
  %and246 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.else249, label %if.then248

if.then248:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #16
  %interrupt_out_queue = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 21
  call void @skb_queue_tail(ptr noundef %interrupt_out_queue, ptr noundef nonnull %call86) #14
  br label %if.end261

if.else249:                                       ; preds = %if.end244
  %call250 = call i32 @x25_output(ptr noundef %1, ptr noundef nonnull %call86) #14
  %131 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call250, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %if.then253, label %if.else254

if.then253:                                       ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef nonnull %call86, i32 noundef 0) #14
  br label %if.end261

if.else254:                                       ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %flags112, align 4
  %and1.i349 = and i32 %133, 1
  %spec.select348 = add nuw i32 %and1.i349, %call250
  br label %if.end261

if.end261:                                        ; preds = %if.else254, %if.then253, %if.then248
  %len.addr.1 = phi i32 [ %spec.select, %if.then248 ], [ %call250, %if.then253 ], [ %spec.select348, %if.else254 ]
  call void @x25_kick(ptr noundef %1) #14
  %134 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %len.addr.1, ptr %rc, align 4
  br label %out

out:                                              ; preds = %out_kfree_skb, %if.end261, %do.end76.out_crit_edge, %if.then48, %if.else.out_crit_edge, %if.end31.out_crit_edge, %if.end25.out_crit_edge, %if.then22.out_crit_edge, %if.end17.out_crit_edge, %if.then14, %if.end8.out_crit_edge, %entry.out_crit_edge
  call void @release_sock(ptr noundef %1) #14
  %135 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rc, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #14
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %sx25) #14
  ret i32 %136

out_kfree_skb:                                    ; preds = %do.end237.out_kfree_skb_crit_edge, %if.then115.out_kfree_skb_crit_edge, %do.end105.out_kfree_skb_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call86, i32 noundef 0) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #14
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -107, ptr %rc, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %neighbour, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool.not, i32 3, i32 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp3.not = icmp eq i8 %10, 1
  br i1 %cmp3.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %if.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %rc, align 4
  %12 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false:                                    ; preds = %if.then8
  %interrupt_in_queue = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %interrupt_in_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_in_queue, align 4
  %cmp.i = icmp eq ptr %17, %interrupt_in_queue
  %tobool12.not125 = icmp eq ptr %17, null
  %tobool12.not = or i1 %cmp.i, %tobool12.not125
  br i1 %tobool12.not, label %lor.lhs.false.out_crit_edge, label %if.end14

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end14:                                         ; preds = %lor.lhs.false
  %call16 = tail call ptr @skb_dequeue(ptr noundef %interrupt_in_queue) #14
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end14.if.end19_crit_edge, !prof !108

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp3.i = icmp ult i32 %19, 3
  br i1 %cmp3.i, label %if.end.i.out_free_dgram_crit_edge, label %pskb_may_pull.exit, !prof !108

if.end.i.out_free_dgram_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dgram

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 3, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %call16, i32 noundef %sub.i) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_free_dgram_crit_edge, label %pskb_may_pull.exit.if.end19_crit_edge

pskb_may_pull.exit.if.end19_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

pskb_may_pull.exit.out_free_dgram_crit_edge:      ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dgram

if.end19:                                         ; preds = %pskb_may_pull.exit.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  %call20 = tail call ptr @skb_pull(ptr noundef %call16, i32 noundef 3) #14
  %flags21 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags21, align 4
  %and1.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  br i1 %tobool23.not, label %if.end19.if.end26_crit_edge, label %if.then24

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call ptr @skb_push(ptr noundef %call16, i32 noundef 1) #14
  %24 = ptrtoint ptr %call25 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %call25, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %25 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_flags, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end6
  tail call void @release_sock(ptr noundef %1) #14
  %and27 = and i32 %flags, -65
  %and28 = and i32 %flags, 64
  %call29 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and27, i32 noundef %and28, ptr noundef nonnull %rc) #14
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.else.out_crit_edge, label %if.end32

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end32:                                         ; preds = %if.else
  %len.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 6
  %27 = ptrtoint ptr %len.i.i107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i107, align 4
  %data_len.i.i108 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i108 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i108, align 8
  %sub.i.i109 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %sub.i.i109)
  %cmp.not.i110 = icmp ugt i32 %cond, %sub.i.i109
  br i1 %cmp.not.i110, label %if.end.i112, label %if.end32.if.end35_crit_edge, !prof !108

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end.i112:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cond)
  %cmp3.i111 = icmp ult i32 %28, %cond
  br i1 %cmp3.i111, label %if.end.i112.out_free_dgram_crit_edge, label %pskb_may_pull.exit118, !prof !108

if.end.i112.out_free_dgram_crit_edge:             ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dgram

pskb_may_pull.exit118:                            ; preds = %if.end.i112
  %sub.i113 = sub i32 %cond, %sub.i.i109
  %call13.i114 = call ptr @__pskb_pull_tail(ptr noundef nonnull %call29, i32 noundef %sub.i113) #14
  %cmp14.i115.not = icmp eq ptr %call13.i114, null
  br i1 %cmp14.i115.not, label %pskb_may_pull.exit118.out_free_dgram_crit_edge, label %pskb_may_pull.exit118.if.end35_crit_edge

pskb_may_pull.exit118.if.end35_crit_edge:         ; preds = %pskb_may_pull.exit118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

pskb_may_pull.exit118.out_free_dgram_crit_edge:   ; preds = %pskb_may_pull.exit118
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dgram

if.end35:                                         ; preds = %pskb_may_pull.exit118.if.end35_crit_edge, %if.end32.if.end35_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %call40 = call ptr @skb_pull(ptr noundef nonnull %call29, i32 noundef %cond) #14
  %flags41 = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags41, align 4
  %and1.i106 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i106)
  %tobool43.not = icmp eq i32 %and1.i106, 0
  br i1 %tobool43.not, label %if.end35.if.end48_crit_edge, label %if.then44

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = call ptr @skb_push(ptr noundef nonnull %call29, i32 noundef 1) #14
  %.lobit = lshr i8 %34, 7
  %37 = ptrtoint ptr %call45 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lobit, ptr %call45, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end35.if.end48_crit_edge, %if.end26
  %skb.0 = phi ptr [ %call16, %if.end26 ], [ %call29, %if.then44 ], [ %call29, %if.end35.if.end48_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %size)
  %cmp49 = icmp ugt i32 %44, %size
  br i1 %cmp49, label %if.then51, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %msg_flags52 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %45 = ptrtoint ptr %msg_flags52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_flags52, align 4
  %or53 = or i32 %46, 32
  store i32 %or53, ptr %msg_flags52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %copied.0 = phi i32 [ %size, %if.then51 ], [ %44, %if.end48.if.end54_crit_edge ]
  %msg_flags55 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %47 = ptrtoint ptr %msg_flags55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_flags55, align 4
  %or56 = or i32 %48, 128
  store i32 %or56, ptr %msg_flags55, align 4
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef %skb.0, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #14
  %49 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool58.not = icmp eq i32 %call.i, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.out_free_dgram_crit_edge

if.end54.out_free_dgram_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dgram

if.end60:                                         ; preds = %if.end54
  %tobool61.not = icmp eq ptr %3, null
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 9, ptr %3, align 2
  %sx25_addr = getelementptr inbounds %struct.sockaddr_x25, ptr %3, i32 0, i32 1
  %dest_addr = getelementptr inbounds %struct.x25_sock, ptr %1, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %sx25_addr, ptr %dest_addr, i32 16)
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %52 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 18, ptr %msg_namelen, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  call void @x25_check_rbuf(ptr noundef %1) #14
  %53 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %copied.0, ptr %rc, align 4
  br label %out_free_dgram

out_free_dgram:                                   ; preds = %if.end63, %if.end54.out_free_dgram_crit_edge, %pskb_may_pull.exit118.out_free_dgram_crit_edge, %if.end.i112.out_free_dgram_crit_edge, %pskb_may_pull.exit.out_free_dgram_crit_edge, %if.end.i.out_free_dgram_crit_edge
  %skb.1 = phi ptr [ %skb.0, %if.end54.out_free_dgram_crit_edge ], [ %skb.0, %if.end63 ], [ %call16, %pskb_may_pull.exit.out_free_dgram_crit_edge ], [ %call29, %pskb_may_pull.exit118.out_free_dgram_crit_edge ], [ %call16, %if.end.i.out_free_dgram_crit_edge ], [ %call29, %if.end.i112.out_free_dgram_crit_edge ]
  call void @skb_free_datagram(ptr noundef %1, ptr noundef %skb.1) #14
  br label %out

out:                                              ; preds = %out_free_dgram, %if.else.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @release_sock(ptr noundef %1) #14
  %54 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rc, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #14
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_start_t23timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x25_get_route(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x25_get_neigh(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x25_new_lci(ptr noundef %nb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call ptr @x25_find_socket(i32 noundef 1, ptr noundef %nb)
  %cmp.not6 = icmp eq ptr %call5, null
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call8 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call5, %entry.while.body_crit_edge ]
  %lci.07 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call8, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #14
  br label %sock_put.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @sk_free(ptr noundef nonnull %call8) #14
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %inc = add nuw nsw i32 %lci.07, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %inc)
  %cmp1 = icmp eq i32 %inc, 4096
  br i1 %cmp1, label %sock_put.exit.while.end_crit_edge, label %if.end

sock_put.exit.while.end_crit_edge:                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %sock_put.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 346, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %call = tail call ptr @x25_find_socket(i32 noundef %inc, ptr noundef %nb)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %sock_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %lci.1 = phi i32 [ 1, %entry.while.end_crit_edge ], [ 0, %sock_put.exit.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  ret i32 %lci.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_start_t21timer(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x25_wait_for_connection_establishment(ptr noundef %sk) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !98) #14
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue_exclusive(ptr noundef %15, ptr noundef nonnull %wait) #14
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  br label %__here

__here:                                           ; preds = %if.then66, %entry
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@x25_wait_for_connection_establishment, %__here) to i32), ptr %task_state_change, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %19, align 128
  %21 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %__here.__here119_crit_edge, !prof !109

__here.__here119_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here119

signal_pending.exit:                              ; preds = %__here
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool58.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool58.not, label %if.end60, label %signal_pending.exit.__here119_crit_edge

signal_pending.exit.__here119_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here119

if.end60:                                         ; preds = %signal_pending.exit
  %29 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i152 = icmp eq i32 %30, 0
  br i1 %tobool.not.i152, label %if.end60.if.end64_crit_edge, label %sock_error.exit, !prof !109

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

sock_error.exit:                                  ; preds = %if.end60
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !125
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #14
  %31 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #14, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool62.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool62.not, label %sock_error.exit.if.end64_crit_edge, label %if.then63

sock_error.exit.if.end64_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then63:                                        ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #16
  %asmresult.i.i.le = extractvalue { i32, i32 } %31, 0
  %sub.i = sub i32 0, %asmresult.i.i.le
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %32 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_socket, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %33, align 128
  br label %__here119

if.end64:                                         ; preds = %sock_error.exit.if.end64_crit_edge, %if.end60.if.end64_crit_edge
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  %cmp.not = icmp eq i8 %36, 1
  br i1 %cmp.not, label %if.end64.__here119_crit_edge, label %if.then66

if.end64.__here119_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here119

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  call void @release_sock(ptr noundef %sk) #14
  call void @schedule() #14
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #14
  br label %__here

__here119:                                        ; preds = %if.end64.__here119_crit_edge, %if.then63, %signal_pending.exit.__here119_crit_edge, %__here.__here119_crit_edge
  %rc.0 = phi i32 [ %sub.i, %if.then63 ], [ -512, %__here.__here119_crit_edge ], [ 0, %if.end64.__here119_crit_edge ], [ -512, %signal_pending.exit.__here119_crit_edge ]
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change123 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change123 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@x25_wait_for_connection_establishment, %__here119) to i32), ptr %task_state_change123, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %40, align 128
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %43, ptr noundef nonnull %wait) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x25_neigh_put(ptr noundef %nb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !109

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @kfree(ptr noundef %nb) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x25_route_put(ptr noundef %rt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.x25_route, ptr %rt, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !109

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @kfree(ptr noundef %rt) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x25_wait_for_data(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !98) #14
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue_exclusive(ptr noundef %15, ptr noundef nonnull %wait) #14
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  br label %__here

__here:                                           ; preds = %if.then69, %entry
  %timeout.addr.0 = phi i32 [ %timeout, %entry ], [ %call70, %if.then69 ]
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@x25_wait_for_data, %__here) to i32), ptr %task_state_change, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %19, align 128
  %21 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sk_shutdown, align 2
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool55.not = icmp eq i8 %23, 0
  br i1 %tobool55.not, label %if.end57, label %__here.__here123_crit_edge

__here.__here123_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here123

if.end57:                                         ; preds = %__here
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end57.__here123_crit_edge, !prof !109

if.end57.__here123_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here123

signal_pending.exit:                              ; preds = %if.end57
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool61.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool61.not, label %if.end63, label %signal_pending.exit.__here123_crit_edge

signal_pending.exit.__here123_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here123

if.end63:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.0)
  %tobool64.not = icmp eq i32 %timeout.addr.0, 0
  br i1 %tobool64.not, label %if.end63.__here123_crit_edge, label %if.end66

if.end63.__here123_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here123

if.end66:                                         ; preds = %if.end63
  %33 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %34, %sk_receive_queue
  br i1 %cmp.i.not, label %if.then69, label %if.end66.__here123_crit_edge

if.end66.__here123_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here123

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  call void @release_sock(ptr noundef %sk) #14
  %call70 = call i32 @schedule_timeout(i32 noundef %timeout.addr.0) #14
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #14
  br label %__here

__here123:                                        ; preds = %if.end66.__here123_crit_edge, %if.end63.__here123_crit_edge, %signal_pending.exit.__here123_crit_edge, %if.end57.__here123_crit_edge, %__here.__here123_crit_edge
  %rc.1 = phi i32 [ 0, %__here.__here123_crit_edge ], [ -512, %signal_pending.exit.__here123_crit_edge ], [ 0, %if.end66.__here123_crit_edge ], [ -11, %if.end63.__here123_crit_edge ], [ -512, %if.end57.__here123_crit_edge ]
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change127 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change127 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@x25_wait_for_data, %__here123) to i32), ptr %task_state_change127, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %38, align 128
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %41, ptr noundef nonnull %wait) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_route_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_subscr_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_from_msg(ptr noundef %data, ptr noundef %msg, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #14
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %data, i32 noundef %len, ptr noundef %msg_iter) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %len)
  %cmp.i = icmp eq i32 %call3.i.i, %len
  br i1 %cmp.i, label %entry.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !109

entry.copy_from_iter_full.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call3.i.i) #14
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %entry.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %entry.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_output(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_kick(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_check_rbuf(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 271, i16 %5)
  %cmp = icmp eq i16 %5, 271
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %event, label %if.then4.cleanup_crit_edge [
    i32 5, label %if.then4.sw.bb_crit_edge
    i32 16, label %if.then4.sw.bb_crit_edge33
    i32 2, label %sw.bb5
    i32 15, label %if.then4.sw.bb10_crit_edge
    i32 6, label %if.then4.sw.bb10_crit_edge34
    i32 4, label %sw.bb11
  ]

if.then4.sw.bb10_crit_edge34:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.then4.sw.bb10_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.then4.sw.bb_crit_edge33:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then4.sw.bb_crit_edge:                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.then4.sw.bb_crit_edge, %if.then4.sw.bb_crit_edge33
  tail call void @x25_link_device_up(ptr noundef %1) #14
  br label %cleanup

sw.bb5:                                           ; preds = %if.then4
  %call6 = tail call ptr @x25_get_neigh(ptr noundef %1) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %sw.bb5.if.end9_crit_edge, label %if.then8

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %sw.bb5
  tail call void @x25_link_terminated(ptr noundef nonnull %call6) #14
  %refcnt.i = getelementptr inbounds %struct.x25_neigh, ptr %call6, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.if.end9_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %if.end9

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @kfree(ptr noundef nonnull %call6) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end9_crit_edge, %sw.bb5.if.end9_crit_edge
  tail call void @x25_route_device_down(ptr noundef %1) #14
  br label %cleanup

sw.bb10:                                          ; preds = %if.then4.sw.bb10_crit_edge, %if.then4.sw.bb10_crit_edge34
  tail call void @x25_link_device_down(ptr noundef %1) #14
  br label %cleanup

sw.bb11:                                          ; preds = %if.then4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %sw.bb11.cleanup_crit_edge, label %if.then13

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %sw.bb11
  %call14 = tail call ptr @x25_get_neigh(ptr noundef %1) #14
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %if.then16

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @x25_link_terminated(ptr noundef nonnull %call14) #14
  tail call fastcc void @x25_neigh_put(ptr noundef nonnull %call14)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then13.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb10, %if.end9, %sw.bb, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_link_device_up(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_link_terminated(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_route_device_down(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_link_device_down(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_lapb_receive_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @sysctl_x25_restart_request_timeout, !1, !"sysctl_x25_restart_request_timeout", i1 false, i1 false}
!1 = !{!"../net/x25/af_x25.c", i32 60, i32 5}
!2 = !{ptr @sysctl_x25_call_request_timeout, !3, !"sysctl_x25_call_request_timeout", i1 false, i1 false}
!3 = !{!"../net/x25/af_x25.c", i32 61, i32 5}
!4 = !{ptr @sysctl_x25_reset_request_timeout, !5, !"sysctl_x25_reset_request_timeout", i1 false, i1 false}
!5 = !{!"../net/x25/af_x25.c", i32 62, i32 5}
!6 = !{ptr @sysctl_x25_clear_request_timeout, !7, !"sysctl_x25_clear_request_timeout", i1 false, i1 false}
!7 = !{!"../net/x25/af_x25.c", i32 63, i32 5}
!8 = !{ptr @sysctl_x25_ack_holdback_timeout, !9, !"sysctl_x25_ack_holdback_timeout", i1 false, i1 false}
!9 = !{!"../net/x25/af_x25.c", i32 64, i32 5}
!10 = !{ptr @sysctl_x25_forward, !11, !"sysctl_x25_forward", i1 false, i1 false}
!11 = !{!"../net/x25/af_x25.c", i32 65, i32 5}
!12 = !{ptr @x25_list, !13, !"x25_list", i1 false, i1 false}
!13 = !{!"../net/x25/af_x25.c", i32 67, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/x25/af_x25.c", i32 68, i32 1}
!16 = !{ptr @x25_list_lock, !15, !"x25_list_lock", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_x25__465_1819_x25_init6, !18, !"__initcall__kmod_x25__465_1819_x25_init6", i1 false, i1 false}
!18 = !{!"../net/x25/af_x25.c", i32 1819, i32 1}
!19 = !{ptr @__exitcall_x25_exit, !20, !"__exitcall_x25_exit", i1 false, i1 false}
!20 = !{!"../net/x25/af_x25.c", i32 1836, i32 1}
!21 = !{ptr @__UNIQUE_ID_author466, !22, !"__UNIQUE_ID_author466", i1 false, i1 false}
!22 = !{!"../net/x25/af_x25.c", i32 1838, i32 1}
!23 = !{ptr @__UNIQUE_ID_description467, !24, !"__UNIQUE_ID_description467", i1 false, i1 false}
!24 = !{!"../net/x25/af_x25.c", i32 1839, i32 1}
!25 = !{ptr @__UNIQUE_ID_file468, !26, !"__UNIQUE_ID_file468", i1 false, i1 false}
!26 = !{!"../net/x25/af_x25.c", i32 1840, i32 1}
!27 = !{ptr @__UNIQUE_ID_license469, !26, !"__UNIQUE_ID_license469", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias470, !29, !"__UNIQUE_ID_alias470", i1 false, i1 false}
!29 = !{!"../net/x25/af_x25.c", i32 1841, i32 1}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/sock.h", i32 729, i32 3}
!32 = !{ptr @null_x25_address, !33, !"null_x25_address", i1 false, i1 false}
!33 = !{!"../net/x25/af_x25.c", i32 72, i32 33}
!34 = !{ptr @skb_queue_head_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/x25/af_x25.c", i32 1804, i32 2}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @x25_init._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @x25_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @x25_family_ops, !44, !"x25_family_ops", i1 false, i1 false}
!44 = !{!"../net/x25/af_x25.c", i32 1613, i32 38}
!45 = !{ptr @x25_proto_ops, !46, !"x25_proto_ops", i1 false, i1 false}
!46 = !{!"../net/x25/af_x25.c", i32 1728, i32 31}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/x25/af_x25.c", i32 701, i32 2}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @x25_bind._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @x25_bind._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../net/x25/af_x25.c", i32 713, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/x25/af_x25.c", i32 730, i32 2}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../net/x25/af_x25.c", i32 841, i32 3}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../net/x25/af_x25.c", i32 858, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/x25/af_x25.c", i32 1157, i32 2}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @x25_sendmsg._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @x25_sendmsg._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/x25/af_x25.c", i32 1160, i32 2}
!74 = !{ptr @x25_sendmsg._entry.15, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @x25_sendmsg._entry_ptr.17, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/x25/af_x25.c", i32 1179, i32 2}
!78 = !{ptr @x25_sendmsg._entry.18, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @x25_sendmsg._entry_ptr.20, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/x25/af_x25.c", i32 1203, i32 2}
!82 = !{ptr @x25_sendmsg._entry.21, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @x25_sendmsg._entry_ptr.23, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/x25/af_x25.c", i32 1237, i32 2}
!86 = !{ptr @x25_sendmsg._entry.24, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @x25_sendmsg._entry_ptr.26, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/x25/af_x25.c", i32 1238, i32 2}
!90 = !{ptr @x25_sendmsg._entry.27, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @x25_sendmsg._entry_ptr.29, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @x25_dev_notifier, !93, !"x25_dev_notifier", i1 false, i1 false}
!93 = !{!"../net/x25/af_x25.c", i32 1758, i32 30}
!94 = !{ptr @x25_packet_type, !95, !"x25_packet_type", i1 false, i1 false}
!95 = !{!"../net/x25/af_x25.c", i32 1753, i32 27}
!96 = !{ptr @x25_proto, !97, !"x25_proto", i1 false, i1 false}
!97 = !{!"../net/x25/af_x25.c", i32 496, i32 21}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2148380645, i64 2148380677, i64 2148380706, i64 2148380740, i64 2148380771, i64 2148380794}
!111 = !{i64 2148468670}
!112 = !{i64 2148383110, i64 2148383142, i64 2148383171, i64 2148383205, i64 2148383236, i64 2148383259}
!113 = !{i64 2149344784}
!114 = !{i64 2156742443}
!115 = !{i64 4674869}
!116 = !{i64 4675066}
!117 = !{i64 2152160299}
!118 = !{i64 2157110158, i64 2157110438, i64 2157110772, i64 2157111106}
!119 = !{i64 2157119077, i64 2157119357, i64 2157119691, i64 2157120025}
!120 = !{i64 2152184056, i64 2152184081}
!121 = !{i64 2152183375, i64 2152183400}
!122 = !{!"auto-init"}
!123 = !{i64 2157051264, i64 2157051544, i64 2157051878, i64 2157052212}
!124 = !{i64 2157066673, i64 2157066953, i64 2157067287, i64 2157067621}
!125 = !{i64 2156799226}
!126 = !{i64 885883, i64 885900, i64 885924, i64 885950, i64 885968}
!127 = !{i64 2156799569}
