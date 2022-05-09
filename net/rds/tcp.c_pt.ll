; ModuleID = '/llk/IR_all_yes/net/rds/tcp.c_pt.bc'
source_filename = "../net/rds/tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rds_tcp_connection = type { %struct.list_head, i8, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.230, %struct.anon.231, %struct.anon.232, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.228, %struct.anon.229, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.41, %union.anon.43, %union.anon.44, i16, i8, i8, i32, %union.anon.46, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.228 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.229 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.230 = type { i32, i32, i64 }
%struct.anon.231 = type { i32, i32, i64 }
%struct.anon.232 = type { i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rds_tcp_net = type { ptr, %struct.work_struct, ptr, ptr, i32, i32 }
%struct.rds_info_tcp_socket = type <{ i32, i16, i32, i16, i64, i64, i32, i32, i32, i8 }>
%struct.rds_info_lengths = type { i32, i32 }
%struct.rds6_info_tcp_socket = type <{ %struct.in6_addr, i16, %struct.in6_addr, i16, i64, i64, i32, i32, i32 }>
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.150, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%union.anon.21 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.150 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rds_tcp_restore_callbacks.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rds_tcp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rds_tcp_restore_callbacks\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/tcp.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): restoring sock %p callbacks from tc %p\0A\00", [50 x i8] zeroinitializer }, align 32
@rds_tcp_tc_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rds6_tcp_tc_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rds_tcp_tc_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rds_tcp_set_callbacks.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rds_tcp_set_callbacks\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): setting sock %p callbacks to tc %p\0A\00", [54 x i8] zeroinitializer }, align 32
@rds_tcp_tc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rds_tcp_tc_list, ptr @rds_tcp_tc_list }, [24 x i8] zeroinitializer }, align 32
@rds_tcp_transport = dso_local global { %struct.rds_transport, [60 x i8] } { %struct.rds_transport { [16 x i8] c"tcp\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null, i8 -64, i32 2, ptr @rds_tcp_laddr_check, ptr @rds_tcp_conn_alloc, ptr @rds_tcp_conn_free, ptr @rds_tcp_conn_path_connect, ptr @rds_tcp_conn_path_shutdown, ptr @rds_tcp_xmit_path_prepare, ptr @rds_tcp_xmit_path_complete, ptr @rds_tcp_xmit, ptr null, ptr null, ptr @rds_tcp_recv_path, ptr @rds_tcp_inc_copy_to_user, ptr @rds_tcp_inc_free, ptr null, ptr null, ptr null, ptr @rds_tcp_stats_info_copy, ptr @rds_tcp_exit, ptr null, ptr null, ptr null, ptr null, ptr @rds_tcp_is_unloading, ptr @rds_tcp_get_tos_map }, [60 x i8] zeroinitializer }, align 32
@rds_tcp_netid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@__exitcall_rds_tcp_exit = internal global ptr @rds_tcp_exit, section ".exitcall.exit", align 4
@__initcall__kmod_rds_tcp__655_736_rds_tcp_init6 = internal global ptr @rds_tcp_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author656 = internal constant [61 x i8] c"rds_tcp.author=Oracle Corporation <rds-devel@oss.oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description657 = internal constant [39 x i8] c"rds_tcp.description=RDS: TCP transport\00", section ".modinfo", align 1
@__UNIQUE_ID_file658 = internal constant [29 x i8] c"rds_tcp.file=net/rds/rds_tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license659 = internal constant [29 x i8] c"rds_tcp.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_tcp_tc_list_lock\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rds_tcp_conn_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_tcp_conn_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tc->t_conn_path_lock\00", [42 x i8] zeroinitializer }, align 32
@rds_tcp_conn_alloc.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_tcp_conn_alloc\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): rds_conn_path [%d] tc %p\0A\00", [32 x i8] zeroinitializer }, align 32
@rds_tcp_conn_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rds_tcp_conn_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rds_tcp_conn_list, ptr @rds_tcp_conn_list }, [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_tcp_conn_lock\00", [46 x i8] zeroinitializer }, align 32
@rds_tcp_conn_free.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_tcp_conn_free\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): freeing tc %p\0A\00", [43 x i8] zeroinitializer }, align 32
@rds_tcp_unloading = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rds_tcp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @rds_tcp_init_net, ptr null, ptr @rds_tcp_exit_net, ptr null, ptr @rds_tcp_netid, i32 64 }, [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@rds_tcp_sysctl_table = internal global { [3 x %struct.ctl_table], [52 x i8] } { [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.28, ptr null, i32 4, i16 420, ptr null, ptr @rds_tcp_skbuf_handler, ptr null, ptr @rds_tcp_min_sndbuf, ptr null }, %struct.ctl_table { ptr @.str.29, ptr null, i32 4, i16 420, ptr null, ptr @rds_tcp_skbuf_handler, ptr null, ptr @rds_tcp_min_rcvbuf, ptr null }, %struct.ctl_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@rds_tcp_init_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014could not set allocate sysctl table\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_tcp_init_net\00", [47 x i8] zeroinitializer }, align 32
@rds_tcp_init_net._entry_ptr = internal global ptr @rds_tcp_init_net._entry, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"net/rds/tcp\00", [20 x i8] zeroinitializer }, align 32
@rds_tcp_init_net._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014could not register sysctl\0A\00", [35 x i8] zeroinitializer }, align 32
@rds_tcp_init_net._entry_ptr.23 = internal global ptr @rds_tcp_init_net._entry.21, section ".printk_index", align 4
@rds_tcp_init_net._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014could not set up IPv6 listen sock\0A\00", [59 x i8] zeroinitializer }, align 32
@rds_tcp_init_net._entry_ptr.26 = internal global ptr @rds_tcp_init_net._entry.24, section ".printk_index", align 4
@rds_tcp_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&rtn->rds_tcp_accept_w)\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_tcp_sndbuf\00", [17 x i8] zeroinitializer }, align 32
@rds_tcp_min_sndbuf = internal global { i32, [28 x i8] } { i32 4608, [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_tcp_rcvbuf\00", [17 x i8] zeroinitializer }, align 32
@rds_tcp_min_rcvbuf = internal global { i32, [28 x i8] } { i32 2304, [28 x i8] zeroinitializer }, align 32
@rds_tcp_skbuf_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Invalid input. Must be >= %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rds_tcp_skbuf_handler\00", [42 x i8] zeroinitializer }, align 32
@rds_tcp_skbuf_handler._entry_ptr = internal global ptr @rds_tcp_skbuf_handler._entry, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_tcp_connection\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 106, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"rds_tcp_tc_list_lock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"rds6_tcp_tc_count\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 54, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"rds_tcp_tc_count\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 52, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 197, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"rds_tcp_tc_list\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 47, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"rds_tcp_transport\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 452, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"rds_tcp_netid\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 475, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 46, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"rds_tcp_conn_slab\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 62, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 378, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 388, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"rds_tcp_conn_lock\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"rds_tcp_conn_list\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 59, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 58, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 356, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"rds_tcp_unloading\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 60, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 45, i32 7 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"rds_tcp_net_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 628, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"rds_tcp_sysctl_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 70, i32 25 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 544, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 551, i32 49 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 553, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 564, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 579, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 73, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"rds_tcp_min_sndbuf\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 67, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 82, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"rds_tcp_min_rcvbuf\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 68, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 676, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [17 x i8] c"../net/rds/tcp.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 705, i32 40 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author656, ptr @__UNIQUE_ID_description657, ptr @__UNIQUE_ID_file658, ptr @__UNIQUE_ID_license659, ptr @__exitcall_rds_tcp_exit, ptr @__initcall__kmod_rds_tcp__655_736_rds_tcp_init6, ptr @rds_tcp_init_net._entry, ptr @rds_tcp_init_net._entry.21, ptr @rds_tcp_init_net._entry.24, ptr @rds_tcp_init_net._entry_ptr, ptr @rds_tcp_init_net._entry_ptr.23, ptr @rds_tcp_init_net._entry_ptr.26, ptr @rds_tcp_skbuf_handler._entry, ptr @rds_tcp_skbuf_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rds_tcp_tc_list_lock, ptr @rds6_tcp_tc_count, ptr @rds_tcp_tc_count, ptr @.str.4, ptr @.str.5, ptr @rds_tcp_tc_list, ptr @rds_tcp_transport, ptr @rds_tcp_netid, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rds_tcp_conn_slab, ptr @rds_tcp_conn_alloc.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @rds_tcp_conn_lock, ptr @rds_tcp_conn_list, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rds_tcp_unloading, ptr @.str.16, ptr @.str.17, ptr @rds_tcp_net_ops, ptr @rds_tcp_sysctl_table, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @rds_tcp_init_net.__key, ptr @.str.27, ptr @.str.28, ptr @rds_tcp_min_sndbuf, ptr @.str.29, ptr @rds_tcp_min_rcvbuf, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_tc_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds6_tcp_tc_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_tc_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_tc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_transport to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_netid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_conn_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_conn_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_conn_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_conn_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_unloading to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_sysctl_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_init_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_init_net._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_init_net._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_min_sndbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_min_rcvbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_skbuf_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_tcp_write_seq(ptr nocapture noundef readonly %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 4
  %0 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 80
  %4 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_seq, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_tcp_snd_una(ptr nocapture noundef readonly %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 4
  %0 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_una, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_restore_callbacks(ptr noundef %sock, ptr noundef %tc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_restore_callbacks.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_restore_callbacks, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_restore_callbacks.__UNIQUE_ID_ddebug651, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %sock, ptr noundef %tc) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @rds_tcp_tc_list_lock) #8
  %t_list_item = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_list_item) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %t_list_item to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_list_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %t_list_item to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %t_list_item, ptr %t_list_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %t_list_item, ptr %prev.i3.i, align 4
  %10 = load i32, ptr @rds6_tcp_tc_count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr @rds6_tcp_tc_count, align 4
  %t_cpath = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 2
  %11 = ptrtoint ptr %t_cpath to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_cpath, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %c_isv6 = getelementptr inbounds %struct.rds_connection, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %c_isv6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %c_isv6, align 4
  %16 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %if.then4, label %list_del_init.exit.if.end6_crit_edge

list_del_init.exit.if.end6_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @rds_tcp_tc_count, align 4
  %dec5 = add i32 %17, -1
  store i32 %dec5, ptr @rds_tcp_tc_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %list_del_init.exit.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rds_tcp_tc_list_lock) #8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 4
  %18 = ptrtoint ptr %t_sock to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %t_sock, align 4
  %t_orig_write_space = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 5
  %19 = ptrtoint ptr %t_orig_write_space to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_orig_write_space, align 4
  %21 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk, align 16
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 78
  %23 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %sk_write_space, align 4
  %t_orig_data_ready = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 6
  %24 = ptrtoint ptr %t_orig_data_ready to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t_orig_data_ready, align 4
  %26 = load ptr, ptr %sk, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %sk_data_ready, align 8
  %t_orig_state_change = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc, i32 0, i32 7
  %28 = ptrtoint ptr %t_orig_state_change to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t_orig_state_change, align 4
  %30 = load ptr, ptr %sk, align 16
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 76
  %31 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %sk_state_change, align 4
  %32 = load ptr, ptr %sk, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 72
  %33 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sk_user_data, align 4
  %34 = load ptr, ptr %sk, align 16
  %sk_callback_lock12 = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock12) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_reset_callbacks(ptr noundef %sock, ptr noundef %cp) local_unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_transport_data, align 8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_sock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.newsock_crit_edge, label %if.end

entry.newsock_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %newsock

if.end:                                           ; preds = %entry
  %cp_state = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cp_state, i32 noundef 4) #8
  %4 = ptrtoint ptr %cp_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 4, ptr %cp_state, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 168) #8
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 16
  %5 = ptrtoint ptr %cp_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cp_flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end.do.end16_crit_edge, label %if.end7

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %cp_waitq = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 23
  %call853 = call i32 @prepare_to_wait_event(ptr noundef %cp_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %9 = ptrtoint ptr %cp_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cp_flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not54 = icmp eq i32 %11, 0
  br i1 %tobool11.not54, label %if.end7.for.end_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  br label %cleanup

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  call void @schedule() #8
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %cp_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %12 = ptrtoint ptr %cp_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cp_flags, align 4
  %14 = and i32 %13, 4
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end7.for.end_crit_edge
  call void @finish_wait(ptr noundef %cp_waitq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end16

do.end16:                                         ; preds = %for.end, %if.end.do.end16_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk, align 16
  call void @lock_sock_nested(ptr noundef %16, i32 noundef 0) #8
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 18
  %call17 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cp_send_w) #8
  %cp_recv_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 19
  %call18 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cp_recv_w) #8
  %t_tinc = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %t_tinc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t_tinc, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %do.end16.if.end23_crit_edge, label %if.then20

do.end16.if.end23_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @rds_inc_put(ptr noundef nonnull %18) #8
  %19 = ptrtoint ptr %t_tinc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %t_tinc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.end16.if.end23_crit_edge
  %t_tinc_hdr_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 48, ptr %t_tinc_hdr_rem, align 4
  %t_tinc_data_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %t_tinc_data_rem, align 4
  call void @rds_tcp_restore_callbacks(ptr noundef nonnull %3, ptr noundef %1)
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 16
  call void @release_sock(ptr noundef %23) #8
  call void @sock_release(ptr noundef nonnull %3) #8
  br label %newsock

newsock:                                          ; preds = %if.end23, %entry.newsock_crit_edge
  call void @rds_send_path_reset(ptr noundef %cp) #8
  %sk25 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %24 = ptrtoint ptr %sk25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk25, align 16
  call void @lock_sock_nested(ptr noundef %25, i32 noundef 0) #8
  call void @rds_tcp_set_callbacks(ptr noundef %sock, ptr noundef %cp)
  %26 = ptrtoint ptr %sk25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk25, align 16
  call void @release_sock(ptr noundef %27) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_send_path_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_set_callbacks(ptr noundef %sock, ptr noundef %cp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_set_callbacks.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_set_callbacks, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_set_callbacks.__UNIQUE_ID_ddebug652, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %sock, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @rds_tcp_tc_list_lock) #8
  %t_list_item = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_tc_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %t_list_item, ptr noundef %4, ptr noundef nonnull @rds_tcp_tc_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %t_list_item, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_tc_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %t_list_item to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rds_tcp_tc_list, ptr %t_list_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %t_list_item, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  %8 = load i32, ptr @rds6_tcp_tc_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @rds6_tcp_tc_count, align 4
  %t_cpath = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %t_cpath to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t_cpath, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %c_isv6 = getelementptr inbounds %struct.rds_connection, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %c_isv6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %c_isv6, align 4
  %14 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %if.then4, label %list_add_tail.exit.if.end6_crit_edge

list_add_tail.exit.if.end6_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @rds_tcp_tc_count, align 4
  %inc5 = add i32 %15, 1
  store i32 %inc5, ptr @rds_tcp_tc_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %list_add_tail.exit.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rds_tcp_tc_list_lock) #8
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 77
  %18 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_data_ready, align 8
  %cmp = icmp eq ptr %19, @rds_tcp_listen_data_ready
  br i1 %cmp, label %if.then8, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 72
  %20 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_user_data, align 4
  %22 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sk_data_ready, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %t_sock to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sock, ptr %t_sock, align 4
  %24 = ptrtoint ptr %t_cpath to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cp, ptr %t_cpath, align 4
  %25 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk, align 16
  %sk_data_ready15 = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_data_ready15, align 8
  %t_orig_data_ready = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %t_orig_data_ready to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %t_orig_data_ready, align 4
  %30 = load ptr, ptr %sk, align 16
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 78
  %31 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk_write_space, align 4
  %t_orig_write_space = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %t_orig_write_space to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %t_orig_write_space, align 4
  %34 = load ptr, ptr %sk, align 16
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 76
  %35 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_state_change, align 4
  %t_orig_state_change = getelementptr inbounds %struct.rds_tcp_connection, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %t_orig_state_change to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %t_orig_state_change, align 4
  %38 = load ptr, ptr %sk, align 16
  %sk_user_data19 = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 72
  %39 = ptrtoint ptr %sk_user_data19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cp, ptr %sk_user_data19, align 4
  %40 = load ptr, ptr %sk, align 16
  %sk_data_ready21 = getelementptr inbounds %struct.sock, ptr %40, i32 0, i32 77
  %41 = ptrtoint ptr %sk_data_ready21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @rds_tcp_data_ready, ptr %sk_data_ready21, align 8
  %42 = load ptr, ptr %sk, align 16
  %sk_write_space23 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 78
  %43 = ptrtoint ptr %sk_write_space23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @rds_tcp_write_space, ptr %sk_write_space23, align 4
  %44 = load ptr, ptr %sk, align 16
  %sk_state_change25 = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 76
  %45 = ptrtoint ptr %sk_state_change25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @rds_tcp_state_change, ptr %sk_state_change25, align 4
  %46 = load ptr, ptr %sk, align 16
  %sk_callback_lock27 = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock27) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_listen_data_ready(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_data_ready(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_write_space(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_state_change(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_laddr_check(ptr noundef %net, ptr noundef %addr, i32 noundef %scope_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %5, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 @inet_addr_type(ptr noundef %net, i32 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp = icmp eq i32 %call1, 2
  %. = select i1 %cmp, i32 0, i32 -99
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope_id)
  %cmp4.not = icmp eq i32 %scope_id, 0
  br i1 %cmp4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  %8 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then5.rcu_read_lock.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then5.rcu_read_lock.exit_crit_edge
  %call6 = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %scope_id) #8
  %tobool.not = icmp eq ptr %call6, null
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %rcu_read_lock.exit
  br i1 %call.i22, label %if.then7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.then7.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.then7
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.then7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %12 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i.i29 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end8:                                          ; preds = %rcu_read_lock.exit
  br i1 %call.i22, label %if.end8.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true.i34

if.end8.rcu_read_unlock.exit41_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit41

land.lhs.true.i34:                                ; preds = %if.end8
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit41

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit41

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit41

rcu_read_unlock.exit41:                           ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, %if.end8.rcu_read_unlock.exit41_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %16 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i.i38 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i40 = add i32 %19, -1
  store volatile i32 %sub.i.i.i40, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end9

if.end9:                                          ; preds = %rcu_read_unlock.exit41, %if.end3.if.end9_crit_edge
  %dev.0 = phi ptr [ %call6, %rcu_read_unlock.exit41 ], [ null, %if.end3.if.end9_crit_edge ]
  %call10 = tail call i32 @ipv6_chk_addr(ptr noundef %net, ptr noundef %addr, ptr noundef %dev.0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %.21 = select i1 %tobool11.not, i32 -99, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %rcu_read_unlock.exit, %if.then
  %retval.0 = phi i32 [ -99, %rcu_read_unlock.exit ], [ %., %if.then ], [ %.21, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_tcp_conn_alloc(ptr nocapture noundef readonly %conn, i32 noundef %gfp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = load ptr, ptr @rds_tcp_conn_slab, align 4
  %call81 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %gfp) #8
  %tobool.not82 = icmp eq ptr %call81, null
  br i1 %tobool.not82, label %entry.fail_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body:                                         ; preds = %for.inc
  %1 = load ptr, ptr @rds_tcp_conn_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef %gfp) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %fail.loopexit, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call84 = phi ptr [ %call, %for.body.do.body_crit_edge ], [ %call81, %entry.do.body_crit_edge ]
  %i.06783 = phi i32 [ %inc, %for.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %t_conn_path_lock = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %t_conn_path_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @rds_tcp_conn_alloc.__key) #8
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 4
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %t_sock, align 4
  %t_tinc = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 8
  %3 = ptrtoint ptr %t_tinc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %t_tinc, align 4
  %t_tinc_hdr_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 9
  %4 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 48, ptr %t_tinc_hdr_rem, align 8
  %t_tinc_data_rem = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 10
  %5 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %t_tinc_data_rem, align 4
  %6 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr %struct.rds_conn_path, ptr %7, i32 %i.06783, i32 13
  %8 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call84, ptr %cp_transport_data, align 8
  %9 = load ptr, ptr %c_path, align 4
  %arrayidx2 = getelementptr %struct.rds_conn_path, ptr %9, i32 %i.06783
  %t_cpath = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 2
  %10 = ptrtoint ptr %t_cpath to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx2, ptr %t_cpath, align 4
  %t_tcp_node_detached = getelementptr inbounds %struct.rds_tcp_connection, ptr %call84, i32 0, i32 1
  %11 = ptrtoint ptr %t_tcp_node_detached to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %t_tcp_node_detached, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_conn_alloc.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_conn_alloc, %if.then8)) #8
          to label %for.inc [label %if.then8], !srcloc !112

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c_path, align 4
  %cp_transport_data11 = getelementptr %struct.rds_conn_path, ptr %13, i32 %i.06783, i32 13
  %14 = ptrtoint ptr %cp_transport_data11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cp_transport_data11, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_conn_alloc.__UNIQUE_ID_ddebug654, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %i.06783, ptr noundef %15) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %do.body
  %inc = add nuw nsw i32 %i.06783, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.06783)
  %cmp.le90 = icmp ult i32 %i.06783, 7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %16 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c_path, align 4
  %cp_transport_data20 = getelementptr %struct.rds_conn_path, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %cp_transport_data20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp_transport_data20, align 8
  %t_tcp_node_detached21 = getelementptr inbounds %struct.rds_tcp_connection, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %t_tcp_node_detached21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %t_tcp_node_detached21, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %21, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %19, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rds_tcp_conn_list, ptr %19, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %19, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %25 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.1 = getelementptr %struct.rds_conn_path, ptr %26, i32 1, i32 13
  %27 = ptrtoint ptr %cp_transport_data20.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cp_transport_data20.1, align 8
  %t_tcp_node_detached21.1 = getelementptr inbounds %struct.rds_tcp_connection, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %t_tcp_node_detached21.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %t_tcp_node_detached21.1, align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %28, ptr noundef %30, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add_tail.exit.list_add_tail.exit.1_crit_edge

list_add_tail.exit.list_add_tail.exit.1_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.1

if.end.i.i.1:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %28, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rds_tcp_conn_list, ptr %28, align 4
  %prev3.i.i.1 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev3.i.i.1, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %28, ptr %30, align 4
  br label %list_add_tail.exit.1

list_add_tail.exit.1:                             ; preds = %if.end.i.i.1, %list_add_tail.exit.list_add_tail.exit.1_crit_edge
  %34 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.2 = getelementptr %struct.rds_conn_path, ptr %35, i32 2, i32 13
  %36 = ptrtoint ptr %cp_transport_data20.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cp_transport_data20.2, align 8
  %t_tcp_node_detached21.2 = getelementptr inbounds %struct.rds_tcp_connection, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %t_tcp_node_detached21.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %t_tcp_node_detached21.2, align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %37, ptr noundef %39, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge

list_add_tail.exit.1.list_add_tail.exit.2_crit_edge: ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.2

if.end.i.i.2:                                     ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %37, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rds_tcp_conn_list, ptr %37, align 4
  %prev3.i.i.2 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %prev3.i.i.2, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %37, ptr %39, align 4
  br label %list_add_tail.exit.2

list_add_tail.exit.2:                             ; preds = %if.end.i.i.2, %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge
  %43 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.3 = getelementptr %struct.rds_conn_path, ptr %44, i32 3, i32 13
  %45 = ptrtoint ptr %cp_transport_data20.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cp_transport_data20.3, align 8
  %t_tcp_node_detached21.3 = getelementptr inbounds %struct.rds_tcp_connection, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %t_tcp_node_detached21.3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %t_tcp_node_detached21.3, align 4
  %48 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %48, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge

list_add_tail.exit.2.list_add_tail.exit.3_crit_edge: ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.3

if.end.i.i.3:                                     ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %46, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rds_tcp_conn_list, ptr %46, align 4
  %prev3.i.i.3 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %prev3.i.i.3, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %46, ptr %48, align 4
  br label %list_add_tail.exit.3

list_add_tail.exit.3:                             ; preds = %if.end.i.i.3, %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge
  %52 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.4 = getelementptr %struct.rds_conn_path, ptr %53, i32 4, i32 13
  %54 = ptrtoint ptr %cp_transport_data20.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cp_transport_data20.4, align 8
  %t_tcp_node_detached21.4 = getelementptr inbounds %struct.rds_tcp_connection, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %t_tcp_node_detached21.4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %t_tcp_node_detached21.4, align 4
  %57 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef %55, ptr noundef %57, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge

list_add_tail.exit.3.list_add_tail.exit.4_crit_edge: ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.4

if.end.i.i.4:                                     ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %55, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rds_tcp_conn_list, ptr %55, align 4
  %prev3.i.i.4 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %prev3.i.i.4, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %55, ptr %57, align 4
  br label %list_add_tail.exit.4

list_add_tail.exit.4:                             ; preds = %if.end.i.i.4, %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge
  %61 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.5 = getelementptr %struct.rds_conn_path, ptr %62, i32 5, i32 13
  %63 = ptrtoint ptr %cp_transport_data20.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cp_transport_data20.5, align 8
  %t_tcp_node_detached21.5 = getelementptr inbounds %struct.rds_tcp_connection, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %t_tcp_node_detached21.5 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %t_tcp_node_detached21.5, align 4
  %66 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef %64, ptr noundef %66, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_add_tail.exit.4.list_add_tail.exit.5_crit_edge

list_add_tail.exit.4.list_add_tail.exit.5_crit_edge: ; preds = %list_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.5

if.end.i.i.5:                                     ; preds = %list_add_tail.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %64, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @rds_tcp_conn_list, ptr %64, align 4
  %prev3.i.i.5 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %prev3.i.i.5, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %64, ptr %66, align 4
  br label %list_add_tail.exit.5

list_add_tail.exit.5:                             ; preds = %if.end.i.i.5, %list_add_tail.exit.4.list_add_tail.exit.5_crit_edge
  %70 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.6 = getelementptr %struct.rds_conn_path, ptr %71, i32 6, i32 13
  %72 = ptrtoint ptr %cp_transport_data20.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cp_transport_data20.6, align 8
  %t_tcp_node_detached21.6 = getelementptr inbounds %struct.rds_tcp_connection, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %t_tcp_node_detached21.6 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %t_tcp_node_detached21.6, align 4
  %75 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.6 = tail call zeroext i1 @__list_add_valid(ptr noundef %73, ptr noundef %75, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_add_tail.exit.5.list_add_tail.exit.6_crit_edge

list_add_tail.exit.5.list_add_tail.exit.6_crit_edge: ; preds = %list_add_tail.exit.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.6

if.end.i.i.6:                                     ; preds = %list_add_tail.exit.5
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %73, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @rds_tcp_conn_list, ptr %73, align 4
  %prev3.i.i.6 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %prev3.i.i.6, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %73, ptr %75, align 4
  br label %list_add_tail.exit.6

list_add_tail.exit.6:                             ; preds = %if.end.i.i.6, %list_add_tail.exit.5.list_add_tail.exit.6_crit_edge
  %79 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %c_path, align 4
  %cp_transport_data20.7 = getelementptr %struct.rds_conn_path, ptr %80, i32 7, i32 13
  %81 = ptrtoint ptr %cp_transport_data20.7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cp_transport_data20.7, align 8
  %t_tcp_node_detached21.7 = getelementptr inbounds %struct.rds_tcp_connection, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %t_tcp_node_detached21.7 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %t_tcp_node_detached21.7, align 4
  %84 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %call.i.i.7 = tail call zeroext i1 @__list_add_valid(ptr noundef %82, ptr noundef %84, ptr noundef nonnull @rds_tcp_conn_list) #8
  br i1 %call.i.i.7, label %if.end.i.i.7, label %list_add_tail.exit.6.list_add_tail.exit.7_crit_edge

list_add_tail.exit.6.list_add_tail.exit.7_crit_edge: ; preds = %list_add_tail.exit.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.7

if.end.i.i.7:                                     ; preds = %list_add_tail.exit.6
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %82, ptr getelementptr inbounds (%struct.list_head, ptr @rds_tcp_conn_list, i32 0, i32 1), align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @rds_tcp_conn_list, ptr %82, align 4
  %prev3.i.i.7 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %86 = ptrtoint ptr %prev3.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %84, ptr %prev3.i.i.7, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %82, ptr %84, align 4
  br label %list_add_tail.exit.7

list_add_tail.exit.7:                             ; preds = %if.end.i.i.7, %list_add_tail.exit.6.list_add_tail.exit.7_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  br label %fail

fail.loopexit:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.06783)
  %cmp.le = icmp ult i32 %i.06783, 7
  br label %fail

fail:                                             ; preds = %fail.loopexit, %list_add_tail.exit.7, %entry.fail_crit_edge
  %cmp65 = phi i1 [ %cmp.le90, %list_add_tail.exit.7 ], [ true, %entry.fail_crit_edge ], [ %cmp.le, %fail.loopexit ]
  %ret.0 = phi i32 [ 0, %list_add_tail.exit.7 ], [ -12, %entry.fail_crit_edge ], [ -12, %fail.loopexit ]
  %i.2 = phi i32 [ 8, %list_add_tail.exit.7 ], [ 0, %entry.fail_crit_edge ], [ %inc, %fail.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %cmp2871 = icmp ne i32 %i.2, 0
  %or.cond = select i1 %cmp65, i1 %cmp2871, i1 false
  br i1 %or.cond, label %for.body29, label %fail.if.end36_crit_edge

fail.if.end36_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29:                                       ; preds = %fail
  %88 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %c_path, align 4
  %cp_transport_data32 = getelementptr %struct.rds_conn_path, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %cp_transport_data32 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cp_transport_data32, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.2)
  %exitcond76.not = icmp eq i32 %i.2, 1
  br i1 %exitcond76.not, label %for.body29.if.end36_crit_edge, label %for.body29.1

for.body29.if.end36_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.1:                                     ; preds = %for.body29
  %92 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.1 = getelementptr %struct.rds_conn_path, ptr %93, i32 1, i32 13
  %94 = ptrtoint ptr %cp_transport_data32.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cp_transport_data32.1, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.2)
  %exitcond76.not.1 = icmp eq i32 %i.2, 2
  br i1 %exitcond76.not.1, label %for.body29.1.if.end36_crit_edge, label %for.body29.2

for.body29.1.if.end36_crit_edge:                  ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.2:                                     ; preds = %for.body29.1
  %96 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.2 = getelementptr %struct.rds_conn_path, ptr %97, i32 2, i32 13
  %98 = ptrtoint ptr %cp_transport_data32.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cp_transport_data32.2, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.2)
  %exitcond76.not.2 = icmp eq i32 %i.2, 3
  br i1 %exitcond76.not.2, label %for.body29.2.if.end36_crit_edge, label %for.body29.3

for.body29.2.if.end36_crit_edge:                  ; preds = %for.body29.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.3:                                     ; preds = %for.body29.2
  %100 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.3 = getelementptr %struct.rds_conn_path, ptr %101, i32 3, i32 13
  %102 = ptrtoint ptr %cp_transport_data32.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cp_transport_data32.3, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.2)
  %exitcond76.not.3 = icmp eq i32 %i.2, 4
  br i1 %exitcond76.not.3, label %for.body29.3.if.end36_crit_edge, label %for.body29.4

for.body29.3.if.end36_crit_edge:                  ; preds = %for.body29.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.4:                                     ; preds = %for.body29.3
  %104 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.4 = getelementptr %struct.rds_conn_path, ptr %105, i32 4, i32 13
  %106 = ptrtoint ptr %cp_transport_data32.4 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cp_transport_data32.4, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.2)
  %exitcond76.not.4 = icmp eq i32 %i.2, 5
  br i1 %exitcond76.not.4, label %for.body29.4.if.end36_crit_edge, label %for.body29.5

for.body29.4.if.end36_crit_edge:                  ; preds = %for.body29.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.5:                                     ; preds = %for.body29.4
  %108 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.5 = getelementptr %struct.rds_conn_path, ptr %109, i32 5, i32 13
  %110 = ptrtoint ptr %cp_transport_data32.5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cp_transport_data32.5, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.2)
  %exitcond76.not.5 = icmp eq i32 %i.2, 6
  br i1 %exitcond76.not.5, label %for.body29.5.if.end36_crit_edge, label %for.body29.6

for.body29.5.if.end36_crit_edge:                  ; preds = %for.body29.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.6:                                     ; preds = %for.body29.5
  %112 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.6 = getelementptr %struct.rds_conn_path, ptr %113, i32 6, i32 13
  %114 = ptrtoint ptr %cp_transport_data32.6 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cp_transport_data32.6, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.2)
  %exitcond76.not.6 = icmp eq i32 %i.2, 7
  br i1 %exitcond76.not.6, label %for.body29.6.if.end36_crit_edge, label %for.body29.7

for.body29.6.if.end36_crit_edge:                  ; preds = %for.body29.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body29.7:                                     ; preds = %for.body29.6
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %c_path, align 4
  %cp_transport_data32.7 = getelementptr %struct.rds_conn_path, ptr %117, i32 7, i32 13
  %118 = ptrtoint ptr %cp_transport_data32.7 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cp_transport_data32.7, align 8
  tail call void @rds_tcp_conn_free(ptr noundef %119)
  br label %if.end36

if.end36:                                         ; preds = %for.body29.7, %for.body29.6.if.end36_crit_edge, %for.body29.5.if.end36_crit_edge, %for.body29.4.if.end36_crit_edge, %for.body29.3.if.end36_crit_edge, %for.body29.2.if.end36_crit_edge, %for.body29.1.if.end36_crit_edge, %for.body29.if.end36_crit_edge, %fail.if.end36_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_tcp_conn_free(ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_conn_free.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_conn_free, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_conn_free.__UNIQUE_ID_ddebug653, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %arg) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %t_tcp_node_detached = getelementptr inbounds %struct.rds_tcp_connection, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %t_tcp_node_detached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t_tcp_node_detached, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool12.not = icmp eq i8 %1, 0
  br i1 %tobool12.not, label %if.then13, label %do.body4.if.end14_crit_edge

do.body4.if.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %do.body4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arg) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_del.exit_crit_edge

if.then13.list_del.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then13.list_del.exit_crit_edge
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %arg, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %list_del.exit, %do.body4.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_tcp_conn_lock, i32 noundef %call7) #8
  %10 = load ptr, ptr @rds_tcp_conn_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef %arg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_conn_path_connect(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_conn_path_shutdown(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_xmit_path_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_xmit_path_complete(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_recv_path(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_inc_copy_to_user(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_inc_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_stats_info_copy(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_tcp_exit() #1 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_tcp_unloading, i32 noundef 4) #8
  store volatile i32 1, ptr @rds_tcp_unloading, align 4
  tail call void @synchronize_rcu() #8
  tail call void @rds_info_deregister_func(i32 noundef 10007, ptr noundef nonnull @rds_tcp_tc_info) #8
  tail call void @rds_info_deregister_func(i32 noundef 10016, ptr noundef nonnull @rds6_tcp_tc_info) #8
  tail call void @unregister_pernet_device(ptr noundef nonnull @rds_tcp_net_ops) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %3 = load ptr, ptr @rds_tcp_conn_list, align 4
  %cmp.not45.i = icmp eq ptr %3, @rds_tcp_conn_list
  br i1 %cmp.not45.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tc.046.i = phi ptr [ %_tc.048.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %tc.046.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %_tc.048.i = load ptr, ptr %tc.046.i, align 4
  %t_cpath.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.046.i, i32 0, i32 2
  %5 = ptrtoint ptr %t_cpath.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_cpath.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %tc.0.in.i.i = phi ptr [ %tmp_list.i, %for.body.i ], [ %tc.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %tc.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tc.0.i.i = load ptr, ptr %tc.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tc.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %if.then.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %t_cpath.i.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %t_cpath.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_cpath.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %cmp6.i.i = icmp eq ptr %13, %8
  br i1 %cmp6.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.cond.i.i
  %call.i.i.i1 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tc.046.i) #8
  br i1 %call.i.i.i1, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tc.046.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %tc.046.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tc.046.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tc.046.i, ptr noundef %21, ptr noundef nonnull %tmp_list.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tc.046.i, ptr %0, align 4
  %23 = ptrtoint ptr %tc.046.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tmp_list.i, ptr %tc.046.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %tc.046.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tc.046.i, ptr %21, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %for.body.i.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %_tc.048.i, @rds_tcp_conn_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %26 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmp_list.i, align 4
  %cmp23.not49.i = icmp eq ptr %27, %tmp_list.i
  br i1 %cmp23.not49.i, label %for.end.i.rds_tcp_destroy_conns.exit_crit_edge, label %for.end.i.for.body25.i_crit_edge

for.end.i.for.body25.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body25.i

for.end.i.rds_tcp_destroy_conns.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rds_tcp_destroy_conns.exit

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.end.i.for.body25.i_crit_edge
  %tc.150.i = phi ptr [ %_tc.1.i, %for.body25.i.for.body25.i_crit_edge ], [ %27, %for.end.i.for.body25.i_crit_edge ]
  %28 = ptrtoint ptr %tc.150.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %_tc.1.i = load ptr, ptr %tc.150.i, align 4
  %t_cpath26.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.150.i, i32 0, i32 2
  %29 = ptrtoint ptr %t_cpath26.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t_cpath26.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  call void @rds_conn_destroy(ptr noundef %32) #8
  %cmp23.not.i = icmp eq ptr %_tc.1.i, %tmp_list.i
  br i1 %cmp23.not.i, label %for.body25.i.rds_tcp_destroy_conns.exit_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

for.body25.i.rds_tcp_destroy_conns.exit_crit_edge: ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rds_tcp_destroy_conns.exit

rds_tcp_destroy_conns.exit:                       ; preds = %for.body25.i.rds_tcp_destroy_conns.exit_crit_edge, %for.end.i.rds_tcp_destroy_conns.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #8
  call void @rds_trans_unregister(ptr noundef nonnull @rds_tcp_transport) #8
  call void @rds_tcp_recv_exit() #8
  %33 = load ptr, ptr @rds_tcp_conn_slab, align 4
  call void @kmem_cache_destroy(ptr noundef %33) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rds_tcp_is_unloading(ptr nocapture noundef readnone %conn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rds_tcp_unloading, i32 noundef 4) #8
  %0 = load volatile i32, ptr @rds_tcp_unloading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @rds_tcp_get_tos_map(i8 noundef zeroext %tos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_tune(ptr nocapture noundef readonly %sock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %4 = load i32, ptr @rds_tcp_netid, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %5 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk1, align 16
  tail call void @tcp_sock_set_nodelay(ptr noundef %6) #8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %sndbuf_size = getelementptr inbounds %struct.rds_tcp_net, ptr %call2, i32 0, i32 4
  %7 = ptrtoint ptr %sndbuf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sndbuf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sk_sndbuf, align 4
  %sk_userlocks = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 43
  %10 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %sk_userlocks, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %sk_userlocks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rcvbuf_size = getelementptr inbounds %struct.rds_tcp_net, ptr %call2, i32 0, i32 5
  %11 = ptrtoint ptr %rcvbuf_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rcvbuf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8 = icmp sgt i32 %12, 0
  br i1 %cmp8, label %if.then10, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sk_rcvbuf, align 8
  %sk_userlocks12 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 43
  %14 = ptrtoint ptr %sk_userlocks12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load13 = load i8, ptr %sk_userlocks12, align 8
  %bf.set21 = or i8 %bf.load13, 2
  store i8 %bf.set21, ptr %sk_userlocks12, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %if.end.if.end22_crit_edge
  tail call void @release_sock(ptr noundef %1) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 45, ptr noundef nonnull @.str.17) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %8 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_accept_work(ptr nocapture noundef readonly %sk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @rds_tcp_netid, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %3 = load ptr, ptr @rds_wq, align 4
  %rds_tcp_accept_w = getelementptr inbounds %struct.rds_tcp_net, ptr %call1, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %rds_tcp_accept_w) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_tcp_listen_sock_def_readable(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rds_tcp_netid, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk = getelementptr inbounds %struct.socket, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 72
  %5 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_user_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_tcp_init() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.32, i32 noundef 332, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  store ptr %call, ptr @rds_tcp_conn_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rds_tcp_recv_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_slab_crit_edge

if.end.out_slab_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_slab

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_device(ptr noundef nonnull @rds_tcp_net_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out_recv

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rds_trans_register(ptr noundef nonnull @rds_tcp_transport) #8
  tail call void @rds_info_register_func(i32 noundef 10007, ptr noundef nonnull @rds_tcp_tc_info) #8
  tail call void @rds_info_register_func(i32 noundef 10016, ptr noundef nonnull @rds6_tcp_tc_info) #8
  br label %out

out_recv:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rds_tcp_recv_exit() #8
  br label %out_slab

out_slab:                                         ; preds = %out_recv, %if.end.out_slab_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_slab_crit_edge ], [ %call5, %out_recv ]
  %0 = load ptr, ptr @rds_tcp_conn_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  br label %out

out:                                              ; preds = %out_slab, %if.end8, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_slab ], [ 0, %if.end8 ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_deregister_func(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_tcp_tc_info(ptr nocapture noundef readnone %rds_sock, i32 noundef %len, ptr noundef %iter, ptr nocapture noundef writeonly %lens) #1 align 64 {
entry:
  %tsinfo = alloca %struct.rds_info_tcp_socket, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %tsinfo) #8
  %0 = call ptr @memset(ptr %tsinfo, i32 255, i32 41)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_tcp_tc_list_lock) #8
  %div = udiv i32 %len, 41
  %1 = load i32, ptr @rds_tcp_tc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %1)
  %cmp5 = icmp ult i32 %div, %1
  br i1 %cmp5, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %entry
  %.pn37 = load ptr, ptr @rds_tcp_tc_list, align 4
  %cmp8.not38 = icmp eq ptr %.pn37, @rds_tcp_tc_list
  br i1 %cmp8.not38, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %local_port = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 1
  %peer_addr = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 2
  %peer_port = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 3
  %hdr_rem = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 4
  %data_rem = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 5
  %last_sent_nxt = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 6
  %last_expected_una = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 7
  %last_seen_una = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 8
  %tos = getelementptr inbounds %struct.rds_info_tcp_socket, ptr %tsinfo, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn39 = phi ptr [ %.pn37, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %t_cpath = getelementptr i8, ptr %.pn39, i32 -300
  %2 = ptrtoint ptr %t_cpath to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_cpath, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %c_isv6 = getelementptr inbounds %struct.rds_connection, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %c_isv6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %c_isv6, align 4
  %7 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end12, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %t_sock = getelementptr i8, ptr %.pn39, i32 -204
  %8 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk, align 16
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inet_saddr, align 4
  %14 = ptrtoint ptr %tsinfo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tsinfo, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %inet_sport, align 8
  %17 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %local_port, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 8
  %20 = ptrtoint ptr %peer_addr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %peer_addr, align 2
  %21 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 4
  %24 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %peer_port, align 2
  %t_tinc_hdr_rem = getelementptr i8, ptr %.pn39, i32 -184
  %25 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t_tinc_hdr_rem, align 4
  %conv16 = zext i32 %26 to i64
  %27 = ptrtoint ptr %hdr_rem to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %conv16, ptr %hdr_rem, align 4
  %t_tinc_data_rem = getelementptr i8, ptr %.pn39, i32 -180
  %28 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_tinc_data_rem, align 4
  %conv17 = zext i32 %29 to i64
  %30 = ptrtoint ptr %data_rem to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %conv17, ptr %data_rem, align 4
  %t_last_sent_nxt = getelementptr i8, ptr %.pn39, i32 8
  %31 = ptrtoint ptr %t_last_sent_nxt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t_last_sent_nxt, align 4
  %33 = ptrtoint ptr %last_sent_nxt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_sent_nxt, align 4
  %t_last_expected_una = getelementptr i8, ptr %.pn39, i32 12
  %34 = ptrtoint ptr %t_last_expected_una to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_last_expected_una, align 4
  %36 = ptrtoint ptr %last_expected_una to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %last_expected_una, align 4
  %t_last_seen_una = getelementptr i8, ptr %.pn39, i32 16
  %37 = ptrtoint ptr %t_last_seen_una to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t_last_seen_una, align 4
  %39 = ptrtoint ptr %last_seen_una to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_seen_una, align 4
  %40 = ptrtoint ptr %t_cpath to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %t_cpath, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %c_tos, align 4
  %46 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %tos, align 4
  call void @rds_info_copy(ptr noundef %iter, ptr noundef nonnull %tsinfo, i32 noundef 41) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.body.cleanup_crit_edge
  %47 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp8.not = icmp eq ptr %.pn, @rds_tcp_tc_list
  br i1 %cmp8.not, label %cleanup.out_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %48 = load i32, ptr @rds_tcp_tc_count, align 4
  %49 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %lens, align 4
  %each = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %50 = ptrtoint ptr %each to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 41, ptr %each, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_tcp_tc_list_lock, i32 noundef %call2) #8
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %tsinfo) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds6_tcp_tc_info(ptr nocapture noundef readnone %sock, i32 noundef %len, ptr noundef %iter, ptr nocapture noundef writeonly %lens) #1 align 64 {
entry:
  %tsinfo6 = alloca %struct.rds6_info_tcp_socket, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tsinfo6) #8
  %0 = call ptr @memset(ptr %tsinfo6, i32 255, i32 64)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rds_tcp_tc_list_lock) #8
  %div32 = lshr i32 %len, 6
  %1 = load i32, ptr @rds6_tcp_tc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div32, i32 %1)
  %cmp5 = icmp ult i32 %div32, %1
  br i1 %cmp5, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %entry
  %.pn33 = load ptr, ptr @rds_tcp_tc_list, align 4
  %cmp8.not34 = icmp eq ptr %.pn33, @rds_tcp_tc_list
  br i1 %cmp8.not34, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %local_port = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 1
  %peer_addr = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 2
  %peer_port = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 3
  %hdr_rem = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 4
  %data_rem = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 5
  %last_sent_nxt = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 6
  %last_expected_una = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 7
  %last_seen_una = getelementptr inbounds %struct.rds6_info_tcp_socket, ptr %tsinfo6, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn35 = phi ptr [ %.pn33, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %t_sock = getelementptr i8, ptr %.pn35, i32 -204
  %2 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_sock, align 4
  %sk10 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk10, align 16
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 11
  %6 = call ptr @memcpy(ptr %tsinfo6, ptr %skc_v6_rcv_saddr, i32 16)
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %inet_sport, align 8
  %9 = ptrtoint ptr %local_port to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %local_port, align 1
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 10
  %10 = call ptr @memcpy(ptr %peer_addr, ptr %skc_v6_daddr, i32 16)
  %11 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %14 = ptrtoint ptr %peer_port to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %peer_port, align 1
  %t_tinc_hdr_rem = getelementptr i8, ptr %.pn35, i32 -184
  %15 = ptrtoint ptr %t_tinc_hdr_rem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t_tinc_hdr_rem, align 4
  %conv15 = zext i32 %16 to i64
  %17 = ptrtoint ptr %hdr_rem to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %conv15, ptr %hdr_rem, align 1
  %t_tinc_data_rem = getelementptr i8, ptr %.pn35, i32 -180
  %18 = ptrtoint ptr %t_tinc_data_rem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_tinc_data_rem, align 4
  %conv16 = zext i32 %19 to i64
  %20 = ptrtoint ptr %data_rem to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %conv16, ptr %data_rem, align 1
  %t_last_sent_nxt = getelementptr i8, ptr %.pn35, i32 8
  %21 = ptrtoint ptr %t_last_sent_nxt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t_last_sent_nxt, align 4
  %23 = ptrtoint ptr %last_sent_nxt to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %last_sent_nxt, align 1
  %t_last_expected_una = getelementptr i8, ptr %.pn35, i32 12
  %24 = ptrtoint ptr %t_last_expected_una to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_last_expected_una, align 4
  %26 = ptrtoint ptr %last_expected_una to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %last_expected_una, align 1
  %t_last_seen_una = getelementptr i8, ptr %.pn35, i32 16
  %27 = ptrtoint ptr %t_last_seen_una to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t_last_seen_una, align 4
  %29 = ptrtoint ptr %last_seen_una to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %last_seen_una, align 1
  call void @rds_info_copy(ptr noundef %iter, ptr noundef nonnull %tsinfo6, i32 noundef 64) #8
  %30 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp8.not = icmp eq ptr %.pn, @rds_tcp_tc_list
  br i1 %cmp8.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %31 = load i32, ptr @rds6_tcp_tc_count, align 4
  %32 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lens, align 4
  %each = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %33 = ptrtoint ptr %each to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %each, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rds_tcp_tc_list_lock, i32 noundef %call2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tsinfo6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_trans_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_recv_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_tcp_init_net(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rds_tcp_netid, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = call ptr @memset(ptr %call, i32 0, i32 64)
  %cmp = icmp eq ptr %net, @init_net
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @kmemdup(ptr noundef nonnull @rds_tcp_sysctl_table, i32 noundef 108, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ctl_table = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %ctl_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %ctl_table, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %tbl.0 = phi ptr [ %call1, %if.end ], [ @rds_tcp_sysctl_table, %entry.if.end4_crit_edge ]
  %sndbuf_size = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %tbl.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sndbuf_size, ptr %data, align 4
  %rcvbuf_size = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 5
  %data6 = getelementptr %struct.ctl_table, ptr %tbl.0, i32 1, i32 1
  %4 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rcvbuf_size, ptr %data6, align 4
  %call7 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.20, ptr noundef nonnull %tbl.0) #8
  %rds_tcp_sysctl = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %rds_tcp_sysctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %rds_tcp_sysctl, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %fail

if.end16:                                         ; preds = %if.end4
  %call17 = tail call ptr @rds_tcp_listen_init(ptr noundef %net, i1 noundef zeroext true) #8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %call, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end16.do.body35_crit_edge

if.end16.do.body35_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.end23:                                         ; preds = %if.end16
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  %call26 = tail call ptr @rds_tcp_listen_init(ptr noundef %net, i1 noundef zeroext false) #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call26, ptr %call, align 4
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %if.then30, label %do.end23.do.body35_crit_edge

do.end23.do.body35_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

if.then30:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rds_tcp_sysctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rds_tcp_sysctl, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %9) #8
  %10 = ptrtoint ptr %rds_tcp_sysctl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rds_tcp_sysctl, align 4
  br label %fail

do.body35:                                        ; preds = %do.end23.do.body35_crit_edge, %if.end16.do.body35_crit_edge
  %rds_tcp_accept_w = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 1
  tail call void @__init_work(ptr noundef %rds_tcp_accept_w, i32 noundef 0) #8
  %11 = ptrtoint ptr %rds_tcp_accept_w to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %rds_tcp_accept_w, align 4
  %lockdep_map = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @rds_tcp_init_net.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry40 = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry40, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rds_tcp_accept_worker, ptr %func, align 4
  br label %cleanup

fail:                                             ; preds = %if.then30, %do.end13
  %err.0 = phi i32 [ -97, %if.then30 ], [ -12, %do.end13 ]
  br i1 %cmp, label %fail.cleanup_crit_edge, label %if.then45

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %tbl.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %fail.cleanup_crit_edge, %do.body35, %do.end
  %retval.0 = phi i32 [ 0, %do.body35 ], [ -12, %do.end ], [ %err.0, %if.then45 ], [ %err.0, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_tcp_exit_net(ptr noundef %net) #1 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rds_tcp_netid, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #8
  %1 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %2 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_list.i, ptr %1, align 4
  %4 = load i32, ptr @rds_tcp_netid, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  store ptr null, ptr %call.i, align 4
  %rds_tcp_accept_w.i = getelementptr inbounds %struct.rds_tcp_net, ptr %call.i, i32 0, i32 1
  call void @rds_tcp_listen_stop(ptr noundef %6, ptr noundef %rds_tcp_accept_w.i) #8
  call void @_raw_spin_lock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %7 = load ptr, ptr @rds_tcp_conn_list, align 4
  %cmp.not66.i = icmp eq ptr %7, @rds_tcp_conn_list
  br i1 %cmp.not66.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tc.067.i = phi ptr [ %_tc.070.i, %cleanup.i.for.body.i_crit_edge ], [ %7, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %tc.067.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %_tc.070.i = load ptr, ptr %tc.067.i, align 4
  %t_cpath.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.067.i, i32 0, i32 2
  %9 = ptrtoint ptr %t_cpath.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t_cpath.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %c_net7.i = getelementptr inbounds %struct.rds_connection, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %c_net7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c_net7.i, align 4
  %cmp9.not.i = icmp eq ptr %14, %net
  br i1 %cmp9.not.i, label %for.body.i.for.cond.i.i_crit_edge, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body.i.for.cond.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.for.cond.i.i_crit_edge
  %tc.0.in.i.i = phi ptr [ %tc.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %tmp_list.i, %for.body.i.for.cond.i.i_crit_edge ]
  %15 = ptrtoint ptr %tc.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tc.0.i.i = load ptr, ptr %tc.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tc.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %if.then13.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %t_cpath.i.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %t_cpath.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t_cpath.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %cmp6.i.i = icmp eq ptr %19, %12
  br i1 %cmp6.i.i, label %if.else.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.then13.i:                                      ; preds = %for.cond.i.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tc.067.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then13.i.__list_del_entry.exit.i.i_crit_edge

if.then13.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tc.067.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %tc.067.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tc.067.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then13.i.__list_del_entry.exit.i.i_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tc.067.i, ptr noundef %27, ptr noundef nonnull %tmp_list.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup.i_crit_edge

__list_del_entry.exit.i.i.cleanup.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tc.067.i, ptr %1, align 4
  %29 = ptrtoint ptr %tc.067.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tmp_list.i, ptr %tc.067.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %tc.067.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %tc.067.i, ptr %27, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %for.body.i.i
  %call.i.i60.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tc.067.i) #8
  br i1 %call.i.i60.i, label %if.end.i.i63.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i63.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i61.i = getelementptr inbounds %struct.list_head, ptr %tc.067.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i61.i, align 4
  %34 = ptrtoint ptr %tc.067.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tc.067.i, align 4
  %prev1.i.i.i62.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i62.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i63.i, %if.else.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %tc.067.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %tc.067.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tc.067.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %t_tcp_node_detached.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.067.i, i32 0, i32 1
  %40 = ptrtoint ptr %t_tcp_node_detached.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %t_tcp_node_detached.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %list_del.exit.i, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %_tc.070.i, @rds_tcp_conn_list
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %41 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tmp_list.i, align 4
  %cmp33.not71.i = icmp eq ptr %42, %tmp_list.i
  br i1 %cmp33.not71.i, label %for.end.i.rds_tcp_kill_sock.exit_crit_edge, label %for.end.i.for.body35.i_crit_edge

for.end.i.for.body35.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body35.i

for.end.i.rds_tcp_kill_sock.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rds_tcp_kill_sock.exit

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %for.end.i.for.body35.i_crit_edge
  %tc.172.i = phi ptr [ %_tc.1.i, %for.body35.i.for.body35.i_crit_edge ], [ %42, %for.end.i.for.body35.i_crit_edge ]
  %43 = ptrtoint ptr %tc.172.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %_tc.1.i = load ptr, ptr %tc.172.i, align 4
  %t_cpath36.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.172.i, i32 0, i32 2
  %44 = ptrtoint ptr %t_cpath36.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %t_cpath36.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  call void @rds_conn_destroy(ptr noundef %47) #8
  %cmp33.not.i = icmp eq ptr %_tc.1.i, %tmp_list.i
  br i1 %cmp33.not.i, label %for.body35.i.rds_tcp_kill_sock.exit_crit_edge, label %for.body35.i.for.body35.i_crit_edge

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i

for.body35.i.rds_tcp_kill_sock.exit_crit_edge:    ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rds_tcp_kill_sock.exit

rds_tcp_kill_sock.exit:                           ; preds = %for.body35.i.rds_tcp_kill_sock.exit_crit_edge, %for.end.i.rds_tcp_kill_sock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #8
  %rds_tcp_sysctl = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 2
  %48 = ptrtoint ptr %rds_tcp_sysctl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rds_tcp_sysctl, align 4
  %tobool.not = icmp eq ptr %49, null
  br i1 %tobool.not, label %rds_tcp_kill_sock.exit.if.end_crit_edge, label %if.then

rds_tcp_kill_sock.exit.if.end_crit_edge:          ; preds = %rds_tcp_kill_sock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %rds_tcp_kill_sock.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @unregister_net_sysctl_table(ptr noundef nonnull %49) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %rds_tcp_kill_sock.exit.if.end_crit_edge
  %cmp.not = icmp eq ptr %net, @init_net
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ctl_table = getelementptr inbounds %struct.rds_tcp_net, ptr %call, i32 0, i32 3
  %50 = ptrtoint ptr %ctl_table to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctl_table, align 4
  call void @kfree(ptr noundef %51) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_tcp_listen_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_tcp_accept_worker(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @rds_tcp_accept_one(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 516, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @rds_tcp_accept_one(ptr noundef %3) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_tcp_skbuf_handler(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %fpos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %call1 = tail call i32 @proc_dointvec_minmax(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %fpos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 7
  %8 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  %12 = load ptr, ptr @rds_tcp_conn_list, align 4
  %cmp.not19.i = icmp eq ptr %12, @rds_tcp_conn_list
  br i1 %cmp.not19.i, label %if.then3.rds_tcp_sysctl_reset.exit_crit_edge, label %if.then3.for.body.i_crit_edge

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

if.then3.rds_tcp_sysctl_reset.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rds_tcp_sysctl_reset.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %tc.020.i = phi ptr [ %_tc.021.i, %cleanup.i.for.body.i_crit_edge ], [ %12, %if.then3.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %tc.020.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %_tc.021.i = load ptr, ptr %tc.020.i, align 4
  %t_cpath.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.020.i, i32 0, i32 2
  %14 = ptrtoint ptr %t_cpath.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t_cpath.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %c_net5.i = getelementptr inbounds %struct.rds_connection, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %c_net5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c_net5.i, align 4
  %cmp6.not.i = icmp eq ptr %19, %7
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %t_sock.i = getelementptr inbounds %struct.rds_tcp_connection, ptr %tc.020.i, i32 0, i32 4
  %20 = ptrtoint ptr %t_sock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t_sock.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rds_conn_path_drop(ptr noundef %15, i1 noundef zeroext false) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %_tc.021.i, @rds_tcp_conn_list
  br i1 %cmp.not.i, label %cleanup.i.rds_tcp_sysctl_reset.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.rds_tcp_sysctl_reset.exit_crit_edge:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rds_tcp_sysctl_reset.exit

rds_tcp_sysctl_reset.exit:                        ; preds = %cleanup.i.rds_tcp_sysctl_reset.exit_crit_edge, %if.then3.rds_tcp_sysctl_reset.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @rds_tcp_conn_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %rds_tcp_sysctl_reset.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %rds_tcp_sysctl_reset.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_drop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_accept_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_listen_stop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_recv_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_trans_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_register_func(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/tcp.c", i32 106, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_tcp_restore_callbacks.__UNIQUE_ID_ddebug651, !1, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/tcp.c", i32 197, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_tcp_set_callbacks.__UNIQUE_ID_ddebug652, !7, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!10 = !{ptr @rds_tcp_transport, !11, !"rds_tcp_transport", i1 false, i1 false}
!11 = !{!"../net/rds/tcp.c", i32 452, i32 22}
!12 = !{ptr @__exitcall_rds_tcp_exit, !13, !"__exitcall_rds_tcp_exit", i1 false, i1 false}
!13 = !{!"../net/rds/tcp.c", i32 699, i32 1}
!14 = !{ptr @__initcall__kmod_rds_tcp__655_736_rds_tcp_init6, !15, !"__initcall__kmod_rds_tcp__655_736_rds_tcp_init6", i1 false, i1 false}
!15 = !{!"../net/rds/tcp.c", i32 736, i32 1}
!16 = !{ptr @__UNIQUE_ID_author656, !17, !"__UNIQUE_ID_author656", i1 false, i1 false}
!17 = !{!"../net/rds/tcp.c", i32 738, i32 1}
!18 = !{ptr @__UNIQUE_ID_description657, !19, !"__UNIQUE_ID_description657", i1 false, i1 false}
!19 = !{!"../net/rds/tcp.c", i32 739, i32 1}
!20 = !{ptr @__UNIQUE_ID_file658, !21, !"__UNIQUE_ID_file658", i1 false, i1 false}
!21 = !{!"../net/rds/tcp.c", i32 740, i32 1}
!22 = !{ptr @__UNIQUE_ID_license659, !21, !"__UNIQUE_ID_license659", i1 false, i1 false}
!23 = !{ptr @rds_tcp_tc_count, !24, !"rds_tcp_tc_count", i1 false, i1 false}
!24 = !{!"../net/rds/tcp.c", i32 52, i32 21}
!25 = !{ptr @rds6_tcp_tc_count, !26, !"rds6_tcp_tc_count", i1 false, i1 false}
!26 = !{!"../net/rds/tcp.c", i32 54, i32 21}
!27 = !{ptr @rds_tcp_netid, !28, !"rds_tcp_netid", i1 false, i1 false}
!28 = !{!"../net/rds/tcp.c", i32 475, i32 21}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rds/tcp.c", i32 46, i32 8}
!31 = !{ptr @rds_tcp_tc_list_lock, !30, !"rds_tcp_tc_list_lock", i1 false, i1 false}
!32 = !{ptr @rds_tcp_tc_list, !33, !"rds_tcp_tc_list", i1 false, i1 false}
!33 = !{!"../net/rds/tcp.c", i32 47, i32 8}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rds_tcp_conn_alloc.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../net/rds/tcp.c", i32 378, i32 3}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/rds/tcp.c", i32 388, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rds_tcp_conn_alloc.__UNIQUE_ID_ddebug654, !45, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!48 = !{ptr @rds_tcp_conn_slab, !49, !"rds_tcp_conn_slab", i1 false, i1 false}
!49 = !{!"../net/rds/tcp.c", i32 62, i32 27}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/rds/tcp.c", i32 58, i32 8}
!52 = !{ptr @rds_tcp_conn_lock, !51, !"rds_tcp_conn_lock", i1 false, i1 false}
!53 = !{ptr @rds_tcp_conn_list, !54, !"rds_tcp_conn_list", i1 false, i1 false}
!54 = !{!"../net/rds/tcp.c", i32 59, i32 8}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/rds/tcp.c", i32 356, i32 2}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rds_tcp_conn_free.__UNIQUE_ID_ddebug653, !56, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!59 = !{ptr @rds_tcp_unloading, !60, !"rds_tcp_unloading", i1 false, i1 false}
!60 = !{!"../net/rds/tcp.c", i32 60, i32 17}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rds_tcp_net_ops, !66, !"rds_tcp_net_ops", i1 false, i1 false}
!66 = !{!"../net/rds/tcp.c", i32 628, i32 33}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/rds/tcp.c", i32 544, i32 4}
!69 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rds_tcp_init_net._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rds_tcp_init_net._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/rds/tcp.c", i32 551, i32 49}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/rds/tcp.c", i32 553, i32 3}
!76 = !{ptr @rds_tcp_init_net._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rds_tcp_init_net._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/rds/tcp.c", i32 564, i32 3}
!80 = !{ptr @rds_tcp_init_net._entry.24, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rds_tcp_init_net._entry_ptr.26, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @rds_tcp_init_net.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../net/rds/tcp.c", i32 579, i32 2}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/rds/tcp.c", i32 73, i32 21}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/rds/tcp.c", i32 82, i32 21}
!89 = !{ptr @rds_tcp_sysctl_table, !90, !"rds_tcp_sysctl_table", i1 false, i1 false}
!90 = !{!"../net/rds/tcp.c", i32 70, i32 25}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/rds/tcp.c", i32 676, i32 3}
!93 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rds_tcp_skbuf_handler._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rds_tcp_skbuf_handler._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @rds_tcp_min_sndbuf, !97, !"rds_tcp_min_sndbuf", i1 false, i1 false}
!97 = !{!"../net/rds/tcp.c", i32 67, i32 12}
!98 = !{ptr @rds_tcp_min_rcvbuf, !99, !"rds_tcp_min_rcvbuf", i1 false, i1 false}
!99 = !{!"../net/rds/tcp.c", i32 68, i32 12}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/rds/tcp.c", i32 705, i32 40}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148710409, i64 2148710414, i64 2148710427, i64 2148710471, i64 2148710505, i64 2148710526}
!113 = !{i64 2149936257}
!114 = !{i64 2149936523}
!115 = !{i8 0, i8 2}
