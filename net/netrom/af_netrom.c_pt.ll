; ModuleID = '/llk/IR_all_yes/net/netrom/af_netrom.c_pt.bc'
source_filename = "../net/netrom/af_netrom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.95 }
%union.anon.95 = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
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
%struct.ax25_linkfail = type { %struct.hlist_node, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.115, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.115 = type { ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.ax25_protocol = type { ptr, i32, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.nr_sock = type { %struct.sock, %struct.ax25_address, %struct.ax25_address, %struct.ax25_address, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ax25_address = type { [7 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_ax25 = type { i16, %struct.ax25_address, i32 }
%struct.full_sockaddr_ax25 = type { %struct.sockaddr_ax25, [8 x %struct.ax25_address] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.ax25_uid_assoc = type { %struct.hlist_node, %struct.refcount_struct, %struct.kuid_t, %struct.ax25_address }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.144 = type { ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.114, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.112 }
%union.anon.4 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.114 = type { ptr }

@sysctl_netrom_default_path_quality = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_obsolescence_count_initialiser = dso_local global { i32, [28 x i8] } { i32 6, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_network_ttl_initialiser = dso_local global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_transport_timeout = dso_local global { i32, [28 x i8] } { i32 120000, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_transport_maximum_tries = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_transport_acknowledge_delay = dso_local global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_transport_busy_delay = dso_local global { i32, [28 x i8] } { i32 180000, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_transport_requested_window_size = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_transport_no_activity_timeout = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@sysctl_netrom_routing_control = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_link_fails_count = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@sysctl_netrom_reset_circuit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@circuit = internal global { i16, [30 x i8] } { i16 257, [30 x i8] zeroinitializer }, align 32
@__initcall__kmod_netrom__496_1483_nr_proto_init6 = internal global ptr @nr_proto_init, section ".initcall6.init", align 4
@__param_str_nr_ndevs = internal constant [16 x i8] c"netrom.nr_ndevs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nr_ndevs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_nr_ndevs = internal constant %struct.kernel_param { ptr @__param_str_nr_ndevs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.95 { ptr @nr_ndevs } }, section "__param", align 4
@__UNIQUE_ID_nr_ndevstype497 = internal constant [29 x i8] c"netrom.parmtype=nr_ndevs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_ndevs498 = internal constant [47 x i8] c"netrom.parm=nr_ndevs:number of NET/ROM devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [62 x i8] c"netrom.author=Jonathan Naylor G4KLX <g4klx@g4klx.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description500 = internal constant [82 x i8] c"netrom.description=The amateur radio NET/ROM network and transport layer protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [30 x i8] c"netrom.file=net/netrom/netrom\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [19 x i8] c"netrom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias503 = internal constant [22 x i8] c"netrom.alias=net-pf-6\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"nr\00", [29 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_neigh\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_nodes\00", [23 x i8] zeroinitializer }, align 32
@nr_linkfail_notifier = internal global { %struct.ax25_linkfail, [20 x i8] } { %struct.ax25_linkfail { %struct.hlist_node zeroinitializer, ptr @nr_link_failed }, [20 x i8] zeroinitializer }, align 32
@nr_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nr_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dev_nr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nr_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1392, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.115 zeroinitializer, ptr null, [32 x i8] c"NETROM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_nr_exit = internal global ptr @nr_exit, section ".exitcall.exit", align 4
@nr_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_list_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@nr_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@nr_proto_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013NET/ROM: %s - nr_ndevs parameter too large\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr_proto_init\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netrom/af_netrom.c\00", [41 x i8] zeroinitializer }, align 32
@nr_proto_init._entry_ptr = internal global ptr @nr_proto_init._entry, section ".printk_index", align 4
@nr_proto_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013NET/ROM: %s - unable to allocate device array\0A\00", [47 x i8] zeroinitializer }, align 32
@nr_proto_init._entry_ptr.11 = internal global ptr @nr_proto_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nr%d\00", [27 x i8] zeroinitializer }, align 32
@nr_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 6, ptr @nr_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@nr_pid = internal global { %struct.ax25_protocol, [20 x i8] } { %struct.ax25_protocol { ptr null, i32 207, ptr @nr_route_frame }, [20 x i8] zeroinitializer }, align 32
@nr_info_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @nr_info_start, ptr @nr_info_stop, ptr @nr_info_next, ptr @nr_info_show }, [16 x i8] zeroinitializer }, align 32
@nr_neigh_seqops = external dso_local constant %struct.seq_operations, align 4
@nr_node_seqops = external dso_local constant %struct.seq_operations, align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&nr_netdev_addr_lock_key\00", [39 x i8] zeroinitializer }, align 32
@nr_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&nr_netdev_xmit_lock_key\00", [39 x i8] zeroinitializer }, align 32
@nr_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nr_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 6, ptr null, ptr @nr_release, ptr @nr_bind, ptr @nr_connect, ptr @sock_no_socketpair, ptr @nr_accept, ptr @nr_getname, ptr @datagram_poll, ptr @nr_ioctl, ptr @sock_gettstamp, ptr @nr_listen, ptr @sock_no_shutdown, ptr @nr_setsockopt, ptr @nr_getsockopt, ptr null, ptr @nr_sendmsg, ptr @nr_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ax25_uid_policy = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"user_addr dest_node src_node  dev    my  your  st  vs  vr  va    t1     t2     t4      idle   n2  wnd Snd-Q Rcv-Q inode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-9s \00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"%-9s %-3s  %02X/%02X %02X/%02X %2d %3d %3d %3d %3lu/%03lu %2lu/%02lu %3lu/%03lu %3lu/%03lu %2d/%02d %3d %5d %5d %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@__sancov_gen_cov_switch_values.23 = internal global [17 x i64] [i64 15, i64 32, i64 21521, i64 21531, i64 35083, i64 35084, i64 35093, i64 35094, i64 35095, i64 35096, i64 35097, i64 35098, i64 35099, i64 35100, i64 35101, i64 35102, i64 35298]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@___asan_gen_.26 = private unnamed_addr constant [35 x i8] c"sysctl_netrom_default_path_quality\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 46, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant [45 x i8] c"sysctl_netrom_obsolescence_count_initialiser\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 47, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [38 x i8] c"sysctl_netrom_network_ttl_initialiser\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 48, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"sysctl_netrom_transport_timeout\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 49, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [38 x i8] c"sysctl_netrom_transport_maximum_tries\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 50, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [42 x i8] c"sysctl_netrom_transport_acknowledge_delay\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 51, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [35 x i8] c"sysctl_netrom_transport_busy_delay\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 52, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [46 x i8] c"sysctl_netrom_transport_requested_window_size\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 53, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [44 x i8] c"sysctl_netrom_transport_no_activity_timeout\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 54, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"sysctl_netrom_routing_control\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 55, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"sysctl_netrom_link_fails_count\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 56, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"sysctl_netrom_reset_circuit\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 57, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"circuit\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 59, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"nr_ndevs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 44, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1497, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1498, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1499, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"nr_linkfail_notifier\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1375, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"nr_dev_notifier\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1364, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"dev_nr\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1368, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"nr_proto\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 415, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"nr_list_lock\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 62, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 729, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"nr_list\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 61, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1984, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1388, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1396, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1406, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"nr_family_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1336, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"nr_pid\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1370, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"nr_info_seqops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1328, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 84, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"nr_netdev_addr_lock_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 73, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 79, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"nr_netdev_xmit_lock_key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 72, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"nr_proto_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1342, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 230, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 214, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 156, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1282, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1290, i32 14 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1294, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [26 x i8] c"../net/netrom/af_netrom.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1297, i32 1 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias503, ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__UNIQUE_ID_nr_ndevs498, ptr @__UNIQUE_ID_nr_ndevstype497, ptr @__exitcall_nr_exit, ptr @__initcall__kmod_netrom__496_1483_nr_proto_init6, ptr @__param_nr_ndevs, ptr @nr_exit, ptr @nr_proto_init._entry, ptr @nr_proto_init._entry.9, ptr @nr_proto_init._entry_ptr, ptr @nr_proto_init._entry_ptr.11, ptr @sysctl_netrom_default_path_quality, ptr @sysctl_netrom_obsolescence_count_initialiser, ptr @sysctl_netrom_network_ttl_initialiser, ptr @sysctl_netrom_transport_timeout, ptr @sysctl_netrom_transport_maximum_tries, ptr @sysctl_netrom_transport_acknowledge_delay, ptr @sysctl_netrom_transport_busy_delay, ptr @sysctl_netrom_transport_requested_window_size, ptr @sysctl_netrom_transport_no_activity_timeout, ptr @sysctl_netrom_routing_control, ptr @sysctl_netrom_link_fails_count, ptr @sysctl_netrom_reset_circuit, ptr @circuit, ptr @nr_ndevs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nr_linkfail_notifier, ptr @nr_dev_notifier, ptr @dev_nr, ptr @nr_proto, ptr @nr_list_lock, ptr @.str.3, ptr @.str.4, ptr @nr_list, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @nr_family_ops, ptr @nr_pid, ptr @nr_info_seqops, ptr @.str.13, ptr @nr_netdev_addr_lock_key, ptr @.str.14, ptr @nr_netdev_xmit_lock_key, ptr @nr_proto_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_default_path_quality to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_obsolescence_count_initialiser to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_network_ttl_initialiser to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_transport_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_transport_maximum_tries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_transport_acknowledge_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_transport_busy_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_transport_requested_window_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_transport_no_activity_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_routing_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_link_fails_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_netrom_reset_circuit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @circuit to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_ndevs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_linkfail_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_proto_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_proto_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_pid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_info_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_destroy_socket(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %entry.nr_remove_socket.exit_crit_edge, label %if.then.i.i.i

entry.nr_remove_socket.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nr_remove_socket.exit

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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !128

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 729, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.nr_remove_socket.exit_crit_edge, !prof !128

if.end.i.i.nr_remove_socket.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nr_remove_socket.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  br label %nr_remove_socket.exit

nr_remove_socket.exit:                            ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.nr_remove_socket.exit_crit_edge, %entry.nr_remove_socket.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  tail call void @nr_stop_heartbeat(ptr noundef %sk) #11
  tail call void @nr_stop_t1timer(ptr noundef %sk) #11
  tail call void @nr_stop_t2timer(ptr noundef %sk) #11
  tail call void @nr_stop_t4timer(ptr noundef %sk) #11
  tail call void @nr_stop_idletimer(ptr noundef %sk) #11
  tail call void @nr_clear_queues(ptr noundef %sk) #11
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %call25 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #11
  %cmp.not26 = icmp eq ptr %call25, null
  br i1 %cmp.not26, label %nr_remove_socket.exit.while.end_crit_edge, label %nr_remove_socket.exit.while.body_crit_edge

nr_remove_socket.exit.while.body_crit_edge:       ; preds = %nr_remove_socket.exit
  br label %while.body

nr_remove_socket.exit.while.end_crit_edge:        ; preds = %nr_remove_socket.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %nr_remove_socket.exit.while.body_crit_edge
  %call27 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call25, %nr_remove_socket.exit.while.body_crit_edge ]
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp1.not = icmp eq ptr %13, %sk
  br i1 %cmp1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or.i.i = or i32 %16, 1
  store i32 %or.i.i, ptr %14, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  tail call void @nr_start_heartbeat(ptr noundef %18) #11
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 4
  %state = getelementptr inbounds %struct.nr_sock, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call27, i32 noundef 0) #11
  %call = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %nr_remove_socket.exit.while.end_crit_edge
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 1
  br i1 %tobool.not.i, label %sk_has_allocations.exit, label %while.end.if.then3_crit_edge

while.end.if.then3_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

sk_has_allocations.exit:                          ; preds = %while.end
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_backlog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.i.not = icmp eq i32 %25, 0
  br i1 %tobool2.i.not, label %if.else, label %sk_has_allocations.exit.if.then3_crit_edge

sk_has_allocations.exit.if.then3_crit_edge:       ; preds = %sk_has_allocations.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %sk_has_allocations.exit.if.then3_crit_edge, %while.end.if.then3_crit_edge
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  %function = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 2
  %26 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nr_destroy_timer, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 200
  %expires = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 1
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %sk_timer) #11
  br label %if.end6

if.else:                                          ; preds = %sk_has_allocations.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.if.end6_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %if.end6

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef %sk) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end6_crit_edge, %if.then3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_heartbeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t4timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_clear_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_heartbeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_destroy_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  %sk_lock = getelementptr i8, ptr %t, i32 -408
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #11
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -432
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !128

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @nr_destroy_socket(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #11
  %call.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i9 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i9, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef %add.ptr) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !131

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_rx_frame(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %1(ptr noundef %skb) #11
  %2 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %destructor.i, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !131

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !134
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 7
  %arrayidx = getelementptr i8, ptr %9, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr i8, ptr %9, i32 16
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr i8, ptr %9, i32 17
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr i8, ptr %9, i32 18
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %arrayidx14 = getelementptr i8, ptr %9, i32 19
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %20 = and i8 %19, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %11)
  %cmp25 = icmp eq i8 %11, 12
  %or.cond = select i1 %cmp, i1 %cmp25, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %13)
  %cmp29 = icmp eq i8 %13, 12
  %or.cond273 = select i1 %or.cond, i1 %cmp29, i1 false
  br i1 %or.cond273, label %if.then, label %if.end

if.then:                                          ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 20) #11
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call31 = tail call i32 @nr_rx_ip(ptr noundef %skb, ptr noundef %dev) #11
  br label %cleanup

if.end:                                           ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp33 = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp37 = icmp eq i8 %13, 0
  %or.cond274 = select i1 %cmp33, i1 %cmp37, i1 false
  br i1 %or.cond274, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %19)
  %26 = icmp eq i8 %19, -126
  br i1 %26, label %if.then47, label %if.then39.if.end81_crit_edge

if.then39.if.end81_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then47:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call fastcc ptr @nr_find_peer(i8 noundef zeroext %15, i8 noundef zeroext %17, ptr noundef %9)
  br label %if.end64

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp53 = icmp eq i8 %20, 1
  br i1 %cmp53, label %if.then55, label %if.else59

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call58 = tail call fastcc ptr @nr_find_peer(i8 noundef zeroext %11, i8 noundef zeroext %13, ptr noundef %9)
  br label %if.end64

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = tail call fastcc ptr @nr_find_socket(i8 noundef zeroext %11, i8 noundef zeroext %13)
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.then55, %if.then47
  %sk.0 = phi ptr [ %call50, %if.then47 ], [ %call58, %if.then55 ], [ %call62, %if.else59 ]
  %cmp65.not = icmp eq ptr %sk.0, null
  br i1 %cmp65.not, label %if.end64.if.end81_crit_edge, label %if.then67

if.end64.if.end81_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then67:                                        ; preds = %if.end64
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk.0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #11
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %head.i278 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i278 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i278, align 8
  %sub.ptr.lhs.cast.i279 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i280 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i281 = sub i32 %sub.ptr.lhs.cast.i279, %sub.ptr.rhs.cast.i280
  %conv.i282 = trunc i32 %sub.ptr.sub.i281 to i16
  %transport_header.i283 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i283 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i282, ptr %transport_header.i283, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp69 = icmp eq i8 %20, 2
  br i1 %cmp69, label %land.lhs.true71, label %if.then67.if.else75_crit_edge

if.then67.if.else75_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else75

land.lhs.true71:                                  ; preds = %if.then67
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %33)
  %cmp72 = icmp eq i32 %33, 22
  br i1 %cmp72, label %land.lhs.true71.if.end77_crit_edge, label %land.lhs.true71.if.else75_crit_edge

land.lhs.true71.if.else75_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else75

land.lhs.true71.if.end77_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.else75:                                        ; preds = %land.lhs.true71.if.else75_crit_edge, %if.then67.if.else75_crit_edge
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %land.lhs.true71.if.end77_crit_edge
  %.sink = phi i8 [ 0, %if.else75 ], [ 1, %land.lhs.true71.if.end77_crit_edge ]
  %bpqext76 = getelementptr inbounds %struct.nr_sock, ptr %sk.0, i32 0, i32 11
  %34 = ptrtoint ptr %bpqext76 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %bpqext76, align 2
  %call78 = tail call i32 @nr_process_rx_frame(ptr noundef nonnull %sk.0, ptr noundef %skb) #11
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #11
  %skc_refcnt.i284 = getelementptr inbounds %struct.sock_common, ptr %sk.0, i32 0, i32 19
  %call.i.i.i.i.i.i285 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i284, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i284, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i284, ptr %skc_refcnt.i284, i32 1, ptr elementtype(i32) %skc_refcnt.i284) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i287, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i286 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i286, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i284, i32 noundef 3) #11
  br label %cleanup

if.then.i287:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef nonnull %sk.0) #11
  br label %cleanup

if.end81:                                         ; preds = %if.end64.if.end81_crit_edge, %if.then39.if.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp83.not = icmp eq i8 %20, 1
  br i1 %cmp83.not, label %if.end95, label %if.then85

if.then85:                                        ; preds = %if.end81
  %36 = load i32, ptr @sysctl_netrom_reset_circuit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %37 = icmp eq i8 %19, 7
  %or.cond319 = select i1 %tobool.not, i1 true, i1 %37
  br i1 %or.cond319, label %if.then85.cleanup_crit_edge, label %do.body

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__nr_transmit_reply(ptr noundef %skb, i32 noundef 1, i8 noundef zeroext 7) #11
  br label %cleanup

if.end95:                                         ; preds = %if.end81
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %38 = load ptr, ptr @nr_list, align 4
  %tobool.not.i288 = icmp eq ptr %38, null
  %add.ptr.i = getelementptr i8, ptr %38, i32 -84
  %tobool2.not2933.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not29.i = or i1 %tobool.not.i288, %tobool2.not2933.i
  br i1 %tobool2.not29.i, label %if.end95.do.body109_crit_edge, label %if.end95.for.body.i_crit_edge

if.end95.for.body.i_crit_edge:                    ; preds = %if.end95
  br label %for.body.i

if.end95.do.body109_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end95.for.body.i_crit_edge
  %s.030.i = phi ptr [ %add.ptr12.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end95.for.body.i_crit_edge ]
  %source_addr.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 2
  %call.i = tail call i32 @ax25cmp(ptr noundef %source_addr.i, ptr noundef %add.ptr2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i289 = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i289, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 4
  %39 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %40)
  %cmp.i = icmp eq i8 %40, 10
  br i1 %cmp.i, label %if.then.i291, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i291:                                     ; preds = %land.lhs.true.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i.i290 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i290)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i290, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i291.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !128

if.then.i291.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i291
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i291
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i290, 1
  %42 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i290
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.lor.lhs.false101_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.lor.lhs.false101_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false101

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i291.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i291.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %lor.lhs.false101

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %43 = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 15
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool8.not.i = icmp eq ptr %45, null
  %add.ptr12.i = getelementptr i8, ptr %45, i32 -84
  %tobool2.not35.i = icmp eq ptr %add.ptr12.i, null
  %tobool2.not.i = or i1 %tobool8.not.i, %tobool2.not35.i
  br i1 %tobool2.not.i, label %for.inc.i.do.body109_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.body109_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109

lor.lhs.false101:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.lor.lhs.false101_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr98 = getelementptr i8, ptr %47, i32 21
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 53
  %48 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 54
  %50 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i292 = icmp ugt i32 %49, %51
  br i1 %cmp.i292, label %lor.lhs.false101.if.then113_crit_edge, label %lor.lhs.false104

lor.lhs.false101.if.then113_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

lor.lhs.false104:                                 ; preds = %lor.lhs.false101
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 45
  %52 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %53)
  %cmp.not.i = icmp eq i16 %53, 5
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false104.if.then113_crit_edge

lor.lhs.false104.if.then113_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

if.end.i:                                         ; preds = %lor.lhs.false104
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 9
  %54 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skc_net.i.i, align 4
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 8
  %56 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skc_prot.i, align 8
  %call2.i = tail call ptr @sk_alloc(ptr noundef %55, i32 noundef 6, i32 noundef 2592, ptr noundef %57, i32 noundef 0) #11
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i.if.then113_crit_edge, label %if.end115

if.end.i.if.then113_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

do.body109:                                       ; preds = %for.inc.i.do.body109_crit_edge, %if.end95.do.body109_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  tail call void @__nr_transmit_reply(ptr noundef %skb, i32 noundef 0, i8 noundef zeroext -126) #11
  br label %cleanup

if.then113:                                       ; preds = %if.end.i.if.then113_crit_edge, %lor.lhs.false104.if.then113_crit_edge, %lor.lhs.false101.if.then113_crit_edge
  tail call void @__nr_transmit_reply(ptr noundef %skb, i32 noundef 0, i8 noundef zeroext -126) #11
  %call.i.i.i.i.i.i295 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i296 = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i296)
  %cmp.i.i.i.i297 = icmp eq i32 %asmresult.i.i.i.i.i.i.i296, 1
  br i1 %cmp.i.i.i.i297, label %if.then.i301, label %if.end5.i.i.i.i299

if.end5.i.i.i.i299:                               ; preds = %if.then113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i296)
  %.not.i.i.i.i298 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i296, 0
  br i1 %.not.i.i.i.i298, label %if.end5.i.i.i.i299.cleanup_crit_edge, label %if.then10.i.i.i.i300, !prof !131

if.end5.i.i.i.i299.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i299
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i300:                             ; preds = %if.end5.i.i.i.i299
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %cleanup

if.then.i301:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef nonnull %s.030.i) #11
  br label %cleanup

if.end115:                                        ; preds = %if.end.i
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call2.i) #11
  %59 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %sk_type.i, align 2
  %sk_type8.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 45
  %61 = ptrtoint ptr %sk_type8.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %sk_type8.i, align 2
  %sk_priority.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 33
  %62 = ptrtoint ptr %sk_priority.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sk_priority.i, align 4
  %sk_priority9.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 33
  %64 = ptrtoint ptr %sk_priority9.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sk_priority9.i, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 46
  %65 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sk_protocol.i, align 4
  %sk_protocol10.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 46
  %67 = ptrtoint ptr %sk_protocol10.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %sk_protocol10.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 15
  %68 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sk_rcvbuf.i, align 8
  %sk_rcvbuf11.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 15
  %70 = ptrtoint ptr %sk_rcvbuf11.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sk_rcvbuf11.i, align 8
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 21
  %71 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_sndbuf12.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 21
  %73 = ptrtoint ptr %sk_sndbuf12.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sk_sndbuf12.i, align 4
  %skc_state.i293 = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 4
  %74 = ptrtoint ptr %skc_state.i293 to i32
  call void @__asan_store1_noabort(i32 %74)
  store volatile i8 1, ptr %skc_state.i293, align 2
  %75 = getelementptr inbounds %struct.sock_common, ptr %s.030.i, i32 0, i32 13
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %78 = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 13
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %77, ptr %78, align 8
  %ack_queue.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 28
  %lock.i.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 28, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %80 = ptrtoint ptr %ack_queue.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %ack_queue.i, ptr %ack_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 28, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %ack_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 28, i32 1
  %82 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %qlen.i.i.i, align 4
  %reseq_queue.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 29
  %lock.i61.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 29, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i61.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %83 = ptrtoint ptr %reseq_queue.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %reseq_queue.i, ptr %reseq_queue.i, align 4
  %prev.i.i62.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 29, i32 0, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %reseq_queue.i, ptr %prev.i.i62.i, align 4
  %qlen.i.i63.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 29, i32 1
  %85 = ptrtoint ptr %qlen.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %qlen.i.i63.i, align 4
  %frag_queue.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 30
  %lock.i64.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 30, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i64.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %86 = ptrtoint ptr %frag_queue.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %frag_queue.i, ptr %frag_queue.i, align 4
  %prev.i.i65.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 30, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %frag_queue.i, ptr %prev.i.i65.i, align 4
  %qlen.i.i66.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 30, i32 1
  %88 = ptrtoint ptr %qlen.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %qlen.i.i66.i, align 4
  tail call void @nr_init_timers(ptr noundef nonnull %call2.i) #11
  %t1.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 19
  %89 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %t1.i, align 8
  %t114.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 19
  %91 = ptrtoint ptr %t114.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %t114.i, align 8
  %t2.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 20
  %92 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %t2.i, align 4
  %t215.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 20
  %94 = ptrtoint ptr %t215.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %t215.i, align 4
  %n2.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 17
  %95 = ptrtoint ptr %n2.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %n2.i, align 4
  %n216.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 17
  %97 = ptrtoint ptr %n216.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %n216.i, align 4
  %t4.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 21
  %98 = ptrtoint ptr %t4.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %t4.i, align 8
  %t417.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 21
  %100 = ptrtoint ptr %t417.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %t417.i, align 8
  %idle.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 22
  %101 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %idle.i, align 4
  %idle18.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 22
  %103 = ptrtoint ptr %idle18.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %idle18.i, align 4
  %window.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 12
  %104 = ptrtoint ptr %window.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %window.i, align 1
  %window19.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 12
  %106 = ptrtoint ptr %window19.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %window19.i, align 1
  %device.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 4
  %107 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device.i, align 8
  %device20.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 4
  %109 = ptrtoint ptr %device20.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %device20.i, align 8
  %bpqext.i = getelementptr inbounds %struct.nr_sock, ptr %s.030.i, i32 0, i32 11
  %110 = ptrtoint ptr %bpqext.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bpqext.i, align 2
  %bpqext21.i = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 11
  %112 = ptrtoint ptr %bpqext21.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %bpqext21.i, align 2
  %sk_lock116 = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock116) #11
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %arrayidx119 = getelementptr i8, ptr %114, i32 20
  %115 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx119, align 1
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end115.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !128

if.end115.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end115
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %118 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %.not.i.i.i.i = icmp sgt i32 %118, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end115.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end115.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call2.i, ptr %119, align 4
  %121 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %122 = ptrtoint ptr %skc_state.i293 to i32
  call void @__asan_store1_noabort(i32 %122)
  store volatile i8 1, ptr %skc_state.i293, align 2
  %source_addr = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 2
  %123 = call ptr @memcpy(ptr %source_addr, ptr %add.ptr2, i32 7)
  %dest_addr = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 3
  %124 = call ptr @memcpy(ptr %dest_addr, ptr %9, i32 7)
  %user_addr = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 1
  %125 = call ptr @memcpy(ptr %user_addr, ptr %add.ptr98, i32 7)
  %your_index = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 7
  %126 = ptrtoint ptr %your_index to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %11, ptr %your_index, align 2
  %your_id = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 8
  %127 = ptrtoint ptr %your_id to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %13, ptr %your_id, align 1
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock116) #11
  %call125 = tail call fastcc zeroext i16 @nr_find_next_circuit()
  store i16 %call125, ptr @circuit, align 2
  tail call void @_raw_spin_lock(ptr noundef %sk_lock116) #11
  %128 = load i16, ptr @circuit, align 2
  %129 = lshr i16 %128, 8
  %conv129 = trunc i16 %129 to i8
  %my_index = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 5
  %130 = ptrtoint ptr %my_index to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv129, ptr %my_index, align 4
  %conv131 = trunc i16 %128 to i8
  %my_id = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 6
  %131 = ptrtoint ptr %my_id to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv131, ptr %my_id, align 1
  %inc = add i16 %128, 1
  store i16 %inc, ptr @circuit, align 2
  %132 = ptrtoint ptr %window19.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %window19.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %133)
  %cmp135 = icmp ult i8 %116, %133
  br i1 %cmp135, label %if.then137, label %sock_hold.exit.if.end140_crit_edge

sock_hold.exit.if.end140_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then137:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %window19.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %116, ptr %window19.i, align 1
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %sock_hold.exit.if.end140_crit_edge
  %len141 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %135 = ptrtoint ptr %len141 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %136)
  %cmp142 = icmp eq i32 %136, 37
  br i1 %cmp142, label %if.then144, label %if.end140.if.end164_crit_edge

if.end140.if.end164_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then144:                                       ; preds = %if.end140
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %arrayidx146 = getelementptr i8, ptr %138, i32 36
  %139 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %140 to i32
  %mul = shl nuw nsw i32 %conv147, 8
  %arrayidx149 = getelementptr i8, ptr %138, i32 35
  %141 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %142 to i32
  %add = or i32 %mul, %conv150
  %mul153 = mul nuw nsw i32 %add, 100
  %143 = ptrtoint ptr %t114.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %t114.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul153, i32 %144)
  %cmp154 = icmp ult i32 %mul153, %144
  br i1 %cmp154, label %if.then156, label %if.then144.if.end164_crit_edge

if.then144.if.end164_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then156:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %t114.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul153, ptr %t114.i, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then156, %if.then144.if.end164_crit_edge, %if.end140.if.end164_crit_edge
  %storemerge = phi i8 [ 1, %if.then156 ], [ 1, %if.then144.if.end164_crit_edge ], [ 0, %if.end140.if.end164_crit_edge ]
  %146 = ptrtoint ptr %bpqext21.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %storemerge, ptr %bpqext21.i, align 2
  tail call void @nr_write_internal(ptr noundef nonnull %call2.i, i32 noundef 2) #11
  %condition = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 10
  %147 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %condition, align 1
  %vs = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 13
  %state = getelementptr inbounds %struct.nr_sock, ptr %call2.i, i32 0, i32 9
  %148 = ptrtoint ptr %vs to i32
  call void @__asan_storeN_noabort(i32 %148, i32 8)
  store i64 0, ptr %vs, align 4
  %149 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 3, ptr %state, align 8
  %150 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sk_ack_backlog.i, align 4
  %add.i = add i32 %151, 1
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 8
  tail call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef %skb) #11
  %152 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %75, align 4
  %154 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.i.not = icmp eq i32 %154, 0
  br i1 %tobool.i.not, label %if.then166, label %if.end164.if.end167_crit_edge

if.end164.if.end167_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then166:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %s.030.i, i32 0, i32 77
  %155 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sk_data_ready, align 8
  tail call void %156(ptr noundef nonnull %s.030.i) #11
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end164.if.end167_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock116) #11
  tail call fastcc void @sock_put(ptr noundef nonnull %s.030.i)
  tail call fastcc void @nr_insert_socket(ptr noundef nonnull %call2.i)
  tail call void @nr_start_heartbeat(ptr noundef nonnull %call2.i) #11
  tail call void @nr_start_idletimer(ptr noundef nonnull %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %if.then.i301, %if.then10.i.i.i.i300, %if.end5.i.i.i.i299.cleanup_crit_edge, %do.body109, %do.body, %if.then85.cleanup_crit_edge, %if.then.i287, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call31, %if.then ], [ 1, %if.end167 ], [ 0, %do.body ], [ 0, %if.then85.cleanup_crit_edge ], [ 0, %do.body109 ], [ %call78, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call78, %if.then10.i.i.i.i ], [ %call78, %if.then.i287 ], [ 0, %if.end5.i.i.i.i299.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i300 ], [ 0, %if.then.i301 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_rx_ip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nr_find_peer(i8 noundef zeroext %index, i8 noundef zeroext %id, ptr noundef %dest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %0 = load ptr, ptr @nr_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not3741 = icmp eq ptr %add.ptr, null
  %tobool2.not37 = or i1 %tobool.not, %tobool2.not3741
  br i1 %tobool2.not37, label %entry.cleanup21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %s.038 = phi ptr [ %add.ptr17, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %your_index = getelementptr inbounds %struct.nr_sock, ptr %s.038, i32 0, i32 7
  %1 = ptrtoint ptr %your_index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %your_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %index)
  %cmp = icmp eq i8 %2, %index
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %your_id = getelementptr inbounds %struct.nr_sock, ptr %s.038, i32 0, i32 8
  %3 = ptrtoint ptr %your_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %your_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %id)
  %cmp7 = icmp eq i8 %4, %id
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %dest_addr = getelementptr inbounds %struct.nr_sock, ptr %s.038, i32 0, i32 3
  %call = tail call i32 @ax25cmp(ptr noundef %dest_addr, ptr noundef %dest) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %s.038, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !128

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup21_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup21_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %cleanup21

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = getelementptr inbounds %struct.sock_common, ptr %s.038, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool13.not = icmp eq ptr %9, null
  %add.ptr17 = getelementptr i8, ptr %9, i32 -84
  %tobool2.not43 = icmp eq ptr %add.ptr17, null
  %tobool2.not = or i1 %tobool13.not, %tobool2.not43
  br i1 %tobool2.not, label %for.inc.cleanup21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

cleanup21:                                        ; preds = %for.inc.cleanup21_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %s.036 = phi ptr [ %s.038, %if.end15.sink.split.i.i.i.i ], [ %s.038, %if.else.i.i.i.i.cleanup21_crit_edge ], [ null, %entry.cleanup21_crit_edge ], [ null, %for.inc.cleanup21_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  ret ptr %s.036
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nr_find_socket(i8 noundef zeroext %index, i8 noundef zeroext %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %0 = load ptr, ptr @nr_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not3438 = icmp eq ptr %add.ptr, null
  %tobool2.not34 = or i1 %tobool.not, %tobool2.not3438
  br i1 %tobool2.not34, label %entry.cleanup19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %s.035 = phi ptr [ %add.ptr15, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %my_index = getelementptr inbounds %struct.nr_sock, ptr %s.035, i32 0, i32 5
  %1 = ptrtoint ptr %my_index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %my_index, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %index)
  %cmp = icmp eq i8 %2, %index
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %my_id = getelementptr inbounds %struct.nr_sock, ptr %s.035, i32 0, i32 6
  %3 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %my_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %id)
  %cmp7 = icmp eq i8 %4, %id
  br i1 %cmp7, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %s.035, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !128

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup19_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup19_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %cleanup19

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = getelementptr inbounds %struct.sock_common, ptr %s.035, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool11.not = icmp eq ptr %9, null
  %add.ptr15 = getelementptr i8, ptr %9, i32 -84
  %tobool2.not40 = icmp eq ptr %add.ptr15, null
  %tobool2.not = or i1 %tobool11.not, %tobool2.not40
  br i1 %tobool2.not, label %for.inc.cleanup19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %s.033 = phi ptr [ %s.035, %if.end15.sink.split.i.i.i.i ], [ %s.035, %if.else.i.i.i.i.cleanup19_crit_edge ], [ null, %entry.cleanup19_crit_edge ], [ null, %for.inc.cleanup19_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  ret ptr %s.033
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_process_rx_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nr_transmit_reply(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nr_find_next_circuit() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @circuit, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %entry
  %id.0 = phi i16 [ %0, %entry ], [ %inc, %if.end12 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %id.0)
  %cmp.not = icmp ult i16 %id.0, 256
  %conv3.mask = and i16 %id.0, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.mask)
  %cmp7.not = icmp eq i16 %conv3.mask, 0
  %or.cond = or i1 %cmp.not, %cmp7.not
  br i1 %or.cond, label %for.cond.if.end12_crit_edge, label %if.then

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %for.cond
  %conv3 = trunc i16 %id.0 to i8
  %div18 = lshr i16 %id.0, 8
  %conv1 = trunc i16 %div18 to i8
  %call = tail call fastcc ptr @nr_find_socket(i8 noundef zeroext %conv1, i8 noundef zeroext %conv3)
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %for.end, label %if.end

if.end:                                           ; preds = %if.then
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.if.end12_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %if.end12

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef nonnull %call) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end12_crit_edge, %for.cond.if.end12_crit_edge
  %inc = add i16 %id.0, 1
  br label %for.cond

for.end:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  ret i16 %id.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nr_insert_socket(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !128

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = load ptr, ptr @nr_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %2, ptr @nr_list, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr @nr_list, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_proto_init() #4 section ".init.text" align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @nr_proto, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup53_crit_edge

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @nr_ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870911, i32 %0)
  %cmp = icmp ugt i32 %0, 536870911
  br i1 %cmp, label %do.end, label %if.end7.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  br label %unregister_proto

if.end7.i.i:                                      ; preds = %if.end
  %1 = shl nuw nsw i32 %0, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #15
  store ptr %call8.i.i, ptr @dev_nr, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %do.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i.i
  %2 = load i32, ptr @nr_ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1382 = icmp sgt i32 %2, 0
  br i1 %cmp1382, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end9:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #14
  br label %unregister_proto

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #11
  %3 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.12, i32 noundef %i.083)
  %call16 = call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @nr_setup, i32 noundef 1, i32 noundef 1) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.body.cleanup.thread_crit_edge, label %if.end19

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end19:                                         ; preds = %for.body
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.083, ptr %base_addr, align 32
  %call20 = call i32 @register_netdev(ptr noundef nonnull %call16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @free_netdev(ptr noundef nonnull %call16) #11
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end19
  %dep_map.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @nr_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 104
  %7 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp1.not.i.i, label %if.end23.for.inc_crit_edge, label %for.body.lr.ph.i.i

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %if.end23
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %dep_map.i.i.i = getelementptr %struct.netdev_queue, ptr %10, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i.i = getelementptr %struct.netdev_queue, ptr %10, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %wait_type_inner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wait_type_inner.i.i.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @nr_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %13 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %14
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.inc_crit_edge

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

cleanup.thread:                                   ; preds = %if.then22, %for.body.cleanup.thread_crit_edge
  %rc.0.ph = phi i32 [ %call20, %if.then22 ], [ -12, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #11
  br label %fail

for.inc:                                          ; preds = %for.body.i.i.for.inc_crit_edge, %if.end23.for.inc_crit_edge
  %15 = load ptr, ptr @dev_nr, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.083
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call16, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #11
  %inc = add nuw nsw i32 %i.083, 1
  %17 = load i32, ptr @nr_ndevs, align 4
  %cmp13 = icmp slt i32 %inc, %17
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call25 = call i32 @sock_register(ptr noundef nonnull @nr_family_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %for.end.fail_crit_edge

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end28:                                         ; preds = %for.end
  %call29 = call i32 @register_netdevice_notifier(ptr noundef nonnull @nr_dev_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out_sock_crit_edge

if.end28.out_sock_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_sock

if.end32:                                         ; preds = %if.end28
  call void @ax25_register_pid(ptr noundef nonnull @nr_pid) #11
  call void @ax25_linkfail_register(ptr noundef nonnull @nr_linkfail_notifier) #11
  %call33 = call i32 @nr_register_sysctl() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.out_sysctl_crit_edge

if.end32.out_sysctl_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_sysctl

if.end36:                                         ; preds = %if.end32
  call void @nr_loopback_init() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call37 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %18, ptr noundef nonnull @nr_info_seqops, i32 noundef 0, ptr noundef null) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.proc_remove1_crit_edge, label %if.end40

if.end36.proc_remove1_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %proc_remove1

if.end40:                                         ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call41 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %19, ptr noundef nonnull @nr_neigh_seqops, i32 noundef 0, ptr noundef null) #11
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.proc_remove2_crit_edge, label %if.end44

if.end40.proc_remove2_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %proc_remove2

if.end44:                                         ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call45 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %20, ptr noundef nonnull @nr_node_seqops, i32 noundef 0, ptr noundef null) #11
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %proc_remove3, label %if.end44.cleanup53_crit_edge

if.end44.cleanup53_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

proc_remove3:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %21) #11
  br label %proc_remove2

proc_remove2:                                     ; preds = %proc_remove3, %if.end40.proc_remove2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %22) #11
  br label %proc_remove1

proc_remove1:                                     ; preds = %proc_remove2, %if.end36.proc_remove1_crit_edge
  call void @nr_loopback_clear() #11
  call void @nr_rt_free() #11
  call void @nr_unregister_sysctl() #11
  br label %out_sysctl

out_sysctl:                                       ; preds = %proc_remove1, %if.end32.out_sysctl_crit_edge
  %rc.1 = phi i32 [ %call33, %if.end32.out_sysctl_crit_edge ], [ -12, %proc_remove1 ]
  call void @ax25_linkfail_release(ptr noundef nonnull @nr_linkfail_notifier) #11
  call void @ax25_protocol_release(i32 noundef 207) #11
  %call49 = call i32 @unregister_netdevice_notifier(ptr noundef nonnull @nr_dev_notifier) #11
  br label %out_sock

out_sock:                                         ; preds = %out_sysctl, %if.end28.out_sock_crit_edge
  %rc.2 = phi i32 [ %call29, %if.end28.out_sock_crit_edge ], [ %rc.1, %out_sysctl ]
  call void @sock_unregister(i32 noundef 6) #11
  br label %fail

fail:                                             ; preds = %out_sock, %for.end.fail_crit_edge, %cleanup.thread
  %i.079 = phi i32 [ %i.0.lcssa, %for.end.fail_crit_edge ], [ %i.0.lcssa, %out_sock ], [ %i.083, %cleanup.thread ]
  %rc.3 = phi i32 [ %call25, %for.end.fail_crit_edge ], [ %rc.2, %out_sock ], [ %rc.0.ph, %cleanup.thread ]
  %dec84 = add i32 %i.079, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec84)
  %cmp5085 = icmp sgt i32 %dec84, -1
  br i1 %cmp5085, label %fail.while.body_crit_edge, label %fail.while.end_crit_edge

fail.while.end_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

fail.while.body_crit_edge:                        ; preds = %fail
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %fail.while.body_crit_edge
  %dec86 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec84, %fail.while.body_crit_edge ]
  %23 = load ptr, ptr @dev_nr, align 4
  %arrayidx51 = getelementptr ptr, ptr %23, i32 %dec86
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx51, align 4
  call void @unregister_netdev(ptr noundef %25) #11
  %26 = load ptr, ptr @dev_nr, align 4
  %arrayidx52 = getelementptr ptr, ptr %26, i32 %dec86
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx52, align 4
  call void @free_netdev(ptr noundef %28) #11
  %dec = add nsw i32 %dec86, -1
  %cmp50.not = icmp eq i32 %dec86, 0
  br i1 %cmp50.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %fail.while.end_crit_edge
  %29 = load ptr, ptr @dev_nr, align 4
  call void @kfree(ptr noundef %29) #11
  br label %unregister_proto

unregister_proto:                                 ; preds = %while.end, %do.end9, %do.end
  %rc.4 = phi i32 [ -22, %do.end ], [ %rc.3, %while.end ], [ -12, %do.end9 ]
  call void @proto_unregister(ptr noundef nonnull @nr_proto) #11
  br label %cleanup53

cleanup53:                                        ; preds = %unregister_proto, %if.end44.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ %rc.4, %unregister_proto ], [ %call, %entry.cleanup53_crit_edge ], [ 0, %if.end44.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nr_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %2) #11
  tail call void @nr_loopback_clear() #11
  tail call void @nr_rt_free() #11
  tail call void @nr_unregister_sysctl() #11
  tail call void @ax25_linkfail_release(ptr noundef nonnull @nr_linkfail_notifier) #11
  tail call void @ax25_protocol_release(i32 noundef 207) #11
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @nr_dev_notifier) #11
  tail call void @sock_unregister(i32 noundef 6) #11
  %3 = load i32, ptr @nr_ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = load ptr, ptr @dev_nr, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.06
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_netdev(ptr noundef nonnull %6) #11
  tail call void @free_netdev(ptr noundef nonnull %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %7 = load i32, ptr @nr_ndevs, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = load ptr, ptr @dev_nr, align 4
  tail call void @kfree(ptr noundef %8) #11
  tail call void @proto_unregister(ptr noundef nonnull @nr_proto) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_loopback_clear() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_rt_free() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_unregister_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_linkfail_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_protocol_release(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_init_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_register_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_linkfail_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_register_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_loopback_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i74.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i74.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %cmp.not = icmp eq i16 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %cmp2.not = icmp eq i32 %protocol, 0
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 6, i32 noundef 2592, ptr noundef nonnull @nr_proto, i32 noundef %kern) #11
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call6) #11
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nr_proto_ops, ptr %ops, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %sk_protocol, align 4
  %ack_queue = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 28
  %lock.i = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 28, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %4 = ptrtoint ptr %ack_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ack_queue, ptr %ack_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 28, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ack_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 28, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i, align 4
  %reseq_queue = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 29
  %lock.i75 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 29, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i75, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %7 = ptrtoint ptr %reseq_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reseq_queue, ptr %reseq_queue, align 4
  %prev.i.i76 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 29, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reseq_queue, ptr %prev.i.i76, align 4
  %qlen.i.i77 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 29, i32 1
  %9 = ptrtoint ptr %qlen.i.i77 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i77, align 4
  %frag_queue = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 30
  %lock.i78 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 30, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i78, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %10 = ptrtoint ptr %frag_queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %frag_queue, ptr %frag_queue, align 4
  %prev.i.i79 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 30, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %frag_queue, ptr %prev.i.i79, align 4
  %qlen.i.i80 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 30, i32 1
  %12 = ptrtoint ptr %qlen.i.i80 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i80, align 4
  tail call void @nr_init_timers(ptr noundef nonnull %call6) #11
  %13 = load i32, ptr @sysctl_netrom_transport_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #11
  %t1 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 19
  %14 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i, ptr %t1, align 8
  %15 = load i32, ptr @sysctl_netrom_transport_acknowledge_delay, align 4
  %call2.i43 = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #11
  %t2 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 20
  %16 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call2.i43, ptr %t2, align 4
  %17 = load i32, ptr @sysctl_netrom_transport_maximum_tries, align 4
  %call2.i52 = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #11
  %conv15 = trunc i32 %call2.i52 to i8
  %n2 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 17
  %18 = ptrtoint ptr %n2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv15, ptr %n2, align 4
  %19 = load i32, ptr @sysctl_netrom_transport_busy_delay, align 4
  %call2.i61 = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #11
  %t4 = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 21
  %20 = ptrtoint ptr %t4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i61, ptr %t4, align 8
  %21 = load i32, ptr @sysctl_netrom_transport_no_activity_timeout, align 4
  %call2.i70 = tail call i32 @__msecs_to_jiffies(i32 noundef %21) #11
  %idle = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 22
  %22 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call2.i70, ptr %idle, align 4
  %23 = load i32, ptr @sysctl_netrom_transport_requested_window_size, align 4
  %conv18 = trunc i32 %23 to i8
  %window = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 12
  %24 = ptrtoint ptr %window to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv18, ptr %window, align 1
  %bpqext = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 11
  %25 = ptrtoint ptr %bpqext to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %bpqext, align 2
  %state = getelementptr inbounds %struct.nr_sock, ptr %call6, i32 0, i32 9
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -97, %entry.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !128

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %or.i.i.i = or i32 %6, 1
  store i32 %or.i.i.i, ptr %4, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sk_socket.i.i, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sock_hold.exit.sw.epilog_crit_edge [
    i8 0, label %sock_hold.exit.sw.bb_crit_edge
    i8 1, label %sock_hold.exit.sw.bb_crit_edge33
    i8 2, label %sock_hold.exit.sw.bb_crit_edge34
    i8 3, label %sw.bb2
  ]

sock_hold.exit.sw.bb_crit_edge34:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sock_hold.exit.sw.bb_crit_edge33:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sock_hold.exit.sw.bb_crit_edge:                   ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sock_hold.exit.sw.epilog_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %sock_hold.exit.sw.bb_crit_edge, %sock_hold.exit.sw.bb_crit_edge33, %sock_hold.exit.sw.bb_crit_edge34
  tail call void @nr_disconnect(ptr noundef nonnull %1, i32 noundef 0) #11
  tail call void @nr_destroy_socket(ptr noundef nonnull %1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nr_clear_queues(ptr noundef nonnull %1) #11
  %n2count = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %n2count, align 1
  tail call void @nr_write_internal(ptr noundef nonnull %1, i32 noundef 3) #11
  tail call void @nr_start_t1timer(ptr noundef nonnull %1) #11
  tail call void @nr_stop_t2timer(ptr noundef nonnull %1) #11
  tail call void @nr_stop_t4timer(ptr noundef nonnull %1) #11
  tail call void @nr_stop_idletimer(ptr noundef nonnull %1) #11
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %state, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %16 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sk_shutdown, align 2
  %18 = or i8 %17, 2
  store i8 %18, ptr %sk_shutdown, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %19 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_state_change, align 4
  tail call void %20(ptr noundef nonnull %1) #11
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 4
  %or.i.i = or i32 %22, 32
  store i32 %or.i.i, ptr %4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %sock_hold.exit.sw.epilog_crit_edge
  %23 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #11
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @sk_free(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_bind(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = add i32 %addr_len, -73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -57, i32 %6)
  %7 = icmp ult i32 %6, -57
  br i1 %7, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %8 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sax25_ndigis, align 4
  %mul = mul i32 %9, 7
  %add = add i32 %mul, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr_len)
  %cmp5 = icmp ugt i32 %add, %addr_len
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %11)
  %cmp9.not = icmp eq i16 %11, 6
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %call14 = tail call ptr @nr_dev_get(ptr noundef %sax25_call) #11
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp eq i32 %13, 1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end18
  %call24 = tail call zeroext i1 @capable(i32 noundef 10) #11
  br i1 %call24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dev_put(ptr noundef nonnull %call14)
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %user_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %fsa_digipeater = getelementptr inbounds %struct.full_sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %user_addr, ptr %fsa_digipeater, i32 7)
  %source_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %source_addr, ptr %sax25_call, i32 7)
  br label %if.end44

if.else:                                          ; preds = %if.end18
  %16 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %22)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call32 = tail call ptr @ax25_findbyuid([1 x i32] %.fca.0.insert) #11
  %tobool.not = icmp eq ptr %call32, null
  br i1 %tobool.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %user_addr34 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %call35 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call32, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %user_addr34, ptr %call35, i32 7)
  tail call fastcc void @ax25_uid_put(ptr noundef nonnull %call32)
  br label %if.end42

if.else36:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_uid_policy to i32))
  %24 = load i32, ptr @ax25_uid_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool37.not = icmp eq i32 %24, 0
  br i1 %tobool37.not, label %if.else36.if.end40_crit_edge, label %land.lhs.true

if.else36.if.end40_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %if.else36
  %call38 = tail call zeroext i1 @capable(i32 noundef 10) #11
  br i1 %call38, label %land.lhs.true.if.end40_crit_edge, label %if.then39

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  tail call fastcc void @dev_put(ptr noundef nonnull %call14)
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.else36.if.end40_crit_edge
  %user_addr41 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %user_addr41, ptr %sax25_call, i32 7)
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.then33
  %source_addr43 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %source_addr43, ptr %sax25_call, i32 7)
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end26
  %device = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call14, ptr %device, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end44.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !128

if.end44.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end44
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end44.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end44.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %31 = load ptr, ptr @nr_list, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %30, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.do.body1.i_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.do.body1.i_crit_edge:          ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %30, ptr %pprev.i.i.i.i, align 4
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.do.body1.i_crit_edge
  store volatile ptr %30, ptr @nr_list, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %34 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr @nr_list, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %and.i.i = and i32 %36, -257
  store i32 %and.i.i, ptr %2, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !135
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 118
  %38 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_refcnt.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i81 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i81 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %46, %40
  %47 = inttoptr i32 %add.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add13.i = add i32 %49, -1
  store i32 %add13.i, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !136
  %and.i.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !128

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #11, !srcloc !137
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.then39, %if.then25, %if.then17, %if.then11, %if.then6, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then6 ], [ -22, %if.then11 ], [ -99, %if.then17 ], [ 0, %dev_put.exit ], [ -1, %if.then25 ], [ -1, %if.then39 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_connect(ptr nocapture noundef %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %sock, align 128
  br label %out_release

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp9 = icmp eq i8 %8, 7
  br i1 %cmp9, label %land.lhs.true11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true11:                                  ; preds = %if.end
  %9 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %if.then15, label %land.lhs.true11.if.end17_crit_edge

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sock, align 128
  br label %out_release

if.end17:                                         ; preds = %land.lhs.true11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp21 = icmp eq i8 %13, 1
  br i1 %cmp21, label %if.end17.out_release_crit_edge, label %if.end24

if.end17.out_release_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end24:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 7, ptr %skc_state, align 2
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sock, align 128
  %16 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %addr_len, label %if.end24.out_release_crit_edge [
    i32 16, label %if.end24.if.end34_crit_edge
    i32 72, label %if.end24.if.end34_crit_edge179
  ]

if.end24.if.end34_crit_edge179:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end24.out_release_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end34:                                         ; preds = %if.end24.if.end34_crit_edge, %if.end24.if.end34_crit_edge179
  %17 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %18)
  %cmp36.not = icmp eq i16 %18, 6
  br i1 %cmp36.not, label %if.end39, label %if.end34.out_release_crit_edge

if.end34.out_release_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end39:                                         ; preds = %if.end34
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %if.end39.if.end57_crit_edge, label %if.then40

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then40:                                        ; preds = %if.end39
  %and.i.i = and i32 %21, -257
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i.i, ptr %19, align 4
  %call41 = tail call ptr @nr_dev_first() #11
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then40.out_release_crit_edge, label %if.end45

if.then40.out_release_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end45:                                         ; preds = %if.then40
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 99
  %30 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %32)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call47 = tail call ptr @ax25_findbyuid([1 x i32] %.fca.0.insert) #11
  %tobool.not = icmp eq ptr %call47, null
  br i1 %tobool.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %user_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %call49 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call47, i32 0, i32 3
  %33 = call ptr @memcpy(ptr %user_addr, ptr %call49, i32 7)
  tail call fastcc void @ax25_uid_put(ptr noundef nonnull %call47)
  br label %do.body1.i

if.else:                                          ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_uid_policy to i32))
  %34 = load i32, ptr @ax25_uid_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool50.not = icmp eq i32 %34, 0
  br i1 %tobool50.not, label %if.else.if.end54_crit_edge, label %land.lhs.true51

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true51:                                  ; preds = %if.else
  %call52 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call52, label %land.lhs.true51.if.end54_crit_edge, label %if.then53

land.lhs.true51.if.end54_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dev_put(ptr noundef nonnull %call41)
  br label %out_release

if.end54:                                         ; preds = %land.lhs.true51.if.end54_crit_edge, %if.else.if.end54_crit_edge
  %user_addr55 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %user_addr55, ptr %25, i32 7)
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end54, %if.then48
  %source_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %source_addr, ptr %25, i32 7)
  %device = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call41, ptr %device, align 8
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !135
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 118
  %39 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcpu_refcnt.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i171 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i171 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %47, %41
  %48 = inttoptr i32 %add.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add13.i = add i32 %50, -1
  store i32 %add13.i, ptr %48, align 4
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !136
  %and.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !128

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #11, !srcloc !137
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #11
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #11, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %dev_put.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !128

dev_put.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %dev_put.exit
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %dev_put.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %dev_put.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %54 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %55 = load ptr, ptr @nr_list, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %55, ptr %54, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.nr_insert_socket.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.nr_insert_socket.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nr_insert_socket.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %54, ptr %pprev.i.i.i.i, align 4
  br label %nr_insert_socket.exit

nr_insert_socket.exit:                            ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.nr_insert_socket.exit_crit_edge
  store volatile ptr %54, ptr @nr_list, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %58 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr @nr_list, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  br label %if.end57

if.end57:                                         ; preds = %nr_insert_socket.exit, %if.end39.if.end57_crit_edge
  %dest_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 3
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %dest_addr, ptr %sax25_call, i32 7)
  tail call void @release_sock(ptr noundef %1) #11
  %call58 = tail call fastcc zeroext i16 @nr_find_next_circuit()
  store i16 %call58, ptr @circuit, align 2
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %60 = load i16, ptr @circuit, align 2
  %61 = lshr i16 %60, 8
  %conv60 = trunc i16 %61 to i8
  %my_index = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %my_index to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv60, ptr %my_index, align 4
  %conv62 = trunc i16 %60 to i8
  %my_id = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %my_id to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv62, ptr %my_id, align 1
  %inc = add i16 %60, 1
  store i16 %inc, ptr @circuit, align 2
  %64 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %sock, align 128
  %65 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %65)
  store volatile i8 2, ptr %skc_state, align 2
  tail call void @nr_establish_data_link(ptr noundef %1) #11
  %state66 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %state66 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %state66, align 8
  tail call void @nr_start_heartbeat(ptr noundef %1) #11
  %67 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp70.not = icmp eq i8 %68, 1
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool73.not, %cmp70.not
  br i1 %or.cond, label %if.end75, label %if.end57.out_release_crit_edge

if.end57.out_release_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end75:                                         ; preds = %if.end57
  %69 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %cmp79 = icmp eq i8 %70, 2
  br i1 %cmp79, label %if.then81, label %if.end75.if.end106_crit_edge

if.end75.if.end106_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then81:                                        ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %71 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %72 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %73 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %74 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %wait, align 4
  %76 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i172 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i172 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task84, align 8
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %71, align 4
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @autoremove_wake_function, ptr %72, align 4
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %73, ptr %73, align 4
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %73, ptr %74, align 4
  %84 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %84, align 8
  call void @prepare_to_wait(ptr noundef %86, ptr noundef nonnull %wait, i32 noundef 1) #11
  %87 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp92.not178 = icmp eq i8 %88, 2
  br i1 %cmp92.not178, label %if.then81.if.end95_crit_edge, label %if.then81.for.end_crit_edge

if.then81.for.end_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then81.if.end95_crit_edge:                     ; preds = %if.then81
  br label %if.end95

if.end95:                                         ; preds = %if.then100.if.end95_crit_edge, %if.then81.if.end95_crit_edge
  %89 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task84, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %stack.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %95 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i173 = icmp eq i32 %95, 0
  br i1 %tobool.not.i173, label %signal_pending.exit, label %if.end95.for.end.thread_crit_edge, !prof !131

if.end95.for.end.thread_crit_edge:                ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

signal_pending.exit:                              ; preds = %if.end95
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %92, align 4
  %and1.i.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool99.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool99.not, label %if.then100, label %signal_pending.exit.for.end.thread_crit_edge

signal_pending.exit.for.end.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

if.then100:                                       ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %1) #11
  call void @schedule() #11
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %98 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %84, align 8
  call void @prepare_to_wait(ptr noundef %99, ptr noundef nonnull %wait, i32 noundef 1) #11
  %100 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load volatile i8, ptr %skc_state, align 2
  %cmp92.not = icmp eq i8 %101, 2
  br i1 %cmp92.not, label %if.then100.if.end95_crit_edge, label %if.then100.for.end_crit_edge

if.then100.for.end_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then100.if.end95_crit_edge:                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

for.end.thread:                                   ; preds = %signal_pending.exit.for.end.thread_crit_edge, %if.end95.for.end.thread_crit_edge
  %102 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %84, align 8
  call void @finish_wait(ptr noundef %103, ptr noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  br label %out_release

for.end:                                          ; preds = %if.then100.for.end_crit_edge, %if.then81.for.end_crit_edge
  %104 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %84, align 8
  call void @finish_wait(ptr noundef %105, ptr noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  br label %if.end106

if.end106:                                        ; preds = %for.end, %if.end75.if.end106_crit_edge
  %106 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp110.not = icmp eq i8 %107, 1
  br i1 %cmp110.not, label %if.end115, label %if.then112

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %sock, align 128
  %call114 = call fastcc i32 @sock_error(ptr noundef %1)
  br label %out_release

if.end115:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 3, ptr %sock, align 128
  br label %out_release

out_release:                                      ; preds = %if.end115, %if.then112, %for.end.thread, %if.end57.out_release_crit_edge, %if.then53, %if.then40.out_release_crit_edge, %if.end34.out_release_crit_edge, %if.end24.out_release_crit_edge, %if.end17.out_release_crit_edge, %if.then15, %if.then
  %err.2 = phi i32 [ 0, %if.then ], [ -111, %if.then15 ], [ %call114, %if.then112 ], [ 0, %if.end115 ], [ -1, %if.then53 ], [ -106, %if.end17.out_release_crit_edge ], [ -22, %if.end24.out_release_crit_edge ], [ -22, %if.end34.out_release_crit_edge ], [ -101, %if.then40.out_release_crit_edge ], [ -115, %if.end57.out_release_crit_edge ], [ -512, %for.end.thread ]
  call void @release_sock(ptr noundef %1) #11
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !118) #11
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
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk5, align 16
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @lock_sock_nested(ptr noundef nonnull %14, i32 noundef 0) #11
  %sk_type = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %16)
  %cmp6.not = icmp eq i16 %16, 5
  br i1 %cmp6.not, label %if.end9, label %if.end.out_release_crit_edge

if.end.out_release_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end9:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp11.not = icmp eq i8 %18, 10
  br i1 %cmp11.not, label %for.cond.preheader, label %if.end9.out_release_crit_edge

if.end9.out_release_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

for.cond.preheader:                               ; preds = %if.end9
  %19 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  call void @prepare_to_wait(ptr noundef %21, ptr noundef nonnull %wait, i32 noundef 1) #11
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 8
  %call1655 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #11
  %tobool.not56 = icmp eq ptr %call1655, null
  br i1 %tobool.not56, label %if.end18.lr.ph, label %for.cond.preheader.if.end31_crit_edge

for.cond.preheader.if.end31_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end18.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.lr.ph.if.end18_crit_edge, label %if.end18.lr.ph.for.end.thread.split_crit_edge

if.end18.lr.ph.for.end.thread.split_crit_edge:    ; preds = %if.end18.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.split

if.end18.lr.ph.if.end18_crit_edge:                ; preds = %if.end18.lr.ph
  br label %if.end18

if.end18:                                         ; preds = %if.then26.if.end18_crit_edge, %if.end18.lr.ph.if.end18_crit_edge
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.for.end.thread.split_crit_edge, !prof !131

if.end18.for.end.thread.split_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.split

signal_pending.exit:                              ; preds = %if.end18
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool25.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool25.not, label %if.then26, label %signal_pending.exit.for.end.thread.split_crit_edge

signal_pending.exit.for.end.thread.split_crit_edge: ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.split

if.then26:                                        ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef nonnull %14) #11
  call void @schedule() #11
  call void @lock_sock_nested(ptr noundef nonnull %14, i32 noundef 0) #11
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %19, align 8
  call void @prepare_to_wait(ptr noundef %32, ptr noundef nonnull %wait, i32 noundef 1) #11
  %call16 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #11
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.then26.if.end18_crit_edge, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26.if.end18_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

for.end.thread.split:                             ; preds = %signal_pending.exit.for.end.thread.split_crit_edge, %if.end18.for.end.thread.split_crit_edge, %if.end18.lr.ph.for.end.thread.split_crit_edge
  %err.0.ph.split = phi i32 [ -11, %if.end18.lr.ph.for.end.thread.split_crit_edge ], [ -512, %signal_pending.exit.for.end.thread.split_crit_edge ], [ -512, %if.end18.for.end.thread.split_crit_edge ]
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %19, align 8
  call void @finish_wait(ptr noundef %34, ptr noundef nonnull %wait) #11
  br label %out_release

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %for.cond.preheader.if.end31_crit_edge
  %call16.lcssa = phi ptr [ %call1655, %for.cond.preheader.if.end31_crit_edge ], [ %call16, %if.then26.if.end31_crit_edge ]
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %19, align 8
  call void @finish_wait(ptr noundef %36, ptr noundef nonnull %wait) #11
  %37 = getelementptr inbounds %struct.sk_buff, ptr %call16.lcssa, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %40 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i48 = icmp eq ptr %41, null
  br i1 %tobool.not.i48, label %if.end31.sock_graft.exit_crit_edge, label %do.end.i, !prof !131

if.end31.sock_graft.exit_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2024, i32 noundef 9, ptr noundef null) #11
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.end31.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !138
  %42 = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 17
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %wq.i, ptr %42, align 8
  %44 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %39, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 71
  %45 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 55
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_uid.i, align 4
  %48 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %sk_uid.i, align 4
  call void @security_sock_graft(ptr noundef %39, ptr noundef %newsock) #11
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  call void @kfree_skb_reason(ptr noundef nonnull %call16.lcssa, i32 noundef 0) #11
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 53
  %49 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %50, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %out_release

out_release:                                      ; preds = %sock_graft.exit, %for.end.thread.split, %if.end9.out_release_crit_edge, %if.end.out_release_crit_edge
  %err.1 = phi i32 [ 0, %sock_graft.exit ], [ -95, %if.end.out_release_crit_edge ], [ -22, %if.end9.out_release_crit_edge ], [ %err.0.ph.split, %for.end.thread.split ]
  call void @release_sock(ptr noundef nonnull %14) #11
  br label %cleanup

cleanup:                                          ; preds = %out_release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_release ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = call ptr @memset(ptr %uaddr, i32 0, i32 16)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %cmp.not = icmp eq i32 %peer, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp2.not = icmp eq i8 %4, 1
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6, ptr %uaddr, align 4
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %6 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sax25_ndigis, align 4
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %user_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %sax25_call, ptr %user_addr, i32 7)
  %fsa_digipeater = getelementptr inbounds %struct.full_sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %8 = call ptr @memset(ptr %fsa_digipeater, i32 0, i32 56)
  %dest_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %fsa_digipeater, ptr %dest_addr, i32 7)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 6, ptr %uaddr, align 4
  %sax25_ndigis12 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %11 = ptrtoint ptr %sax25_ndigis12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sax25_ndigis12, align 4
  %sax25_call14 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %source_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %sax25_call14, ptr %source_addr, i32 7)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %if.then.cleanup_crit_edge ], [ 72, %if.end ], [ 16, %if.else ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb4
    i32 35093, label %entry.cleanup_crit_edge
    i32 35094, label %entry.cleanup_crit_edge47
    i32 35095, label %entry.cleanup_crit_edge48
    i32 35096, label %entry.cleanup_crit_edge49
    i32 35097, label %entry.cleanup_crit_edge50
    i32 35098, label %entry.cleanup_crit_edge51
    i32 35099, label %entry.cleanup_crit_edge52
    i32 35100, label %entry.cleanup_crit_edge53
    i32 35101, label %entry.cleanup_crit_edge54
    i32 35102, label %entry.cleanup_crit_edge55
    i32 35083, label %entry.sw.bb26_crit_edge
    i32 35084, label %entry.sw.bb26_crit_edge56
    i32 35298, label %entry.sw.bb26_crit_edge57
  ]

entry.sw.bb26_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

entry.sw.bb26_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

entry.cleanup_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %5, 1
  %sub = sub i32 %sub.i.neg, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @release_sock(ptr noundef %1) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 1211) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !139
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %8, i32 -1226833921) #11, !srcloc !142
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %14, %sk_receive_queue
  %cmp7.not46 = icmp eq ptr %14, null
  %cmp7.not = or i1 %cmp.i, %cmp7.not46
  br i1 %cmp7.not, label %sw.bb4.if.end9_crit_edge, label %if.then8

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4.if.end9_crit_edge
  %amount5.0 = phi i32 [ %16, %if.then8 ], [ 0, %sw.bb4.if.end9_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 1223) #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i.i42 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i42 to ptr
  %cpu_domain.i.i43 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i43) #9, !srcloc !139
  %and.i44 = and i32 %19, -13
  %or.i45 = or i32 %and.i44, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i45) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %amount5.0, i32 -1226833921) #11, !srcloc !143
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  br label %cleanup

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge56, %entry.sw.bb26_crit_edge57
  %call27 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call27, label %if.end29, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @nr_rt_ioctl(i32 noundef %cmd, ptr noundef %2) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end29, %sw.bb26.cleanup_crit_edge, %if.end9, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge47, %entry.cleanup_crit_edge48, %entry.cleanup_crit_edge49, %entry.cleanup_crit_edge50, %entry.cleanup_crit_edge51, %entry.cleanup_crit_edge52, %entry.cleanup_crit_edge53, %entry.cleanup_crit_edge54, %entry.cleanup_crit_edge55
  %retval.0 = phi i32 [ -515, %sw.default ], [ %call30, %if.end29 ], [ %20, %if.end9 ], [ %12, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge47 ], [ -22, %entry.cleanup_crit_edge48 ], [ -22, %entry.cleanup_crit_edge49 ], [ -22, %entry.cleanup_crit_edge50 ], [ -22, %entry.cleanup_crit_edge51 ], [ -22, %entry.cleanup_crit_edge52 ], [ -22, %entry.cleanup_crit_edge53 ], [ -22, %entry.cleanup_crit_edge54 ], [ -22, %entry.cleanup_crit_edge55 ], [ -1, %sw.bb26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.not = icmp eq i8 %3, 10
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %user_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %user_addr, i32 0, i32 7)
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 10, ptr %skc_state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #11
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %opt, align 4, !annotation !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %level)
  %cmp.not = icmp eq i32 %level, 259
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp2 = icmp ult i32 %optlen, 4
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #16, !srcloc !145
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !131

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #11
  %5 = call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #9, !srcloc !139
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end6_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !131

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end6_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %opt, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end6_crit_edge
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %optname, label %if.end6.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb18
    i32 6, label %sw.bb24
    i32 7, label %sw.bb33
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %13 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opt, align 4
  %15 = add i32 %14, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %15)
  %16 = icmp ult i32 %15, -42949672
  br i1 %16, label %sw.bb.cleanup_crit_edge, label %if.end10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nuw i32 %14, 100
  %t1 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %t1, align 8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opt, align 4
  %20 = add i32 %19, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %20)
  %21 = icmp ult i32 %20, -42949672
  br i1 %21, label %sw.bb11.cleanup_crit_edge, label %if.end16

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %mul17 = mul nuw i32 %19, 100
  %t2 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul17, ptr %t2, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end6
  %23 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opt, align 4
  %25 = add i32 %24, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %25)
  %26 = icmp ult i32 %25, -31
  br i1 %26, label %sw.bb18.cleanup_crit_edge, label %if.end23

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %24 to i8
  %n2 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %n2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %n2, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end6
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opt, align 4
  %30 = add i32 %29, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %30)
  %31 = icmp ult i32 %30, -42949672
  br i1 %31, label %sw.bb24.cleanup_crit_edge, label %if.end31

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  %mul32 = mul nuw i32 %29, 100
  %t4 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 21
  %32 = ptrtoint ptr %t4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul32, ptr %t4, align 8
  br label %cleanup

sw.bb33:                                          ; preds = %if.end6
  %33 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 715827, i32 %34)
  %cmp34 = icmp ugt i32 %34, 715827
  br i1 %cmp34, label %sw.bb33.cleanup_crit_edge, label %if.end37

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  %mul39 = mul nuw i32 %34, 6000
  %idle = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul39, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %sw.bb33.cleanup_crit_edge, %if.end31, %sw.bb24.cleanup_crit_edge, %if.end23, %sw.bb18.cleanup_crit_edge, %if.end16, %sw.bb11.cleanup_crit_edge, %if.end10, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ 0, %if.end31 ], [ 0, %if.end23 ], [ 0, %if.end16 ], [ 0, %if.end10 ], [ -92, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -92, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %level)
  %cmp.not = icmp eq i32 %level, 259
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 359) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !139
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #11, !srcloc !146
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult2)
  %cmp6 = icmp slt i32 %asmresult2, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %optname, label %if.end8.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
    i32 6, label %sw.bb12
    i32 7, label %sw.bb14
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %t1 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t1, align 8
  %div = udiv i32 %8, 100
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %t2 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t2, align 4
  %div10 = udiv i32 %11, 100
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div10, ptr %val, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %n2 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n2, align 4
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %t4 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %t4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t4, align 8
  %div13 = udiv i32 %17, 100
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div13, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %idle = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idle, align 4
  %div15 = udiv i32 %20, 6000
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div15, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb
  %22 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 392) #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i.i.i47 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i47 to ptr
  %cpu_domain.i.i48 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i48) #9, !srcloc !139
  %and.i49 = and i32 %25, -13
  %or.i50 = or i32 %and.i49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i50) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %22, i32 -1226833921) #11, !srcloc !147
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #11, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool28.not = icmp eq i32 %26, 0
  br i1 %tobool28.not, label %if.then.i.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %22, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %22, i32 -1226833920) #16, !srcloc !148
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %22) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %22) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %22, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %22, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool32.not = icmp eq i32 %n.addr.0.i, 0
  %cond33 = select i1 %tobool32.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %sw.epilog.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond33, %copy_to_user.exit ], [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -92, %if.end8.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %sax = alloca %struct.sockaddr_ax25, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sax) #11
  %5 = call ptr @memset(ptr %sax, i32 255, i32 16)
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %6 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_flags, align 4
  %and = and i32 %7, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -99, ptr %err, align 4
  br label %out

if.end3:                                          ; preds = %if.end
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %13 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sk_shutdown, align 2
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %16 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %call8 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %19, i32 noundef 0) #11
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -32, ptr %err, align 4
  br label %out

if.end9:                                          ; preds = %if.end3
  %device = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -101, ptr %err, align 4
  br label %out

if.end12:                                         ; preds = %if.end9
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp15 = icmp ult i32 %25, 16
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -22, ptr %err, align 4
  br label %out

if.end18:                                         ; preds = %if.then14
  %27 = call ptr @memcpy(ptr %sax, ptr %3, i32 16)
  %dest_addr = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 3
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  %call19 = call i32 @ax25cmp(ptr noundef %dest_addr, ptr noundef %sax25_call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -106, ptr %err, align 4
  br label %out

if.end23:                                         ; preds = %if.end18
  %29 = ptrtoint ptr %sax to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sax, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %30)
  %cmp25.not = icmp eq i16 %30, 6
  br i1 %cmp25.not, label %if.end23.if.end37_crit_edge, label %if.then27

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -22, ptr %err, align 4
  br label %out

if.else:                                          ; preds = %if.end12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp30.not = icmp eq i8 %33, 1
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -107, ptr %err, align 4
  br label %out

if.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %sax to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 6, ptr %sax, align 4
  %sax25_call35 = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  %dest_addr36 = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %sax25_call35, ptr %dest_addr36, i32 7)
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end23.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %len)
  %cmp38 = icmp ugt i32 %len, 65536
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -90, ptr %err, align 4
  br label %out

if.end41:                                         ; preds = %if.end37
  %add42 = add nuw nsw i32 %len, 20
  %38 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_flags, align 4
  %and44 = and i32 %39, 64
  %call45 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add42, i32 noundef %and44, ptr noundef nonnull %err) #11
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.end41.out_crit_edge, label %if.end49

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end49:                                         ; preds = %if.end41
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call45, i32 0, i32 19
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 20
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call45, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %43, i32 20
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call45, i32 0, i32 18
  %44 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call45, i32 0, i32 15, i32 0, i32 19
  %46 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call50 = call ptr @skb_push(ptr noundef nonnull %call45, i32 noundef 5) #11
  %your_index = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %your_index to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %your_index, align 2
  %incdec.ptr = getelementptr i8, ptr %call50, i32 1
  %49 = ptrtoint ptr %call50 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %call50, align 1
  %your_id = getelementptr inbounds %struct.nr_sock, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %your_id to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %your_id, align 1
  %incdec.ptr51 = getelementptr i8, ptr %call50, i32 2
  %52 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %incdec.ptr, align 1
  %incdec.ptr52 = getelementptr i8, ptr %call50, i32 3
  %53 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %incdec.ptr51, align 1
  %incdec.ptr53 = getelementptr i8, ptr %call50, i32 4
  %54 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %incdec.ptr52, align 1
  %55 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 5, ptr %incdec.ptr53, align 1
  %call55 = call ptr @skb_put(ptr noundef nonnull %call45, i32 noundef %len) #11
  %56 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i, align 8
  %58 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %transport_header.i, align 2
  %conv.i112 = zext i16 %59 to i32
  %add.ptr.i113 = getelementptr i8, ptr %57, i32 %conv.i112
  %call57 = call fastcc i32 @memcpy_from_msg(ptr noundef %add.ptr.i113, ptr noundef %msg, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call45, i32 noundef 0) #11
  %60 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -14, ptr %err, align 4
  br label %out

if.end60:                                         ; preds = %if.end49
  %skc_state62 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %skc_state62 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %skc_state62, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp64.not = icmp eq i8 %62, 1
  br i1 %cmp64.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call45, i32 noundef 0) #11
  %63 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -107, ptr %err, align 4
  br label %out

if.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  call void @nr_output(ptr noundef %1, ptr noundef nonnull %call45) #11
  %64 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %len, ptr %err, align 4
  br label %out

out:                                              ; preds = %if.end67, %if.then66, %if.then59, %if.end41.out_crit_edge, %if.then40, %if.then32, %if.then27, %if.then22, %if.then17, %if.then11, %if.then6, %if.then2
  call void @release_sock(ptr noundef %1) #11
  %65 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %66, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sax) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %er = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %er) #11
  %4 = ptrtoint ptr %er to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %er, align 4, !annotation !144
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, -65
  %and3 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and, i32 noundef %and3, ptr noundef nonnull %er) #11
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @release_sock(ptr noundef %1) #11
  %7 = ptrtoint ptr %er to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %er, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %size)
  %cmp8 = icmp ugt i32 %15, %size
  br i1 %cmp8, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_flags, align 4
  %or = or i32 %17, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %copied.0 = phi i32 [ %size, %if.then10 ], [ %15, %if.end7.if.end11_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #11
  %18 = ptrtoint ptr %er to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %er, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #11
  call void @release_sock(ptr noundef %1) #11
  %19 = ptrtoint ptr %er to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %er, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %cmp17.not = icmp eq ptr %3, null
  br i1 %cmp17.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = call ptr @memset(ptr %3, i32 0, i32 16)
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 6, ptr %3, align 4
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 7
  %25 = call ptr @memcpy(ptr %sax25_call, ptr %add.ptr.i, i32 7)
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %26 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %msg_namelen, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #11
  call void @release_sock(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then15, %if.then6, %if.then
  %retval.0 = phi i32 [ -107, %if.then ], [ %8, %if.then6 ], [ %20, %if.then15 ], [ %copied.0, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %er) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nr_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !135
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !118) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !136
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !128

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !137
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_findbyuid([1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax25_uid_put(ptr noundef %assoc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %refcount = getelementptr inbounds %struct.ax25_uid_assoc, ptr %assoc, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !131

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @kfree(ptr noundef %assoc) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nr_dev_first() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_establish_data_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_error(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !131

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #11, !srcloc !150
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  %sub = sub i32 0, %asmresult.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_rt_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_from_msg(ptr noundef %data, ptr noundef %msg, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #11
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %data, i32 noundef %len, ptr noundef %msg_iter) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %len)
  %cmp.i = icmp eq i32 %call3.i.i, %len
  br i1 %cmp.i, label %entry.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !131

entry.copy_from_iter_full.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call3.i.i) #11
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %entry.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %entry.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_route_frame(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nr_info_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @nr_list, i64 noundef %1) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nr_info_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nr_info_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @nr_list, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_info_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #11
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.18) #11
  br label %if.end37

if.else:                                          ; preds = %entry
  %sk_lock = getelementptr i8, ptr %v, i32 40
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #11
  %device = getelementptr i8, ptr %v, i32 900
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 8
  %cmp1 = icmp eq ptr %2, null
  %.str.19. = select i1 %cmp1, ptr @.str.19, ptr %2
  %user_addr = getelementptr i8, ptr %v, i32 876
  %call5 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %user_addr) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, ptr noundef %call5) #11
  %dest_addr = getelementptr i8, ptr %v, i32 890
  %call7 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %dest_addr) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, ptr noundef %call7) #11
  %source_addr = getelementptr i8, ptr %v, i32 883
  %call9 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %source_addr) #11
  %my_index = getelementptr i8, ptr %v, i32 904
  %3 = ptrtoint ptr %my_index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %my_index, align 4
  %conv = zext i8 %4 to i32
  %my_id = getelementptr i8, ptr %v, i32 905
  %5 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %my_id, align 1
  %conv10 = zext i8 %6 to i32
  %your_index = getelementptr i8, ptr %v, i32 906
  %7 = ptrtoint ptr %your_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %your_index, align 2
  %conv11 = zext i8 %8 to i32
  %your_id = getelementptr i8, ptr %v, i32 907
  %9 = ptrtoint ptr %your_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %your_id, align 1
  %conv12 = zext i8 %10 to i32
  %state = getelementptr i8, ptr %v, i32 908
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 8
  %conv13 = zext i8 %12 to i32
  %vs = getelementptr i8, ptr %v, i32 912
  %13 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vs, align 4
  %conv14 = zext i16 %14 to i32
  %vr = getelementptr i8, ptr %v, i32 914
  %15 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vr, align 2
  %conv15 = zext i16 %16 to i32
  %va = getelementptr i8, ptr %v, i32 916
  %17 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %va, align 8
  %conv16 = zext i16 %18 to i32
  %t1timer = getelementptr i8, ptr %v, i32 944
  %call17 = call i32 @ax25_display_timer(ptr noundef %t1timer) #11
  %div = udiv i32 %call17, 100
  %t1 = getelementptr i8, ptr %v, i32 924
  %19 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t1, align 8
  %div18 = udiv i32 %20, 100
  %t2timer = getelementptr i8, ptr %v, i32 992
  %call19 = call i32 @ax25_display_timer(ptr noundef %t2timer) #11
  %div20 = udiv i32 %call19, 100
  %t2 = getelementptr i8, ptr %v, i32 928
  %21 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t2, align 4
  %div21 = udiv i32 %22, 100
  %t4timer = getelementptr i8, ptr %v, i32 1040
  %call22 = call i32 @ax25_display_timer(ptr noundef %t4timer) #11
  %div23 = udiv i32 %call22, 100
  %t4 = getelementptr i8, ptr %v, i32 932
  %23 = ptrtoint ptr %t4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t4, align 8
  %div24 = udiv i32 %24, 100
  %idletimer = getelementptr i8, ptr %v, i32 1088
  %call25 = call i32 @ax25_display_timer(ptr noundef %idletimer) #11
  %div26 = udiv i32 %call25, 6000
  %idle = getelementptr i8, ptr %v, i32 936
  %25 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idle, align 4
  %div27 = udiv i32 %26, 6000
  %n2count = getelementptr i8, ptr %v, i32 921
  %27 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %n2count, align 1
  %conv28 = zext i8 %28 to i32
  %n2 = getelementptr i8, ptr %v, i32 920
  %29 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %n2, align 4
  %conv29 = zext i8 %30 to i32
  %window = getelementptr i8, ptr %v, i32 911
  %31 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %window, align 1
  %conv30 = zext i8 %32 to i32
  %sk_wmem_alloc.i = getelementptr i8, ptr %v, i32 360
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %33 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %34, -1
  %sk_backlog.i = getelementptr i8, ptr %v, i32 288
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  %35 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_socket = getelementptr i8, ptr %v, i32 796
  %37 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino = getelementptr inbounds %struct.socket_alloc, ptr %38, i32 0, i32 1, i32 11
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %40, %cond.true ], [ 0, %if.else.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, ptr noundef %call9, ptr noundef nonnull %.str.19., i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %div, i32 noundef %div18, i32 noundef %div20, i32 noundef %div21, i32 noundef %div23, i32 noundef %div24, i32 noundef %div26, i32 noundef %div27, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %sub.i, i32 noundef %36, i32 noundef %cond) #11
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #11
  br label %if.end37

if.end37:                                         ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_display_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_link_failed(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp eq ptr %3, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  %or.cond = and i1 %cmp.not, %cmp.i
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nr_list_lock) #11
  %4 = load ptr, ptr @nr_list, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %add.ptr.i = getelementptr i8, ptr %4, i32 -84
  %tobool2.not2225.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not22.i = or i1 %tobool.not.i, %tobool2.not2225.i
  br i1 %tobool2.not22.i, label %if.end4.nr_kill_by_device.exit_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.nr_kill_by_device.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %nr_kill_by_device.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %s.023.i = phi ptr [ %add.ptr9.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end4.for.body.i_crit_edge ]
  %device.i = getelementptr inbounds %struct.nr_sock, ptr %s.023.i, i32 0, i32 4
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i, align 8
  %cmp.i7 = icmp eq ptr %6, %1
  br i1 %cmp.i7, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nr_disconnect(ptr noundef nonnull %s.023.i, i32 noundef 101) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %7 = getelementptr inbounds %struct.sock_common, ptr %s.023.i, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  %add.ptr9.i = getelementptr i8, ptr %9, i32 -84
  %tobool2.not26.i = icmp eq ptr %add.ptr9.i, null
  %tobool2.not.i = or i1 %tobool5.not.i, %tobool2.not26.i
  br i1 %tobool2.not.i, label %for.inc.i.nr_kill_by_device.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.nr_kill_by_device.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nr_kill_by_device.exit

nr_kill_by_device.exit:                           ; preds = %for.inc.i.nr_kill_by_device.exit_crit_edge, %if.end4.nr_kill_by_device.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nr_list_lock) #11
  tail call void @nr_rt_device_down(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %nr_kill_by_device.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_rt_device_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @sysctl_netrom_default_path_quality, !1, !"sysctl_netrom_default_path_quality", i1 false, i1 false}
!1 = !{!"../net/netrom/af_netrom.c", i32 46, i32 5}
!2 = !{ptr @sysctl_netrom_obsolescence_count_initialiser, !3, !"sysctl_netrom_obsolescence_count_initialiser", i1 false, i1 false}
!3 = !{!"../net/netrom/af_netrom.c", i32 47, i32 5}
!4 = !{ptr @sysctl_netrom_network_ttl_initialiser, !5, !"sysctl_netrom_network_ttl_initialiser", i1 false, i1 false}
!5 = !{!"../net/netrom/af_netrom.c", i32 48, i32 5}
!6 = !{ptr @sysctl_netrom_transport_timeout, !7, !"sysctl_netrom_transport_timeout", i1 false, i1 false}
!7 = !{!"../net/netrom/af_netrom.c", i32 49, i32 5}
!8 = !{ptr @sysctl_netrom_transport_maximum_tries, !9, !"sysctl_netrom_transport_maximum_tries", i1 false, i1 false}
!9 = !{!"../net/netrom/af_netrom.c", i32 50, i32 5}
!10 = !{ptr @sysctl_netrom_transport_acknowledge_delay, !11, !"sysctl_netrom_transport_acknowledge_delay", i1 false, i1 false}
!11 = !{!"../net/netrom/af_netrom.c", i32 51, i32 5}
!12 = !{ptr @sysctl_netrom_transport_busy_delay, !13, !"sysctl_netrom_transport_busy_delay", i1 false, i1 false}
!13 = !{!"../net/netrom/af_netrom.c", i32 52, i32 5}
!14 = !{ptr @sysctl_netrom_transport_requested_window_size, !15, !"sysctl_netrom_transport_requested_window_size", i1 false, i1 false}
!15 = !{!"../net/netrom/af_netrom.c", i32 53, i32 5}
!16 = !{ptr @sysctl_netrom_transport_no_activity_timeout, !17, !"sysctl_netrom_transport_no_activity_timeout", i1 false, i1 false}
!17 = !{!"../net/netrom/af_netrom.c", i32 54, i32 5}
!18 = !{ptr @sysctl_netrom_routing_control, !19, !"sysctl_netrom_routing_control", i1 false, i1 false}
!19 = !{!"../net/netrom/af_netrom.c", i32 55, i32 5}
!20 = !{ptr @sysctl_netrom_link_fails_count, !21, !"sysctl_netrom_link_fails_count", i1 false, i1 false}
!21 = !{!"../net/netrom/af_netrom.c", i32 56, i32 5}
!22 = !{ptr @sysctl_netrom_reset_circuit, !23, !"sysctl_netrom_reset_circuit", i1 false, i1 false}
!23 = !{!"../net/netrom/af_netrom.c", i32 57, i32 5}
!24 = !{ptr @__initcall__kmod_netrom__496_1483_nr_proto_init6, !25, !"__initcall__kmod_netrom__496_1483_nr_proto_init6", i1 false, i1 false}
!25 = !{!"../net/netrom/af_netrom.c", i32 1483, i32 1}
!26 = !{ptr @__param_nr_ndevs, !27, !"__param_nr_ndevs", i1 false, i1 false}
!27 = !{!"../net/netrom/af_netrom.c", i32 1485, i32 1}
!28 = !{ptr @__UNIQUE_ID_nr_ndevstype497, !27, !"__UNIQUE_ID_nr_ndevstype497", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_nr_ndevs498, !30, !"__UNIQUE_ID_nr_ndevs498", i1 false, i1 false}
!30 = !{!"../net/netrom/af_netrom.c", i32 1486, i32 1}
!31 = !{ptr @__UNIQUE_ID_author499, !32, !"__UNIQUE_ID_author499", i1 false, i1 false}
!32 = !{!"../net/netrom/af_netrom.c", i32 1488, i32 1}
!33 = !{ptr @__UNIQUE_ID_description500, !34, !"__UNIQUE_ID_description500", i1 false, i1 false}
!34 = !{!"../net/netrom/af_netrom.c", i32 1489, i32 1}
!35 = !{ptr @__UNIQUE_ID_file501, !36, !"__UNIQUE_ID_file501", i1 false, i1 false}
!36 = !{!"../net/netrom/af_netrom.c", i32 1490, i32 1}
!37 = !{ptr @__UNIQUE_ID_license502, !36, !"__UNIQUE_ID_license502", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_alias503, !39, !"__UNIQUE_ID_alias503", i1 false, i1 false}
!39 = !{!"../net/netrom/af_netrom.c", i32 1491, i32 1}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netrom/af_netrom.c", i32 1497, i32 20}
!42 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netrom/af_netrom.c", i32 1498, i32 20}
!44 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netrom/af_netrom.c", i32 1499, i32 20}
!46 = !{ptr @__exitcall_nr_exit, !47, !"__exitcall_nr_exit", i1 false, i1 false}
!47 = !{!"../net/netrom/af_netrom.c", i32 1526, i32 1}
!48 = !{ptr @dev_nr, !49, !"dev_nr", i1 false, i1 false}
!49 = !{!"../net/netrom/af_netrom.c", i32 1368, i32 28}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netrom/af_netrom.c", i32 62, i32 8}
!52 = !{ptr @nr_list_lock, !51, !"nr_list_lock", i1 false, i1 false}
!53 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/net/sock.h", i32 729, i32 3}
!55 = !{ptr @nr_list, !56, !"nr_list", i1 false, i1 false}
!56 = !{!"../net/netrom/af_netrom.c", i32 61, i32 8}
!57 = !{ptr @skb_queue_head_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!59 = !{ptr @.str.5, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @circuit, !61, !"circuit", i1 false, i1 false}
!61 = !{!"../net/netrom/af_netrom.c", i32 59, i32 23}
!62 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netrom/af_netrom.c", i32 1388, i32 3}
!64 = !{ptr @.str.7, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nr_proto_init._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @nr_proto_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/netrom/af_netrom.c", i32 1396, i32 3}
!70 = !{ptr @nr_proto_init._entry.9, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @nr_proto_init._entry_ptr.11, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/netrom/af_netrom.c", i32 1406, i32 17}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/netrom/af_netrom.c", i32 84, i32 2}
!76 = !{ptr @nr_netdev_addr_lock_key, !77, !"nr_netdev_addr_lock_key", i1 false, i1 false}
!77 = !{!"../net/netrom/af_netrom.c", i32 73, i32 30}
!78 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/netrom/af_netrom.c", i32 79, i32 2}
!80 = !{ptr @nr_netdev_xmit_lock_key, !81, !"nr_netdev_xmit_lock_key", i1 false, i1 false}
!81 = !{!"../net/netrom/af_netrom.c", i32 72, i32 30}
!82 = !{ptr @nr_family_ops, !83, !"nr_family_ops", i1 false, i1 false}
!83 = !{!"../net/netrom/af_netrom.c", i32 1336, i32 38}
!84 = !{ptr @nr_proto_ops, !85, !"nr_proto_ops", i1 false, i1 false}
!85 = !{!"../net/netrom/af_netrom.c", i32 1342, i32 31}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/netrom/af_netrom.c", i32 604, i32 25}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/netrom/af_netrom.c", i32 678, i32 25}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!92 = !{ptr @.str.15, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!95 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!97 = !{ptr @nr_pid, !98, !"nr_pid", i1 false, i1 false}
!98 = !{!"../net/netrom/af_netrom.c", i32 1370, i32 29}
!99 = !{ptr @nr_info_seqops, !100, !"nr_info_seqops", i1 false, i1 false}
!100 = !{!"../net/netrom/af_netrom.c", i32 1328, i32 36}
!101 = !{ptr @.str.18, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netrom/af_netrom.c", i32 1282, i32 1}
!103 = !{ptr @.str.19, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netrom/af_netrom.c", i32 1290, i32 14}
!105 = !{ptr @.str.20, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netrom/af_netrom.c", i32 1294, i32 19}
!107 = !{ptr @.str.21, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/netrom/af_netrom.c", i32 1297, i32 1}
!109 = !{ptr @__param_str_nr_ndevs, !27, !"__param_str_nr_ndevs", i1 false, i1 false}
!110 = !{ptr @nr_ndevs, !111, !"nr_ndevs", i1 false, i1 false}
!111 = !{!"../net/netrom/af_netrom.c", i32 44, i32 12}
!112 = !{ptr @nr_linkfail_notifier, !113, !"nr_linkfail_notifier", i1 false, i1 false}
!113 = !{!"../net/netrom/af_netrom.c", i32 1375, i32 29}
!114 = !{ptr @nr_dev_notifier, !115, !"nr_dev_notifier", i1 false, i1 false}
!115 = !{!"../net/netrom/af_netrom.c", i32 1364, i32 30}
!116 = !{ptr @nr_proto, !117, !"nr_proto", i1 false, i1 false}
!117 = !{!"../net/netrom/af_netrom.c", i32 415, i32 21}
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
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 2148460823}
!130 = !{i64 2148375263, i64 2148375295, i64 2148375324, i64 2148375358, i64 2148375389, i64 2148375412}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2149336937}
!133 = !{i64 2148372798, i64 2148372830, i64 2148372859, i64 2148372893, i64 2148372924, i64 2148372947}
!134 = !{i64 2154681684, i64 2154682172, i64 2154681721, i64 2154681777, i64 2154681811, i64 2154681835, i64 2154681876, i64 2154681897, i64 2154681925, i64 2154681959}
!135 = !{i64 774968, i64 775029}
!136 = !{i64 777700}
!137 = !{i64 777985}
!138 = !{i64 2156743387}
!139 = !{i64 5142226}
!140 = !{i64 5142423}
!141 = !{i64 2152627656}
!142 = !{i64 2157473022, i64 2157473302, i64 2157473636, i64 2157473970}
!143 = !{i64 2157481902, i64 2157482182, i64 2157482516, i64 2157482850}
!144 = !{!"auto-init"}
!145 = !{i64 2152646671, i64 2152646696}
!146 = !{i64 2157444313, i64 2157444593, i64 2157444927, i64 2157445261}
!147 = !{i64 2157455736, i64 2157456016, i64 2157456350, i64 2157456684}
!148 = !{i64 2152647352, i64 2152647377}
!149 = !{i64 2156800170}
!150 = !{i64 878036, i64 878053, i64 878077, i64 878103, i64 878121}
!151 = !{i64 2156800513}
