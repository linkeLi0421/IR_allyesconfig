; ModuleID = '/llk/IR_all_yes/net/rose/af_rose.c_pt.bc'
source_filename = "../net/rose/af_rose.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.80 }
%union.anon.80 = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.54, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.54 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
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
%struct.ax25_address = type { [7 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.100, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.100 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.ax25_protocol = type { ptr, i32, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rose_sock = type { %struct.sock, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.rose_facilities_struct, %struct.timer_list, %struct.timer_list }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.105, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.106, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.107, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.101, [0 x i32], %union.anon.102, i16, i16, %union.anon.103, %struct.refcount_struct, [0 x i32], %union.anon.104 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.105 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rose_address = type { [5 x i8] }
%struct.rose_facilities_struct = type { %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], i32, %struct.rose_address, %struct.ax25_address }
%struct.rose_neigh = type { ptr, %struct.ax25_address, ptr, ptr, ptr, i16, i16, i32, i8, i8, i8, %struct.sk_buff_head, %struct.timer_list, %struct.timer_list }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
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
%struct.sockaddr_rose = type { i16, %struct.rose_address, %struct.ax25_address, i32, %struct.ax25_address }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
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
%union.anon.71 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.ax25_uid_assoc = type { %struct.hlist_node, %struct.refcount_struct, %struct.kuid_t, %struct.ax25_address }
%struct.full_sockaddr_rose = type { i16, %struct.rose_address, %struct.ax25_address, i32, [6 x %struct.ax25_address] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.144 = type { ptr }
%struct.rose_cause_struct = type { i8, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.99, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.9, %union.anon.97 }
%union.anon.9 = type { ptr }
%union.anon.97 = type { i64 }
%union.anon.99 = type { ptr }

@sysctl_rose_restart_request_timeout = dso_local global { i32, [28 x i8] } { i32 180000, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_call_request_timeout = dso_local global { i32, [28 x i8] } { i32 200000, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_reset_request_timeout = dso_local global { i32, [28 x i8] } { i32 180000, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_clear_request_timeout = dso_local global { i32, [28 x i8] } { i32 180000, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_no_activity_timeout = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@sysctl_rose_ack_hold_back_timeout = dso_local global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_routing_control = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_link_fail_timeout = dso_local global { i32, [28 x i8] } { i32 120000, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_maximum_vcs = dso_local global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@sysctl_rose_window_size = dso_local global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%02X%02X%02X%02X%02X\00", [43 x i8] zeroinitializer }, align 32
@rose_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rose_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@rose_destroy_socket.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&sk->sk_timer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__initcall__kmod_rose__496_1573_rose_proto_init6 = internal global ptr @rose_proto_init, section ".initcall6.init", align 4
@__param_str_rose_ndevs = internal constant [16 x i8] c"rose.rose_ndevs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rose_ndevs = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_rose_ndevs = internal constant %struct.kernel_param { ptr @__param_str_rose_ndevs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.80 { ptr @rose_ndevs } }, section "__param", align 4
@__UNIQUE_ID_rose_ndevstype497 = internal constant [29 x i8] c"rose.parmtype=rose_ndevs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rose_ndevs498 = internal constant [44 x i8] c"rose.parm=rose_ndevs:number of ROSE devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [60 x i8] c"rose.author=Jonathan Naylor G4KLX <g4klx@g4klx.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description500 = internal constant [63 x i8] c"rose.description=The amateur radio ROSE network layer protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [24 x i8] c"rose.file=net/rose/rose\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [17 x i8] c"rose.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias503 = internal constant [21 x i8] c"rose.alias=net-pf-11\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rose\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rose_neigh\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rose_nodes\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rose_routes\00", [20 x i8] zeroinitializer }, align 32
@rose_linkfail_notifier = internal global { %struct.ax25_linkfail, [20 x i8] } { %struct.ax25_linkfail { %struct.hlist_node zeroinitializer, ptr @rose_link_failed }, [20 x i8] zeroinitializer }, align 32
@rose_callsign = dso_local global { %struct.ax25_address, [25 x i8] } zeroinitializer, align 32
@null_ax25_address = external dso_local constant %struct.ax25_address, align 1
@rose_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rose_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dev_rose = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rose_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1408, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.100 zeroinitializer, ptr null, [32 x i8] c"ROSE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rose_exit = internal global ptr @rose_exit, section ".exitcall.exit", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rose_list_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rose_make_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&rose->timer)\00", [17 x i8] zeroinitializer }, align 32
@rose_make_new.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&rose->idletimer)\00", [45 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rose_proto_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ROSE: rose_proto_init - rose_ndevs parameter too large\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rose_proto_init\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/rose/af_rose.c\00", [45 x i8] zeroinitializer }, align 32
@rose_proto_init._entry_ptr = internal global ptr @rose_proto_init._entry, section ".printk_index", align 4
@rose_proto_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.15, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ROSE: rose_proto_init - unable to allocate device structure\0A\00", [33 x i8] zeroinitializer }, align 32
@rose_proto_init._entry_ptr.18 = internal global ptr @rose_proto_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rose%d\00", [25 x i8] zeroinitializer }, align 32
@rose_proto_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.15, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ROSE: rose_proto_init - unable to allocate memory\0A\00", [43 x i8] zeroinitializer }, align 32
@rose_proto_init._entry_ptr.22 = internal global ptr @rose_proto_init._entry.20, section ".printk_index", align 4
@rose_proto_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str.15, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ROSE: netdevice registration failed\0A\00", [57 x i8] zeroinitializer }, align 32
@rose_proto_init._entry_ptr.25 = internal global ptr @rose_proto_init._entry.23, section ".printk_index", align 4
@rose_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 11, ptr @rose_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@rose_pid = internal global { %struct.ax25_protocol, [20 x i8] } { %struct.ax25_protocol { ptr null, i32 1, ptr @rose_route_frame }, [20 x i8] zeroinitializer }, align 32
@rose_info_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @rose_info_start, ptr @rose_info_stop, ptr @rose_info_next, ptr @rose_info_show }, [16 x i8] zeroinitializer }, align 32
@rose_neigh_seqops = external dso_local constant %struct.seq_operations, align 4
@rose_node_seqops = external dso_local constant %struct.seq_operations, align 4
@rose_route_seqops = external dso_local global %struct.seq_operations, align 4
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&rose_netdev_addr_lock_key\00", [37 x i8] zeroinitializer }, align 32
@rose_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&rose_netdev_xmit_lock_key\00", [37 x i8] zeroinitializer }, align 32
@rose_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rose_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 11, ptr null, ptr @rose_release, ptr @rose_bind, ptr @rose_connect, ptr @sock_no_socketpair, ptr @rose_accept, ptr @rose_getname, ptr @datagram_poll, ptr @rose_ioctl, ptr @sock_gettstamp, ptr @rose_listen, ptr @sock_no_shutdown, ptr @rose_setsockopt, ptr @rose_getsockopt, ptr null, ptr @rose_sendmsg, ptr @rose_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rose_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rose_create.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ax25_uid_policy = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"dest_addr  dest_call src_addr   src_call  dev   lci neigh st vs vr va   t  t1  t2  t3  hb    idle Snd-Q Rcv-Q inode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-10s %-9s \00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"??????-?\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%-10s %-9s %-5s %3.3X %05d  %d  %d  %d  %d %3lu %3lu %3lu %3lu %3lu %3lu/%03lu %5d %5d %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 64]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 64]
@__sancov_gen_cov_switch_values.39 = internal global [22 x i64] [i64 20, i64 32, i64 21521, i64 21531, i64 35083, i64 35084, i64 35093, i64 35094, i64 35095, i64 35096, i64 35097, i64 35098, i64 35099, i64 35100, i64 35101, i64 35102, i64 35296, i64 35297, i64 35298, i64 35299, i64 35300, i64 35301]
@__sancov_gen_cov_switch_values.40 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 64]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 270]
@___asan_gen_.44 = private unnamed_addr constant [36 x i8] c"sysctl_rose_restart_request_timeout\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 49, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [33 x i8] c"sysctl_rose_call_request_timeout\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 50, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [34 x i8] c"sysctl_rose_reset_request_timeout\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 51, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant [34 x i8] c"sysctl_rose_clear_request_timeout\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 52, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant [32 x i8] c"sysctl_rose_no_activity_timeout\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 53, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [34 x i8] c"sysctl_rose_ack_hold_back_timeout\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 54, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"sysctl_rose_routing_control\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 55, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [30 x i8] c"sysctl_rose_link_fail_timeout\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 56, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"sysctl_rose_maximum_vcs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 57, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"sysctl_rose_window_size\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 58, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 99, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"rose_list_lock\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"rose_list\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 60, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 356, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"rose_ndevs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 47, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1587, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1588, i32 20 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1589, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1590, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"rose_linkfail_notifier\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1491, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"rose_callsign\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 65, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"rose_dev_notifier\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1480, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"dev_rose\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1484, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"rose_proto\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 505, i32 21 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 61, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 729, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 584, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 585, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1984, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1501, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1515, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1524, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1527, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1533, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"rose_family_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1452, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"rose_pid\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1486, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"rose_info_seqops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1444, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 85, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"rose_netdev_addr_lock_key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 74, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 80, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"rose_netdev_xmit_lock_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 73, i32 30 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"rose_proto_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1458, i32 31 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 540, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 541, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 230, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 214, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 174, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1396, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1405, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1409, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1414, i32 15 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [22 x i8] c"../net/rose/af_rose.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1419, i32 7 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias503, ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__UNIQUE_ID_rose_ndevs498, ptr @__UNIQUE_ID_rose_ndevstype497, ptr @__exitcall_rose_exit, ptr @__initcall__kmod_rose__496_1573_rose_proto_init6, ptr @__param_rose_ndevs, ptr @rose_exit, ptr @rose_proto_init._entry, ptr @rose_proto_init._entry.16, ptr @rose_proto_init._entry.20, ptr @rose_proto_init._entry.23, ptr @rose_proto_init._entry_ptr, ptr @rose_proto_init._entry_ptr.18, ptr @rose_proto_init._entry_ptr.22, ptr @rose_proto_init._entry_ptr.25, ptr @sysctl_rose_restart_request_timeout, ptr @sysctl_rose_call_request_timeout, ptr @sysctl_rose_reset_request_timeout, ptr @sysctl_rose_clear_request_timeout, ptr @sysctl_rose_no_activity_timeout, ptr @sysctl_rose_ack_hold_back_timeout, ptr @sysctl_rose_routing_control, ptr @sysctl_rose_link_fail_timeout, ptr @sysctl_rose_maximum_vcs, ptr @sysctl_rose_window_size, ptr @.str.1, ptr @rose_list_lock, ptr @rose_list, ptr @rose_destroy_socket.__key, ptr @.str.2, ptr @rose_ndevs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rose_linkfail_notifier, ptr @rose_callsign, ptr @rose_dev_notifier, ptr @dev_rose, ptr @rose_proto, ptr @.str.7, ptr @.str.8, ptr @rose_make_new.__key, ptr @.str.9, ptr @rose_make_new.__key.10, ptr @.str.11, ptr @skb_queue_head_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @rose_family_ops, ptr @rose_pid, ptr @rose_info_seqops, ptr @.str.26, ptr @rose_netdev_addr_lock_key, ptr @.str.27, ptr @rose_netdev_xmit_lock_key, ptr @rose_proto_ops, ptr @rose_create.__key, ptr @rose_create.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_restart_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_call_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_reset_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_clear_request_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_no_activity_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_ack_hold_back_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_routing_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_link_fail_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_maximum_vcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_rose_window_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_destroy_socket.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_ndevs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_linkfail_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_callsign to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_rose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_make_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_make_new.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_proto_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_proto_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_proto_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_proto_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_pid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_info_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_create.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rose2asc(ptr noundef returned writeonly %buf, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr [5 x i8], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr [5 x i8], ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp11 = icmp eq i8 %5, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %arrayidx15 = getelementptr [5 x i8], ptr %addr, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp17 = icmp eq i8 %7, 0
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %arrayidx21 = getelementptr [5 x i8], ptr %addr, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp23 = icmp eq i8 %9, 0
  br i1 %cmp23, label %if.then, label %land.lhs.true19.if.else_crit_edge

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 10752, ptr %buf, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true19.if.else_crit_edge, %land.lhs.true13.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %conv27 = zext i8 %1 to i32
  %arrayidx29 = getelementptr [5 x i8], ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %12 to i32
  %arrayidx33 = getelementptr [5 x i8], ptr %addr, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %14 to i32
  %arrayidx37 = getelementptr [5 x i8], ptr %addr, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %16 to i32
  %arrayidx41 = getelementptr [5 x i8], ptr %addr, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %18 to i32
  %call44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %conv27, i32 noundef %conv30, i32 noundef %conv34, i32 noundef %conv38, i32 noundef %conv42)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %buf
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rosecmp(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr1, align 1
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp4.not = icmp eq i8 %1, %3
  br i1 %cmp4.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr [5 x i8], ptr %addr1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr [5 x i8], ptr %addr2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4.not.1 = icmp eq i8 %5, %7
  br i1 %cmp4.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr [5 x i8], ptr %addr1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr [5 x i8], ptr %addr2, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp4.not.2 = icmp eq i8 %9, %11
  br i1 %cmp4.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr [5 x i8], ptr %addr1, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr [5 x i8], ptr %addr2, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp4.not.3 = icmp eq i8 %13, %15
  br i1 %cmp4.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.4 = getelementptr [5 x i8], ptr %addr1, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr [5 x i8], ptr %addr2, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp4.not.4 = icmp ne i8 %17, %19
  %spec.select = zext i1 %cmp4.not.4 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.3, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 1, %for.cond.1.cleanup_crit_edge ], [ 1, %for.cond.2.cleanup_crit_edge ], [ %spec.select, %for.cond.3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rosecmpm(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2, i16 noundef zeroext %mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mask to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %mask)
  %cmp = icmp ugt i16 %mask, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mask)
  %cmp341.not = icmp eq i16 %mask, 0
  br i1 %cmp341.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %div40 = lshr i32 %i.042, 1
  %rem = and i32 %i.042, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp eq i32 %rem, 0
  %arrayidx18 = getelementptr [5 x i8], ptr %addr1, i32 0, i32 %div40
  %0 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx18, align 1
  %arrayidx22 = getelementptr [5 x i8], ptr %addr2, i32 0, i32 %div40
  %2 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx22, align 1
  %4 = xor i8 %3, %1
  br i1 %cmp5.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.body
  %5 = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp13.not = icmp eq i8 %5, 0
  br i1 %cmp13.not, label %if.then7.for.inc_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp25.not = icmp ult i8 %4, 16
  br i1 %cmp25.not, label %if.else.for.inc_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then7.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_kill_by_neigh(ptr noundef readnone %neigh) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %0 = load ptr, ptr @rose_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2629 = icmp eq ptr %add.ptr, null
  %tobool2.not26 = or i1 %tobool.not, %tobool2.not2629
  br i1 %tobool2.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %s.027 = phi ptr [ %add.ptr11, %if.end.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %s.027, i32 0, i32 9
  %1 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %neighbour, align 8
  %cmp = icmp eq ptr %2, %neigh
  br i1 %cmp, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rose_disconnect(ptr noundef nonnull %s.027, i32 noundef 101, i32 noundef 9, i32 noundef 0) #13
  %3 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neighbour, align 8
  %use = getelementptr inbounds %struct.rose_neigh, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %use, align 2
  %dec = add i16 %6, -1
  store i16 %dec, ptr %use, align 2
  store ptr null, ptr %neighbour, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %7 = getelementptr inbounds %struct.sock_common, ptr %s.027, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool7.not = icmp eq ptr %9, null
  %add.ptr11 = getelementptr i8, ptr %9, i32 -84
  %tobool2.not30 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not30
  br i1 %tobool2.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_disconnect(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rose_find_socket(i32 noundef %lci, ptr noundef readnone %neigh) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %0 = load ptr, ptr @rose_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2731 = icmp eq ptr %add.ptr, null
  %tobool2.not27 = or i1 %tobool.not, %tobool2.not2731
  br i1 %tobool2.not27, label %entry.cleanup15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %s.028 = phi ptr [ %add.ptr11, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %lci3 = getelementptr inbounds %struct.rose_sock, ptr %s.028, i32 0, i32 11
  %1 = ptrtoint ptr %lci3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lci3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lci)
  %cmp = icmp eq i32 %2, %lci
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %s.028, i32 0, i32 9
  %3 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neighbour, align 8
  %cmp4 = icmp eq ptr %4, %neigh
  br i1 %cmp4, label %land.lhs.true.cleanup15_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.cleanup15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup15

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = getelementptr inbounds %struct.sock_common, ptr %s.028, i32 0, i32 15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool7.not = icmp eq ptr %7, null
  %add.ptr11 = getelementptr i8, ptr %7, i32 -84
  %tobool2.not32 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not32
  br i1 %tobool2.not, label %for.inc.cleanup15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %land.lhs.true.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %s.0.lcssa = phi ptr [ null, %entry.cleanup15_crit_edge ], [ null, %for.inc.cleanup15_crit_edge ], [ %s.028, %land.lhs.true.cleanup15_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  ret ptr %s.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_new_lci(ptr noundef %neigh) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dce_mode = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 9
  %0 = ptrtoint ptr %dce_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dce_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = load i32, ptr @sysctl_rose_maximum_vcs, align 4
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not55 = icmp slt i32 %2, 1
  br i1 %cmp.not55, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %lci.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %3 = load ptr, ptr @rose_list, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %3, i32 -84
  %tobool2.not2731.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not27.i = or i1 %tobool.not.i, %tobool2.not2731.i
  br i1 %tobool2.not27.i, label %for.body.land.lhs.true_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %s.028.i = phi ptr [ %add.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.for.body.i_crit_edge ]
  %lci3.i = getelementptr inbounds %struct.rose_sock, ptr %s.028.i, i32 0, i32 11
  %4 = ptrtoint ptr %lci3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lci3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %lci.056)
  %cmp.i = icmp eq i32 %5, %lci.056
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %neighbour.i = getelementptr inbounds %struct.rose_sock, ptr %s.028.i, i32 0, i32 9
  %6 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %neighbour.i, align 8
  %cmp4.i = icmp eq ptr %7, %neigh
  br i1 %cmp4.i, label %rose_find_socket.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = getelementptr inbounds %struct.sock_common, ptr %s.028.i, i32 0, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool7.not.i = icmp eq ptr %10, null
  %add.ptr11.i = getelementptr i8, ptr %10, i32 -84
  %tobool2.not32.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not32.i
  br i1 %tobool2.not.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

rose_find_socket.exit:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.inc.i.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  %call2 = tail call ptr @rose_route_free_lci(i32 noundef %lci.056, ptr noundef %neigh) #13
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %rose_find_socket.exit
  %inc = add i32 %lci.056, 1
  %11 = load i32, ptr @sysctl_rose_maximum_vcs, align 4
  %cmp.not = icmp sgt i32 %inc, %11
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp659 = icmp sgt i32 %2, 0
  br i1 %cmp659, label %if.else.for.body7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.for.body7_crit_edge:                      ; preds = %if.else
  br label %for.body7

for.body7:                                        ; preds = %for.inc15.for.body7_crit_edge, %if.else.for.body7_crit_edge
  %lci.160 = phi i32 [ %dec, %for.inc15.for.body7_crit_edge ], [ %2, %if.else.for.body7_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %12 = load ptr, ptr @rose_list, align 4
  %tobool.not.i31 = icmp eq ptr %12, null
  %add.ptr.i32 = getelementptr i8, ptr %12, i32 -84
  %tobool2.not2731.i33 = icmp eq ptr %add.ptr.i32, null
  %tobool2.not27.i34 = or i1 %tobool.not.i31, %tobool2.not2731.i33
  br i1 %tobool2.not27.i34, label %for.body7.land.lhs.true10_crit_edge, label %for.body7.for.body.i38_crit_edge

for.body7.for.body.i38_crit_edge:                 ; preds = %for.body7
  br label %for.body.i38

for.body7.land.lhs.true10_crit_edge:              ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10

for.body.i38:                                     ; preds = %for.inc.i46.for.body.i38_crit_edge, %for.body7.for.body.i38_crit_edge
  %s.028.i35 = phi ptr [ %add.ptr11.i43, %for.inc.i46.for.body.i38_crit_edge ], [ %add.ptr.i32, %for.body7.for.body.i38_crit_edge ]
  %lci3.i36 = getelementptr inbounds %struct.rose_sock, ptr %s.028.i35, i32 0, i32 11
  %13 = ptrtoint ptr %lci3.i36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lci3.i36, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %lci.160)
  %cmp.i37 = icmp eq i32 %14, %lci.160
  br i1 %cmp.i37, label %land.lhs.true.i41, label %for.body.i38.for.inc.i46_crit_edge

for.body.i38.for.inc.i46_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i46

land.lhs.true.i41:                                ; preds = %for.body.i38
  %neighbour.i39 = getelementptr inbounds %struct.rose_sock, ptr %s.028.i35, i32 0, i32 9
  %15 = ptrtoint ptr %neighbour.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %neighbour.i39, align 8
  %cmp4.i40 = icmp eq ptr %16, %neigh
  br i1 %cmp4.i40, label %rose_find_socket.exit48, label %land.lhs.true.i41.for.inc.i46_crit_edge

land.lhs.true.i41.for.inc.i46_crit_edge:          ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i46

for.inc.i46:                                      ; preds = %land.lhs.true.i41.for.inc.i46_crit_edge, %for.body.i38.for.inc.i46_crit_edge
  %17 = getelementptr inbounds %struct.sock_common, ptr %s.028.i35, i32 0, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool7.not.i42 = icmp eq ptr %19, null
  %add.ptr11.i43 = getelementptr i8, ptr %19, i32 -84
  %tobool2.not32.i44 = icmp eq ptr %add.ptr11.i43, null
  %tobool2.not.i45 = or i1 %tobool7.not.i42, %tobool2.not32.i44
  br i1 %tobool2.not.i45, label %for.inc.i46.land.lhs.true10_crit_edge, label %for.inc.i46.for.body.i38_crit_edge

for.inc.i46.for.body.i38_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i38

for.inc.i46.land.lhs.true10_crit_edge:            ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10

rose_find_socket.exit48:                          ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  br label %for.inc15

land.lhs.true10:                                  ; preds = %for.inc.i46.land.lhs.true10_crit_edge, %for.body7.land.lhs.true10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  %call11 = tail call ptr @rose_route_free_lci(i32 noundef %lci.160, ptr noundef %neigh) #13
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.for.inc15_crit_edge

land.lhs.true10.for.inc15_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc15:                                        ; preds = %land.lhs.true10.for.inc15_crit_edge, %rose_find_socket.exit48
  %dec = add nsw i32 %lci.160, -1
  %cmp6 = icmp sgt i32 %lci.160, 1
  br i1 %cmp6, label %for.inc15.for.body7_crit_edge, label %for.inc15.cleanup_crit_edge

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc15.for.body7_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %lci.160, %land.lhs.true10.cleanup_crit_edge ], [ 0, %for.inc15.cleanup_crit_edge ], [ %lci.056, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_route_free_lci(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_destroy_socket(ptr noundef %sk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %entry.rose_remove_socket.exit_crit_edge, label %if.then.i.i.i

entry.rose_remove_socket.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_remove_socket.exit

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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
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
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !153

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 729, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !155
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.rose_remove_socket.exit_crit_edge, !prof !153

if.end.i.i.rose_remove_socket.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_remove_socket.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  br label %rose_remove_socket.exit

rose_remove_socket.exit:                          ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.rose_remove_socket.exit_crit_edge, %entry.rose_remove_socket.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  tail call void @rose_stop_heartbeat(ptr noundef %sk) #13
  tail call void @rose_stop_idletimer(ptr noundef %sk) #13
  tail call void @rose_stop_timer(ptr noundef %sk) #13
  tail call void @rose_clear_queues(ptr noundef %sk) #13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %call23 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %cmp.not24 = icmp eq ptr %call23, null
  br i1 %cmp.not24, label %rose_remove_socket.exit.while.end_crit_edge, label %rose_remove_socket.exit.while.body_crit_edge

rose_remove_socket.exit.while.body_crit_edge:     ; preds = %rose_remove_socket.exit
  br label %while.body

rose_remove_socket.exit.while.end_crit_edge:      ; preds = %rose_remove_socket.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %rose_remove_socket.exit.while.body_crit_edge
  %call25 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call23, %rose_remove_socket.exit.while.body_crit_edge ]
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp1.not = icmp eq ptr %13, %sk
  br i1 %cmp1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or.i.i = or i32 %16, 1
  store i32 %or.i.i, ptr %14, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  tail call void @rose_start_heartbeat(ptr noundef %18) #13
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 4
  %state = getelementptr inbounds %struct.rose_sock, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call25, i32 noundef 0) #13
  %call = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %rose_remove_socket.exit.while.end_crit_edge
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 1
  br i1 %tobool.not.i, label %sk_has_allocations.exit, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

sk_has_allocations.exit:                          ; preds = %while.end
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #13
  %24 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_backlog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.i.not = icmp eq i32 %25, 0
  br i1 %tobool2.i.not, label %if.else, label %sk_has_allocations.exit.do.body_crit_edge

sk_has_allocations.exit.do.body_crit_edge:        ; preds = %sk_has_allocations.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %sk_has_allocations.exit.do.body_crit_edge, %while.end.do.body_crit_edge
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  tail call void @init_timer_key(ptr noundef %sk_timer, ptr noundef nonnull @rose_destroy_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @rose_destroy_socket.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 1000
  %expires = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 1
  %27 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %sk_timer) #13
  br label %if.end6

if.else:                                          ; preds = %sk_has_allocations.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.if.end6_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %if.end6

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @sk_free(ptr noundef %sk) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end6_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_heartbeat(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_idletimer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_clear_queues(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_heartbeat(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_destroy_timer(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  tail call void @rose_destroy_socket(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_rx_call_request(ptr noundef %skb, ptr noundef %dev, ptr noundef %neigh, i32 noundef %lci) local_unnamed_addr #4 align 64 {
entry:
  %facilities = alloca %struct.rose_facilities_struct, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %facilities) #13
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %0, align 4
  %2 = call ptr @memset(ptr %facilities, i32 0, i32 128)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %sub = add i32 %6, -14
  %call = call i32 @rose_parse_facilities(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %facilities) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @rose_transmit_clear_request(ptr noundef %neigh, i32 noundef %lci, i8 noundef zeroext 3, i8 noundef zeroext 76) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %source_call = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %7 = load ptr, ptr @rose_list, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -84
  %tobool2.not126133.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not126.i = or i1 %tobool.not.i, %tobool2.not126133.i
  br i1 %tobool2.not126.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %arrayidx2.1.i.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 1
  %arrayidx2.2.i.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 2
  %arrayidx2.3.i.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 3
  %arrayidx2.4.i.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %s.0127.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr18.i, %for.inc.i.for.body.i_crit_edge ]
  %source_addr.i = getelementptr inbounds %struct.rose_sock, ptr %s.0127.i, i32 0, i32 1
  %8 = ptrtoint ptr %source_addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %source_addr.i, align 1
  %10 = ptrtoint ptr %facilities to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %facilities, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp4.not.i.i = icmp eq i8 %9, %11
  br i1 %cmp4.not.i.i, label %for.cond.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.cond.i.i:                                     ; preds = %for.body.i
  %arrayidx.1.i.i = getelementptr %struct.rose_sock, ptr %s.0127.i, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i.i, align 1
  %14 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp4.not.1.i.i = icmp eq i8 %13, %15
  br i1 %cmp4.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.for.inc.i_crit_edge

for.cond.i.i.for.inc.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.rose_sock, ptr %s.0127.i, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2.i.i, align 1
  %18 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp4.not.2.i.i = icmp eq i8 %17, %19
  br i1 %cmp4.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.for.inc.i_crit_edge

for.cond.1.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.rose_sock, ptr %s.0127.i, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3.i.i, align 1
  %22 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp4.not.3.i.i = icmp eq i8 %21, %23
  br i1 %cmp4.not.3.i.i, label %rosecmp.exit.i, label %for.cond.2.i.i.for.inc.i_crit_edge

for.cond.2.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

rosecmp.exit.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.rose_sock, ptr %s.0127.i, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4.i.i, align 1
  %26 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp4.not.4.i.not.i = icmp eq i8 %25, %27
  br i1 %cmp4.not.4.i.not.i, label %land.lhs.true.i, label %rosecmp.exit.i.for.inc.i_crit_edge

rosecmp.exit.i.for.inc.i_crit_edge:               ; preds = %rosecmp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %rosecmp.exit.i
  %source_call.i = getelementptr inbounds %struct.rose_sock, ptr %s.0127.i, i32 0, i32 3
  %call5.i = call i32 @ax25cmp(ptr noundef %source_call.i, ptr noundef %source_call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %source_ndigis.i = getelementptr inbounds %struct.rose_sock, ptr %s.0127.i, i32 0, i32 5
  %28 = ptrtoint ptr %source_ndigis.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %source_ndigis.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not.i = icmp eq i8 %29, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %s.0127.i, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp.i = icmp eq i8 %31, 10
  br i1 %cmp.i, label %land.lhs.true9.i.lor.lhs.false_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true9.i.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %rosecmp.exit.i.for.inc.i_crit_edge, %for.cond.2.i.i.for.inc.i_crit_edge, %for.cond.1.i.i.for.inc.i_crit_edge, %for.cond.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %32 = getelementptr inbounds %struct.sock_common, ptr %s.0127.i, i32 0, i32 15
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool14.not.i = icmp eq ptr %34, null
  %add.ptr18.i = getelementptr i8, ptr %34, i32 -84
  %tobool2.not139.i = icmp eq ptr %add.ptr18.i, null
  %tobool2.not.i = or i1 %tobool14.not.i, %tobool2.not139.i
  br i1 %tobool2.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %35 = load ptr, ptr @rose_list, align 4
  %tobool24.not.i = icmp eq ptr %35, null
  %add.ptr28.i = getelementptr i8, ptr %35, i32 -84
  %tobool33.not129134.i = icmp eq ptr %add.ptr28.i, null
  %tobool33.not129.i = or i1 %tobool24.not.i, %tobool33.not129134.i
  br i1 %tobool33.not129.i, label %for.end.i.rose_find_listener.exit.thread_crit_edge, label %for.body34.lr.ph.i

for.end.i.rose_find_listener.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_find_listener.exit.thread

for.body34.lr.ph.i:                               ; preds = %for.end.i
  %arrayidx2.1.i94.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 1
  %arrayidx2.2.i98.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 2
  %arrayidx2.3.i102.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 3
  %arrayidx2.4.i106.i = getelementptr inbounds [5 x i8], ptr %facilities, i32 0, i32 4
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.inc54.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %s.1130.i = phi ptr [ %add.ptr28.i, %for.body34.lr.ph.i ], [ %add.ptr63.i, %for.inc54.i.for.body34.i_crit_edge ]
  %source_addr36.i = getelementptr inbounds %struct.rose_sock, ptr %s.1130.i, i32 0, i32 1
  %36 = ptrtoint ptr %source_addr36.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %source_addr36.i, align 1
  %38 = ptrtoint ptr %facilities to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %facilities, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp4.not.i92.i = icmp eq i8 %37, %39
  br i1 %cmp4.not.i92.i, label %for.cond.i96.i, label %for.body34.i.for.inc54.i_crit_edge

for.body34.i.for.inc54.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

for.cond.i96.i:                                   ; preds = %for.body34.i
  %arrayidx.1.i93.i = getelementptr %struct.rose_sock, ptr %s.1130.i, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i93.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.1.i93.i, align 1
  %42 = ptrtoint ptr %arrayidx2.1.i94.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.1.i94.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp4.not.1.i95.i = icmp eq i8 %41, %43
  br i1 %cmp4.not.1.i95.i, label %for.cond.1.i100.i, label %for.cond.i96.i.for.inc54.i_crit_edge

for.cond.i96.i.for.inc54.i_crit_edge:             ; preds = %for.cond.i96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

for.cond.1.i100.i:                                ; preds = %for.cond.i96.i
  %arrayidx.2.i97.i = getelementptr %struct.rose_sock, ptr %s.1130.i, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i97.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.2.i97.i, align 1
  %46 = ptrtoint ptr %arrayidx2.2.i98.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx2.2.i98.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp4.not.2.i99.i = icmp eq i8 %45, %47
  br i1 %cmp4.not.2.i99.i, label %for.cond.2.i104.i, label %for.cond.1.i100.i.for.inc54.i_crit_edge

for.cond.1.i100.i.for.inc54.i_crit_edge:          ; preds = %for.cond.1.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

for.cond.2.i104.i:                                ; preds = %for.cond.1.i100.i
  %arrayidx.3.i101.i = getelementptr %struct.rose_sock, ptr %s.1130.i, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i101.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.3.i101.i, align 1
  %50 = ptrtoint ptr %arrayidx2.3.i102.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.3.i102.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp4.not.3.i103.i = icmp eq i8 %49, %51
  br i1 %cmp4.not.3.i103.i, label %rosecmp.exit111.i, label %for.cond.2.i104.i.for.inc54.i_crit_edge

for.cond.2.i104.i.for.inc54.i_crit_edge:          ; preds = %for.cond.2.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

rosecmp.exit111.i:                                ; preds = %for.cond.2.i104.i
  %arrayidx.4.i105.i = getelementptr %struct.rose_sock, ptr %s.1130.i, i32 0, i32 1, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx.4.i105.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.4.i105.i, align 1
  %54 = ptrtoint ptr %arrayidx2.4.i106.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.4.i106.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp4.not.4.i107.not.i = icmp eq i8 %53, %55
  br i1 %cmp4.not.4.i107.not.i, label %land.lhs.true39.i, label %rosecmp.exit111.i.for.inc54.i_crit_edge

rosecmp.exit111.i.for.inc54.i_crit_edge:          ; preds = %rosecmp.exit111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

land.lhs.true39.i:                                ; preds = %rosecmp.exit111.i
  %source_call40.i = getelementptr inbounds %struct.rose_sock, ptr %s.1130.i, i32 0, i32 3
  %call41.i = call i32 @ax25cmp(ptr noundef %source_call40.i, ptr noundef nonnull @null_ax25_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true43.i, label %land.lhs.true39.i.for.inc54.i_crit_edge

land.lhs.true39.i.for.inc54.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

land.lhs.true43.i:                                ; preds = %land.lhs.true39.i
  %skc_state45.i = getelementptr inbounds %struct.sock_common, ptr %s.1130.i, i32 0, i32 4
  %56 = ptrtoint ptr %skc_state45.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state45.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %57)
  %cmp47.i = icmp eq i8 %57, 10
  br i1 %cmp47.i, label %land.lhs.true43.i.lor.lhs.false_crit_edge, label %land.lhs.true43.i.for.inc54.i_crit_edge

land.lhs.true43.i.for.inc54.i_crit_edge:          ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i

land.lhs.true43.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

for.inc54.i:                                      ; preds = %land.lhs.true43.i.for.inc54.i_crit_edge, %land.lhs.true39.i.for.inc54.i_crit_edge, %rosecmp.exit111.i.for.inc54.i_crit_edge, %for.cond.2.i104.i.for.inc54.i_crit_edge, %for.cond.1.i100.i.for.inc54.i_crit_edge, %for.cond.i96.i.for.inc54.i_crit_edge, %for.body34.i.for.inc54.i_crit_edge
  %58 = getelementptr inbounds %struct.sock_common, ptr %s.1130.i, i32 0, i32 15
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool59.not.i = icmp eq ptr %60, null
  %add.ptr63.i = getelementptr i8, ptr %60, i32 -84
  %tobool33.not140.i = icmp eq ptr %add.ptr63.i, null
  %tobool33.not.i = or i1 %tobool59.not.i, %tobool33.not140.i
  br i1 %tobool33.not.i, label %for.inc54.i.rose_find_listener.exit.thread_crit_edge, label %for.inc54.i.for.body34.i_crit_edge

for.inc54.i.for.body34.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body34.i

for.inc54.i.rose_find_listener.exit.thread_crit_edge: ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_find_listener.exit.thread

rose_find_listener.exit.thread:                   ; preds = %for.inc54.i.rose_find_listener.exit.thread_crit_edge, %for.end.i.rose_find_listener.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  br label %if.then6

lor.lhs.false:                                    ; preds = %land.lhs.true43.i.lor.lhs.false_crit_edge, %land.lhs.true9.i.lor.lhs.false_crit_edge
  %s.2.i = phi ptr [ %s.1130.i, %land.lhs.true43.i.lor.lhs.false_crit_edge ], [ %s.0127.i, %land.lhs.true9.i.lor.lhs.false_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 53
  %61 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 54
  %63 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp.i96 = icmp ugt i32 %62, %64
  br i1 %cmp.i96, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 45
  %65 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %66)
  %cmp.not.i = icmp eq i16 %66, 5
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false3.if.then6_crit_edge

lor.lhs.false3.if.then6_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.end.i:                                         ; preds = %lor.lhs.false3
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %s.2.i, i32 0, i32 9
  %67 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skc_net.i.i, align 4
  %call2.i = call ptr @sk_alloc(ptr noundef %68, i32 noundef 11, i32 noundef 2592, ptr noundef nonnull @rose_proto, i32 noundef 0) #13
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i.if.then6_crit_edge, label %if.end7

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %if.end.i.if.then6_crit_edge, %lor.lhs.false3.if.then6_crit_edge, %lor.lhs.false.if.then6_crit_edge, %rose_find_listener.exit.thread
  call void @rose_transmit_clear_request(ptr noundef %neigh, i32 noundef %lci, i8 noundef zeroext 5, i8 noundef zeroext 120) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call2.i) #13
  %ack_queue.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 28
  %lock.i.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 28, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %69 = ptrtoint ptr %ack_queue.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ack_queue.i, ptr %ack_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 28, i32 0, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %ack_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 28, i32 1
  %71 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %qlen.i.i.i, align 4
  %72 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %sk_type.i, align 2
  %sk_type8.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 45
  %74 = ptrtoint ptr %sk_type8.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %sk_type8.i, align 2
  %sk_priority.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 33
  %75 = ptrtoint ptr %sk_priority.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sk_priority.i, align 4
  %sk_priority9.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 33
  %77 = ptrtoint ptr %sk_priority9.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %sk_priority9.i, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 46
  %78 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %sk_protocol.i, align 4
  %sk_protocol10.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 46
  %80 = ptrtoint ptr %sk_protocol10.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %sk_protocol10.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 15
  %81 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_rcvbuf.i, align 8
  %sk_rcvbuf11.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 15
  %83 = ptrtoint ptr %sk_rcvbuf11.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sk_rcvbuf11.i, align 8
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 21
  %84 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_sndbuf12.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 21
  %86 = ptrtoint ptr %sk_sndbuf12.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %sk_sndbuf12.i, align 4
  %skc_state.i97 = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 4
  %87 = ptrtoint ptr %skc_state.i97 to i32
  call void @__asan_store1_noabort(i32 %87)
  store volatile i8 1, ptr %skc_state.i97, align 2
  %88 = getelementptr inbounds %struct.sock_common, ptr %s.2.i, i32 0, i32 13
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %91 = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 13
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %90, ptr %91, align 8
  %timer.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 30
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @rose_make_new.__key) #13
  %idletimer.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 31
  call void @init_timer_key(ptr noundef %idletimer.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @rose_make_new.__key.10) #13
  %t1.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 23
  %93 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %t1.i, align 8
  %t116.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 23
  %95 = ptrtoint ptr %t116.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %t116.i, align 8
  %t2.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 24
  %96 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %t2.i, align 4
  %t217.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 24
  %98 = ptrtoint ptr %t217.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %t217.i, align 4
  %t3.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 25
  %99 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %t3.i, align 8
  %t318.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 25
  %101 = ptrtoint ptr %t318.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %t318.i, align 8
  %hb.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 26
  %102 = ptrtoint ptr %hb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hb.i, align 4
  %hb19.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 26
  %104 = ptrtoint ptr %hb19.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %hb19.i, align 4
  %idle.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 27
  %105 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %idle.i, align 8
  %idle20.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 27
  %107 = ptrtoint ptr %idle20.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %idle20.i, align 8
  %defer.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 16
  %108 = ptrtoint ptr %defer.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %defer.i, align 1
  %defer21.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 16
  %110 = ptrtoint ptr %defer21.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %defer21.i, align 1
  %device.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 10
  %111 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device.i, align 4
  %device22.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 10
  %113 = ptrtoint ptr %device22.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %device22.i, align 4
  %qbitincl.i = getelementptr inbounds %struct.rose_sock, ptr %s.2.i, i32 0, i32 15
  %114 = ptrtoint ptr %qbitincl.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %qbitincl.i, align 2
  %qbitincl23.i = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 15
  %116 = ptrtoint ptr %qbitincl23.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %qbitincl23.i, align 2
  %117 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call2.i, ptr %0, align 4
  %118 = ptrtoint ptr %skc_state.i97 to i32
  call void @__asan_store1_noabort(i32 %118)
  store volatile i8 1, ptr %skc_state.i97, align 2
  %lci8 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 11
  %119 = ptrtoint ptr %lci8 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %lci, ptr %lci8, align 8
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 2
  %dest_addr9 = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 1
  %120 = call ptr @memcpy(ptr %dest_addr, ptr %dest_addr9, i32 5)
  %dest_call = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 4
  %dest_call10 = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 3
  %121 = call ptr @memcpy(ptr %dest_call, ptr %dest_call10, i32 7)
  %dest_ndigis = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 5
  %122 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %dest_ndigis, align 1
  %dest_ndigis11 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 6
  %124 = ptrtoint ptr %dest_ndigis11 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %dest_ndigis11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp13108.not = icmp eq i8 %123, 0
  br i1 %cmp13108.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %n.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rose_sock, ptr %call2.i, i32 0, i32 8, i32 %n.0109
  %arrayidx16 = getelementptr %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 7, i32 %n.0109
  %125 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx16, i32 7)
  %inc = add nuw nsw i32 %n.0109, 1
  %126 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %dest_ndigis, align 1
  %conv = zext i8 %127 to i32
  %cmp13 = icmp ult i32 %inc, %conv
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %source_addr17 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 1
  %128 = call ptr @memcpy(ptr %source_addr17, ptr %facilities, i32 5)
  %source_call19 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 3
  %129 = call ptr @memcpy(ptr %source_call19, ptr %source_call, i32 7)
  %source_ndigis = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 4
  %130 = ptrtoint ptr %source_ndigis to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %source_ndigis, align 4
  %source_ndigis21 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 5
  %132 = ptrtoint ptr %source_ndigis21 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %source_ndigis21, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp25111.not = icmp eq i8 %131, 0
  br i1 %cmp25111.not, label %for.end.for.end33_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %n.1112 = phi i32 [ %inc32, %for.body27.for.body27_crit_edge ], [ 0, %for.end.for.body27_crit_edge ]
  %arrayidx28 = getelementptr %struct.rose_sock, ptr %call2.i, i32 0, i32 7, i32 %n.1112
  %arrayidx30 = getelementptr %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 6, i32 %n.1112
  %133 = call ptr @memcpy(ptr %arrayidx28, ptr %arrayidx30, i32 7)
  %inc32 = add nuw nsw i32 %n.1112, 1
  %134 = ptrtoint ptr %source_ndigis to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %source_ndigis, align 4
  %conv24 = zext i8 %135 to i32
  %cmp25 = icmp ult i32 %inc32, %conv24
  br i1 %cmp25, label %for.body27.for.body27_crit_edge, label %for.body27.for.end33_crit_edge

for.body27.for.end33_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

for.end33:                                        ; preds = %for.body27.for.end33_crit_edge, %for.end.for.end33_crit_edge
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 9
  %136 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %neigh, ptr %neighbour, align 8
  %137 = ptrtoint ptr %device22.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %dev, ptr %device22.i, align 4
  %facilities34 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 29
  %138 = call ptr @memcpy(ptr %facilities34, ptr %facilities, i32 128)
  %use = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 6
  %139 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %use, align 2
  %inc36 = add i16 %140, 1
  store i16 %inc36, ptr %use, align 2
  %141 = ptrtoint ptr %defer.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %defer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool37.not = icmp eq i8 %142, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 13
  %143 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 5, ptr %state, align 8
  br label %if.end40

if.else:                                          ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #15
  call void @rose_write_internal(ptr noundef %call2.i, i32 noundef 15) #13
  %state39 = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 13
  %144 = ptrtoint ptr %state39 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 3, ptr %state39, align 8
  call void @rose_start_idletimer(ptr noundef %call2.i) #13
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then38
  %condition = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 14
  %145 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %condition, align 1
  %vs = getelementptr inbounds %struct.rose_sock, ptr %call2.i, i32 0, i32 19
  %146 = ptrtoint ptr %vs to i32
  call void @__asan_storeN_noabort(i32 %146, i32 8)
  store i64 0, ptr %vs, align 2
  %147 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sk_ack_backlog.i, align 4
  %add.i = add i32 %148, 1
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #13
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #13, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end40.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !153

if.end40.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end40
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %150 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %.not.i.i.i.i.i.i = icmp sgt i32 %150, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !156

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end40.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end40.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %151 = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 15
  %152 = load ptr, ptr @rose_list, align 4
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %152, ptr %151, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.rose_insert_socket.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.rose_insert_socket.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_insert_socket.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %152, i32 0, i32 1
  %154 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %151, ptr %pprev.i.i.i.i, align 4
  br label %rose_insert_socket.exit

rose_insert_socket.exit:                          ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.rose_insert_socket.exit_crit_edge
  store volatile ptr %151, ptr @rose_list, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 15, i32 0, i32 1
  %155 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr @rose_list, ptr %pprev34.i.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef %skb) #13
  call void @rose_start_heartbeat(ptr noundef %call2.i) #13
  %156 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %88, align 4
  %158 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.i.not = icmp eq i32 %158, 0
  br i1 %tobool.i.not, label %if.then42, label %rose_insert_socket.exit.cleanup_crit_edge

rose_insert_socket.exit.cleanup_crit_edge:        ; preds = %rose_insert_socket.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %rose_insert_socket.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %s.2.i, i32 0, i32 77
  %159 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sk_data_ready, align 8
  call void %160(ptr noundef nonnull %s.2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %rose_insert_socket.exit.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then ], [ 1, %if.then42 ], [ 1, %rose_insert_socket.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %facilities) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_parse_facilities(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_transmit_clear_request(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_idletimer(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rose_insert_socket(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !153

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !156

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = load ptr, ptr @rose_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %2, ptr @rose_list, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr @rose_list, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_proto_init() #6 section ".init.text" align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rose_ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870911, i32 %0)
  %cmp = icmp ugt i32 %0, 536870911
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  br label %cleanup44

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @rose_proto, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup44_crit_edge

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end4:                                          ; preds = %if.end
  %1 = call ptr @memcpy(ptr @rose_callsign, ptr @null_ax25_address, i32 7)
  %2 = load i32, ptr @rose_ndevs, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #13
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !153

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @dev_rose, align 4
  br label %do.end10

if.end7.i.i:                                      ; preds = %if.end4
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #17
  store ptr %call8.i.i, ptr @dev_rose, align 4
  %cmp6 = icmp eq ptr %call8.i.i, null
  br i1 %cmp6, label %if.end7.i.i.do.end10_crit_edge, label %for.cond.preheader

if.end7.i.i.do.end10_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

for.cond.preheader:                               ; preds = %if.end7.i.i
  %6 = load i32, ptr @rose_ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1467 = icmp sgt i32 %6, 0
  br i1 %cmp1467, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end10:                                         ; preds = %if.end7.i.i.do.end10_crit_edge, %kcalloc.exit.thread
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #16
  br label %out_proto_unregister

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #13
  %7 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.19, i32 noundef %i.068)
  %call17 = call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @rose_setup, i32 noundef 1, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %call25 = call i32 @register_netdev(ptr noundef nonnull %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  call void @free_netdev(ptr noundef nonnull %call17) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %dep_map.i = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @rose_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 104
  %10 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp1.not.i.i, label %if.end33.for.inc_crit_edge, label %for.body.lr.ph.i.i

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %if.end33
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %dep_map.i.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %wait_type_inner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait_type_inner.i.i.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @rose_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %16 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %17
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.inc_crit_edge

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

cleanup:                                          ; preds = %do.end30, %do.end21
  %rc.1 = phi i32 [ %call25, %do.end30 ], [ -12, %do.end21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068)
  %cmp4170.not = icmp eq i32 %i.068, 0
  br i1 %cmp4170.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.inc:                                          ; preds = %for.body.i.i.for.inc_crit_edge, %if.end33.for.inc_crit_edge
  %18 = load ptr, ptr @dev_rose, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %i.068
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #13
  %inc = add nuw nsw i32 %i.068, 1
  %20 = load i32, ptr @rose_ndevs, align 4
  %cmp14 = icmp slt i32 %inc, %20
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call35 = call i32 @sock_register(ptr noundef nonnull @rose_family_ops) #13
  %call36 = call i32 @register_netdevice_notifier(ptr noundef nonnull @rose_dev_notifier) #13
  call void @ax25_register_pid(ptr noundef nonnull @rose_pid) #13
  call void @ax25_linkfail_register(ptr noundef nonnull @rose_linkfail_notifier) #13
  call void @rose_register_sysctl() #13
  call void @rose_loopback_init() #13
  call void @rose_add_loopback_neigh() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call37 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %21, ptr noundef nonnull @rose_info_seqops, i32 noundef 0, ptr noundef null) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call38 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %22, ptr noundef nonnull @rose_neigh_seqops, i32 noundef 0, ptr noundef null) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call39 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %23, ptr noundef nonnull @rose_node_seqops, i32 noundef 0, ptr noundef null) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call40 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %24, ptr noundef nonnull @rose_route_seqops, i32 noundef 0, ptr noundef null) #13
  br label %cleanup44

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cleanup.while.body_crit_edge
  %dec71.in = phi i32 [ %dec71, %while.body.while.body_crit_edge ], [ %i.068, %cleanup.while.body_crit_edge ]
  %dec71 = add nsw i32 %dec71.in, -1
  %25 = load ptr, ptr @dev_rose, align 4
  %arrayidx42 = getelementptr ptr, ptr %25, i32 %dec71
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx42, align 4
  call void @unregister_netdev(ptr noundef %27) #13
  %28 = load ptr, ptr @dev_rose, align 4
  %arrayidx43 = getelementptr ptr, ptr %28, i32 %dec71
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx43, align 4
  call void @free_netdev(ptr noundef %30) #13
  %cmp41 = icmp sgt i32 %dec71.in, 1
  br i1 %cmp41, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %cleanup.while.end_crit_edge
  %31 = load ptr, ptr @dev_rose, align 4
  call void @kfree(ptr noundef %31) #13
  br label %out_proto_unregister

out_proto_unregister:                             ; preds = %while.end, %do.end10
  %rc.3 = phi i32 [ -12, %do.end10 ], [ %rc.1, %while.end ]
  call void @proto_unregister(ptr noundef nonnull @rose_proto) #13
  br label %cleanup44

cleanup44:                                        ; preds = %out_proto_unregister, %for.end, %if.end.cleanup44_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %if.end.cleanup44_crit_edge ], [ %rc.3, %out_proto_unregister ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rose_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %2) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %3) #13
  tail call void @rose_loopback_clear() #13
  tail call void @rose_rt_free() #13
  tail call void @ax25_protocol_release(i32 noundef 1) #13
  tail call void @ax25_linkfail_release(ptr noundef nonnull @rose_linkfail_notifier) #13
  %call = tail call i32 @ax25cmp(ptr noundef nonnull @rose_callsign, ptr noundef nonnull @null_ax25_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ax25_listen_release(ptr noundef nonnull @rose_callsign, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rose_unregister_sysctl() #13
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @rose_dev_notifier) #13
  tail call void @sock_unregister(i32 noundef 11) #13
  %4 = load i32, ptr @rose_ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp29 = icmp sgt i32 %4, 0
  br i1 %cmp29, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %if.end4.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %5 = load ptr, ptr @dev_rose, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end4_crit_edge, label %if.then3

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_netdev(ptr noundef nonnull %7) #13
  tail call void @free_netdev(ptr noundef nonnull %7) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body.if.end4_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %8 = load i32, ptr @rose_ndevs, align 4
  %cmp2 = icmp slt i32 %inc, %8
  br i1 %cmp2, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  %9 = load ptr, ptr @dev_rose, align 4
  tail call void @kfree(ptr noundef %9) #13
  tail call void @proto_unregister(ptr noundef nonnull @rose_proto) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_loopback_clear() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_rt_free() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_protocol_release(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_linkfail_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_listen_release(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_unregister_sysctl() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_setup(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_register_pid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_linkfail_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_register_sysctl() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_loopback_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_add_loopback_neigh() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i72.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i72.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 11, i32 noundef 2592, ptr noundef nonnull @rose_proto, i32 noundef %kern) #13
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call6) #13
  %ack_queue = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 28
  %lock.i = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 28, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %2 = ptrtoint ptr %ack_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ack_queue, ptr %ack_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 28, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ack_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rose_proto_ops, ptr %ops, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call6, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %sk_protocol, align 4
  %timer = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 30
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @rose_create.__key) #13
  %idletimer = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %idletimer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @rose_create.__key.28) #13
  %7 = load i32, ptr @sysctl_rose_call_request_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #13
  %t1 = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 23
  %8 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2.i, ptr %t1, align 8
  %9 = load i32, ptr @sysctl_rose_reset_request_timeout, align 4
  %call2.i41 = tail call i32 @__msecs_to_jiffies(i32 noundef %9) #13
  %t2 = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 24
  %10 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i41, ptr %t2, align 4
  %11 = load i32, ptr @sysctl_rose_clear_request_timeout, align 4
  %call2.i50 = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #13
  %t3 = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 25
  %12 = ptrtoint ptr %t3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i50, ptr %t3, align 8
  %13 = load i32, ptr @sysctl_rose_ack_hold_back_timeout, align 4
  %call2.i59 = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #13
  %hb = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 26
  %14 = ptrtoint ptr %hb to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i59, ptr %hb, align 4
  %15 = load i32, ptr @sysctl_rose_no_activity_timeout, align 4
  %call2.i68 = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #13
  %idle = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 27
  %16 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call2.i68, ptr %idle, align 8
  %state = getelementptr inbounds %struct.rose_sock, ptr %call6, i32 0, i32 13
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -97, %entry.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_release(ptr nocapture noundef %sock) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !158
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !153

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !156

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
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
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  %state = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sock_hold.exit.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb2
    i8 1, label %sock_hold.exit.sw.bb3_crit_edge
    i8 3, label %sock_hold.exit.sw.bb3_crit_edge40
    i8 4, label %sock_hold.exit.sw.bb3_crit_edge41
    i8 5, label %sock_hold.exit.sw.bb3_crit_edge42
  ]

sock_hold.exit.sw.bb3_crit_edge42:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

sock_hold.exit.sw.bb3_crit_edge41:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

sock_hold.exit.sw.bb3_crit_edge40:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

sock_hold.exit.sw.bb3_crit_edge:                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

sock_hold.exit.sw.epilog_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @release_sock(ptr noundef nonnull %1) #13
  tail call void @rose_disconnect(ptr noundef nonnull %1, i32 noundef 0, i32 noundef -1, i32 noundef -1) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  tail call void @rose_destroy_socket(ptr noundef nonnull %1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %neighbour, align 8
  %use = getelementptr inbounds %struct.rose_neigh, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %use, align 2
  %dec = add i16 %16, -1
  store i16 %dec, ptr %use, align 2
  tail call void @release_sock(ptr noundef nonnull %1) #13
  tail call void @rose_disconnect(ptr noundef nonnull %1, i32 noundef 0, i32 noundef -1, i32 noundef -1) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  tail call void @rose_destroy_socket(ptr noundef nonnull %1)
  br label %sw.epilog

sw.bb3:                                           ; preds = %sock_hold.exit.sw.bb3_crit_edge, %sock_hold.exit.sw.bb3_crit_edge40, %sock_hold.exit.sw.bb3_crit_edge41, %sock_hold.exit.sw.bb3_crit_edge42
  tail call void @rose_clear_queues(ptr noundef nonnull %1) #13
  tail call void @rose_stop_idletimer(ptr noundef nonnull %1) #13
  tail call void @rose_write_internal(ptr noundef nonnull %1, i32 noundef 19) #13
  tail call void @rose_start_t3timer(ptr noundef nonnull %1) #13
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %state, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %19 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sk_shutdown, align 2
  %21 = or i8 %20, 2
  store i8 %21, ptr %sk_shutdown, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %22 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_state_change, align 4
  tail call void %23(ptr noundef nonnull %1) #13
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %or.i.i36 = or i32 %25, 33
  store i32 %or.i.i36, ptr %4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %sock_hold.exit.sw.epilog_crit_edge
  %26 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #13
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i39, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @sk_free(ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_bind(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %addr_len, label %if.end.cleanup_crit_edge [
    i32 28, label %if.end.if.end4_crit_edge
    i32 64, label %if.end.if.end4_crit_edge93
  ]

if.end.if.end4_crit_edge93:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge93
  %7 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %8)
  %cmp5.not = icmp eq i16 %8, 11
  br i1 %cmp5.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %addr_len)
  %cmp9 = icmp eq i32 %addr_len, 28
  br i1 %cmp9, label %land.lhs.true11, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end8
  %srose_ndigis = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 3
  %9 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srose_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp12 = icmp sgt i32 %10, 1
  br i1 %cmp12, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end15_crit_edge

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %srose_ndigis16 = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 3
  %11 = ptrtoint ptr %srose_ndigis16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srose_ndigis16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp17 = icmp ugt i32 %12, 6
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %srose_addr = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 1
  %call21 = tail call ptr @rose_dev_get(ptr noundef %srose_addr) #13
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %srose_call = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 2
  %13 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call27 = tail call ptr @ax25_findbyuid([1 x i32] %.fca.0.insert) #13
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  %source_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 3
  %call29 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call27, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %source_call, ptr %call29, i32 7)
  %refcount.i = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call27, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end36_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.if.end36_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %if.end36

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @kfree(ptr noundef nonnull %call27) #13
  br label %if.end36

if.else:                                          ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_uid_policy to i32))
  %22 = load i32, ptr @ax25_uid_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool30.not = icmp eq i32 %22, 0
  br i1 %tobool30.not, label %if.else.if.end34_crit_edge, label %land.lhs.true31

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true31:                                  ; preds = %if.else
  %call32 = tail call zeroext i1 @capable(i32 noundef 10) #13
  br i1 %call32, label %land.lhs.true31.if.end34_crit_edge, label %if.then33

land.lhs.true31.if.end34_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dev_put(ptr noundef nonnull %call21)
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true31.if.end34_crit_edge, %if.else.if.end34_crit_edge
  %source_call35 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %source_call35, ptr %srose_call, i32 7)
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end36_crit_edge
  %source_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %source_addr, ptr %srose_addr, i32 5)
  %device = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call21, ptr %device, align 4
  %26 = ptrtoint ptr %srose_ndigis16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %srose_ndigis16, align 4
  %conv39 = trunc i32 %27 to i8
  %source_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %source_ndigis to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv39, ptr %source_ndigis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %addr_len)
  %cmp40 = icmp eq i32 %addr_len, 64
  br i1 %cmp40, label %for.cond.preheader, label %if.else47

for.cond.preheader:                               ; preds = %if.end36
  %29 = ptrtoint ptr %srose_ndigis16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %srose_ndigis16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4491 = icmp sgt i32 %30, 0
  br i1 %cmp4491, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end56_crit_edge

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 7, i32 %n.092
  %arrayidx46 = getelementptr %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 4, i32 %n.092
  %31 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx46, i32 7)
  %inc = add nuw nsw i32 %n.092, 1
  %32 = ptrtoint ptr %srose_ndigis16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %srose_ndigis16, align 4
  %cmp44 = icmp slt i32 %inc, %33
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.if.end56_crit_edge

for.body.if.end56_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else47:                                        ; preds = %if.end36
  %conv49 = and i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv49)
  %cmp50 = icmp eq i32 %conv49, 1
  br i1 %cmp50, label %if.then52, label %if.else47.if.end56_crit_edge

if.else47.if.end56_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then52:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #15
  %source_digis53 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 7
  %srose_digi = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 4
  %34 = call ptr @memcpy(ptr %source_digis53, ptr %srose_digi, i32 7)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.else47.if.end56_crit_edge, %for.body.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #13, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end56.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !153

if.end56.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end56
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !156

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end56.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end56.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %37 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %38 = load ptr, ptr @rose_list, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %37, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.rose_insert_socket.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.rose_insert_socket.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_insert_socket.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %pprev.i.i.i.i, align 4
  br label %rose_insert_socket.exit

rose_insert_socket.exit:                          ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.rose_insert_socket.exit_crit_edge
  store volatile ptr %37, ptr @rose_list, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %41 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr @rose_list, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  %and.i.i = and i32 %43, -257
  store i32 %and.i.i, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %rose_insert_socket.exit, %if.then33, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rose_insert_socket.exit ], [ -13, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -99, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_connect(ptr nocapture noundef %sock, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %flags) #4 align 64 {
entry:
  %cause = alloca i8, align 1
  %diagnostic = alloca i8, align 1
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cause) #13
  %2 = ptrtoint ptr %cause to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cause, align 1, !annotation !159
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %diagnostic) #13
  %3 = ptrtoint ptr %diagnostic to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %diagnostic, align 1, !annotation !159
  %4 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %addr_len, label %entry.cleanup159_crit_edge [
    i32 28, label %entry.if.end_crit_edge
    i32 64, label %entry.if.end_crit_edge245
  ]

entry.if.end_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge245
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %6)
  %cmp3.not = icmp eq i16 %6, 11
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup159_crit_edge

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %addr_len)
  %cmp7 = icmp eq i32 %addr_len, 28
  br i1 %cmp7, label %land.lhs.true9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.end6
  %srose_ndigis = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 3
  %7 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srose_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp10 = icmp sgt i32 %8, 1
  br i1 %cmp10, label %land.lhs.true9.cleanup159_crit_edge, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true9.cleanup159_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %srose_ndigis14 = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 3
  %9 = ptrtoint ptr %srose_ndigis14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srose_ndigis14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp15 = icmp ugt i32 %10, 6
  br i1 %cmp15, label %if.end13.cleanup159_crit_edge, label %if.end18

if.end13.cleanup159_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end18:                                         ; preds = %if.end13
  %source_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %source_ndigis to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %source_ndigis, align 8
  %conv19 = zext i8 %12 to i32
  %add = add nuw nsw i32 %10, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add)
  %cmp21 = icmp ugt i32 %add, 6
  br i1 %cmp21, label %if.end18.cleanup159_crit_edge, label %if.end24

if.end18.cleanup159_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end24:                                         ; preds = %if.end18
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp26 = icmp eq i8 %14, 1
  br i1 %cmp26, label %land.lhs.true28, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true28:                                  ; preds = %if.end24
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp29 = icmp eq i32 %16, 2
  br i1 %cmp29, label %if.then31, label %land.lhs.true28.if.end33_crit_edge

land.lhs.true28.if.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %sock, align 128
  br label %out_release

if.end33:                                         ; preds = %land.lhs.true28.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp37 = icmp eq i8 %19, 7
  br i1 %cmp37, label %land.lhs.true39, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

land.lhs.true39:                                  ; preds = %if.end33
  %20 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp41 = icmp eq i32 %21, 2
  br i1 %cmp41, label %if.then43, label %land.lhs.true39.if.end45_crit_edge

land.lhs.true39.if.end45_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then43:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sock, align 128
  br label %out_release

if.end45:                                         ; preds = %land.lhs.true39.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  %23 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp49 = icmp eq i8 %24, 1
  br i1 %cmp49, label %if.end45.out_release_crit_edge, label %if.end52

if.end45.out_release_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end52:                                         ; preds = %if.end45
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 7, ptr %skc_state, align 2
  %26 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %sock, align 128
  %srose_addr = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 1
  %call = call ptr @rose_get_neigh(ptr noundef %srose_addr, ptr noundef nonnull %cause, ptr noundef nonnull %diagnostic, i32 noundef 0) #13
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %neighbour, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end52.out_release_crit_edge, label %if.end58

if.end52.out_release_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end58:                                         ; preds = %if.end52
  %call60 = call i32 @rose_new_lci(ptr noundef nonnull %call)
  %lci = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %lci to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call60, ptr %lci, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool62.not = icmp eq i32 %call60, 0
  br i1 %tobool62.not, label %if.end58.out_release_crit_edge, label %if.end64

if.end58.out_release_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end64:                                         ; preds = %if.end58
  %29 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not = icmp eq i32 %32, 0
  br i1 %tobool.i.not, label %if.end64.if.end78_crit_edge, label %if.then66

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then66:                                        ; preds = %if.end64
  %and.i.i = and i32 %31, -257
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i.i, ptr %29, align 4
  %call67 = call ptr @rose_dev_first() #13
  %cmp68 = icmp eq ptr %call67, null
  br i1 %cmp68, label %if.then66.out_release_crit_edge, label %do.end

if.then66.out_release_crit_edge:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

do.end:                                           ; preds = %if.then66
  %34 = call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 99
  %38 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %40)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call73 = call ptr @ax25_findbyuid([1 x i32] %.fca.0.insert) #13
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %do.end.out_release_crit_edge, label %if.end76

do.end.out_release_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end76:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %source_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call67, i32 0, i32 86
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %43 = call ptr @memcpy(ptr %source_addr, ptr %42, i32 5)
  %source_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 3
  %call77 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call73, i32 0, i32 3
  %44 = call ptr @memcpy(ptr %source_call, ptr %call77, i32 7)
  %device = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call67, ptr %device, align 4
  call fastcc void @ax25_uid_put(ptr noundef nonnull %call73)
  call fastcc void @rose_insert_socket(ptr noundef %1)
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %if.end64.if.end78_crit_edge
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 2
  %46 = call ptr @memcpy(ptr %dest_addr, ptr %srose_addr, i32 5)
  %dest_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 4
  %srose_call = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 2
  %47 = call ptr @memcpy(ptr %dest_call, ptr %srose_call, i32 7)
  %48 = ptrtoint ptr %1 to i32
  %and = and i32 %48, 65535
  %49 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lci, align 8
  %add81 = add i32 %50, %and
  %rand = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %rand to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add81, ptr %rand, align 4
  %52 = ptrtoint ptr %srose_ndigis14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %srose_ndigis14, align 4
  %conv83 = trunc i32 %53 to i8
  %dest_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv83, ptr %dest_ndigis, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %addr_len)
  %cmp84 = icmp eq i32 %addr_len, 64
  br i1 %cmp84, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end78
  %55 = ptrtoint ptr %srose_ndigis14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %srose_ndigis14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp88242 = icmp sgt i32 %56, 0
  br i1 %cmp88242, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end99_crit_edge

for.cond.preheader.if.end99_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.0243 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 8, i32 %n.0243
  %arrayidx90 = getelementptr %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 4, i32 %n.0243
  %57 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx90, i32 7)
  %inc = add nuw nsw i32 %n.0243, 1
  %58 = ptrtoint ptr %srose_ndigis14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %srose_ndigis14, align 4
  %cmp88 = icmp slt i32 %inc, %59
  br i1 %cmp88, label %for.body.for.body_crit_edge, label %for.body.if.end99_crit_edge

for.body.if.end99_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %if.end78
  %conv92 = and i32 %53, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv92)
  %cmp93 = icmp eq i32 %conv92, 1
  br i1 %cmp93, label %if.then95, label %if.else.if.end99_crit_edge

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then95:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %dest_digis96 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 8
  %srose_digi = getelementptr inbounds %struct.sockaddr_rose, ptr %uaddr, i32 0, i32 4
  %60 = call ptr @memcpy(ptr %dest_digis96, ptr %srose_digi, i32 7)
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.else.if.end99_crit_edge, %for.body.if.end99_crit_edge, %for.cond.preheader.if.end99_crit_edge
  %61 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %sock, align 128
  %62 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %62)
  store volatile i8 2, ptr %skc_state, align 2
  %state103 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 13
  %63 = ptrtoint ptr %state103 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %state103, align 8
  %64 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %neighbour, align 8
  %use = getelementptr inbounds %struct.rose_neigh, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %use, align 2
  %inc105 = add i16 %67, 1
  store i16 %inc105, ptr %use, align 2
  call void @rose_write_internal(ptr noundef %1, i32 noundef 11) #13
  call void @rose_start_heartbeat(ptr noundef %1) #13
  call void @rose_start_t1timer(ptr noundef %1) #13
  %68 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp109.not = icmp eq i8 %69, 1
  %and112 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %or.cond = or i1 %tobool113.not, %cmp109.not
  br i1 %or.cond, label %if.end115, label %if.end99.out_release_crit_edge

if.end99.out_release_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end115:                                        ; preds = %if.end99
  %70 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp119 = icmp eq i8 %71, 2
  br i1 %cmp119, label %if.then121, label %if.end115.if.end148_crit_edge

if.end115.if.end148_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148

if.then121:                                       ; preds = %if.end115
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %72 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %73 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %74 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %75 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %wait, align 4
  %77 = call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i237 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i237 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task124, align 8
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %72, align 4
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @autoremove_wake_function, ptr %73, align 4
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %74, ptr %74, align 4
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %74, ptr %75, align 4
  %85 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %85, align 8
  call void @prepare_to_wait(ptr noundef %87, ptr noundef nonnull %wait, i32 noundef 1) #13
  %88 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp133.not244 = icmp eq i8 %89, 2
  br i1 %cmp133.not244, label %if.then121.if.end136_crit_edge, label %if.then121.for.end143_crit_edge

if.then121.for.end143_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end143

if.then121.if.end136_crit_edge:                   ; preds = %if.then121
  br label %if.end136

if.end136:                                        ; preds = %if.then141.if.end136_crit_edge, %if.then121.if.end136_crit_edge
  %90 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task124, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %stack.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  %96 = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end136.for.end143.thread_crit_edge, !prof !156

if.end136.for.end143.thread_crit_edge:            ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end143.thread

signal_pending.exit:                              ; preds = %if.end136
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %93, align 4
  %and1.i.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool140.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool140.not, label %if.then141, label %signal_pending.exit.for.end143.thread_crit_edge

signal_pending.exit.for.end143.thread_crit_edge:  ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end143.thread

if.then141:                                       ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %1) #13
  call void @schedule() #13
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %99 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %85, align 8
  call void @prepare_to_wait(ptr noundef %100, ptr noundef nonnull %wait, i32 noundef 1) #13
  %101 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load volatile i8, ptr %skc_state, align 2
  %cmp133.not = icmp eq i8 %102, 2
  br i1 %cmp133.not, label %if.then141.if.end136_crit_edge, label %if.then141.for.end143_crit_edge

if.then141.for.end143_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end143

if.then141.if.end136_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

for.end143.thread:                                ; preds = %signal_pending.exit.for.end143.thread_crit_edge, %if.end136.for.end143.thread_crit_edge
  %103 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %85, align 8
  call void @finish_wait(ptr noundef %104, ptr noundef nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  br label %out_release

for.end143:                                       ; preds = %if.then141.for.end143_crit_edge, %if.then121.for.end143_crit_edge
  %105 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %85, align 8
  call void @finish_wait(ptr noundef %106, ptr noundef nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  br label %if.end148

if.end148:                                        ; preds = %for.end143, %if.end115.if.end148_crit_edge
  %107 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp152.not = icmp eq i8 %108, 1
  br i1 %cmp152.not, label %if.end157, label %if.then154

if.then154:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %sock, align 128
  %call156 = call fastcc i32 @sock_error(ptr noundef %1)
  br label %out_release

if.end157:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 3, ptr %sock, align 128
  br label %out_release

out_release:                                      ; preds = %if.end157, %if.then154, %for.end143.thread, %if.end99.out_release_crit_edge, %do.end.out_release_crit_edge, %if.then66.out_release_crit_edge, %if.end58.out_release_crit_edge, %if.end52.out_release_crit_edge, %if.end45.out_release_crit_edge, %if.then43, %if.then31
  %err.2 = phi i32 [ 0, %if.then31 ], [ -111, %if.then43 ], [ %call156, %if.then154 ], [ 0, %if.end157 ], [ -106, %if.end45.out_release_crit_edge ], [ -101, %if.end52.out_release_crit_edge ], [ -101, %if.end58.out_release_crit_edge ], [ -101, %if.then66.out_release_crit_edge ], [ -22, %do.end.out_release_crit_edge ], [ -115, %if.end99.out_release_crit_edge ], [ -512, %for.end143.thread ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup159

cleanup159:                                       ; preds = %out_release, %if.end18.cleanup159_crit_edge, %if.end13.cleanup159_crit_edge, %land.lhs.true9.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_release ], [ -22, %entry.cleanup159_crit_edge ], [ -22, %if.end.cleanup159_crit_edge ], [ -22, %land.lhs.true9.cleanup159_crit_edge ], [ -22, %if.end13.cleanup159_crit_edge ], [ -22, %if.end18.cleanup159_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %diagnostic) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cause) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !143) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @lock_sock_nested(ptr noundef nonnull %14, i32 noundef 0) #13
  %sk_type = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %16)
  %cmp6.not = icmp eq i16 %16, 5
  br i1 %cmp6.not, label %if.end9, label %if.end.out_release_crit_edge

if.end.out_release_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

for.cond.preheader:                               ; preds = %if.end9
  %19 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  call void @prepare_to_wait(ptr noundef %21, ptr noundef nonnull %wait, i32 noundef 1) #13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 8
  %call1656 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool.not57 = icmp eq ptr %call1656, null
  br i1 %tobool.not57, label %if.end18.lr.ph, label %for.cond.preheader.if.end31_crit_edge

for.cond.preheader.if.end31_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end18.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.lr.ph.if.end18_crit_edge, label %if.end18.lr.ph.for.end.thread.split_crit_edge

if.end18.lr.ph.for.end.thread.split_crit_edge:    ; preds = %if.end18.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.for.end.thread.split_crit_edge, !prof !156

if.end18.for.end.thread.split_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread.split

if.then26:                                        ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef nonnull %14) #13
  call void @schedule() #13
  call void @lock_sock_nested(ptr noundef nonnull %14, i32 noundef 0) #13
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %19, align 8
  call void @prepare_to_wait(ptr noundef %32, ptr noundef nonnull %wait, i32 noundef 1) #13
  %call16 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.then26.if.end18_crit_edge, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then26.if.end18_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

for.end.thread.split:                             ; preds = %signal_pending.exit.for.end.thread.split_crit_edge, %if.end18.for.end.thread.split_crit_edge, %if.end18.lr.ph.for.end.thread.split_crit_edge
  %err.0.ph.split = phi i32 [ -11, %if.end18.lr.ph.for.end.thread.split_crit_edge ], [ -512, %signal_pending.exit.for.end.thread.split_crit_edge ], [ -512, %if.end18.for.end.thread.split_crit_edge ]
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %19, align 8
  call void @finish_wait(ptr noundef %34, ptr noundef nonnull %wait) #13
  br label %out_release

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %for.cond.preheader.if.end31_crit_edge
  %call16.lcssa = phi ptr [ %call1656, %for.cond.preheader.if.end31_crit_edge ], [ %call16, %if.then26.if.end31_crit_edge ]
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %19, align 8
  call void @finish_wait(ptr noundef %36, ptr noundef nonnull %wait) #13
  %37 = getelementptr inbounds %struct.sk_buff, ptr %call16.lcssa, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %40 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i49 = icmp eq ptr %41, null
  br i1 %tobool.not.i49, label %if.end31.sock_graft.exit_crit_edge, label %do.end.i, !prof !156

if.end31.sock_graft.exit_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2024, i32 noundef 9, ptr noundef null) #13
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.end31.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !160
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
  call void @security_sock_graft(ptr noundef %39, ptr noundef %newsock) #13
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %37, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call16.lcssa, i32 noundef 0) #13
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 53
  %50 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %out_release

out_release:                                      ; preds = %sock_graft.exit, %for.end.thread.split, %if.end9.out_release_crit_edge, %if.end.out_release_crit_edge
  %err.1 = phi i32 [ 0, %sock_graft.exit ], [ -95, %if.end.out_release_crit_edge ], [ -22, %if.end9.out_release_crit_edge ], [ %err.0.ph.split, %for.end.thread.split ]
  call void @release_sock(ptr noundef nonnull %14) #13
  br label %cleanup

cleanup:                                          ; preds = %out_release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_release ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = call ptr @memset(ptr %uaddr, i32 0, i32 64)
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 11, ptr %uaddr, align 4
  %srose_addr = getelementptr inbounds %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 1
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %srose_addr, ptr %dest_addr, i32 5)
  %srose_call = getelementptr inbounds %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 2
  %dest_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %srose_call, ptr %dest_call, i32 7)
  %dest_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dest_ndigis, align 1
  %conv5 = zext i8 %9 to i32
  %srose_ndigis = getelementptr inbounds %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 3
  %10 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %srose_ndigis, align 4
  %11 = load i8, ptr %dest_ndigis, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp861.not = icmp eq i8 %11, 0
  br i1 %cmp861.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 4, i32 %n.062
  %arrayidx10 = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 8, i32 %n.062
  %12 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx10, i32 7)
  %inc = add nuw nsw i32 %n.062, 1
  %13 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dest_ndigis, align 1
  %conv7 = zext i8 %14 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 11, ptr %uaddr, align 4
  %srose_addr12 = getelementptr inbounds %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 1
  %source_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %srose_addr12, ptr %source_addr, i32 5)
  %srose_call13 = getelementptr inbounds %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 2
  %source_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %srose_call13, ptr %source_call, i32 7)
  %source_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %source_ndigis to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %source_ndigis, align 8
  %conv14 = zext i8 %19 to i32
  %srose_ndigis15 = getelementptr inbounds %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 3
  %20 = ptrtoint ptr %srose_ndigis15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv14, ptr %srose_ndigis15, align 4
  %21 = load i8, ptr %source_ndigis, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1964.not = icmp eq i8 %21, 0
  br i1 %cmp1964.not, label %if.else.cleanup_crit_edge, label %if.else.for.body21_crit_edge

if.else.for.body21_crit_edge:                     ; preds = %if.else
  br label %for.body21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.else.for.body21_crit_edge
  %n.165 = phi i32 [ %inc26, %for.body21.for.body21_crit_edge ], [ 0, %if.else.for.body21_crit_edge ]
  %arrayidx23 = getelementptr %struct.full_sockaddr_rose, ptr %uaddr, i32 0, i32 4, i32 %n.165
  %arrayidx24 = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 7, i32 %n.165
  %22 = call ptr @memcpy(ptr %arrayidx23, ptr %arrayidx24, i32 7)
  %inc26 = add nuw nsw i32 %n.165, 1
  %23 = ptrtoint ptr %source_ndigis to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %source_ndigis, align 8
  %conv18 = zext i8 %24 to i32
  %cmp19 = icmp ult i32 %inc26, %conv18
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.cleanup_crit_edge

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

cleanup:                                          ; preds = %for.body21.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %if.then.cleanup_crit_edge ], [ 64, %if.else.cleanup_crit_edge ], [ 64, %if.end.cleanup_crit_edge ], [ 64, %for.body21.cleanup_crit_edge ], [ 64, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %rose_cause = alloca %struct.rose_cause_struct, align 1
  %rose_cause36 = alloca %struct.rose_cause_struct, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb4
    i32 35093, label %entry.cleanup72_crit_edge
    i32 35094, label %entry.cleanup72_crit_edge164
    i32 35095, label %entry.cleanup72_crit_edge165
    i32 35096, label %entry.cleanup72_crit_edge166
    i32 35097, label %entry.cleanup72_crit_edge167
    i32 35098, label %entry.cleanup72_crit_edge168
    i32 35099, label %entry.cleanup72_crit_edge169
    i32 35100, label %entry.cleanup72_crit_edge170
    i32 35101, label %entry.cleanup72_crit_edge171
    i32 35102, label %entry.cleanup72_crit_edge172
    i32 35083, label %entry.sw.bb26_crit_edge
    i32 35084, label %entry.sw.bb26_crit_edge173
    i32 35300, label %entry.sw.bb26_crit_edge174
    i32 35296, label %sw.bb31
    i32 35297, label %sw.bb35
    i32 35298, label %sw.bb45
    i32 35301, label %if.end59.i.i138
    i32 35299, label %sw.bb66
  ]

entry.sw.bb26_crit_edge174:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26

entry.sw.bb26_crit_edge173:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26

entry.cleanup72_crit_edge172:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge171:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge170:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge169:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge168:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge167:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge166:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge165:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge164:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %5, 1
  %sub = sub i32 %sub.i.neg, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 1290) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !161
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %8, i32 -1226833921) #13, !srcloc !164
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  br label %cleanup72

sw.bb4:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %14, %sk_receive_queue
  %cmp7.not163 = icmp eq ptr %14, null
  %cmp7.not = or i1 %cmp.i, %cmp7.not163
  br i1 %cmp7.not, label %sw.bb4.if.end9_crit_edge, label %if.then8

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4.if.end9_crit_edge
  %amount5.0 = phi i32 [ %16, %if.then8 ], [ 0, %sw.bb4.if.end9_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 1299) #13
  %17 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i98 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i98 to ptr
  %cpu_domain.i.i99 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i99) #12, !srcloc !161
  %and.i100 = and i32 %19, -13
  %or.i101 = or i32 %and.i100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i101) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %amount5.0, i32 -1226833921) #13, !srcloc !165
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  br label %cleanup72

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge173, %entry.sw.bb26_crit_edge174
  %call27 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call27, label %if.end29, label %sw.bb26.cleanup72_crit_edge

sw.bb26.cleanup72_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end29:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 @rose_rt_ioctl(i32 noundef %cmd, ptr noundef %2) #13
  br label %cleanup72

sw.bb31:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rose_cause) #13
  %21 = getelementptr inbounds %struct.rose_cause_struct, ptr %rose_cause, i32 0, i32 1
  %cause = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %cause to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cause, align 4
  %24 = ptrtoint ptr %rose_cause to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %rose_cause, align 1
  %diagnostic = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %diagnostic to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %diagnostic, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %21, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %sw.bb31.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb31.copy_to_user.exit.thread_crit_edge:       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb31
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #18, !srcloc !166
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rose_cause, i32 noundef 2) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %rose_cause, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb31.copy_to_user.exit.thread_crit_edge
  %29 = phi i32 [ -14, %sw.bb31.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rose_cause) #13
  br label %cleanup72

sw.bb35:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rose_cause36) #13
  %30 = ptrtoint ptr %rose_cause36 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %rose_cause36, align 1, !annotation !159
  %31 = getelementptr inbounds %struct.rose_cause_struct, ptr %rose_cause36, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %31, align 1, !annotation !159
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #13
  %call.i.i106 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i106, label %sw.bb35.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb35.if.then11.i.i_crit_edge:                  ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb35
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #18, !srcloc !167
  %asmresult.i.i107 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i107)
  %cmp.i6.i108 = icmp eq i32 %asmresult.i.i107, 0
  br i1 %cmp.i6.i108, label %if.end.i.i110, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i110:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i109 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rose_cause36, i32 noundef 2) #13
  %34 = call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !161
  %and.i.i.i.i = and i32 %36, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rose_cause36, ptr noundef %2, i32 noundef 2) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #13, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end40, label %if.end.i.i110.if.then11.i.i_crit_edge, !prof !156

if.end.i.i110.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i110.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb35.if.then11.i.i_crit_edge
  %res.0.i.i152 = phi i32 [ %call1.i.i.i, %if.end.i.i110.if.then11.i.i_crit_edge ], [ 2, %sw.bb35.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.0.i.i152
  %add.ptr.i.i = getelementptr i8, ptr %rose_cause36, i32 %sub.i.i
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i152)
  br label %cleanup

if.end40:                                         ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %rose_cause36 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rose_cause36, align 1
  %cause42 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %cause42 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %cause42, align 4
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %31, align 1
  %diagnostic44 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 18
  %43 = ptrtoint ptr %diagnostic44 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %diagnostic44, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rose_cause36) #13
  br label %cleanup72

sw.bb45:                                          ; preds = %entry
  %call46 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call46, label %if.end48, label %sw.bb45.cleanup72_crit_edge

sw.bb45.cleanup72_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end48:                                         ; preds = %sw.bb45
  %call49 = tail call i32 @ax25cmp(ptr noundef nonnull @rose_callsign, ptr noundef nonnull @null_ax25_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end48.if.end59.i.i115_crit_edge, label %if.then51

if.end48.if.end59.i.i115_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i.i115

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ax25_listen_release(ptr noundef nonnull @rose_callsign, ptr noundef null) #13
  br label %if.end59.i.i115

if.end59.i.i115:                                  ; preds = %if.then51, %if.end48.if.end59.i.i115_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #13
  %call.i.i116 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i116, label %if.end59.i.i115.if.then11.i.i132_crit_edge, label %land.lhs.true.i.i119

if.end59.i.i115.if.then11.i.i132_crit_edge:       ; preds = %if.end59.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i132

land.lhs.true.i.i119:                             ; preds = %if.end59.i.i115
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 7, i32 -1226833920) #18, !srcloc !167
  %asmresult.i.i117 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i117)
  %cmp.i6.i118 = icmp eq i32 %asmresult.i.i117, 0
  br i1 %cmp.i6.i118, label %if.end.i.i129, label %land.lhs.true.i.i119.if.then11.i.i132_crit_edge, !prof !156

land.lhs.true.i.i119.if.then11.i.i132_crit_edge:  ; preds = %land.lhs.true.i.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i132

if.end.i.i129:                                    ; preds = %land.lhs.true.i.i119
  %call.i.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rose_callsign, i32 noundef 7) #13
  %45 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i.i.i.i121 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i121 to ptr
  %cpu_domain.i.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i122) #12, !srcloc !161
  %and.i.i.i.i123 = and i32 %47, -13
  %or.i.i.i.i124 = or i32 %and.i.i.i.i123, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i124) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %call1.i.i.i125 = tail call i32 @arm_copy_from_user(ptr noundef nonnull @rose_callsign, ptr noundef %2, i32 noundef 7) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i125)
  %tobool4.not.i.i128 = icmp eq i32 %call1.i.i.i125, 0
  br i1 %tobool4.not.i.i128, label %if.end56, label %if.end.i.i129.if.then11.i.i132_crit_edge, !prof !156

if.end.i.i129.if.then11.i.i132_crit_edge:         ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i132

if.then11.i.i132:                                 ; preds = %if.end.i.i129.if.then11.i.i132_crit_edge, %land.lhs.true.i.i119.if.then11.i.i132_crit_edge, %if.end59.i.i115.if.then11.i.i132_crit_edge
  %res.0.i.i127157 = phi i32 [ %call1.i.i.i125, %if.end.i.i129.if.then11.i.i132_crit_edge ], [ 7, %if.end59.i.i115.if.then11.i.i132_crit_edge ], [ 7, %land.lhs.true.i.i119.if.then11.i.i132_crit_edge ]
  %sub.i.i130 = sub i32 7, %res.0.i.i127157
  %add.ptr.i.i131 = getelementptr i8, ptr @rose_callsign, i32 %sub.i.i130
  %48 = call ptr @memset(ptr %add.ptr.i.i131, i32 0, i32 %res.0.i.i127157)
  br label %cleanup72

if.end56:                                         ; preds = %if.end.i.i129
  %call57 = tail call i32 @ax25cmp(ptr noundef nonnull @rose_callsign, ptr noundef nonnull @null_ax25_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end56.cleanup72_crit_edge, label %if.then59

if.end56.cleanup72_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %call60 = tail call i32 @ax25_listen_register(ptr noundef nonnull @rose_callsign, ptr noundef null) #13
  br label %cleanup72

if.end59.i.i138:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i139 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i139, label %if.end59.i.i138.cleanup72_crit_edge, label %if.end.i.i142

if.end59.i.i138.cleanup72_crit_edge:              ; preds = %if.end59.i.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end.i.i142:                                    ; preds = %if.end59.i.i138
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 7, i32 -1226833920) #18, !srcloc !166
  %asmresult.i.i140 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i140)
  %cmp.i6.i141 = icmp eq i32 %asmresult.i.i140, 0
  br i1 %cmp.i6.i141, label %copy_to_user.exit147, label %if.end.i.i142.cleanup72_crit_edge

if.end.i.i142.cleanup72_crit_edge:                ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

copy_to_user.exit147:                             ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i143 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rose_callsign, i32 noundef 7) #13
  %call.i12.i.i144 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull @rose_callsign, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i144)
  %tobool64.not = icmp eq i32 %call.i12.i.i144, 0
  %spec.select162 = select i1 %tobool64.not, i32 0, i32 -14
  br label %cleanup72

sw.bb66:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 13
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %51)
  %cmp67 = icmp eq i8 %51, 5
  br i1 %cmp67, label %if.then69, label %sw.bb66.cleanup72_crit_edge

sw.bb66.cleanup72_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.then69:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rose_write_internal(ptr noundef %1, i32 noundef 15) #13
  tail call void @rose_start_idletimer(ptr noundef %1) #13
  %condition = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 14
  %52 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %condition, align 1
  %vs = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 19
  %53 = ptrtoint ptr %vs to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 0, ptr %vs, align 2
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %state, align 8
  br label %cleanup72

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

cleanup72:                                        ; preds = %sw.default, %if.then69, %sw.bb66.cleanup72_crit_edge, %copy_to_user.exit147, %if.end.i.i142.cleanup72_crit_edge, %if.end59.i.i138.cleanup72_crit_edge, %if.then59, %if.end56.cleanup72_crit_edge, %if.then11.i.i132, %sw.bb45.cleanup72_crit_edge, %cleanup, %copy_to_user.exit.thread, %if.end29, %sw.bb26.cleanup72_crit_edge, %if.end9, %sw.bb, %entry.cleanup72_crit_edge, %entry.cleanup72_crit_edge164, %entry.cleanup72_crit_edge165, %entry.cleanup72_crit_edge166, %entry.cleanup72_crit_edge167, %entry.cleanup72_crit_edge168, %entry.cleanup72_crit_edge169, %entry.cleanup72_crit_edge170, %entry.cleanup72_crit_edge171, %entry.cleanup72_crit_edge172
  %retval.1 = phi i32 [ -515, %sw.default ], [ %call60, %if.then59 ], [ %retval.0, %cleanup ], [ %29, %copy_to_user.exit.thread ], [ %call30, %if.end29 ], [ %20, %if.end9 ], [ %12, %sw.bb ], [ -22, %entry.cleanup72_crit_edge ], [ -22, %entry.cleanup72_crit_edge164 ], [ -22, %entry.cleanup72_crit_edge165 ], [ -22, %entry.cleanup72_crit_edge166 ], [ -22, %entry.cleanup72_crit_edge167 ], [ -22, %entry.cleanup72_crit_edge168 ], [ -22, %entry.cleanup72_crit_edge169 ], [ -22, %entry.cleanup72_crit_edge170 ], [ -22, %entry.cleanup72_crit_edge171 ], [ -22, %entry.cleanup72_crit_edge172 ], [ -1, %sw.bb26.cleanup72_crit_edge ], [ -1, %sw.bb45.cleanup72_crit_edge ], [ 0, %if.end56.cleanup72_crit_edge ], [ 0, %if.then69 ], [ 0, %sw.bb66.cleanup72_crit_edge ], [ -14, %if.then11.i.i132 ], [ -14, %if.end59.i.i138.cleanup72_crit_edge ], [ -14, %if.end.i.i142.cleanup72_crit_edge ], [ %spec.select162, %copy_to_user.exit147 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.not = icmp eq i8 %3, 10
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dest_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dest_ndigis, align 1
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 2
  %5 = call ptr @memset(ptr %dest_addr, i32 0, i32 5)
  %dest_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 4
  %6 = call ptr @memset(ptr %dest_call, i32 0, i32 7)
  %dest_digis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 8
  %7 = call ptr @memset(ptr %dest_digis, i32 0, i32 42)
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %8 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 10, ptr %skc_state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #4 align 64 {
entry:
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #13
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %opt, align 4, !annotation !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %level)
  %cmp.not = icmp eq i32 %level, 260
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp2 = icmp ult i32 %optlen, 4
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #18, !srcloc !167
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !156

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %5 = call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #12, !srcloc !161
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %3, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end6_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !156

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end6_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %opt, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end6_crit_edge
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %optname, label %if.end6.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb13
    i32 4, label %sw.bb19
    i32 7, label %sw.bb25
    i32 5, label %sw.bb31
    i32 6, label %sw.bb38
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp ne i32 %14, 0
  %conv = zext i1 %tobool7.not to i8
  %defer = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %defer to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %defer, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp9 = icmp slt i32 %17, 1
  br i1 %cmp9, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul i32 %17, 100
  %t1 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %t1, align 8
  br label %cleanup

sw.bb13:                                          ; preds = %if.end6
  %19 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp14 = icmp slt i32 %20, 1
  br i1 %cmp14, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  %mul18 = mul i32 %20, 100
  %t2 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul18, ptr %t2, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end6
  %22 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp20 = icmp slt i32 %23, 1
  br i1 %cmp20, label %sw.bb19.cleanup_crit_edge, label %if.end23

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  %mul24 = mul i32 %23, 100
  %t3 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 25
  %24 = ptrtoint ptr %t3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul24, ptr %t3, align 8
  br label %cleanup

sw.bb25:                                          ; preds = %if.end6
  %25 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp26 = icmp slt i32 %26, 1
  br i1 %cmp26, label %sw.bb25.cleanup_crit_edge, label %if.end29

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  %mul30 = mul i32 %26, 100
  %hb = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %hb to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul30, ptr %hb, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %if.end6
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32 = icmp slt i32 %29, 0
  br i1 %cmp32, label %sw.bb31.cleanup_crit_edge, label %if.end35

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  %mul37 = mul i32 %29, 6000
  %idle = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 27
  %30 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul37, ptr %idle, align 8
  br label %cleanup

sw.bb38:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool39.not = icmp ne i32 %32, 0
  %conv41 = zext i1 %tobool39.not to i8
  %qbitincl = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %qbitincl to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv41, ptr %qbitincl, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %if.end35, %sw.bb31.cleanup_crit_edge, %if.end29, %sw.bb25.cleanup_crit_edge, %if.end23, %sw.bb19.cleanup_crit_edge, %if.end17, %sw.bb13.cleanup_crit_edge, %if.end12, %sw.bb8.cleanup_crit_edge, %sw.bb, %if.end6.cleanup_crit_edge, %if.then11.i.i.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb38 ], [ 0, %if.end35 ], [ 0, %if.end29 ], [ 0, %if.end23 ], [ 0, %if.end17 ], [ 0, %if.end12 ], [ 0, %sw.bb ], [ -92, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -92, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %level)
  %cmp.not = icmp eq i32 %level, 260
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 439) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !161
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !168
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult2)
  %cmp6 = icmp slt i32 %asmresult2, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %optname, label %if.end8.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 7, label %sw.bb14
    i32 5, label %sw.bb16
    i32 6, label %sw.bb18
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %defer = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %defer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %defer, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %t1 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t1, align 8
  %div = udiv i32 %11, 100
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %t2 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t2, align 4
  %div11 = udiv i32 %14, 100
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div11, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %t3 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t3, align 8
  %div13 = udiv i32 %17, 100
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div13, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %hb = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hb, align 4
  %div15 = udiv i32 %20, 100
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div15, ptr %val, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %idle = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idle, align 8
  %div17 = udiv i32 %23, 6000
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div17, ptr %val, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %qbitincl = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %qbitincl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %qbitincl, align 2
  %conv19 = zext i8 %26 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv19, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb
  %28 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 480) #13
  %29 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i.i.i53 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i53 to ptr
  %cpu_domain.i.i54 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i54) #12, !srcloc !161
  %and.i55 = and i32 %31, -13
  %or.i56 = or i32 %and.i55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i56) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %28, i32 -1226833921) #13, !srcloc !169
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #13, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not = icmp eq i32 %32, 0
  br i1 %tobool32.not, label %if.then.i.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %28, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %28, i32 -1226833920) #18, !srcloc !166
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %28) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %28) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %28, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %28, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool36.not = icmp eq i32 %n.addr.0.i, 0
  %cond37 = select i1 %tobool36.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %sw.epilog.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond37, %copy_to_user.exit ], [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -92, %if.end8.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #4 align 64 {
entry:
  %err = alloca i32, align 4
  %srose = alloca %struct.full_sockaddr_rose, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %srose) #13
  %5 = getelementptr inbounds i8, ptr %srose, i32 12
  %6 = call ptr @memset(ptr %5, i32 255, i32 52)
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %and = and i32 %8, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

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
  call void @__sanitizer_cov_trace_pc() #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !143) #13
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %call8 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %19, i32 noundef 0) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %neighbour, align 8
  %cmp = icmp eq ptr %21, null
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %device = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 4
  %cmp11 = icmp eq ptr %23, null
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %cmp15.not = icmp eq ptr %3, null
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_namelen, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %25, label %if.then17.cleanup_crit_edge [
    i32 28, label %if.then17.if.end24_crit_edge
    i32 64, label %if.then17.if.end24_crit_edge210
  ]

if.then17.if.end24_crit_edge210:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %if.then17.if.end24_crit_edge210
  %27 = call ptr @memset(ptr %srose, i32 0, i32 64)
  %28 = call ptr @memcpy(ptr %srose, ptr %3, i32 %25)
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 2
  %srose_addr = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 1
  %29 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dest_addr, align 1
  %31 = ptrtoint ptr %srose_addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %srose_addr, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp4.not.i = icmp eq i8 %30, %32
  br i1 %cmp4.not.i, label %for.cond.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.i:                                       ; preds = %if.end24
  %arrayidx.1.i = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp4.not.1.i = icmp eq i8 %34, %36
  br i1 %cmp4.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp4.not.2.i = icmp eq i8 %38, %40
  br i1 %cmp4.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp4.not.3.i = icmp eq i8 %42, %44
  br i1 %cmp4.not.3.i, label %rosecmp.exit, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rosecmp.exit:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 2, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.4.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp4.not.4.i.not = icmp eq i8 %46, %48
  br i1 %cmp4.not.4.i.not, label %lor.lhs.false29, label %rosecmp.exit.cleanup_crit_edge

rosecmp.exit.cleanup_crit_edge:                   ; preds = %rosecmp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false29:                                  ; preds = %rosecmp.exit
  %dest_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 4
  %srose_call = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 2
  %call30 = call i32 @ax25cmp(ptr noundef %dest_call, ptr noundef %srose_call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end34, label %lor.lhs.false29.cleanup_crit_edge

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false29
  %srose_ndigis = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 3
  %49 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %srose_ndigis, align 4
  %dest_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dest_ndigis, align 1
  %conv35 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv35)
  %cmp36.not = icmp eq i32 %50, %conv35
  br i1 %cmp36.not, label %for.cond.preheader, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end34
  %53 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %srose_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp47205.not = icmp eq i32 %54, 0
  br i1 %cmp47205.not, label %for.cond.preheader.if.end54_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end54_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %n.0206, 1
  %55 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %srose_ndigis, align 4
  %cmp47 = icmp ult i32 %inc, %56
  br i1 %cmp47, label %for.cond.for.body_crit_edge, label %for.cond.if.end54_crit_edge

for.cond.if.end54_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.0206 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 8, i32 %n.0206
  %arrayidx49 = getelementptr %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 4, i32 %n.0206
  %call50 = call i32 @ax25cmp(ptr noundef %arrayidx, ptr noundef %arrayidx49) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end54:                                         ; preds = %for.cond.if.end54_crit_edge, %for.cond.preheader.if.end54_crit_edge
  %57 = ptrtoint ptr %srose to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %srose, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %58)
  %cmp56.not = icmp eq i16 %58, 11
  br i1 %cmp56.not, label %if.end54.if.end86_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end54.if.end86_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.else:                                          ; preds = %if.end14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp61.not = icmp eq i8 %60, 1
  br i1 %cmp61.not, label %if.end64, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end64:                                         ; preds = %if.else
  %61 = ptrtoint ptr %srose to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 11, ptr %srose, align 4
  %srose_addr66 = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 1
  %dest_addr67 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 2
  %62 = call ptr @memcpy(ptr %srose_addr66, ptr %dest_addr67, i32 5)
  %srose_call68 = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 2
  %dest_call69 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 4
  %63 = call ptr @memcpy(ptr %srose_call68, ptr %dest_call69, i32 7)
  %dest_ndigis70 = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 6
  %64 = ptrtoint ptr %dest_ndigis70 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dest_ndigis70, align 1
  %conv71 = zext i8 %65 to i32
  %srose_ndigis72 = getelementptr inbounds %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 3
  %66 = ptrtoint ptr %srose_ndigis72 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv71, ptr %srose_ndigis72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp76208.not = icmp eq i8 %65, 0
  br i1 %cmp76208.not, label %if.end64.if.end86_crit_edge, label %if.end64.for.body78_crit_edge

if.end64.for.body78_crit_edge:                    ; preds = %if.end64
  br label %for.body78

if.end64.if.end86_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %if.end64.for.body78_crit_edge
  %n.1209 = phi i32 [ %inc84, %for.body78.for.body78_crit_edge ], [ 0, %if.end64.for.body78_crit_edge ]
  %arrayidx80 = getelementptr %struct.full_sockaddr_rose, ptr %srose, i32 0, i32 4, i32 %n.1209
  %arrayidx82 = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 8, i32 %n.1209
  %67 = call ptr @memcpy(ptr %arrayidx80, ptr %arrayidx82, i32 7)
  %inc84 = add nuw nsw i32 %n.1209, 1
  %68 = ptrtoint ptr %dest_ndigis70 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dest_ndigis70, align 1
  %conv75 = zext i8 %69 to i32
  %cmp76 = icmp ult i32 %inc84, %conv75
  br i1 %cmp76, label %for.body78.for.body78_crit_edge, label %for.body78.if.end86_crit_edge

for.body78.if.end86_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body78

if.end86:                                         ; preds = %for.body78.if.end86_crit_edge, %if.end64.if.end86_crit_edge, %if.end54.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp87 = icmp ugt i32 %len, 65535
  br i1 %cmp87, label %if.end86.cleanup_crit_edge, label %if.end90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %add92 = add nuw nsw i32 %len, 92
  %70 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_flags, align 4
  %and94 = and i32 %71, 64
  %call95 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add92, i32 noundef %and94, ptr noundef nonnull %err) #13
  %cmp96 = icmp eq ptr %call95, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %err, align 4
  br label %cleanup

if.end99:                                         ; preds = %if.end90
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 19
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 92
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %77, i32 92
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 18
  %78 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call95, i32 0, i32 15, i32 0, i32 19
  %80 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call100 = call ptr @skb_put(ptr noundef nonnull %call95, i32 noundef %len) #13
  %81 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i, align 8
  %83 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %transport_header.i, align 2
  %conv.i201 = zext i16 %84 to i32
  %add.ptr.i202 = getelementptr i8, ptr %82, i32 %conv.i201
  %call102 = call fastcc i32 @memcpy_from_msg(ptr noundef %add.ptr.i202, ptr noundef %msg, i32 noundef %len)
  %85 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call102, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call95, i32 noundef 0) #13
  %86 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %err, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.end99
  %qbitincl = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 15
  %88 = ptrtoint ptr %qbitincl to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %qbitincl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool106.not = icmp eq i8 %89, 0
  br i1 %tobool106.not, label %if.end105.if.end111_crit_edge, label %if.then107

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %call110 = call ptr @skb_pull(ptr noundef nonnull %call95, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %phi.cmp = icmp eq i8 %93, 0
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end105.if.end111_crit_edge
  %qbit.0 = phi i1 [ %phi.cmp, %if.then107 ], [ true, %if.end105.if.end111_crit_edge ]
  %call112 = call ptr @skb_push(ptr noundef nonnull %call95, i32 noundef 3) #13
  %lci = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 11
  %94 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lci, align 8
  %shr = lshr i32 %95, 8
  %96 = trunc i32 %shr to i8
  %97 = and i8 %96, 15
  %conv114 = or i8 %97, 16
  %98 = ptrtoint ptr %call112 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv114, ptr %call112, align 1
  %99 = load i32, ptr %lci, align 8
  %conv119 = trunc i32 %99 to i8
  %arrayidx120 = getelementptr i8, ptr %call112, i32 1
  %100 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv119, ptr %arrayidx120, align 1
  %arrayidx121 = getelementptr i8, ptr %call112, i32 2
  %101 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx121, align 1
  br i1 %qbit.0, label %if.end111.if.end128_crit_edge, label %if.then123

if.end111.if.end128_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128

if.then123:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %102 = or i8 %97, -112
  %103 = ptrtoint ptr %call112 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %call112, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %if.end111.if.end128_crit_edge
  %skc_state130 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %104 = ptrtoint ptr %skc_state130 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load volatile i8, ptr %skc_state130, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp132.not = icmp eq i8 %105, 1
  br i1 %cmp132.not, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call95, i32 noundef 0) #13
  br label %cleanup

if.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call95) #13
  call void @rose_kick(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.then134, %if.then104, %if.then98, %if.end86.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %rosecmp.exit.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %if.then6 ], [ %73, %if.then98 ], [ %87, %if.then104 ], [ -107, %if.then134 ], [ %len, %if.end135 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -101, %lor.lhs.false.cleanup_crit_edge ], [ -101, %if.end9.cleanup_crit_edge ], [ -22, %if.then17.cleanup_crit_edge ], [ -106, %lor.lhs.false29.cleanup_crit_edge ], [ -106, %rosecmp.exit.cleanup_crit_edge ], [ -106, %if.end34.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ], [ -107, %if.else.cleanup_crit_edge ], [ -90, %if.end86.cleanup_crit_edge ], [ -106, %if.end24.cleanup_crit_edge ], [ -106, %for.cond.i.cleanup_crit_edge ], [ -106, %for.cond.1.i.cleanup_crit_edge ], [ -106, %for.cond.2.i.cleanup_crit_edge ], [ -106, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %srose) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #4 align 64 {
entry:
  %er = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %er) #13
  %2 = ptrtoint ptr %er to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %er, align 4, !annotation !159
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, -65
  %and3 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and, i32 noundef %and3, ptr noundef nonnull %er) #13
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %er to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %er, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %call12 = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 3) #13
  %qbitincl = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %qbitincl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %qbitincl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end7.if.end16_crit_edge, label %if.then13

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #13
  %.lobit = lshr i8 %10, 7
  %13 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.lobit, ptr %call14, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end7.if.end16_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %size)
  %cmp17 = icmp ugt i32 %20, %size
  br i1 %cmp17, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %21 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_flags, align 4
  %or = or i32 %22, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %copied.0 = phi i32 [ %size, %if.then19 ], [ %20, %if.end16.if.end20_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #13
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg, align 8
  %tobool22.not = icmp eq ptr %24, null
  br i1 %tobool22.not, label %if.end20.if.end34_crit_edge, label %if.then23

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then23:                                        ; preds = %if.end20
  %25 = call ptr @memset(ptr %24, i32 0, i32 64)
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 11, ptr %27, align 4
  %srose_addr = getelementptr inbounds %struct.sockaddr_rose, ptr %27, i32 0, i32 1
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %srose_addr, ptr %dest_addr, i32 5)
  %srose_call = getelementptr inbounds %struct.sockaddr_rose, ptr %27, i32 0, i32 2
  %dest_call = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 4
  %30 = call ptr @memcpy(ptr %srose_call, ptr %dest_call, i32 7)
  %dest_ndigis = getelementptr inbounds %struct.rose_sock, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dest_ndigis, align 1
  %conv27 = zext i8 %32 to i32
  %srose_ndigis = getelementptr inbounds %struct.sockaddr_rose, ptr %27, i32 0, i32 3
  %33 = ptrtoint ptr %srose_ndigis to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv27, ptr %srose_ndigis, align 4
  %34 = load i8, ptr %dest_ndigis, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp3074.not = icmp eq i8 %34, 0
  br i1 %cmp3074.not, label %if.then23.for.end_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then23.for.body_crit_edge
  %n.075 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then23.for.body_crit_edge ]
  %arrayidx32 = getelementptr %struct.full_sockaddr_rose, ptr %24, i32 0, i32 4, i32 %n.075
  %arrayidx33 = getelementptr %struct.rose_sock, ptr %1, i32 0, i32 8, i32 %n.075
  %35 = call ptr @memcpy(ptr %arrayidx32, ptr %arrayidx33, i32 7)
  %inc = add nuw nsw i32 %n.075, 1
  %36 = ptrtoint ptr %dest_ndigis to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dest_ndigis, align 1
  %conv29 = zext i8 %37 to i32
  %cmp30 = icmp ult i32 %inc, %conv29
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then23.for.end_crit_edge
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %38 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 64, ptr %msg_namelen, align 4
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.end20.if.end34_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ %copied.0, %if.end34 ], [ -107, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %er) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_t3timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_dev_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_findbyuid([1 x i32]) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax25_uid_put(ptr noundef %assoc) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %refcount = getelementptr inbounds %struct.ax25_uid_assoc, ptr %assoc, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !155
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !156

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @kfree(ptr noundef %assoc) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !170
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !143) #13
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !171
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !153

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !172
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_get_neigh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_dev_first() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_t1timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_error(ptr noundef %sk) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !156

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #13, !srcloc !174
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  %sub = sub i32 0, %asmresult.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_rt_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_listen_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_from_msg(ptr noundef %data, ptr noundef %msg, i32 noundef %len) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #13
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %data, i32 noundef %len, ptr noundef %msg_iter) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %len)
  %cmp.i = icmp eq i32 %call3.i.i, %len
  br i1 %cmp.i, label %entry.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !156

entry.copy_from_iter_full.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call3.i.i) #13
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %entry.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %entry.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_kick(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_route_frame(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rose_info_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @rose_list, i64 noundef %1) #13
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_info_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rose_info_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @rose_list, ptr noundef %pos) #13
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_info_show(ptr noundef %seq, ptr noundef %v) #4 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  %rsbuf = alloca [11 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %rsbuf) #13
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %1 = call ptr @memset(ptr %rsbuf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.32) #13
  br label %if.end39

if.else:                                          ; preds = %entry
  %device = getelementptr i8, ptr %v, i32 992
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %3, null
  %.str.33. = select i1 %tobool.not, ptr @.str.33, ptr %3
  %dest_addr = getelementptr i8, ptr %v, i32 881
  %4 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dest_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.if.else.i_crit_edge

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.else
  %arrayidx3.i = getelementptr i8, ptr %v, i32 882
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5.i = icmp eq i8 %7, 0
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %arrayidx9.i = getelementptr i8, ptr %v, i32 883
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11.i = icmp eq i8 %9, 0
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true7.i.if.else.i_crit_edge

land.lhs.true7.i.if.else.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true13.i:                                ; preds = %land.lhs.true7.i
  %arrayidx15.i = getelementptr i8, ptr %v, i32 884
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp17.i = icmp eq i8 %11, 0
  br i1 %cmp17.i, label %land.lhs.true19.i, label %land.lhs.true13.i.if.else.i_crit_edge

land.lhs.true13.i.if.else.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true19.i:                                ; preds = %land.lhs.true13.i
  %arrayidx21.i = getelementptr i8, ptr %v, i32 885
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp23.i = icmp eq i8 %13, 0
  br i1 %cmp23.i, label %if.then.i, label %land.lhs.true19.i.if.else.i_crit_edge

land.lhs.true19.i.if.else.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %rsbuf to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 10752, ptr %rsbuf, align 2
  br label %rose2asc.exit

if.else.i:                                        ; preds = %land.lhs.true19.i.if.else.i_crit_edge, %land.lhs.true13.i.if.else.i_crit_edge, %land.lhs.true7.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  %conv27.i = zext i8 %5 to i32
  %arrayidx29.i = getelementptr i8, ptr %v, i32 882
  %15 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %16 to i32
  %arrayidx33.i = getelementptr i8, ptr %v, i32 883
  %17 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %18 to i32
  %arrayidx37.i = getelementptr i8, ptr %v, i32 884
  %19 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %20 to i32
  %arrayidx41.i = getelementptr i8, ptr %v, i32 885
  %21 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = zext i8 %22 to i32
  %call44.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rsbuf, ptr noundef nonnull @.str.1, i32 noundef %conv27.i, i32 noundef %conv30.i, i32 noundef %conv34.i, i32 noundef %conv38.i, i32 noundef %conv42.i) #13
  br label %rose2asc.exit

rose2asc.exit:                                    ; preds = %if.else.i, %if.then.i
  %dest_call = getelementptr i8, ptr %v, i32 893
  %call6 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %dest_call) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.34, ptr noundef nonnull %rsbuf, ptr noundef %call6) #13
  %source_call = getelementptr i8, ptr %v, i32 886
  %call7 = call i32 @ax25cmp(ptr noundef %source_call, ptr noundef nonnull @null_ax25_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %rose2asc.exit.if.end14_crit_edge, label %if.else10

rose2asc.exit.if.end14_crit_edge:                 ; preds = %rose2asc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.else10:                                        ; preds = %rose2asc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %source_call) #13
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %rose2asc.exit.if.end14_crit_edge
  %callsign.0 = phi ptr [ %call13, %if.else10 ], [ @.str.35, %rose2asc.exit.if.end14_crit_edge ]
  %source_addr = getelementptr i8, ptr %v, i32 876
  %23 = ptrtoint ptr %source_addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %source_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i69 = icmp eq i8 %24, 0
  br i1 %cmp.i69, label %land.lhs.true.i72, label %if.end14.if.else.i93_crit_edge

if.end14.if.else.i93_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i93

land.lhs.true.i72:                                ; preds = %if.end14
  %arrayidx3.i70 = getelementptr i8, ptr %v, i32 877
  %25 = ptrtoint ptr %arrayidx3.i70 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx3.i70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp5.i71 = icmp eq i8 %26, 0
  br i1 %cmp5.i71, label %land.lhs.true7.i75, label %land.lhs.true.i72.if.else.i93_crit_edge

land.lhs.true.i72.if.else.i93_crit_edge:          ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i93

land.lhs.true7.i75:                               ; preds = %land.lhs.true.i72
  %arrayidx9.i73 = getelementptr i8, ptr %v, i32 878
  %27 = ptrtoint ptr %arrayidx9.i73 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9.i73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp11.i74 = icmp eq i8 %28, 0
  br i1 %cmp11.i74, label %land.lhs.true13.i78, label %land.lhs.true7.i75.if.else.i93_crit_edge

land.lhs.true7.i75.if.else.i93_crit_edge:         ; preds = %land.lhs.true7.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i93

land.lhs.true13.i78:                              ; preds = %land.lhs.true7.i75
  %arrayidx15.i76 = getelementptr i8, ptr %v, i32 879
  %29 = ptrtoint ptr %arrayidx15.i76 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx15.i76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp17.i77 = icmp eq i8 %30, 0
  br i1 %cmp17.i77, label %land.lhs.true19.i81, label %land.lhs.true13.i78.if.else.i93_crit_edge

land.lhs.true13.i78.if.else.i93_crit_edge:        ; preds = %land.lhs.true13.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i93

land.lhs.true19.i81:                              ; preds = %land.lhs.true13.i78
  %arrayidx21.i79 = getelementptr i8, ptr %v, i32 880
  %31 = ptrtoint ptr %arrayidx21.i79 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx21.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp23.i80 = icmp eq i8 %32, 0
  br i1 %cmp23.i80, label %if.then.i82, label %land.lhs.true19.i81.if.else.i93_crit_edge

land.lhs.true19.i81.if.else.i93_crit_edge:        ; preds = %land.lhs.true19.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i93

if.then.i82:                                      ; preds = %land.lhs.true19.i81
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %rsbuf to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 10752, ptr %rsbuf, align 2
  br label %rose2asc.exit94

if.else.i93:                                      ; preds = %land.lhs.true19.i81.if.else.i93_crit_edge, %land.lhs.true13.i78.if.else.i93_crit_edge, %land.lhs.true7.i75.if.else.i93_crit_edge, %land.lhs.true.i72.if.else.i93_crit_edge, %if.end14.if.else.i93_crit_edge
  %conv27.i83 = zext i8 %24 to i32
  %arrayidx29.i84 = getelementptr i8, ptr %v, i32 877
  %34 = ptrtoint ptr %arrayidx29.i84 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx29.i84, align 1
  %conv30.i85 = zext i8 %35 to i32
  %arrayidx33.i86 = getelementptr i8, ptr %v, i32 878
  %36 = ptrtoint ptr %arrayidx33.i86 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx33.i86, align 1
  %conv34.i87 = zext i8 %37 to i32
  %arrayidx37.i88 = getelementptr i8, ptr %v, i32 879
  %38 = ptrtoint ptr %arrayidx37.i88 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx37.i88, align 1
  %conv38.i89 = zext i8 %39 to i32
  %arrayidx41.i90 = getelementptr i8, ptr %v, i32 880
  %40 = ptrtoint ptr %arrayidx41.i90 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx41.i90, align 1
  %conv42.i91 = zext i8 %41 to i32
  %call44.i92 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rsbuf, ptr noundef nonnull @.str.1, i32 noundef %conv27.i83, i32 noundef %conv30.i85, i32 noundef %conv34.i87, i32 noundef %conv38.i89, i32 noundef %conv42.i91) #13
  br label %rose2asc.exit94

rose2asc.exit94:                                  ; preds = %if.else.i93, %if.then.i82
  %lci = getelementptr i8, ptr %v, i32 996
  %42 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lci, align 8
  %and = and i32 %43, 4095
  %neighbour = getelementptr i8, ptr %v, i32 988
  %44 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %neighbour, align 8
  %tobool17.not = icmp eq ptr %45, null
  br i1 %tobool17.not, label %rose2asc.exit94.cond.end_crit_edge, label %cond.true

rose2asc.exit94.cond.end_crit_edge:               ; preds = %rose2asc.exit94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %rose2asc.exit94
  call void @__sanitizer_cov_trace_pc() #15
  %number = getelementptr inbounds %struct.rose_neigh, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %number, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rose2asc.exit94.cond.end_crit_edge
  %cond = phi i32 [ %47, %cond.true ], [ 0, %rose2asc.exit94.cond.end_crit_edge ]
  %state = getelementptr i8, ptr %v, i32 1004
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %state, align 8
  %conv = zext i8 %49 to i32
  %vs = getelementptr i8, ptr %v, i32 1010
  %50 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vs, align 2
  %conv19 = zext i16 %51 to i32
  %vr = getelementptr i8, ptr %v, i32 1012
  %52 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vr, align 8
  %conv20 = zext i16 %53 to i32
  %va = getelementptr i8, ptr %v, i32 1014
  %54 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %va, align 2
  %conv21 = zext i16 %55 to i32
  %timer = getelementptr i8, ptr %v, i32 1224
  %call22 = call i32 @ax25_display_timer(ptr noundef %timer) #13
  %div = udiv i32 %call22, 100
  %t1 = getelementptr i8, ptr %v, i32 1020
  %56 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %t1, align 8
  %div23 = udiv i32 %57, 100
  %t2 = getelementptr i8, ptr %v, i32 1024
  %58 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %t2, align 4
  %div24 = udiv i32 %59, 100
  %t3 = getelementptr i8, ptr %v, i32 1028
  %60 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %t3, align 8
  %div25 = udiv i32 %61, 100
  %hb = getelementptr i8, ptr %v, i32 1032
  %62 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hb, align 4
  %div26 = udiv i32 %63, 100
  %idletimer = getelementptr i8, ptr %v, i32 1272
  %call27 = call i32 @ax25_display_timer(ptr noundef %idletimer) #13
  %div28 = udiv i32 %call27, 6000
  %idle = getelementptr i8, ptr %v, i32 1036
  %64 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idle, align 8
  %div29 = udiv i32 %65, 6000
  %sk_wmem_alloc.i = getelementptr i8, ptr %v, i32 360
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %66 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %67, -1
  %sk_backlog.i = getelementptr i8, ptr %v, i32 288
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  %68 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_socket = getelementptr i8, ptr %v, i32 796
  %70 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sk_socket, align 8
  %tobool32.not = icmp eq ptr %71, null
  br i1 %tobool32.not, label %cond.end.cond.end37_crit_edge, label %cond.true33

cond.end.cond.end37_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end37

cond.true33:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.socket_alloc, ptr %71, i32 0, i32 1, i32 11
  %72 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_ino, align 8
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true33, %cond.end.cond.end37_crit_edge
  %cond38 = phi i32 [ %73, %cond.true33 ], [ 0, %cond.end.cond.end37_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.36, ptr noundef nonnull %rsbuf, ptr noundef %callsign.0, ptr noundef nonnull %.str.33., i32 noundef %and, i32 noundef %cond, i32 noundef %conv, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %div, i32 noundef %div23, i32 noundef %div24, i32 noundef %div25, i32 noundef %div26, i32 noundef %div28, i32 noundef %div29, i32 noundef %sub.i, i32 noundef %69, i32 noundef %cond38) #13
  br label %if.end39

if.end39:                                         ; preds = %cond.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %rsbuf) #13
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_display_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_link_failed(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %5, label %if.end4.cleanup_crit_edge [
    i16 270, label %sw.bb
    i16 3, label %sw.bb5
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_list_lock) #13
  %7 = load ptr, ptr @rose_list, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -84
  %tobool2.not3134.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not31.i = or i1 %tobool.not.i, %tobool2.not3134.i
  br i1 %tobool2.not31.i, label %sw.bb.rose_kill_by_device.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.rose_kill_by_device.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_kill_by_device.exit

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %s.032.i = phi ptr [ %add.ptr14.i, %if.end7.i.for.body.i_crit_edge ], [ %add.ptr.i, %sw.bb.for.body.i_crit_edge ]
  %device.i = getelementptr inbounds %struct.rose_sock, ptr %s.032.i, i32 0, i32 10
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %cmp.i10 = icmp eq ptr %9, %1
  br i1 %cmp.i10, label %if.then.i, label %for.body.i.if.end7.i_crit_edge

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @rose_disconnect(ptr noundef nonnull %s.032.i, i32 noundef 101, i32 noundef 9, i32 noundef 0) #13
  %neighbour.i = getelementptr inbounds %struct.rose_sock, ptr %s.032.i, i32 0, i32 9
  %10 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %neighbour.i, align 8
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %use.i = getelementptr inbounds %struct.rose_neigh, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %use.i, align 2
  %dec.i = add i16 %13, -1
  store i16 %dec.i, ptr %use.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %device.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %for.body.i.if.end7.i_crit_edge
  %15 = getelementptr inbounds %struct.sock_common, ptr %s.032.i, i32 0, i32 15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool10.not.i = icmp eq ptr %17, null
  %add.ptr14.i = getelementptr i8, ptr %17, i32 -84
  %tobool2.not35.i = icmp eq ptr %add.ptr14.i, null
  %tobool2.not.i = or i1 %tobool10.not.i, %tobool2.not35.i
  br i1 %tobool2.not.i, label %if.end7.i.rose_kill_by_device.exit_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end7.i.rose_kill_by_device.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rose_kill_by_device.exit

rose_kill_by_device.exit:                         ; preds = %if.end7.i.rose_kill_by_device.exit_crit_edge, %sw.bb.rose_kill_by_device.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_list_lock) #13
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rose_link_device_down(ptr noundef %1) #13
  tail call void @rose_rt_device_down(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %rose_kill_by_device.exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_link_device_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_rt_device_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !139, !141}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @sysctl_rose_restart_request_timeout, !1, !"sysctl_rose_restart_request_timeout", i1 false, i1 false}
!1 = !{!"../net/rose/af_rose.c", i32 49, i32 5}
!2 = !{ptr @sysctl_rose_call_request_timeout, !3, !"sysctl_rose_call_request_timeout", i1 false, i1 false}
!3 = !{!"../net/rose/af_rose.c", i32 50, i32 5}
!4 = !{ptr @sysctl_rose_reset_request_timeout, !5, !"sysctl_rose_reset_request_timeout", i1 false, i1 false}
!5 = !{!"../net/rose/af_rose.c", i32 51, i32 5}
!6 = !{ptr @sysctl_rose_clear_request_timeout, !7, !"sysctl_rose_clear_request_timeout", i1 false, i1 false}
!7 = !{!"../net/rose/af_rose.c", i32 52, i32 5}
!8 = !{ptr @sysctl_rose_no_activity_timeout, !9, !"sysctl_rose_no_activity_timeout", i1 false, i1 false}
!9 = !{!"../net/rose/af_rose.c", i32 53, i32 5}
!10 = !{ptr @sysctl_rose_ack_hold_back_timeout, !11, !"sysctl_rose_ack_hold_back_timeout", i1 false, i1 false}
!11 = !{!"../net/rose/af_rose.c", i32 54, i32 5}
!12 = !{ptr @sysctl_rose_routing_control, !13, !"sysctl_rose_routing_control", i1 false, i1 false}
!13 = !{!"../net/rose/af_rose.c", i32 55, i32 5}
!14 = !{ptr @sysctl_rose_link_fail_timeout, !15, !"sysctl_rose_link_fail_timeout", i1 false, i1 false}
!15 = !{!"../net/rose/af_rose.c", i32 56, i32 5}
!16 = !{ptr @sysctl_rose_maximum_vcs, !17, !"sysctl_rose_maximum_vcs", i1 false, i1 false}
!17 = !{!"../net/rose/af_rose.c", i32 57, i32 5}
!18 = !{ptr @sysctl_rose_window_size, !19, !"sysctl_rose_window_size", i1 false, i1 false}
!19 = !{!"../net/rose/af_rose.c", i32 58, i32 5}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/rose/af_rose.c", i32 97, i32 15}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rose/af_rose.c", i32 99, i32 16}
!24 = !{ptr @rose_destroy_socket.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/rose/af_rose.c", i32 356, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_rose__496_1573_rose_proto_init6, !28, !"__initcall__kmod_rose__496_1573_rose_proto_init6", i1 false, i1 false}
!28 = !{!"../net/rose/af_rose.c", i32 1573, i32 1}
!29 = !{ptr @__param_rose_ndevs, !30, !"__param_rose_ndevs", i1 false, i1 false}
!30 = !{!"../net/rose/af_rose.c", i32 1575, i32 1}
!31 = !{ptr @__UNIQUE_ID_rose_ndevstype497, !30, !"__UNIQUE_ID_rose_ndevstype497", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_rose_ndevs498, !33, !"__UNIQUE_ID_rose_ndevs498", i1 false, i1 false}
!33 = !{!"../net/rose/af_rose.c", i32 1576, i32 1}
!34 = !{ptr @__UNIQUE_ID_author499, !35, !"__UNIQUE_ID_author499", i1 false, i1 false}
!35 = !{!"../net/rose/af_rose.c", i32 1578, i32 1}
!36 = !{ptr @__UNIQUE_ID_description500, !37, !"__UNIQUE_ID_description500", i1 false, i1 false}
!37 = !{!"../net/rose/af_rose.c", i32 1579, i32 1}
!38 = !{ptr @__UNIQUE_ID_file501, !39, !"__UNIQUE_ID_file501", i1 false, i1 false}
!39 = !{!"../net/rose/af_rose.c", i32 1580, i32 1}
!40 = !{ptr @__UNIQUE_ID_license502, !39, !"__UNIQUE_ID_license502", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_alias503, !42, !"__UNIQUE_ID_alias503", i1 false, i1 false}
!42 = !{!"../net/rose/af_rose.c", i32 1581, i32 1}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/rose/af_rose.c", i32 1587, i32 20}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/rose/af_rose.c", i32 1588, i32 20}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/rose/af_rose.c", i32 1589, i32 20}
!49 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rose/af_rose.c", i32 1590, i32 20}
!51 = !{ptr @__exitcall_rose_exit, !52, !"__exitcall_rose_exit", i1 false, i1 false}
!52 = !{!"../net/rose/af_rose.c", i32 1621, i32 1}
!53 = !{ptr @rose_callsign, !54, !"rose_callsign", i1 false, i1 false}
!54 = !{!"../net/rose/af_rose.c", i32 65, i32 14}
!55 = !{ptr @dev_rose, !56, !"dev_rose", i1 false, i1 false}
!56 = !{!"../net/rose/af_rose.c", i32 1484, i32 28}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/rose/af_rose.c", i32 61, i32 8}
!59 = !{ptr @rose_list_lock, !58, !"rose_list_lock", i1 false, i1 false}
!60 = !{ptr @rose_list, !61, !"rose_list", i1 false, i1 false}
!61 = !{!"../net/rose/af_rose.c", i32 60, i32 8}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/net/sock.h", i32 729, i32 3}
!64 = !{ptr @rose_make_new.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/rose/af_rose.c", i32 584, i32 2}
!66 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rose_make_new.__key.10, !68, !"__key", i1 false, i1 false}
!68 = !{!"../net/rose/af_rose.c", i32 585, i32 2}
!69 = !{ptr @.str.11, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @skb_queue_head_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!72 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/rose/af_rose.c", i32 1501, i32 3}
!75 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rose_proto_init._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @rose_proto_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/rose/af_rose.c", i32 1515, i32 3}
!81 = !{ptr @rose_proto_init._entry.16, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rose_proto_init._entry_ptr.18, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/rose/af_rose.c", i32 1524, i32 17}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/rose/af_rose.c", i32 1527, i32 4}
!87 = !{ptr @rose_proto_init._entry.20, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rose_proto_init._entry_ptr.22, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/rose/af_rose.c", i32 1533, i32 4}
!91 = !{ptr @rose_proto_init._entry.23, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rose_proto_init._entry_ptr.25, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/rose/af_rose.c", i32 85, i32 2}
!95 = !{ptr @rose_netdev_addr_lock_key, !96, !"rose_netdev_addr_lock_key", i1 false, i1 false}
!96 = !{!"../net/rose/af_rose.c", i32 74, i32 30}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/rose/af_rose.c", i32 80, i32 2}
!99 = !{ptr @rose_netdev_xmit_lock_key, !100, !"rose_netdev_xmit_lock_key", i1 false, i1 false}
!100 = !{!"../net/rose/af_rose.c", i32 73, i32 30}
!101 = !{ptr @rose_family_ops, !102, !"rose_family_ops", i1 false, i1 false}
!102 = !{!"../net/rose/af_rose.c", i32 1452, i32 38}
!103 = !{ptr @rose_create.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../net/rose/af_rose.c", i32 540, i32 2}
!105 = !{ptr @rose_create.__key.28, !106, !"__key", i1 false, i1 false}
!106 = !{!"../net/rose/af_rose.c", i32 541, i32 2}
!107 = !{ptr @rose_proto_ops, !108, !"rose_proto_ops", i1 false, i1 false}
!108 = !{!"../net/rose/af_rose.c", i32 1458, i32 31}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../net/rose/af_rose.c", i32 685, i32 24}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../net/rose/af_rose.c", i32 788, i32 25}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!115 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!120 = !{ptr @rose_pid, !121, !"rose_pid", i1 false, i1 false}
!121 = !{!"../net/rose/af_rose.c", i32 1486, i32 29}
!122 = !{ptr @rose_info_seqops, !123, !"rose_info_seqops", i1 false, i1 false}
!123 = !{!"../net/rose/af_rose.c", i32 1444, i32 36}
!124 = !{ptr @.str.32, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/rose/af_rose.c", i32 1396, i32 5}
!126 = !{ptr @.str.33, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/rose/af_rose.c", i32 1405, i32 14}
!128 = !{ptr @.str.34, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/rose/af_rose.c", i32 1409, i32 19}
!130 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/rose/af_rose.c", i32 1414, i32 15}
!132 = !{ptr @.str.36, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/rose/af_rose.c", i32 1419, i32 7}
!134 = !{ptr @__param_str_rose_ndevs, !30, !"__param_str_rose_ndevs", i1 false, i1 false}
!135 = !{ptr @rose_ndevs, !136, !"rose_ndevs", i1 false, i1 false}
!136 = !{!"../net/rose/af_rose.c", i32 47, i32 12}
!137 = !{ptr @rose_linkfail_notifier, !138, !"rose_linkfail_notifier", i1 false, i1 false}
!138 = !{!"../net/rose/af_rose.c", i32 1491, i32 29}
!139 = !{ptr @rose_dev_notifier, !140, !"rose_dev_notifier", i1 false, i1 false}
!140 = !{!"../net/rose/af_rose.c", i32 1480, i32 30}
!141 = !{ptr @rose_proto, !142, !"rose_proto", i1 false, i1 false}
!142 = !{!"../net/rose/af_rose.c", i32 505, i32 21}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 2148503915}
!155 = !{i64 2148418355, i64 2148418387, i64 2148418416, i64 2148418450, i64 2148418481, i64 2148418504}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2149369958}
!158 = !{i64 2148415890, i64 2148415922, i64 2148415951, i64 2148415985, i64 2148416016, i64 2148416039}
!159 = !{!"auto-init"}
!160 = !{i64 2156748016}
!161 = !{i64 5146855}
!162 = !{i64 5147052}
!163 = !{i64 2152632285}
!164 = !{i64 2157483144, i64 2157483424, i64 2157483758, i64 2157484092}
!165 = !{i64 2157492070, i64 2157492350, i64 2157492684, i64 2157493018}
!166 = !{i64 2152651981, i64 2152652006}
!167 = !{i64 2152651300, i64 2152651325}
!168 = !{i64 2157453385, i64 2157453665, i64 2157453999, i64 2157454333}
!169 = !{i64 2157464822, i64 2157465102, i64 2157465436, i64 2157465770}
!170 = !{i64 818060, i64 818121}
!171 = !{i64 820792}
!172 = !{i64 821077}
!173 = !{i64 2156804799}
!174 = !{i64 921128, i64 921145, i64 921169, i64 921195, i64 921213}
!175 = !{i64 2156805142}
