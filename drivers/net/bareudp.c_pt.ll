; ModuleID = '/llk/IR_all_yes/drivers/net/bareudp.c_pt.bc'
source_filename = "../drivers/net/bareudp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.135 }
%union.anon.135 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.141, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.141 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.udp_port_cfg = type { i8, %union.anon.156, %union.anon.157, i16, i16, i32, i8 }
%union.anon.156 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%union.anon.157 = type { %struct.in6_addr }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.85 }
%union.anon.85 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.162, i16, i8, i8, i32, i16, i16 }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.bareudp_dev = type { ptr, ptr, i16, i16, i16, i8, ptr, %struct.list_head, %struct.gro_cells }
%struct.gro_cells = type { ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.161 }
%union.anon.161 = type { %struct.ip_tunnel_info }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@__param_str_log_ecn_error = internal constant [22 x i8] c"bareudp.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype572 = internal constant [36 x i8] c"bareudp.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error573 = internal constant [67 x i8] c"bareudp.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@__initcall__kmod_bareudp__588_792_bareudp_init_module7 = internal global ptr @bareudp_init_module, section ".initcall7.init", align 4
@bareudp_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 32, ptr null, ptr @bareudp_setup, i8 0, i32 4, ptr @bareudp_policy, ptr @bareudp_validate, ptr @bareudp_newlink, ptr null, ptr @bareudp_dellink, ptr @bareudp_get_size, ptr @bareudp_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@bareudp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @bareudp_init_net, ptr null, ptr null, ptr @bareudp_exit_batch_net, ptr @bareudp_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bareudp_cleanup_module = internal global ptr @bareudp_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias589 = internal constant [32 x i8] c"bareudp.alias=rtnl-link-bareudp\00", section ".modinfo", align 1
@__UNIQUE_ID_file590 = internal constant [33 x i8] c"bareudp.file=drivers/net/bareudp\00", section ".modinfo", align 1
@__UNIQUE_ID_license591 = internal constant [20 x i8] c"bareudp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author592 = internal constant [59 x i8] c"bareudp.author=Martin Varghese <martin.varghese@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description593 = internal constant [66 x i8] c"bareudp.description=Interface driver for UDP encapsulated traffic\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bareudp\00", [24 x i8] zeroinitializer }, align 32
@bareudp_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.76 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@bareudp_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @bareudp_init, ptr @bareudp_uninit, ptr @bareudp_open, ptr @bareudp_stop, ptr @bareudp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bareudp_fill_metadata_dst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@bareudp_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bareudp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@bareudp_udp_encap_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/net/bareudp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bareudp_udp_encap_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bareudp: non-ECT from %pI4 with TOS=%#x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bareudp_udp_encap_recv\00", [41 x i8] zeroinitializer }, align 32
@bareudp_udp_encap_recv._entry_ptr = internal global ptr @bareudp_udp_encap_recv._entry, section ".printk_index", align 4
@bareudp_udp_encap_recv._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016bareudp: non-ECT from %pI6\0A\00", [34 x i8] zeroinitializer }, align 32
@bareudp_udp_encap_recv._entry_ptr.8 = internal global ptr @bareudp_udp_encap_recv._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@bareudp6_xmit_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bareudp_xmit_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bareudp_fill_metadata_dst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bareudp_validate.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Not enough attributes provided to perform the operation\00", [40 x i8] zeroinitializer }, align 32
@bareudp2info.__msg = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port not specified\00", [45 x i8] zeroinitializer }, align 32
@bareudp2info.__msg.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ethertype not specified\00", [40 x i8] zeroinitializer }, align 32
@bareudp_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bareudp_configure.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Another bareudp device using the same port already exists\00", [38 x i8] zeroinitializer }, align 32
@bareudp_configure.__msg.16 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Cannot set multiproto mode for this ethertype (only IPv4 and unicast MPLS are supported)\00", [39 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34887]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4294967195, i64 4294967256]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34887]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"log_ecn_error\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 29, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"bareudp_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 767, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 724, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"bareudp_policy\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 526, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"bareudp_netdev_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 516, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"bareudp_type\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 534, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 197, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 71, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 159, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 164, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 598, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 271, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1011, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 695, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 723, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 566, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 579, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 583, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"bareudp_net_id\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 35, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 623, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.117 = private constant [25 x i8] c"../drivers/net/bareudp.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 630, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 45, i32 7 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias589, ptr @__UNIQUE_ID_author592, ptr @__UNIQUE_ID_description593, ptr @__UNIQUE_ID_file590, ptr @__UNIQUE_ID_license591, ptr @__UNIQUE_ID_log_ecn_error573, ptr @__UNIQUE_ID_log_ecn_errortype572, ptr @__exitcall_bareudp_cleanup_module, ptr @__initcall__kmod_bareudp__588_792_bareudp_init_module7, ptr @__param_log_ecn_error, ptr @bareudp_cleanup_module, ptr @bareudp_udp_encap_recv._entry, ptr @bareudp_udp_encap_recv._entry.6, ptr @bareudp_udp_encap_recv._entry_ptr, ptr @bareudp_udp_encap_recv._entry_ptr.8, ptr @log_ecn_error, ptr @bareudp_net_ops, ptr @.str, ptr @bareudp_policy, ptr @bareudp_netdev_ops, ptr @bareudp_type, ptr @bareudp_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @bareudp_validate.__msg, ptr @bareudp2info.__msg, ptr @bareudp2info.__msg.15, ptr @bareudp_net_id, ptr @bareudp_configure.__msg, ptr @bareudp_configure.__msg.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ecn_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_udp_encap_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_udp_encap_recv._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_validate.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp2info.__msg to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp2info.__msg.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_configure.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bareudp_configure.__msg.16 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @bareudp_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_link_register(ptr noundef nonnull @bareudp_link_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out2:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @bareudp_net_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bareudp_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_link_unregister(ptr noundef nonnull @bareudp_link_ops) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @bareudp_net_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bareudp_setup(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bareudp_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bareudp_type, ptr %type, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %or7 = or i64 %4, 1126357078089
  store i64 %or7, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %5 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hw_features, align 8
  %or12 = or i64 %6, 1126357073993
  store i64 %or12, ptr %hw_features, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %addr_len, align 1
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %10 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %11 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65527, ptr %max_mtu, align 4
  %type13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %12 = ptrtoint ptr %type13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -2, ptr %type13, align 16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %14, -655393
  %or14 = or i64 %and.i, 524288
  store i64 %or14, ptr %priv_flags.i, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4240, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_validate(ptr nocapture noundef readnone %tb, ptr noundef readnone %data, ptr noundef writeonly %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bareudp_validate.__msg) #14
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %if.then2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bareudp_validate.__msg, ptr %extack, align 4
  br label %return

return:                                           ; preds = %if.then2, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_newlink(ptr noundef %net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %data, ptr noundef writeonly %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bareudp2info.__msg) #14
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bareudp2info.__msg, ptr %extack, align 4
  br label %cleanup

if.end3.i:                                        ; preds = %entry
  %arrayidx4.i = getelementptr ptr, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %4, null
  br i1 %tobool5.not.i, label %do.body7.i, label %if.end14.i

do.body7.i:                                       ; preds = %if.end3.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bareudp2info.__msg.15) #14
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.cleanup_crit_edge, label %if.then10.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bareudp2info.__msg.15, ptr %extack, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.end3.i
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr.i.i42.i = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i42.i, align 2
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 3
  %10 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %11, null
  br i1 %tobool19.not.i, label %if.end14.i.if.end23.i_crit_edge, label %if.then20.i

if.end14.i.if.end23.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i43.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i43.i, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end14.i.if.end23.i_crit_edge
  %conf.sroa.10.0 = phi i16 [ 0, %if.end14.i.if.end23.i_crit_edge ], [ %13, %if.then20.i ]
  %arrayidx24.i = getelementptr ptr, ptr %data, i32 4
  %14 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp ne ptr %15, null
  %spec.select = zext i1 %tobool25.not.i to i8
  %16 = load i32, ptr @bareudp_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %16) #14
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %net, ptr %add.ptr.i.i, align 4
  %dev3.i = getelementptr i8, ptr %dev, i32 2308
  %18 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev3.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn16.i.i = load ptr, ptr %call.i, align 4
  %cmp.not17.i.i = icmp eq ptr %.pn16.i.i, %call.i
  br i1 %cmp.not17.i.i, label %if.end23.i.if.end7.i_crit_edge, label %if.end23.i.for.body.i.i_crit_edge

if.end23.i.for.body.i.i_crit_edge:                ; preds = %if.end23.i
  br label %for.body.i.i

if.end23.i.if.end7.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end23.i.for.body.i.i_crit_edge
  %.pn19.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn16.i.i, %if.end23.i.for.body.i.i_crit_edge ]
  %t.018.i.i = phi ptr [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ null, %if.end23.i.for.body.i.i_crit_edge ]
  %bareudp.0.i.i = getelementptr i8, ptr %.pn19.i.i, i32 -20
  %port3.i.i = getelementptr i8, ptr %.pn19.i.i, i32 -10
  %20 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %21)
  %cmp5.i.i = icmp eq i16 %7, %21
  %spec.select.i.i = select i1 %cmp5.i.i, ptr %bareudp.0.i.i, ptr %t.018.i.i
  %22 = ptrtoint ptr %.pn19.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn19.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %call.i
  br i1 %cmp.not.i.i, label %bareudp_find_dev.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

bareudp_find_dev.exit.i:                          ; preds = %for.body.i.i
  %tobool.not.i18 = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i18, label %bareudp_find_dev.exit.i.if.end7.i_crit_edge, label %do.body.i20

bareudp_find_dev.exit.i.if.end7.i_crit_edge:      ; preds = %bareudp_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

do.body.i20:                                      ; preds = %bareudp_find_dev.exit.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bareudp_configure.__msg) #14
  %tobool5.not.i19 = icmp eq ptr %extack, null
  br i1 %tobool5.not.i19, label %do.body.i20.cleanup_crit_edge, label %if.then6.i

do.body.i20.cleanup_crit_edge:                    ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6.i:                                       ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bareudp_configure.__msg, ptr %extack, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %bareudp_find_dev.exit.i.if.end7.i_crit_edge, %if.end23.i.if.end7.i_crit_edge
  br i1 %tobool25.not.i, label %land.lhs.true.i, label %if.end7.i.if.end24.i_crit_edge

if.end7.i.if.end24.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %24 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.body16.i [
    i16 -30649, label %land.lhs.true.i.if.end24.i_crit_edge
    i16 2048, label %land.lhs.true.i.if.end24.i_crit_edge45
  ]

land.lhs.true.i.if.end24.i_crit_edge45:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

do.body16.i:                                      ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bareudp_configure.__msg.16) #14
  %tobool18.not.i = icmp eq ptr %extack, null
  br i1 %tobool18.not.i, label %do.body16.i.cleanup_crit_edge, label %if.then19.i

do.body16.i.cleanup_crit_edge:                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bareudp_configure.__msg.16, ptr %extack, align 4
  br label %cleanup

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %land.lhs.true.i.if.end24.i_crit_edge45, %if.end7.i.if.end24.i_crit_edge
  %port25.i = getelementptr i8, ptr %dev, i32 2314
  %26 = ptrtoint ptr %port25.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %7, ptr %port25.i, align 2
  %ethertype27.i = getelementptr i8, ptr %dev, i32 2312
  %27 = ptrtoint ptr %ethertype27.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %9, ptr %ethertype27.i, align 4
  %sport_min28.i = getelementptr i8, ptr %dev, i32 2316
  %28 = ptrtoint ptr %sport_min28.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conf.sroa.10.0, ptr %sport_min28.i, align 4
  %multi_proto_mode31.i = getelementptr i8, ptr %dev, i32 2318
  %29 = ptrtoint ptr %multi_proto_mode31.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.select, ptr %multi_proto_mode31.i, align 2
  %call32.i = tail call i32 @register_netdevice(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35.i:                                       ; preds = %if.end24.i
  %next.i = getelementptr i8, ptr %dev, i32 2324
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i, ptr noundef %call.i, ptr noundef %31) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end35.i.if.end4_crit_edge

if.end35.i.if.end4_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end.i.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %next.i, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %next.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %dev, i32 2328
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %next.i, ptr %call.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i.i, %if.end35.i.if.end4_crit_edge
  %arrayidx.i25 = getelementptr ptr, ptr %tb, i32 4
  %36 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i25, align 4
  %tobool.not.i26 = icmp eq ptr %37, null
  br i1 %tobool.not.i26, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  %add.ptr.i.i.i27 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i27, align 4
  %call2.i = tail call i32 @dev_set_mtu(ptr noundef %dev, i32 noundef %39) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %err_unconfig

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_unconfig:                                     ; preds = %if.then.i
  %call.i.i.i30 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next.i) #14
  br i1 %call.i.i.i30, label %if.end.i.i.i31, label %err_unconfig.bareudp_dellink.exit_crit_edge

err_unconfig.bareudp_dellink.exit_crit_edge:      ; preds = %err_unconfig
  call void @__sanitizer_cov_trace_pc() #16
  br label %bareudp_dellink.exit

if.end.i.i.i31:                                   ; preds = %err_unconfig
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %dev, i32 2328
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %bareudp_dellink.exit

bareudp_dellink.exit:                             ; preds = %if.end.i.i.i31, %err_unconfig.bareudp_dellink.exit_crit_edge
  %46 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %next.i, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 2328
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %bareudp_dellink.exit, %if.then.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.then19.i, %do.body16.i.cleanup_crit_edge, %if.then6.i, %do.body.i20.cleanup_crit_edge, %if.then10.i, %do.body7.i.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %bareudp_dellink.exit ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then10.i ], [ -22, %do.body7.i.cleanup_crit_edge ], [ %call32.i, %if.end24.i.cleanup_crit_edge ], [ -22, %do.body16.i.cleanup_crit_edge ], [ -22, %if.then19.i ], [ -16, %do.body.i20.cleanup_crit_edge ], [ -16, %if.then6.i ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bareudp_dellink(ptr noundef %dev, ptr noundef %head) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr i8, ptr %dev, i32 2324
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2328
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bareudp_get_size(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  %tmp.i23 = alloca i16, align 2
  %tmp.i21 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %dev, i32 2314
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %ethertype = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %ethertype to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ethertype, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i21) #14
  %5 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tmp.i21, align 2
  %call.i22 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i21) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool3.not = icmp eq i32 %call.i22, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %sport_min = getelementptr i8, ptr %dev, i32 2316
  %6 = ptrtoint ptr %sport_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sport_min, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i23) #14
  %8 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %tmp.i23, align 2
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i23) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool7.not = icmp eq i32 %call.i24, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.nla_put_failure_crit_edge

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end9:                                          ; preds = %if.end5
  %multi_proto_mode = getelementptr i8, ptr %dev, i32 2318
  %9 = ptrtoint ptr %multi_proto_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %multi_proto_mode, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %call.i25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool12.not = icmp eq i32 %call.i25, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true.nla_put_failure_crit_edge, %if.end5.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_init(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call225 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call225, i32 %0)
  %cmp26 = icmp ult i32 %call225, %0
  br i1 %cmp26, label %for.body.lr.ph, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call1 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call227 = phi i32 [ %call225, %for.body.lr.ph ], [ %call2, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call227
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %6, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %6, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @bareudp_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %7 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %syncp, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call227, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %9, align 64
  %gro_cells = getelementptr i8, ptr %dev, i32 2332
  %call11 = tail call i32 @gro_cells_init(ptr noundef %gro_cells, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ], [ -12, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bareudp_uninit(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gro_cells = getelementptr i8, ptr %dev, i32 2332
  tail call void @gro_cells_destroy(ptr noundef %gro_cells) #14
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_open(ptr noundef %dev) #4 align 64 {
entry:
  %udp_conf.i.i = alloca %struct.udp_port_cfg, align 4
  %sock.i.i = alloca ptr, align 4
  %tunnel_cfg.i = alloca %struct.udp_tunnel_sock_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port = getelementptr i8, ptr %dev, i32 2314
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tunnel_cfg.i) #14
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %udp_conf.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i.i) #14
  %4 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock.i.i, align 4, !annotation !95
  %5 = call ptr @memset(ptr %udp_conf.i.i, i32 0, i32 48)
  %6 = ptrtoint ptr %udp_conf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %udp_conf.i.i, align 4
  %local_udp_port.i.i = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %local_udp_port.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %1, ptr %local_udp_port.i.i, align 4
  %call7.i.i.i = call i32 @udp_sock_create6(ptr noundef %3, ptr noundef nonnull %udp_conf.i.i, ptr noundef nonnull %sock.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = inttoptr i32 %call7.i.i.i to ptr
  br label %bareudp_create_sock.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sock.i.i, align 4
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk.i.i, align 16
  %accept_udp_l4.i.i.i = getelementptr inbounds %struct.udp_sock, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %accept_udp_l4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i.i = load i8, ptr %accept_udp_l4.i.i.i, align 1
  %bf.set4.i.i.i = or i8 %bf.load.i.i.i, 12
  store i8 %bf.set4.i.i.i, ptr %accept_udp_l4.i.i.i, align 1
  br label %bareudp_create_sock.exit.i

bareudp_create_sock.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %8, %if.then.i.i ], [ %10, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %udp_conf.i.i) #14
  %cmp.i45.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %bareudp_create_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %retval.0.i.i to i32
  br label %bareudp_socket_create.exit

if.end.i:                                         ; preds = %bareudp_create_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = getelementptr inbounds i8, ptr %tunnel_cfg.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 24)
  %17 = ptrtoint ptr %tunnel_cfg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %tunnel_cfg.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %15, align 4
  %encap_rcv.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 2
  %19 = ptrtoint ptr %encap_rcv.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bareudp_udp_encap_recv, ptr %encap_rcv.i, align 4
  %encap_err_lookup.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 3
  %20 = ptrtoint ptr %encap_err_lookup.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bareudp_err_lookup, ptr %encap_err_lookup.i, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %22, ptr noundef %retval.0.i.i, ptr noundef nonnull %tunnel_cfg.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  %sock26.i = getelementptr i8, ptr %dev, i32 2320
  %23 = ptrtoint ptr %sock26.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %retval.0.i.i, ptr %sock26.i, align 4
  br label %bareudp_socket_create.exit

bareudp_socket_create.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tunnel_cfg.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_stop(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sock1.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %sock1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1.i, align 4
  store volatile ptr null, ptr %sock1.i, align 4
  tail call void @synchronize_net() #14
  tail call void @udp_tunnel_sock_release(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  %min.addr.i.i64 = alloca i32, align 4
  %max.addr.i.i65 = alloca i32, align 4
  %saddr.i66 = alloca i32, align 4
  %min.addr.i.i = alloca i32, align 4
  %max.addr.i.i = alloca i32, align 4
  %saddr.i = alloca %struct.in6_addr, align 4
  %daddr.i = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %ethertype.i = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethertype.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.i = icmp eq i16 %3, %1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %multi_proto_mode.i = getelementptr i8, ptr %dev, i32 2318
  %4 = ptrtoint ptr %multi_proto_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multi_proto_mode.i, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i59 = icmp eq i8 %5, 0
  br i1 %tobool.not.i59, label %if.end.i.tx_error.thread_crit_edge, label %if.end4.i

if.end.i.tx_error.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_error.thread

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30649, i16 %3)
  %cmp7.i = icmp eq i16 %3, -30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30648, i16 %1)
  %cmp10.i = icmp eq i16 %1, -30648
  %or.cond.i = and i1 %cmp10.i, %cmp7.i
  br i1 %or.cond.i, label %if.end4.i.if.end_crit_edge, label %bareudp_proto_valid.exit

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

bareudp_proto_valid.exit:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp16.i = icmp eq i16 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %cmp20.i = icmp eq i16 %1, -31011
  %or.cond29.i = and i1 %cmp20.i, %cmp16.i
  br i1 %or.cond29.i, label %bareudp_proto_valid.exit.if.end_crit_edge, label %bareudp_proto_valid.exit.tx_error.thread_crit_edge

bareudp_proto_valid.exit.tx_error.thread_crit_edge: ; preds = %bareudp_proto_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_error.thread

bareudp_proto_valid.exit.if.end_crit_edge:        ; preds = %bareudp_proto_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %bareudp_proto_valid.exit.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.tx_error.thread_crit_edge, label %lor.rhs, !prof !97

if.end.tx_error.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_error.thread

lor.rhs:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %lor.rhs.tx_error.thread_crit_edge, label %if.end8, !prof !97

lor.rhs.tx_error.thread_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_error.thread

if.end8:                                          ; preds = %lor.rhs
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end8.rcu_read_lock.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end8.rcu_read_lock.exit_crit_edge
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %dev1.i67 = getelementptr i8, ptr %dev, i32 2308
  %18 = ptrtoint ptr %dev1.i67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i67, align 4
  %nd_net.i.i68 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 127
  %20 = ptrtoint ptr %nd_net.i.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_net.i.i68, align 4
  %cmp.i.i69 = icmp ne ptr %17, %21
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i70 = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %rcu_read_lock.exit
  br i1 %tobool.not.i.i70, label %if.end3.i.i, label %if.then13.ip_tunnel_dst_cache_usable.exit.i_crit_edge

if.then13.ip_tunnel_dst_cache_usable.exit.i_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_tunnel_dst_cache_usable.exit.i

if.end3.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %tun_flags.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 2
  %25 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tun_flags.i.i, align 8
  %27 = and i16 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool4.not.i.i = icmp eq i16 %27, 0
  br label %ip_tunnel_dst_cache_usable.exit.i

ip_tunnel_dst_cache_usable.exit.i:                ; preds = %if.end3.i.i, %if.then13.ip_tunnel_dst_cache_usable.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ false, %if.then13.ip_tunnel_dst_cache_usable.exit.i_crit_edge ], [ %tobool4.not.i.i, %if.end3.i.i ]
  %sock5.i = getelementptr i8, ptr %dev, i32 2320
  %28 = ptrtoint ptr %sock5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %sock5.i, align 4
  %call7.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i60, label %ip_tunnel_dst_cache_usable.exit.i.do.end14.i_crit_edge

ip_tunnel_dst_cache_usable.exit.i.do.end14.i_crit_edge: ; preds = %ip_tunnel_dst_cache_usable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i

land.lhs.true.i60:                                ; preds = %ip_tunnel_dst_cache_usable.exit.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i60.do.end14.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i60.do.end14.i_crit_edge:           ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i60
  %.b133.i = load i1, ptr @bareudp6_xmit_skb.__warned, align 1
  br i1 %.b133.i, label %land.lhs.true11.i.do.end14.i_crit_edge, label %if.then.i61

land.lhs.true11.i.do.end14.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i

if.then.i61:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bareudp6_xmit_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 358, ptr noundef nonnull @.str.3) #14
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then.i61, %land.lhs.true11.i.do.end14.i_crit_edge, %land.lhs.true.i60.do.end14.i_crit_edge, %ip_tunnel_dst_cache_usable.exit.i.do.end14.i_crit_edge
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 2
  %30 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tun_flags.i, align 8
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool16.not.i = icmp eq i16 %32, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i) #14
  %33 = call ptr @memset(ptr %saddr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %daddr.i) #14
  %tobool22.not.i = icmp eq ptr %29, null
  br i1 %tobool22.not.i, label %do.end14.i.bareudp6_xmit_skb.exit_crit_edge, label %if.end24.i

do.end14.i.bareudp6_xmit_skb.exit_crit_edge:      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bareudp6_xmit_skb.exit

if.end24.i:                                       ; preds = %do.end14.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %call27.i = call ptr @ip6_dst_lookup_tunnel(ptr noundef %skb, ptr noundef %dev, ptr noundef %35, ptr noundef nonnull %29, ptr noundef nonnull %saddr.i, ptr noundef nonnull %call2, i8 noundef zeroext 17, i1 noundef zeroext %retval.0.i.i) #14
  %cmp.i134.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134.i, label %if.then29.i, label %if.end31.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %call27.i to i32
  br label %bareudp6_xmit_skb.exit

if.end31.i:                                       ; preds = %if.end24.i
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call2, i32 0, i32 2
  %37 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %options_len.i, align 8
  %conv32.i = zext i8 %38 to i32
  %add.i = add nuw nsw i32 %conv32.i, 48
  %call33.i = call i32 @skb_tunnel_check_pmtu(ptr noundef %skb, ptr noundef %call27.i, i32 noundef %add.i, i1 noundef zeroext false) #14
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  %sport_min.i = getelementptr i8, ptr %dev, i32 2316
  %41 = ptrtoint ptr %sport_min.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sport_min.i, align 4
  %conv35.i = zext i16 %42 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.addr.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.addr.i.i) #14
  %43 = ptrtoint ptr %min.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv35.i, ptr %min.addr.i.i, align 4
  %44 = ptrtoint ptr %max.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 65535, ptr %max.addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %42)
  %cmp.i135.i = icmp eq i16 %42, -1
  br i1 %cmp.i135.i, label %if.then.i.i, label %if.end31.i.if.end.i136.i_crit_edge

if.end31.i.if.end.i136.i_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i136.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @inet_get_local_port_range(ptr noundef %40, ptr noundef nonnull %min.addr.i.i, ptr noundef nonnull %max.addr.i.i) #14
  br label %if.end.i136.i

if.end.i136.i:                                    ; preds = %if.then.i.i, %if.end31.i.if.end.i136.i_crit_edge
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %45 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %46 = and i16 %bf.load.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %if.then.i.i.i, label %if.end.i136.i.skb_get_hash.exit.i.i_crit_edge

if.end.i136.i.skb_get_hash.exit.i.i_crit_edge:    ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_get_hash.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__skb_get_hash(ptr noundef %skb) #14
  br label %skb_get_hash.exit.i.i

skb_get_hash.exit.i.i:                            ; preds = %if.then.i.i.i, %if.end.i136.i.skb_get_hash.exit.i.i_crit_edge
  %hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %48 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hash.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i137.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i137.i, label %if.then6.i.i, label %skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge, !prof !97

skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge: ; preds = %skb_get_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %udp_flow_src_port.exit.i

if.then6.i.i:                                     ; preds = %skb_get_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %52 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %protocol, align 8
  %conv.i138.i = zext i16 %53 to i32
  %call7.i.i = call fastcc i32 @jhash(ptr noundef %51, i32 noundef %conv.i138.i) #14
  br label %udp_flow_src_port.exit.i

udp_flow_src_port.exit.i:                         ; preds = %if.then6.i.i, %skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge
  %hash.0.i.i = phi i32 [ %call7.i.i, %if.then6.i.i ], [ %49, %skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge ]
  %shl.i.i = shl i32 %hash.0.i.i, 16
  %xor.i.i = xor i32 %shl.i.i, %hash.0.i.i
  %conv11.i.i = zext i32 %xor.i.i to i64
  %54 = ptrtoint ptr %max.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max.addr.i.i, align 4
  %56 = ptrtoint ptr %min.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %min.addr.i.i, align 4
  %sub.i.i = sub i32 %55, %57
  %conv12.i.i = sext i32 %sub.i.i to i64
  %mul.i.i = mul nsw i64 %conv12.i.i, %conv11.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv131.i.i = zext i32 %57 to i64
  %add.i.i = add nuw nsw i64 %shr.i.i, %conv131.i.i
  %conv14.i.i = trunc i64 %add.i.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.addr.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.addr.i.i) #14
  %tos.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 3
  %58 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tos.i, align 2
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %62 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %63 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 %conv.i.i.i
  %64 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %protocol, align 8
  %66 = zext i16 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %65, label %udp_flow_src_port.exit.i.ip_tunnel_ecn_encap.exit.i_crit_edge [
    i16 2048, label %if.then.i.i139.i
    i16 -31011, label %if.then6.i.i.i
  ]

udp_flow_src_port.exit.i.ip_tunnel_ecn_encap.exit.i_crit_edge: ; preds = %udp_flow_src_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_tunnel_ecn_encap.exit.i

if.then.i.i139.i:                                 ; preds = %udp_flow_src_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tos.i.i.i, align 1
  br label %ip_tunnel_ecn_encap.exit.i

if.then6.i.i.i:                                   ; preds = %udp_flow_src_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i.i, align 2
  %71 = lshr i16 %70, 4
  %conv1.i.i.i.i = trunc i16 %71 to i8
  br label %ip_tunnel_ecn_encap.exit.i

ip_tunnel_ecn_encap.exit.i:                       ; preds = %if.then6.i.i.i, %if.then.i.i139.i, %udp_flow_src_port.exit.i.ip_tunnel_ecn_encap.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %68, %if.then.i.i139.i ], [ %conv1.i.i.i.i, %if.then6.i.i.i ], [ 0, %udp_flow_src_port.exit.i.ip_tunnel_ecn_encap.exit.i_crit_edge ]
  %72 = and i8 %retval.0.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %cmp.i.not.i.i.i = icmp eq i8 %72, 3
  %spec.select.i.i.i = select i1 %cmp.i.not.i.i.i, i8 2, i8 %72
  %73 = and i8 %59, -4
  %or.i.i.i = or i8 %spec.select.i.i.i, %73
  %ttl39.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 4
  %74 = ptrtoint ptr %ttl39.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ttl39.i, align 1
  call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i.i69) #14
  %76 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i.i, align 8
  %78 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i142.i = zext i16 %79 to i32
  %add.ptr.i.i143.i = getelementptr i8, ptr %77, i32 %conv.i.i142.i
  %data.i144.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data.i144.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i144.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i143.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call42.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #14
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %ip_tunnel_ecn_encap.exit.i.free_dst.i_crit_edge, label %if.end45.i

ip_tunnel_ecn_encap.exit.i.free_dst.i_crit_edge:  ; preds = %ip_tunnel_ecn_encap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dst.i

if.end45.i:                                       ; preds = %ip_tunnel_ecn_encap.exit.i
  %82 = ptrtoint ptr %call27.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call27.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 19
  %84 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %hard_header_len.i, align 2
  %conv47.i = zext i16 %85 to i32
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 21
  %86 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %needed_headroom.i, align 8
  %conv49.i = zext i16 %87 to i32
  %add50.i = add nuw nsw i32 %conv49.i, %conv47.i
  %and51.i = and i32 %add50.i, 131056
  %header_len.i = getelementptr inbounds %struct.dst_entry, ptr %call27.i, i32 0, i32 9
  %88 = ptrtoint ptr %header_len.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %header_len.i, align 4
  %conv53.i = zext i16 %89 to i32
  %90 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %options_len.i, align 8
  %conv57.i = zext i8 %91 to i32
  %add55.i = add nuw nsw i32 %conv53.i, 64
  %add58.i = add nuw nsw i32 %add55.i, %and51.i
  %add59.i = add nuw nsw i32 %add58.i, %conv57.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %92 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i145.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i145.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i145.i, -1
  br i1 %tobool.not.i.i.i, label %if.end45.i.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i

if.end45.i.skb_header_cloned.exit.i.i_crit_edge:  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %93 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #14
  %95 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %96, 65535
  %shr.i.i.i = ashr i32 %96, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i, %if.end45.i.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i146.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i ], [ true, %if.end45.i.skb_header_cloned.exit.i.i_crit_edge ]
  %97 = ptrtoint ptr %data.i144.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i144.i, align 4
  %99 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add59.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %add59.i
  %or.cond.i.i.i = and i1 %retval.0.i.i146.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end66.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end66.i_crit_edge:  ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %101 = call i32 @llvm.usub.sat.i32(i32 %add59.i, i32 %sub.ptr.sub.i.i.i.i) #14
  %add.i.i.i62 = add nuw nsw i32 %101, 127
  %and.i4.i.i = and i32 %add.i.i.i62, -128
  %call4.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool61.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool61.not.i, label %skb_cow_head.exit.i.if.end66.i_crit_edge, label %skb_cow_head.exit.i.free_dst.i_crit_edge, !prof !99

skb_cow_head.exit.i.free_dst.i_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dst.i

skb_cow_head.exit.i.if.end66.i_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

if.end66.i:                                       ; preds = %skb_cow_head.exit.i.if.end66.i_crit_edge, %skb_header_cloned.exit.i.i.if.end66.i_crit_edge
  %cond.i.i = select i1 %tobool16.not.i, i32 1024, i32 2048
  %call.i.i = call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool69.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.end66.i.free_dst.i_crit_edge

if.end66.i.free_dst.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dst.i

if.end71.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  %dst73.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 1, i32 0, i32 1
  %102 = call ptr @memcpy(ptr %daddr.i, ptr %dst73.i, i32 16)
  %sk.i = getelementptr inbounds %struct.socket, ptr %29, i32 0, i32 4
  %103 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sk.i, align 16
  %label.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 5
  %105 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %label.i, align 4
  %port.i = getelementptr i8, ptr %dev, i32 2314
  %107 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %port.i, align 2
  %109 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %tun_flags.i, align 8
  %111 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool79.not.i = icmp eq i16 %111, 0
  %call82.i = call i32 @udp_tunnel6_xmit_skb(ptr noundef %call27.i, ptr noundef %104, ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %saddr.i, ptr noundef nonnull %daddr.i, i8 noundef zeroext %or.i.i.i, i8 noundef zeroext %75, i32 noundef %106, i16 noundef zeroext %conv14.i.i, i16 noundef zeroext %108, i1 noundef zeroext %tobool79.not.i) #14
  br label %bareudp6_xmit_skb.exit

free_dst.i:                                       ; preds = %if.end66.i.free_dst.i_crit_edge, %skb_cow_head.exit.i.free_dst.i_crit_edge, %ip_tunnel_ecn_encap.exit.i.free_dst.i_crit_edge
  %err.0.i = phi i32 [ %call4.i.i.i, %skb_cow_head.exit.i.free_dst.i_crit_edge ], [ %call.i.i, %if.end66.i.free_dst.i_crit_edge ], [ -28, %ip_tunnel_ecn_encap.exit.i.free_dst.i_crit_edge ]
  call void @dst_release(ptr noundef %call27.i) #14
  br label %bareudp6_xmit_skb.exit

bareudp6_xmit_skb.exit:                           ; preds = %free_dst.i, %if.end71.i, %if.then29.i, %do.end14.i.bareudp6_xmit_skb.exit_crit_edge
  %retval.0.i63 = phi i32 [ %36, %if.then29.i ], [ %err.0.i, %free_dst.i ], [ 0, %if.end71.i ], [ -108, %do.end14.i.bareudp6_xmit_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %daddr.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i) #14
  br label %if.end16

if.else:                                          ; preds = %rcu_read_lock.exit
  br i1 %tobool.not.i.i70, label %if.end3.i.i75, label %if.else.ip_tunnel_dst_cache_usable.exit.i80_crit_edge

if.else.ip_tunnel_dst_cache_usable.exit.i80_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_tunnel_dst_cache_usable.exit.i80

if.end3.i.i75:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %tun_flags.i.i73 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 2
  %112 = ptrtoint ptr %tun_flags.i.i73 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %tun_flags.i.i73, align 8
  %114 = and i16 %113, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool4.not.i.i74 = icmp eq i16 %114, 0
  br label %ip_tunnel_dst_cache_usable.exit.i80

ip_tunnel_dst_cache_usable.exit.i80:              ; preds = %if.end3.i.i75, %if.else.ip_tunnel_dst_cache_usable.exit.i80_crit_edge
  %retval.0.i.i76 = phi i1 [ false, %if.else.ip_tunnel_dst_cache_usable.exit.i80_crit_edge ], [ %tobool4.not.i.i74, %if.end3.i.i75 ]
  %sock5.i77 = getelementptr i8, ptr %dev, i32 2320
  %115 = ptrtoint ptr %sock5.i77 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %sock5.i77, align 4
  %call7.i78 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i78)
  %tobool8.not.i79 = icmp eq i32 %call7.i78, 0
  br i1 %tobool8.not.i79, label %land.lhs.true.i83, label %ip_tunnel_dst_cache_usable.exit.i80.do.end14.i89_crit_edge

ip_tunnel_dst_cache_usable.exit.i80.do.end14.i89_crit_edge: ; preds = %ip_tunnel_dst_cache_usable.exit.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i89

land.lhs.true.i83:                                ; preds = %ip_tunnel_dst_cache_usable.exit.i80
  %call9.i81 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i81)
  %tobool10.not.i82 = icmp eq i32 %call9.i81, 0
  br i1 %tobool10.not.i82, label %land.lhs.true.i83.do.end14.i89_crit_edge, label %land.lhs.true11.i84

land.lhs.true.i83.do.end14.i89_crit_edge:         ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i89

land.lhs.true11.i84:                              ; preds = %land.lhs.true.i83
  %.b150.i = load i1, ptr @bareudp_xmit_skb.__warned, align 1
  br i1 %.b150.i, label %land.lhs.true11.i84.do.end14.i89_crit_edge, label %if.then.i85

land.lhs.true11.i84.do.end14.i89_crit_edge:       ; preds = %land.lhs.true11.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i89

if.then.i85:                                      ; preds = %land.lhs.true11.i84
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bareudp_xmit_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 295, ptr noundef nonnull @.str.3) #14
  br label %do.end14.i89

do.end14.i89:                                     ; preds = %if.then.i85, %land.lhs.true11.i84.do.end14.i89_crit_edge, %land.lhs.true.i83.do.end14.i89_crit_edge, %ip_tunnel_dst_cache_usable.exit.i80.do.end14.i89_crit_edge
  %tun_flags.i86 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 2
  %117 = ptrtoint ptr %tun_flags.i86 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %tun_flags.i86, align 8
  %119 = and i16 %118, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool16.not.i87 = icmp eq i16 %119, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saddr.i66) #14
  %120 = ptrtoint ptr %saddr.i66 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %saddr.i66, align 4, !annotation !95
  %tobool22.not.i88 = icmp eq ptr %116, null
  br i1 %tobool22.not.i88, label %do.end14.i89.bareudp_xmit_skb.exit_crit_edge, label %if.end24.i91

do.end14.i89.bareudp_xmit_skb.exit_crit_edge:     ; preds = %do.end14.i89
  call void @__sanitizer_cov_trace_pc() #16
  br label %bareudp_xmit_skb.exit

if.end24.i91:                                     ; preds = %do.end14.i89
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 4
  %call27.i90 = call ptr @ip_route_output_tunnel(ptr noundef %skb, ptr noundef %dev, ptr noundef %122, ptr noundef nonnull %saddr.i66, ptr noundef nonnull %call2, i8 noundef zeroext 17, i1 noundef zeroext %retval.0.i.i76) #14
  %cmp.i151.i = icmp ugt ptr %call27.i90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151.i, label %if.then29.i92, label %if.end31.i99

if.then29.i92:                                    ; preds = %if.end24.i91
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %call27.i90 to i32
  br label %bareudp_xmit_skb.exit

if.end31.i99:                                     ; preds = %if.end24.i91
  %options_len.i93 = getelementptr inbounds %struct.ip_tunnel_info, ptr %call2, i32 0, i32 2
  %124 = ptrtoint ptr %options_len.i93 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %options_len.i93, align 8
  %conv32.i94 = zext i8 %125 to i32
  %add.i95 = add nuw nsw i32 %conv32.i94, 28
  %call33.i96 = call i32 @skb_tunnel_check_pmtu(ptr noundef %skb, ptr noundef %call27.i90, i32 noundef %add.i95, i1 noundef zeroext false) #14
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  %sport_min.i97 = getelementptr i8, ptr %dev, i32 2316
  %128 = ptrtoint ptr %sport_min.i97 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %sport_min.i97, align 4
  %conv35.i98 = zext i16 %129 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.addr.i.i64) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.addr.i.i65) #14
  %130 = ptrtoint ptr %min.addr.i.i64 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv35.i98, ptr %min.addr.i.i64, align 4
  %131 = ptrtoint ptr %max.addr.i.i65 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 65535, ptr %max.addr.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %129)
  %cmp.i152.i = icmp eq i16 %129, -1
  br i1 %cmp.i152.i, label %if.then.i.i100, label %if.end31.i99.if.end.i153.i_crit_edge

if.end31.i99.if.end.i153.i_crit_edge:             ; preds = %if.end31.i99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i153.i

if.then.i.i100:                                   ; preds = %if.end31.i99
  call void @__sanitizer_cov_trace_pc() #16
  call void @inet_get_local_port_range(ptr noundef %127, ptr noundef nonnull %min.addr.i.i64, ptr noundef nonnull %max.addr.i.i65) #14
  br label %if.end.i153.i

if.end.i153.i:                                    ; preds = %if.then.i.i100, %if.end31.i99.if.end.i153.i_crit_edge
  %l4_hash.i.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %132 = ptrtoint ptr %l4_hash.i.i.i101 to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load.i.i.i102 = load i16, ptr %l4_hash.i.i.i101, align 8
  %133 = and i16 %bf.load.i.i.i102, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %if.then.i.i.i103, label %if.end.i153.i.skb_get_hash.exit.i.i105_crit_edge

if.end.i153.i.skb_get_hash.exit.i.i105_crit_edge: ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_get_hash.exit.i.i105

if.then.i.i.i103:                                 ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__skb_get_hash(ptr noundef %skb) #14
  br label %skb_get_hash.exit.i.i105

skb_get_hash.exit.i.i105:                         ; preds = %if.then.i.i.i103, %if.end.i153.i.skb_get_hash.exit.i.i105_crit_edge
  %hash.i.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %135 = ptrtoint ptr %hash.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hash.i.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i154.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i154.i, label %if.then6.i.i109, label %skb_get_hash.exit.i.i105.udp_flow_src_port.exit.i126_crit_edge, !prof !97

skb_get_hash.exit.i.i105.udp_flow_src_port.exit.i126_crit_edge: ; preds = %skb_get_hash.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %udp_flow_src_port.exit.i126

if.then6.i.i109:                                  ; preds = %skb_get_hash.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i106 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %137 = ptrtoint ptr %data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i.i106, align 4
  %139 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %protocol, align 8
  %conv.i155.i = zext i16 %140 to i32
  %call7.i.i108 = call fastcc i32 @jhash(ptr noundef %138, i32 noundef %conv.i155.i) #14
  br label %udp_flow_src_port.exit.i126

udp_flow_src_port.exit.i126:                      ; preds = %if.then6.i.i109, %skb_get_hash.exit.i.i105.udp_flow_src_port.exit.i126_crit_edge
  %hash.0.i.i110 = phi i32 [ %call7.i.i108, %if.then6.i.i109 ], [ %136, %skb_get_hash.exit.i.i105.udp_flow_src_port.exit.i126_crit_edge ]
  %shl.i.i111 = shl i32 %hash.0.i.i110, 16
  %xor.i.i112 = xor i32 %shl.i.i111, %hash.0.i.i110
  %conv11.i.i113 = zext i32 %xor.i.i112 to i64
  %141 = ptrtoint ptr %max.addr.i.i65 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max.addr.i.i65, align 4
  %143 = ptrtoint ptr %min.addr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %min.addr.i.i64, align 4
  %sub.i.i114 = sub i32 %142, %144
  %conv12.i.i115 = sext i32 %sub.i.i114 to i64
  %mul.i.i116 = mul nsw i64 %conv12.i.i115, %conv11.i.i113
  %shr.i.i117 = lshr i64 %mul.i.i116, 32
  %conv131.i.i118 = zext i32 %144 to i64
  %add.i.i119 = add nuw nsw i64 %shr.i.i117, %conv131.i.i118
  %conv14.i.i120 = trunc i64 %add.i.i119 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.addr.i.i64) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.addr.i.i65) #14
  %tos37.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 3
  %145 = ptrtoint ptr %tos37.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tos37.i, align 2
  %head.i.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %147 = ptrtoint ptr %head.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i.i.i121, align 8
  %network_header.i.i.i122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %149 = ptrtoint ptr %network_header.i.i.i122 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %network_header.i.i.i122, align 4
  %conv.i.i.i123 = zext i16 %150 to i32
  %add.ptr.i.i.i124 = getelementptr i8, ptr %148, i32 %conv.i.i.i123
  %151 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %protocol, align 8
  %153 = zext i16 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %152, label %udp_flow_src_port.exit.i126.ip_tunnel_ecn_encap.exit.i137_crit_edge [
    i16 2048, label %if.then.i.i156.i
    i16 -31011, label %if.then6.i.i.i129
  ]

udp_flow_src_port.exit.i126.ip_tunnel_ecn_encap.exit.i137_crit_edge: ; preds = %udp_flow_src_port.exit.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_tunnel_ecn_encap.exit.i137

if.then.i.i156.i:                                 ; preds = %udp_flow_src_port.exit.i126
  call void @__sanitizer_cov_trace_pc() #16
  %tos.i.i.i127 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i124, i32 0, i32 1
  %154 = ptrtoint ptr %tos.i.i.i127 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %tos.i.i.i127, align 1
  br label %ip_tunnel_ecn_encap.exit.i137

if.then6.i.i.i129:                                ; preds = %udp_flow_src_port.exit.i126
  call void @__sanitizer_cov_trace_pc() #16
  %156 = ptrtoint ptr %add.ptr.i.i.i124 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr.i.i.i124, align 2
  %158 = lshr i16 %157, 4
  %conv1.i.i.i.i128 = trunc i16 %158 to i8
  br label %ip_tunnel_ecn_encap.exit.i137

ip_tunnel_ecn_encap.exit.i137:                    ; preds = %if.then6.i.i.i129, %if.then.i.i156.i, %udp_flow_src_port.exit.i126.ip_tunnel_ecn_encap.exit.i137_crit_edge
  %retval.0.i.i.i130 = phi i8 [ %155, %if.then.i.i156.i ], [ %conv1.i.i.i.i128, %if.then6.i.i.i129 ], [ 0, %udp_flow_src_port.exit.i126.ip_tunnel_ecn_encap.exit.i137_crit_edge ]
  %159 = and i8 %retval.0.i.i.i130, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %159)
  %cmp.i.not.i.i.i131 = icmp eq i8 %159, 3
  %spec.select.i.i.i132 = select i1 %cmp.i.not.i.i.i131, i8 2, i8 %159
  %160 = and i8 %146, -4
  %or.i.i.i133 = or i8 %spec.select.i.i.i132, %160
  %ttl40.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 4
  %161 = ptrtoint ptr %ttl40.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ttl40.i, align 1
  %163 = ptrtoint ptr %tun_flags.i86 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %tun_flags.i86, align 8
  %165 = shl i16 %164, 6
  %166 = and i16 %165, 16384
  call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i.i69) #14
  %167 = ptrtoint ptr %head.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %head.i.i.i121, align 8
  %169 = ptrtoint ptr %network_header.i.i.i122 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %network_header.i.i.i122, align 4
  %conv.i.i159.i = zext i16 %170 to i32
  %add.ptr.i.i160.i = getelementptr i8, ptr %168, i32 %conv.i.i159.i
  %data.i161.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %171 = ptrtoint ptr %data.i161.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data.i161.i, align 4
  %sub.ptr.lhs.cast.i.i134 = ptrtoint ptr %add.ptr.i.i160.i to i32
  %sub.ptr.rhs.cast.i.i135 = ptrtoint ptr %172 to i32
  %sub.ptr.sub.i.i136 = sub i32 %sub.ptr.lhs.cast.i.i134, %sub.ptr.rhs.cast.i.i135
  %call48.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i136) #14
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %ip_tunnel_ecn_encap.exit.i137.free_dst.i169_crit_edge, label %if.end51.i

ip_tunnel_ecn_encap.exit.i137.free_dst.i169_crit_edge: ; preds = %ip_tunnel_ecn_encap.exit.i137
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dst.i169

if.end51.i:                                       ; preds = %ip_tunnel_ecn_encap.exit.i137
  %173 = ptrtoint ptr %call27.i90 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %call27.i90, align 4
  %hard_header_len.i138 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 19
  %175 = ptrtoint ptr %hard_header_len.i138 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %hard_header_len.i138, align 2
  %conv54.i = zext i16 %176 to i32
  %needed_headroom.i139 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 21
  %177 = ptrtoint ptr %needed_headroom.i139 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %needed_headroom.i139, align 8
  %conv57.i140 = zext i16 %178 to i32
  %add58.i141 = add nuw nsw i32 %conv57.i140, %conv54.i
  %and59.i = and i32 %add58.i141, 131056
  %header_len.i142 = getelementptr inbounds %struct.dst_entry, ptr %call27.i90, i32 0, i32 9
  %179 = ptrtoint ptr %header_len.i142 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %header_len.i142, align 4
  %conv62.i = zext i16 %180 to i32
  %181 = ptrtoint ptr %options_len.i93 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %options_len.i93, align 8
  %conv66.i = zext i8 %182 to i32
  %add64.i = add nuw nsw i32 %conv62.i, 44
  %add67.i = add nuw nsw i32 %add64.i, %and59.i
  %add68.i = add nuw nsw i32 %add67.i, %conv66.i
  %cloned.i.i.i143 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %183 = ptrtoint ptr %cloned.i.i.i143 to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load.i.i162.i = load i8, ptr %cloned.i.i.i143, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i162.i)
  %tobool.not.i.i.i144 = icmp sgt i8 %bf.load.i.i162.i, -1
  br i1 %tobool.not.i.i.i144, label %if.end51.i.skb_header_cloned.exit.i.i158_crit_edge, label %if.end.i.i.i152

if.end51.i.skb_header_cloned.exit.i.i158_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i.i158

if.end.i.i.i152:                                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i.i145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %184 = ptrtoint ptr %end.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %end.i.i.i.i145, align 4
  %dataref1.i.i.i146 = getelementptr inbounds %struct.skb_shared_info, ptr %185, i32 0, i32 10
  %call.i.i.i.i.i147 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i146, i32 noundef 4) #14
  %186 = ptrtoint ptr %dataref1.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %dataref1.i.i.i146, align 4
  %and.i.i.i148 = and i32 %187, 65535
  %shr.i.i.i149 = ashr i32 %187, 16
  %sub.i.i.i150 = sub nsw i32 %and.i.i.i148, %shr.i.i.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i150)
  %cmp.i.not.i.i151 = icmp eq i32 %sub.i.i.i150, 1
  br label %skb_header_cloned.exit.i.i158

skb_header_cloned.exit.i.i158:                    ; preds = %if.end.i.i.i152, %if.end51.i.skb_header_cloned.exit.i.i158_crit_edge
  %retval.0.i.i163.i = phi i1 [ %cmp.i.not.i.i151, %if.end.i.i.i152 ], [ true, %if.end51.i.skb_header_cloned.exit.i.i158_crit_edge ]
  %188 = ptrtoint ptr %data.i161.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %data.i161.i, align 4
  %190 = ptrtoint ptr %head.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %head.i.i.i121, align 8
  %sub.ptr.lhs.cast.i.i.i.i153 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast.i.i.i.i154 = ptrtoint ptr %191 to i32
  %sub.ptr.sub.i.i.i.i155 = sub i32 %sub.ptr.lhs.cast.i.i.i.i153, %sub.ptr.rhs.cast.i.i.i.i154
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i155, i32 %add68.i)
  %tobool.not.i3.i.i156 = icmp uge i32 %sub.ptr.sub.i.i.i.i155, %add68.i
  %or.cond.i.i.i157 = and i1 %retval.0.i.i163.i, %tobool.not.i3.i.i156
  br i1 %or.cond.i.i.i157, label %skb_header_cloned.exit.i.i158.if.end75.i_crit_edge, label %skb_cow_head.exit.i162

skb_header_cloned.exit.i.i158.if.end75.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

skb_cow_head.exit.i162:                           ; preds = %skb_header_cloned.exit.i.i158
  %192 = call i32 @llvm.usub.sat.i32(i32 %add68.i, i32 %sub.ptr.sub.i.i.i.i155) #14
  %add.i.i.i159 = add nuw nsw i32 %192, 127
  %and.i4.i.i160 = and i32 %add.i.i.i159, -128
  %call4.i.i.i161 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i160, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i161)
  %tobool70.not.i = icmp eq i32 %call4.i.i.i161, 0
  br i1 %tobool70.not.i, label %skb_cow_head.exit.i162.if.end75.i_crit_edge, label %skb_cow_head.exit.i162.free_dst.i169_crit_edge, !prof !99

skb_cow_head.exit.i162.free_dst.i169_crit_edge:   ; preds = %skb_cow_head.exit.i162
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dst.i169

skb_cow_head.exit.i162.if.end75.i_crit_edge:      ; preds = %skb_cow_head.exit.i162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

if.end75.i:                                       ; preds = %skb_cow_head.exit.i162.if.end75.i_crit_edge, %skb_header_cloned.exit.i.i158.if.end75.i_crit_edge
  %cond.i.i163 = select i1 %tobool16.not.i87, i32 1024, i32 2048
  %call.i.i164 = call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i.i163) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %tobool78.not.i = icmp eq i32 %call.i.i164, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end75.i.free_dst.i169_crit_edge

if.end75.i.free_dst.i169_crit_edge:               ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dst.i169

if.end80.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %ethertype.i, align 4
  %195 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %194, ptr %195, align 8
  %inner_protocol_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %197 = ptrtoint ptr %inner_protocol_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %bf.load.i.i = load i32, ptr %inner_protocol_type.i.i, align 2
  %bf.clear.i.i = and i32 %bf.load.i.i, -4194305
  store i32 %bf.clear.i.i, ptr %inner_protocol_type.i.i, align 2
  %sk.i166 = getelementptr inbounds %struct.socket, ptr %116, i32 0, i32 4
  %198 = ptrtoint ptr %sk.i166 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sk.i166, align 16
  %200 = ptrtoint ptr %saddr.i66 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %saddr.i66, align 4
  %dst82.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %202 = ptrtoint ptr %dst82.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %dst82.i, align 4
  %port.i167 = getelementptr i8, ptr %dev, i32 2314
  %204 = ptrtoint ptr %port.i167 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %port.i167, align 2
  %206 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr.i, align 4
  %208 = ptrtoint ptr %dev1.i67 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev1.i67, align 4
  %nd_net.i164.i = getelementptr inbounds %struct.net_device, ptr %209, i32 0, i32 127
  %210 = ptrtoint ptr %nd_net.i164.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %nd_net.i164.i, align 4
  %cmp.i165.i = icmp ne ptr %207, %211
  %212 = ptrtoint ptr %tun_flags.i86 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %tun_flags.i86, align 8
  %214 = and i16 %213, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool94.not.i = icmp eq i16 %214, 0
  call void @udp_tunnel_xmit_skb(ptr noundef %call27.i90, ptr noundef %199, ptr noundef %skb, i32 noundef %201, i32 noundef %203, i8 noundef zeroext %or.i.i.i133, i8 noundef zeroext %162, i16 noundef zeroext %166, i16 noundef zeroext %conv14.i.i120, i16 noundef zeroext %205, i1 noundef zeroext %cmp.i165.i, i1 noundef zeroext %tobool94.not.i) #14
  br label %bareudp_xmit_skb.exit

free_dst.i169:                                    ; preds = %if.end75.i.free_dst.i169_crit_edge, %skb_cow_head.exit.i162.free_dst.i169_crit_edge, %ip_tunnel_ecn_encap.exit.i137.free_dst.i169_crit_edge
  %err.0.i168 = phi i32 [ %call4.i.i.i161, %skb_cow_head.exit.i162.free_dst.i169_crit_edge ], [ %call.i.i164, %if.end75.i.free_dst.i169_crit_edge ], [ -28, %ip_tunnel_ecn_encap.exit.i137.free_dst.i169_crit_edge ]
  call void @dst_release(ptr noundef %call27.i90) #14
  br label %bareudp_xmit_skb.exit

bareudp_xmit_skb.exit:                            ; preds = %free_dst.i169, %if.end80.i, %if.then29.i92, %do.end14.i89.bareudp_xmit_skb.exit_crit_edge
  %retval.0.i170 = phi i32 [ %123, %if.then29.i92 ], [ %err.0.i168, %free_dst.i169 ], [ 0, %if.end80.i ], [ -108, %do.end14.i89.bareudp_xmit_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr.i66) #14
  br label %if.end16

if.end16:                                         ; preds = %bareudp_xmit_skb.exit, %bareudp6_xmit_skb.exit
  %err.0 = phi i32 [ %retval.0.i63, %bareudp6_xmit_skb.exit ], [ %retval.0.i170, %bareudp_xmit_skb.exit ]
  %call.i171 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i171, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i174

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i174:                               ; preds = %if.end16
  %call1.i172 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i172)
  %tobool.not.i173 = icmp eq i32 %call1.i172, 0
  br i1 %tobool.not.i173, label %land.lhs.true.i174.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i176

land.lhs.true.i174.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i176:                              ; preds = %land.lhs.true.i174
  %.b4.i175 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i175, label %land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge, label %if.then.i177

land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i177:                                     ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i177, %land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i174.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %215 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i.i.i178 = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i.i.i.i178 to ptr
  %preempt_count.i.i.i.i179 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %preempt_count.i.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %preempt_count.i.i.i.i179, align 4
  %sub.i.i.i180 = add i32 %218, -1
  store volatile i32 %sub.i.i.i180, ptr %preempt_count.i.i.i.i179, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool17.not = icmp eq i32 %err.0, 0
  br i1 %tobool17.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %tx_error, !prof !99

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

tx_error.thread:                                  ; preds = %lor.rhs.tx_error.thread_crit_edge, %if.end.tx_error.thread_crit_edge, %bareudp_proto_valid.exit.tx_error.thread_crit_edge, %if.end.i.tx_error.thread_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.end37

tx_error:                                         ; preds = %rcu_read_unlock.exit
  call void @consume_skb(ptr noundef %skb) #14
  %219 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %err.0, label %tx_error.if.end37_crit_edge [
    i32 -40, label %if.then29
    i32 -101, label %if.then33
  ]

tx_error.if.end37_crit_edge:                      ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then29:                                        ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #16
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %220 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %collisions, align 4
  %inc = add i32 %221, 1
  store i32 %inc, ptr %collisions, align 4
  br label %if.end37

if.then33:                                        ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #16
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %222 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %tx_carrier_errors, align 4
  %inc35 = add i32 %223, 1
  store i32 %inc35, ptr %tx_carrier_errors, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then29, %tx_error.if.end37_crit_edge, %tx_error.thread
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %224 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %tx_errors, align 4
  %inc39 = add i32 %225, 1
  store i32 %inc39, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %rcu_read_unlock.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_fill_metadata_dst(ptr noundef %dev, ptr noundef %skb) #4 align 64 {
entry:
  %min.addr.i = alloca i32, align 4
  %max.addr.i = alloca i32, align 4
  %saddr = alloca i32, align 4
  %saddr15 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb)
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ip_tunnel_dst_cache_usable.exit_crit_edge

entry.ip_tunnel_dst_cache_usable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_tunnel_dst_cache_usable.exit

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge, label %if.end3.i

if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_tunnel_dst_cache_usable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tun_flags.i, align 8
  %5 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not.i = icmp eq i16 %5, 0
  br label %ip_tunnel_dst_cache_usable.exit

ip_tunnel_dst_cache_usable.exit:                  ; preds = %if.end3.i, %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge, %entry.ip_tunnel_dst_cache_usable.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.ip_tunnel_dst_cache_usable.exit_crit_edge ], [ true, %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge ], [ %tobool4.not.i, %if.end3.i ]
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode.i, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i82 = icmp eq i8 %8, 0
  br i1 %tobool.not.i82, label %if.then, label %if.then14

if.then:                                          ; preds = %ip_tunnel_dst_cache_usable.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saddr) #14
  %9 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %saddr, align 4, !annotation !95
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %call5 = call ptr @ip_route_output_tunnel(ptr noundef %skb, ptr noundef %dev, ptr noundef %11, ptr noundef nonnull %saddr, ptr noundef %call, i8 noundef zeroext 17, i1 noundef zeroext %retval.0.i) #14
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %call5 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #14
  br label %cleanup52

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @dst_release(ptr noundef %call5) #14
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr, align 4
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %u, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #14
  br label %if.end46

if.then14:                                        ; preds = %ip_tunnel_dst_cache_usable.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr15) #14
  %sock16 = getelementptr i8, ptr %dev, i32 2320
  %16 = call ptr @memset(ptr %saddr15, i32 255, i32 16)
  %17 = ptrtoint ptr %sock16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sock16, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.then14.do.end27_crit_edge

if.then14.do.end27_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

land.lhs.true:                                    ; preds = %if.then14
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b81 = load i1, ptr @bareudp_fill_metadata_dst.__warned, align 1
  br i1 %.b81, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bareudp_fill_metadata_dst.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 495, ptr noundef nonnull @.str.3) #14
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %if.then14.do.end27_crit_edge
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %call31 = call ptr @ip6_dst_lookup_tunnel(ptr noundef %skb, ptr noundef %dev, ptr noundef %20, ptr noundef %18, ptr noundef nonnull %saddr15, ptr noundef %call, i8 noundef zeroext 17, i1 noundef zeroext %retval.0.i) #14
  %cmp.i86 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %cleanup39.thread, label %cleanup39

cleanup39.thread:                                 ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %call31 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr15) #14
  br label %cleanup52

cleanup39:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @dst_release(ptr noundef %call31) #14
  %u37 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %u37, ptr %saddr15, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr15) #14
  br label %if.end46

if.end46:                                         ; preds = %cleanup39, %cleanup
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %sport_min = getelementptr i8, ptr %dev, i32 2316
  %25 = ptrtoint ptr %sport_min to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sport_min, align 4
  %conv48 = zext i16 %26 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.addr.i)
  %27 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv48, ptr %min.addr.i, align 4
  %28 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %max.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp.i87 = icmp eq i16 %26, -1
  br i1 %cmp.i87, label %if.then.i, label %if.end46.if.end.i88_crit_edge

if.end46.if.end.i88_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i88

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  call void @inet_get_local_port_range(ptr noundef %24, ptr noundef nonnull %min.addr.i, ptr noundef nonnull %max.addr.i) #14
  br label %if.end.i88

if.end.i88:                                       ; preds = %if.then.i, %if.end46.if.end.i88_crit_edge
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %29 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %30 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %if.then.i.i, label %if.end.i88.skb_get_hash.exit.i_crit_edge

if.end.i88.skb_get_hash.exit.i_crit_edge:         ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #16
  call void @__skb_get_hash(ptr noundef %skb) #14
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %if.end.i88.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %32 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i89 = icmp eq i32 %33, 0
  br i1 %tobool.not.i89, label %if.then6.i, label %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge, !prof !97

skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge: ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %udp_flow_src_port.exit

if.then6.i:                                       ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol.i, align 8
  %conv.i = zext i16 %37 to i32
  %call7.i = call fastcc i32 @jhash(ptr noundef %35, i32 noundef %conv.i) #14
  br label %udp_flow_src_port.exit

udp_flow_src_port.exit:                           ; preds = %if.then6.i, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge
  %hash.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %33, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge ]
  %shl.i = shl i32 %hash.0.i, 16
  %xor.i = xor i32 %shl.i, %hash.0.i
  %conv11.i = zext i32 %xor.i to i64
  %38 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max.addr.i, align 4
  %40 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min.addr.i, align 4
  %sub.i = sub i32 %39, %41
  %conv12.i = sext i32 %sub.i to i64
  %mul.i = mul nsw i64 %conv12.i, %conv11.i
  %shr.i = lshr i64 %mul.i, 32
  %conv131.i = zext i32 %41 to i64
  %add.i = add nuw nsw i64 %shr.i, %conv131.i
  %conv14.i = trunc i64 %add.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.addr.i)
  %tp_src = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 6
  %42 = ptrtoint ptr %tp_src to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv14.i, ptr %tp_src, align 8
  %port = getelementptr i8, ptr %dev, i32 2314
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %port, align 2
  %tp_dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 7
  %45 = ptrtoint ptr %tp_dst to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tp_dst, align 2
  br label %cleanup52

cleanup52:                                        ; preds = %udp_flow_src_port.exit, %cleanup39.thread, %cleanup.thread
  %retval.2 = phi i32 [ 0, %udp_flow_src_port.exit ], [ %12, %cleanup.thread ], [ %21, %cleanup39.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_udp_encap_recv(ptr noundef %sk, ptr noundef %skb) #4 align 64 {
entry:
  %vhdr.i.i.i.i285 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %ipversion = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b261 = load i1, ptr @bareudp_udp_encap_recv.__warned, align 1
  br i1 %.b261, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bareudp_udp_encap_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 71, ptr noundef nonnull @.str.3) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.end7.drop_crit_edge, label %if.end12

do.end7.drop_crit_edge:                           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

if.end12:                                         ; preds = %do.end7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp = icmp eq i16 %5, 2048
  %. = select i1 %cmp, i16 2, i16 10
  %ethertype = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ethertype to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ethertype, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %7, label %if.end12.if.end109_crit_edge [
    i16 2048, label %if.then19
    i16 -30649, label %if.then50
  ]

if.end12.if.end109_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.then19:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ipversion) #14
  %9 = ptrtoint ptr %ipversion to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %ipversion, align 1, !annotation !95
  %call20 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 8, ptr noundef nonnull %ipversion, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  %10 = ptrtoint ptr %ipversion to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ipversion, align 1
  %12 = lshr i8 %11, 4
  %trunc = trunc i8 %12 to i4
  %13 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.22)
  switch i4 %trunc, label %if.end23.cleanup_crit_edge [
    i4 4, label %if.end23.cleanup.thread_crit_edge
    i4 6, label %land.lhs.true34
  ]

if.end23.cleanup.thread_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.end23
  %multi_proto_mode = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %multi_proto_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %multi_proto_mode, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true34.cleanup.thread_crit_edge

land.lhs.true34.cleanup.thread_crit_edge:         ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true34.cleanup.thread_crit_edge, %if.end23.cleanup.thread_crit_edge
  %proto.1.ph = phi i16 [ -31011, %land.lhs.true34.cleanup.thread_crit_edge ], [ 2048, %if.end23.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ipversion) #14
  br label %if.end109

cleanup:                                          ; preds = %land.lhs.true34.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %dev39 = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev39, align 4
  %rx_dropped41 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 6
  %18 = ptrtoint ptr %rx_dropped41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dropped41, align 8
  %inc42 = add i32 %19, 1
  store i32 %inc42, ptr %rx_dropped41, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ipversion) #14
  br label %drop

if.then50:                                        ; preds = %if.end12
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %add.ptr.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp53 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp53, label %if.then55, label %if.else75

if.then55:                                        ; preds = %if.then50
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 9
  %25 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %daddr, align 4
  %and.i = and i32 %26, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.else59, label %if.then55.if.end109_crit_edge

if.then55.if.end109_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.else59:                                        ; preds = %if.then55
  %multi_proto_mode60 = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %multi_proto_mode60 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %multi_proto_mode60, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool61.not = icmp eq i8 %28, 0
  br i1 %tobool61.not, label %if.else68, label %if.else59.if.end109_crit_edge

if.else59.if.end109_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.else68:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #16
  %dev69 = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev69, align 4
  %rx_dropped71 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 6
  %31 = ptrtoint ptr %rx_dropped71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_dropped71, align 8
  %inc72 = add i32 %32, 1
  store i32 %inc72, ptr %rx_dropped71, align 8
  br label %drop

if.else75:                                        ; preds = %if.then50
  %daddr77 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 6
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %daddr77) #14
  %and79 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %ethertype to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ethertype, align 4
  br label %if.end109

if.else83:                                        ; preds = %if.else75
  %multi_proto_mode84 = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %multi_proto_mode84 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %multi_proto_mode84, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool85.not = icmp eq i8 %36, 0
  br i1 %tobool85.not, label %cleanup98, label %if.else83.if.end109_crit_edge

if.else83.if.end109_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

cleanup98:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #16
  %dev92 = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev92, align 4
  %rx_dropped94 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 6
  %39 = ptrtoint ptr %rx_dropped94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_dropped94, align 8
  %inc95 = add i32 %40, 1
  store i32 %inc95, ptr %rx_dropped94, align 8
  br label %drop

if.end109:                                        ; preds = %if.else83.if.end109_crit_edge, %if.then81, %if.else59.if.end109_crit_edge, %if.then55.if.end109_crit_edge, %cleanup.thread, %if.end12.if.end109_crit_edge
  %proto.6 = phi i16 [ %7, %if.end12.if.end109_crit_edge ], [ %proto.1.ph, %cleanup.thread ], [ -30648, %if.else59.if.end109_crit_edge ], [ -30649, %if.then55.if.end109_crit_edge ], [ -30648, %if.else83.if.end109_crit_edge ], [ %34, %if.then81 ]
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %dev110 = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev110, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 127
  %45 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nd_net.i, align 4
  %cmp.i269 = icmp ne ptr %42, %46
  %call.i271 = call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef 8, i16 noundef zeroext %proto.6, i1 noundef zeroext false, i1 noundef zeroext %cmp.i269) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool115.not = icmp eq i32 %call.i271, 0
  br i1 %tobool115.not, label %if.end121, label %if.then116

if.then116:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev110, align 4
  %rx_dropped119 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36, i32 6
  %49 = ptrtoint ptr %rx_dropped119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_dropped119, align 8
  %inc120 = add i32 %50, 1
  store i32 %inc120, ptr %rx_dropped119, align 8
  br label %drop

if.end121:                                        ; preds = %if.end109
  %call122 = call ptr @udp_tun_rx_dst(ptr noundef %skb, i16 noundef zeroext %., i16 noundef zeroext 4, i64 noundef 0, i32 noundef 0) #14
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.then124, label %if.end129

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev110, align 4
  %rx_dropped127 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 36, i32 6
  %53 = ptrtoint ptr %rx_dropped127 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dropped127, align 8
  %inc128 = add i32 %54, 1
  store i32 %inc128, ptr %rx_dropped127, align 8
  br label %drop

if.end129:                                        ; preds = %if.end121
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %55 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %56 = ptrtoint ptr %call122 to i32
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %57, align 8
  %59 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev110, align 4
  %61 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %61, align 8
  %head.i272 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %63 = ptrtoint ptr %head.i272 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i272, align 8
  %network_header.i273 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %65 = ptrtoint ptr %network_header.i273 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %network_header.i273, align 4
  %conv.i274 = zext i16 %66 to i32
  %add.ptr.i275 = getelementptr i8, ptr %64, i32 %conv.i274
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i277 = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i277, ptr %network_header.i273, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %69 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i277, ptr %mac_header.i, align 2
  %70 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %protocol, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %72 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %73 to i32
  br i1 %cmp, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.end129
  %74 = zext i16 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %71, label %if.then135.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then135.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then135.if.then.i.i.i.i_crit_edge364
  ]

if.then135.if.then.i.i.i.i_crit_edge364:          ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.then135.if.then.i.i.i.i_crit_edge:             ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.then135.skb_protocol.exit.i_crit_edge:         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then135.if.then.i.i.i.i_crit_edge, %if.then135.if.then.i.i.i.i_crit_edge364
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i.i.i.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %73)
  %cmp.i.i.i.i = icmp ult i16 %73, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !97

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %if.end190

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %75 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  %76 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !95
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %75, align 2, !annotation !95
  %78 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %82 = add i32 %vlan_depth.1.i.i.i.i, %81
  %sub.i1.i.i.i.i.i = sub i32 %79, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !99

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %84, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !97
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %85 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !97
  br i1 %85, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !97

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  br label %if.end190

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  %88 = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %87, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge365
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge365: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge365
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then135.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %71, %if.then135.skb_protocol.exit.i_crit_edge ], [ %87, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %89 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.if.end190_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

skb_protocol.exit.i.if.end190_crit_edge:          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %head.i272 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i272, align 8
  %92 = ptrtoint ptr %network_header.i273 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i273, align 4
  %conv.i.i.i = zext i16 %93 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %tos.i, align 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %96 = ptrtoint ptr %head.i272 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i272, align 8
  %98 = ptrtoint ptr %network_header.i273 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %network_header.i273, align 4
  %conv.i.i12.i = zext i16 %99 to i32
  %add.ptr.i.i13.i = getelementptr i8, ptr %97, i32 %conv.i.i12.i
  %100 = ptrtoint ptr %add.ptr.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr.i.i13.i, align 2
  %102 = lshr i16 %101, 4
  %conv1.i.i = trunc i16 %102 to i8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %inner.0.i = phi i8 [ %conv1.i.i, %sw.bb2.i ], [ %95, %sw.bb.i ]
  %tos5.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i275, i32 0, i32 1
  %103 = ptrtoint ptr %tos5.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %tos5.i, align 1
  %call6.i = call fastcc i32 @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %104, i8 noundef zeroext %inner.0.i) #14
  br label %if.end139

if.else137:                                       ; preds = %if.end129
  %105 = zext i16 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %71, label %if.else137.skb_protocol.exit.i325_crit_edge [
    i16 -30552, label %if.else137.if.then.i.i.i.i290_crit_edge
    i16 -32512, label %if.else137.if.then.i.i.i.i290_crit_edge366
  ]

if.else137.if.then.i.i.i.i290_crit_edge366:       ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i290

if.else137.if.then.i.i.i.i290_crit_edge:          ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i290

if.else137.skb_protocol.exit.i325_crit_edge:      ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i325

if.then.i.i.i.i290:                               ; preds = %if.else137.if.then.i.i.i.i290_crit_edge, %if.else137.if.then.i.i.i.i290_crit_edge366
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i.i.i.i289 = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i.i.i289, label %if.then.i.i.i.i290.if.end26.i.i.i.i301_crit_edge, label %if.then1.i.i.i.i292

if.then.i.i.i.i290.if.end26.i.i.i.i301_crit_edge: ; preds = %if.then.i.i.i.i290
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i.i301

if.then1.i.i.i.i292:                              ; preds = %if.then.i.i.i.i290
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %73)
  %cmp.i.i.i.i291 = icmp ult i16 %73, 4
  br i1 %cmp.i.i.i.i291, label %do.end.i.i.i.i293, label %if.end25.i.i.i.i295, !prof !97

do.end.i.i.i.i293:                                ; preds = %if.then1.i.i.i.i292
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %if.end190

if.end25.i.i.i.i295:                              ; preds = %if.then1.i.i.i.i292
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i294 = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i301

if.end26.i.i.i.i301:                              ; preds = %if.end25.i.i.i.i295, %if.then.i.i.i.i290.if.end26.i.i.i.i301_crit_edge
  %vlan_depth.0.i.i.i.i296 = phi i32 [ %sub.i.i.i.i294, %if.end25.i.i.i.i295 ], [ 14, %if.then.i.i.i.i290.if.end26.i.i.i.i301_crit_edge ]
  %106 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i285, i32 0, i32 1
  %len.i.i.i.i.i.i297 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i298 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i299 = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i306

do.body27.i.i.i.i306:                             ; preds = %do.body27.backedge.i.i.i.i323, %if.end26.i.i.i.i301
  %vlan_depth.1.i.i.i.i302 = phi i32 [ %vlan_depth.0.i.i.i.i296, %if.end26.i.i.i.i301 ], [ %add.i.i.i.i322, %do.body27.backedge.i.i.i.i323 ]
  %parse_depth.0.i.i.i.i303 = phi i32 [ 8, %if.end26.i.i.i.i301 ], [ %dec.i.i.i.i316, %do.body27.backedge.i.i.i.i323 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i285) #14
  %107 = ptrtoint ptr %vhdr.i.i.i.i285 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %vhdr.i.i.i.i285, align 2, !annotation !95
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %106, align 2, !annotation !95
  %109 = ptrtoint ptr %len.i.i.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i.i.i.i.i.i297, align 4
  %111 = ptrtoint ptr %data_len.i.i.i.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_len.i.i.i.i.i.i298, align 8
  %113 = add i32 %vlan_depth.1.i.i.i.i302, %112
  %sub.i1.i.i.i.i.i304 = sub i32 %110, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i304)
  %cmp.i.i.i.i.i.i305 = icmp sgt i32 %sub.i1.i.i.i.i.i304, 3
  br i1 %cmp.i.i.i.i.i.i305, label %if.then.i.i.i.i.i.i308, label %if.end.i.i.i.i.i.i309, !prof !99

if.then.i.i.i.i.i.i308:                           ; preds = %do.body27.i.i.i.i306
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i307 = getelementptr i8, ptr %115, i32 %vlan_depth.1.i.i.i.i302
  br label %skb_header_pointer.exit.i.i.i.i318

if.end.i.i.i.i.i.i309:                            ; preds = %do.body27.i.i.i.i306
  br i1 %tobool2.not.i.i.i.i.i.i299, label %if.end.i.i.i.i.i.i309.cleanup.thread.i.i.i.i319_crit_edge, label %lor.lhs.false.i.i.i.i.i.i313

if.end.i.i.i.i.i.i309.cleanup.thread.i.i.i.i319_crit_edge: ; preds = %if.end.i.i.i.i.i.i309
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i319

lor.lhs.false.i.i.i.i.i.i313:                     ; preds = %if.end.i.i.i.i.i.i309
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i.i310 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i302, ptr noundef nonnull %vhdr.i.i.i.i285, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i310)
  %cmp3.i.i.i.i.i.i311 = icmp slt i32 %call.i.i.i.i.i.i310, 0
  %spec.select.i.i.i.i.i.i312 = select i1 %cmp3.i.i.i.i.i.i311, ptr null, ptr %vhdr.i.i.i.i285, !prof !97
  br label %skb_header_pointer.exit.i.i.i.i318

skb_header_pointer.exit.i.i.i.i318:               ; preds = %lor.lhs.false.i.i.i.i.i.i313, %if.then.i.i.i.i.i.i308
  %retval.0.i.i.i.i.i.i314 = phi ptr [ %add.ptr.i.i.i.i.i.i307, %if.then.i.i.i.i.i.i308 ], [ %spec.select.i.i.i.i.i.i312, %lor.lhs.false.i.i.i.i.i.i313 ]
  %tobool29.not.i.i.i.i315 = icmp eq ptr %retval.0.i.i.i.i.i.i314, null
  %dec.i.i.i.i316 = add nsw i32 %parse_depth.0.i.i.i.i303, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i316)
  %tobool30.not.i.i.i.i317 = icmp eq i32 %dec.i.i.i.i316, 0
  %116 = select i1 %tobool29.not.i.i.i.i315, i1 true, i1 %tobool30.not.i.i.i.i317, !prof !97
  br i1 %116, label %skb_header_pointer.exit.i.i.i.i318.cleanup.thread.i.i.i.i319_crit_edge, label %do.cond42.i.i.i.i321, !prof !97

skb_header_pointer.exit.i.i.i.i318.cleanup.thread.i.i.i.i319_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i318
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i319

cleanup.thread.i.i.i.i319:                        ; preds = %skb_header_pointer.exit.i.i.i.i318.cleanup.thread.i.i.i.i319_crit_edge, %if.end.i.i.i.i.i.i309.cleanup.thread.i.i.i.i319_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i285) #14
  br label %if.end190

do.cond42.i.i.i.i321:                             ; preds = %skb_header_pointer.exit.i.i.i.i318
  %h_vlan_encapsulated_proto.i.i.i.i320 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i314, i32 0, i32 1
  %117 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i320 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i320, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i285) #14
  %119 = zext i16 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %118, label %do.cond42.i.i.i.i321.skb_protocol.exit.i325_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i321.do.body27.backedge.i.i.i.i323_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i321.do.body27.backedge.i.i.i.i323_crit_edge367
  ]

do.cond42.i.i.i.i321.do.body27.backedge.i.i.i.i323_crit_edge367: ; preds = %do.cond42.i.i.i.i321
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i323

do.cond42.i.i.i.i321.do.body27.backedge.i.i.i.i323_crit_edge: ; preds = %do.cond42.i.i.i.i321
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i323

do.cond42.i.i.i.i321.skb_protocol.exit.i325_crit_edge: ; preds = %do.cond42.i.i.i.i321
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i325

do.body27.backedge.i.i.i.i323:                    ; preds = %do.cond42.i.i.i.i321.do.body27.backedge.i.i.i.i323_crit_edge, %do.cond42.i.i.i.i321.do.body27.backedge.i.i.i.i323_crit_edge367
  %add.i.i.i.i322 = add nsw i32 %vlan_depth.1.i.i.i.i302, 4
  br label %do.body27.i.i.i.i306

skb_protocol.exit.i325:                           ; preds = %do.cond42.i.i.i.i321.skb_protocol.exit.i325_crit_edge, %if.else137.skb_protocol.exit.i325_crit_edge
  %retval.2.i.i.i.i324 = phi i16 [ %71, %if.else137.skb_protocol.exit.i325_crit_edge ], [ %118, %do.cond42.i.i.i.i321.skb_protocol.exit.i325_crit_edge ]
  %120 = zext i16 %retval.2.i.i.i.i324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %retval.2.i.i.i.i324, label %skb_protocol.exit.i325.if.end190_crit_edge [
    i16 2048, label %sw.bb.i331
    i16 -31011, label %sw.bb2.i337
  ]

skb_protocol.exit.i325.if.end190_crit_edge:       ; preds = %skb_protocol.exit.i325
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

sw.bb.i331:                                       ; preds = %skb_protocol.exit.i325
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %head.i272 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i272, align 8
  %123 = ptrtoint ptr %network_header.i273 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %network_header.i273, align 4
  %conv.i.i.i328 = zext i16 %124 to i32
  %add.ptr.i.i.i329 = getelementptr i8, ptr %122, i32 %conv.i.i.i328
  %tos.i330 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i329, i32 0, i32 1
  %125 = ptrtoint ptr %tos.i330 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tos.i330, align 1
  br label %sw.epilog.i340

sw.bb2.i337:                                      ; preds = %skb_protocol.exit.i325
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %head.i272 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head.i272, align 8
  %129 = ptrtoint ptr %network_header.i273 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %network_header.i273, align 4
  %conv.i.i12.i334 = zext i16 %130 to i32
  %add.ptr.i.i13.i335 = getelementptr i8, ptr %128, i32 %conv.i.i12.i334
  %131 = ptrtoint ptr %add.ptr.i.i13.i335 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr.i.i13.i335, align 2
  %133 = lshr i16 %132, 4
  %conv1.i.i336 = trunc i16 %133 to i8
  br label %sw.epilog.i340

sw.epilog.i340:                                   ; preds = %sw.bb2.i337, %sw.bb.i331
  %inner.0.i338 = phi i8 [ %conv1.i.i336, %sw.bb2.i337 ], [ %126, %sw.bb.i331 ]
  %134 = ptrtoint ptr %add.ptr.i275 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %add.ptr.i275, align 2
  %136 = lshr i16 %135, 4
  %conv1.i14.i = trunc i16 %136 to i8
  %call6.i339 = call fastcc i32 @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %conv1.i14.i, i8 noundef zeroext %inner.0.i338) #14
  br label %if.end139

if.end139:                                        ; preds = %sw.epilog.i340, %sw.epilog.i
  %err.0 = phi i32 [ %call6.i, %sw.epilog.i ], [ %call6.i339, %sw.epilog.i340 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool140.not = icmp eq i32 %err.0, 0
  br i1 %tobool140.not, label %if.end139.if.end190_crit_edge, label %if.then144, !prof !99

if.end139.if.end190_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

if.then144:                                       ; preds = %if.end139
  %137 = load i8, ptr @log_ecn_error, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool145.not = icmp eq i8 %137, 0
  br i1 %tobool145.not, label %if.then144.if.end179_crit_edge, label %if.then146

if.then144.if.end179_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

if.then146:                                       ; preds = %if.then144
  %call152 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %cmp, label %do.body151, label %do.body165

do.body151:                                       ; preds = %if.then146
  br i1 %tobool153.not, label %do.body151.if.end179_crit_edge, label %do.end157

do.body151.if.end179_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

do.end157:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #16
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i275, i32 0, i32 8
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i275, i32 0, i32 1
  %138 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %tos, align 1
  %conv159 = zext i8 %139 to i32
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %saddr, i32 noundef %conv159) #19
  br label %if.end179

do.body165:                                       ; preds = %if.then146
  br i1 %tobool153.not, label %do.body165.if.end179_crit_edge, label %do.end171

do.body165.if.end179_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

do.end171:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #16
  %saddr173 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i275, i32 0, i32 5
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %saddr173) #19
  br label %if.end179

if.end179:                                        ; preds = %do.end171, %do.body165.if.end179_crit_edge, %do.end157, %do.body151.if.end179_crit_edge, %if.then144.if.end179_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.0)
  %cmp180 = icmp sgt i32 %err.0, 1
  br i1 %cmp180, label %if.then182, label %if.end179.if.end190_crit_edge

if.end179.if.end190_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  %140 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev110, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 36, i32 13
  %142 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rx_frame_errors, align 4
  %inc185 = add i32 %143, 1
  store i32 %inc185, ptr %rx_frame_errors, align 4
  %144 = load ptr, ptr %dev110, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 36, i32 4
  %145 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_errors, align 8
  %inc188 = add i32 %146, 1
  store i32 %inc188, ptr %rx_errors, align 8
  br label %drop

if.end190:                                        ; preds = %if.end179.if.end190_crit_edge, %if.end139.if.end190_crit_edge, %skb_protocol.exit.i325.if.end190_crit_edge, %cleanup.thread.i.i.i.i319, %do.end.i.i.i.i293, %skb_protocol.exit.i.if.end190_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %len191 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %147 = ptrtoint ptr %len191 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len191, align 4
  %gro_cells = getelementptr inbounds %struct.bareudp_dev, ptr %3, i32 0, i32 8
  %call192 = call i32 @gro_cells_receive(ptr noundef %gro_cells, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %cmp193 = icmp eq i32 %call192, 0
  br i1 %cmp193, label %if.then201, label %if.end190.cleanup204_crit_edge, !prof !99

if.end190.cleanup204_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup204

if.then201:                                       ; preds = %if.end190
  %149 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev110, align 4
  %151 = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 130
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 64
  %154 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %160 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i.i.i = icmp eq i32 %160, 0
  br i1 %tobool.not.i.i.i, label %if.then201.dev_sw_netstats_rx_add.exit_crit_edge, label %land.lhs.true.i.i.i

if.then201.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_sw_netstats_rx_add.exit

land.lhs.true.i.i.i:                              ; preds = %if.then201
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i342 = add i32 %162, 1
  store volatile i32 %add.i.i.i.i342, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !101
  %163 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i.i = and i32 %163, -16384
  %164 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %168, ptrtoint (ptr @lockdep_recursion to i32)
  %169 = inttoptr i32 %add.i.i.i to ptr
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %169, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !102
  %172 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i7.i.i.i = and i32 %172, -16384
  %173 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i343 = add i32 %175, -1
  store volatile i32 %sub.i.i.i.i343, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool20.not.i.i.i = icmp eq i32 %171, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_sw_netstats_rx_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %176 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i.i.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp.i.i.i = icmp eq i32 %179, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_sw_netstats_rx_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %180 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i9.i.i.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %183, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  %184 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %187, ptrtoint (ptr @hardirqs_enabled to i32)
  %188 = inttoptr i32 %add47.i.i.i to ptr
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %188, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  %191 = call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i12.i.i.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %194, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool54.not.i.i.i = icmp eq i32 %190, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_sw_netstats_rx_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %if.then.i.i.i, !prof !99

land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_sw_netstats_rx_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %dev_sw_netstats_rx_add.exit

dev_sw_netstats_rx_add.exit:                      ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %if.then201.dev_sw_netstats_rx_add.exit_crit_edge
  %195 = ptrtoint ptr %153 to i32
  %add.i = add i32 %159, %195
  %196 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %198, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %196, i32 0, i32 4, i32 0, i32 1
  %199 = call ptr @llvm.returnaddress(i32 0) #14
  %200 = ptrtoint ptr %199 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %200) #14
  %conv.i344 = zext i32 %148 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %196, i32 0, i32 1
  %201 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %202, %conv.i344
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %203 = ptrtoint ptr %196 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %196, align 32
  %inc.i = add i64 %204, 1
  store i64 %inc.i, ptr %196, align 32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %200) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !106
  %205 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %206, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup204

drop:                                             ; preds = %if.then182, %if.then124, %if.then116, %cleanup98, %if.else68, %cleanup, %do.end7.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup204

cleanup204:                                       ; preds = %drop, %dev_sw_netstats_rx_add.exit, %if.end190.cleanup204_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bareudp_err_lookup(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_tun_rx_dst(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %outer, i8 noundef zeroext %inner) unnamed_addr #9 align 64 {
entry:
  %vhdr.i.i.i.i13 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #16
  %0 = and i8 %inner, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i.not.i = icmp eq i8 %0, 0
  %1 = and i8 %outer, 3
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %and.i = zext i8 %1 to i32
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and.i, label %if.then.unreachabledefault.i [
    i32 0, label %if.else
    i32 2, label %if.then.i.if.end8_crit_edge
    i32 1, label %if.then.i.if.end8_crit_edge101
    i32 3, label %sw.bb2.i
  ]

if.then.i.if.end8_crit_edge101:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.unreachabledefault.i:                     ; preds = %if.then.i
  unreachable

if.then:                                          ; preds = %entry
  %trunc = trunc i8 %outer to i2
  %3 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i2 %trunc, label %if.then.if.end8_crit_edge [
    i2 -1, label %if.then2
    i2 1, label %if.then.if.then5_crit_edge
  ]

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then2:                                         ; preds = %if.then
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %6 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %7 to i32
  %8 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %5, label %if.then2.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then2.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then2.if.then.i.i.i.i_crit_edge102
  ]

if.then2.if.then.i.i.i.i_crit_edge102:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.then2.if.then.i.i.i.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.then2.skb_protocol.exit.i_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then2.if.then.i.i.i.i_crit_edge, %if.then2.if.then.i.i.i.i_crit_edge102
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp.i.i.i.i = icmp ult i16 %7, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !97

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %if.end8

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %9 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  %10 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !95
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %9, align 2, !annotation !95
  %12 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %16 = add i32 %vlan_depth.1.i.i.i.i, %15
  %sub.i1.i.i.i.i.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !99

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %18, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !97
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %19 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !97
  br i1 %19, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !97

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  br label %if.end8

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %21, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge103
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge103: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge103
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then2.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %5, %if.then2.skb_protocol.exit.i_crit_edge ], [ %21, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %23 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.if.end8_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.if.end8_crit_edge:            ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %29
  br i1 %cmp.not.i, label %sw.bb.i.if.end8_crit_edge, label %if.then.i12

sw.bb.i.if.end8_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i12:                                      ; preds = %sw.bb.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos.i.i, align 1
  %32 = add i8 %31, 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.then.i12.if.end8_crit_edge, label %if.end.i.i

if.then.i12.if.end8_crit_edge:                    ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #16
  %34 = and i8 %32, 3
  %conv4.i.i = zext i8 %34 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %36, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %37 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %38 = or i8 %31, 3
  %39 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tos.i.i, align 1
  br label %if.end8

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i1.i, align 8
  %network_header.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i2.i, align 4
  %conv.i3.i = zext i16 %43 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %41, i32 %conv.i3.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i4.i, i32 40
  %tail.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i5.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %45
  br i1 %cmp10.not.i, label %sw.bb6.i.if.end8_crit_edge, label %if.then12.i

sw.bb6.i.if.end8_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then12.i:                                      ; preds = %sw.bb6.i
  %46 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i4.i, align 2
  %48 = and i16 %47, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp.i14.not.i.i = icmp eq i16 %48, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.if.end8_crit_edge, label %if.end.i10.i

if.then12.i.if.end8_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.i10.i:                                     ; preds = %if.then12.i
  %49 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i4.i, align 4
  %or.i.i = or i32 %50, 3145728
  store i32 %or.i.i, ptr %add.ptr.i4.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %51 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %52 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %52)
  %cmp.i.i = icmp eq i16 %52, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i10.i.if.end8_crit_edge

if.end.i10.i.if.end8_crit_edge:                   ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then3.i.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %neg.i.i.i = xor i32 %50, -1
  %add.i.i.i11.i = add i32 %55, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i11.i, i32 %neg.i.i.i)
  %cmp.i.i.i12.i = icmp ult i32 %add.i.i.i11.i, %neg.i.i.i
  %conv.i.i.i13.i = zext i1 %cmp.i.i.i12.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i11.i, %or.i.i
  %add.i.i14.i = add i32 %add1.i.i.i.i, %conv.i.i.i13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i14.i, i32 %or.i.i)
  %cmp.i.i15.i = icmp ult i32 %add.i.i14.i, %or.i.i
  %conv.i.i16.i = zext i1 %cmp.i.i15.i to i32
  %add1.i.i.i = add i32 %add.i.i14.i, %conv.i.i16.i
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add1.i.i.i, ptr %53, align 8
  br label %if.end8

if.else:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.else.if.then5_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %if.else.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %protocol.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i.i.i14 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol.i.i.i14, align 8
  %mac_len.i.i.i.i15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %59 = ptrtoint ptr %mac_len.i.i.i.i15 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mac_len.i.i.i.i15, align 4
  %conv.i.i.i.i16 = zext i16 %60 to i32
  %61 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %58, label %if.then5.skb_protocol.exit.i53_crit_edge [
    i16 -30552, label %if.then5.if.then.i.i.i.i18_crit_edge
    i16 -32512, label %if.then5.if.then.i.i.i.i18_crit_edge104
  ]

if.then5.if.then.i.i.i.i18_crit_edge104:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i18

if.then5.if.then.i.i.i.i18_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i18

if.then5.skb_protocol.exit.i53_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i53

if.then.i.i.i.i18:                                ; preds = %if.then5.if.then.i.i.i.i18_crit_edge, %if.then5.if.then.i.i.i.i18_crit_edge104
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i.i.i.i17 = icmp eq i16 %60, 0
  br i1 %tobool.not.i.i.i.i17, label %if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge, label %if.then1.i.i.i.i20

if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge:   ; preds = %if.then.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i.i29

if.then1.i.i.i.i20:                               ; preds = %if.then.i.i.i.i18
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %60)
  %cmp.i.i.i.i19 = icmp ult i16 %60, 4
  br i1 %cmp.i.i.i.i19, label %do.end.i.i.i.i21, label %if.end25.i.i.i.i23, !prof !97

do.end.i.i.i.i21:                                 ; preds = %if.then1.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %if.end8

if.end25.i.i.i.i23:                               ; preds = %if.then1.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i22 = add nsw i32 %conv.i.i.i.i16, -4
  br label %if.end26.i.i.i.i29

if.end26.i.i.i.i29:                               ; preds = %if.end25.i.i.i.i23, %if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge
  %vlan_depth.0.i.i.i.i24 = phi i32 [ %sub.i.i.i.i22, %if.end25.i.i.i.i23 ], [ 14, %if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge ]
  %62 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i13, i32 0, i32 1
  %len.i.i.i.i.i.i25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i27 = icmp eq ptr %skb, null
  %data.i.i.i.i.i28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i34

do.body27.i.i.i.i34:                              ; preds = %do.body27.backedge.i.i.i.i51, %if.end26.i.i.i.i29
  %vlan_depth.1.i.i.i.i30 = phi i32 [ %vlan_depth.0.i.i.i.i24, %if.end26.i.i.i.i29 ], [ %add.i.i.i.i50, %do.body27.backedge.i.i.i.i51 ]
  %parse_depth.0.i.i.i.i31 = phi i32 [ 8, %if.end26.i.i.i.i29 ], [ %dec.i.i.i.i44, %do.body27.backedge.i.i.i.i51 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13) #14
  %63 = ptrtoint ptr %vhdr.i.i.i.i13 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %vhdr.i.i.i.i13, align 2, !annotation !95
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %62, align 2, !annotation !95
  %65 = ptrtoint ptr %len.i.i.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i.i.i.i.i25, align 4
  %67 = ptrtoint ptr %data_len.i.i.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_len.i.i.i.i.i.i26, align 8
  %69 = add i32 %vlan_depth.1.i.i.i.i30, %68
  %sub.i1.i.i.i.i.i32 = sub i32 %66, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i32)
  %cmp.i.i.i.i.i.i33 = icmp sgt i32 %sub.i1.i.i.i.i.i32, 3
  br i1 %cmp.i.i.i.i.i.i33, label %if.then.i.i.i.i.i.i36, label %if.end.i.i.i.i.i.i37, !prof !99

if.then.i.i.i.i.i.i36:                            ; preds = %do.body27.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %data.i.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i.i.i28, align 4
  %add.ptr.i.i.i.i.i.i35 = getelementptr i8, ptr %71, i32 %vlan_depth.1.i.i.i.i30
  br label %skb_header_pointer.exit.i.i.i.i46

if.end.i.i.i.i.i.i37:                             ; preds = %do.body27.i.i.i.i34
  br i1 %tobool2.not.i.i.i.i.i.i27, label %if.end.i.i.i.i.i.i37.cleanup.thread.i.i.i.i47_crit_edge, label %lor.lhs.false.i.i.i.i.i.i41

if.end.i.i.i.i.i.i37.cleanup.thread.i.i.i.i47_crit_edge: ; preds = %if.end.i.i.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i47

lor.lhs.false.i.i.i.i.i.i41:                      ; preds = %if.end.i.i.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i.i38 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i30, ptr noundef nonnull %vhdr.i.i.i.i13, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i38)
  %cmp3.i.i.i.i.i.i39 = icmp slt i32 %call.i.i.i.i.i.i38, 0
  %spec.select.i.i.i.i.i.i40 = select i1 %cmp3.i.i.i.i.i.i39, ptr null, ptr %vhdr.i.i.i.i13, !prof !97
  br label %skb_header_pointer.exit.i.i.i.i46

skb_header_pointer.exit.i.i.i.i46:                ; preds = %lor.lhs.false.i.i.i.i.i.i41, %if.then.i.i.i.i.i.i36
  %retval.0.i.i.i.i.i.i42 = phi ptr [ %add.ptr.i.i.i.i.i.i35, %if.then.i.i.i.i.i.i36 ], [ %spec.select.i.i.i.i.i.i40, %lor.lhs.false.i.i.i.i.i.i41 ]
  %tobool29.not.i.i.i.i43 = icmp eq ptr %retval.0.i.i.i.i.i.i42, null
  %dec.i.i.i.i44 = add nsw i32 %parse_depth.0.i.i.i.i31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i44)
  %tobool30.not.i.i.i.i45 = icmp eq i32 %dec.i.i.i.i44, 0
  %72 = select i1 %tobool29.not.i.i.i.i43, i1 true, i1 %tobool30.not.i.i.i.i45, !prof !97
  br i1 %72, label %skb_header_pointer.exit.i.i.i.i46.cleanup.thread.i.i.i.i47_crit_edge, label %do.cond42.i.i.i.i49, !prof !97

skb_header_pointer.exit.i.i.i.i46.cleanup.thread.i.i.i.i47_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i47

cleanup.thread.i.i.i.i47:                         ; preds = %skb_header_pointer.exit.i.i.i.i46.cleanup.thread.i.i.i.i47_crit_edge, %if.end.i.i.i.i.i.i37.cleanup.thread.i.i.i.i47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13) #14
  br label %if.end8

do.cond42.i.i.i.i49:                              ; preds = %skb_header_pointer.exit.i.i.i.i46
  %h_vlan_encapsulated_proto.i.i.i.i48 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i42, i32 0, i32 1
  %73 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i48 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i48, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13) #14
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %74, label %do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge105
  ]

do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge105: ; preds = %do.cond42.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i51

do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge: ; preds = %do.cond42.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i51

do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge: ; preds = %do.cond42.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_protocol.exit.i53

do.body27.backedge.i.i.i.i51:                     ; preds = %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge, %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge105
  %add.i.i.i.i50 = add nsw i32 %vlan_depth.1.i.i.i.i30, 4
  br label %do.body27.i.i.i.i34

skb_protocol.exit.i53:                            ; preds = %do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge, %if.then5.skb_protocol.exit.i53_crit_edge
  %retval.2.i.i.i.i52 = phi i16 [ %58, %if.then5.skb_protocol.exit.i53_crit_edge ], [ %74, %do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge ]
  %76 = zext i16 %retval.2.i.i.i.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %retval.2.i.i.i.i52, label %skb_protocol.exit.i53.if.end8_crit_edge [
    i16 2048, label %sw.bb.i61
    i16 -31011, label %sw.bb6.i77
  ]

skb_protocol.exit.i53.if.end8_crit_edge:          ; preds = %skb_protocol.exit.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

sw.bb.i61:                                        ; preds = %skb_protocol.exit.i53
  %head.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %77 = ptrtoint ptr %head.i.i54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i54, align 8
  %network_header.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %79 = ptrtoint ptr %network_header.i.i55 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i55, align 4
  %conv.i.i56 = zext i16 %80 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %78, i32 %conv.i.i56
  %add.ptr.i58 = getelementptr i8, ptr %add.ptr.i.i57, i32 20
  %tail.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %81 = ptrtoint ptr %tail.i.i59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i59, align 8
  %cmp.not.i60 = icmp ugt ptr %add.ptr.i58, %82
  br i1 %cmp.not.i60, label %sw.bb.i61.if.end8_crit_edge, label %if.then.i63

sw.bb.i61.if.end8_crit_edge:                      ; preds = %sw.bb.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i63:                                      ; preds = %sw.bb.i61
  %tos.i.i62 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i57, i32 0, i32 1
  %83 = ptrtoint ptr %tos.i.i62 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tos.i.i62, align 1
  %85 = and i8 %84, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp.not.i.i = icmp eq i8 %85, 2
  br i1 %cmp.not.i.i, label %if.end.i.i69, label %if.then.i63.if.end8_crit_edge

if.then.i63.if.end8_crit_edge:                    ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.i.i69:                                     ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #16
  %check.i.i64 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i57, i32 0, i32 7
  %86 = ptrtoint ptr %check.i.i64 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %check.i.i64, align 2
  %add.i.i.i65 = add i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i65)
  %cmp.i.i.i66 = icmp eq i16 %add.i.i.i65, 0
  %conv6.i.i.i67 = zext i1 %cmp.i.i.i66 to i16
  %add7.i.i.i68 = add i16 %add.i.i.i65, %conv6.i.i.i67
  %88 = ptrtoint ptr %check.i.i64 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add7.i.i.i68, ptr %check.i.i64, align 2
  %89 = xor i8 %84, 3
  %90 = ptrtoint ptr %tos.i.i62 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %tos.i.i62, align 1
  br label %if.end8

sw.bb6.i77:                                       ; preds = %skb_protocol.exit.i53
  %head.i1.i70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %91 = ptrtoint ptr %head.i1.i70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i1.i70, align 8
  %network_header.i2.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %93 = ptrtoint ptr %network_header.i2.i71 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i2.i71, align 4
  %conv.i3.i72 = zext i16 %94 to i32
  %add.ptr.i4.i73 = getelementptr i8, ptr %92, i32 %conv.i3.i72
  %add.ptr8.i74 = getelementptr i8, ptr %add.ptr.i4.i73, i32 40
  %tail.i5.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %95 = ptrtoint ptr %tail.i5.i75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tail.i5.i75, align 8
  %cmp10.not.i76 = icmp ugt ptr %add.ptr8.i74, %96
  br i1 %cmp10.not.i76, label %sw.bb6.i77.if.end8_crit_edge, label %if.then12.i78

sw.bb6.i77.if.end8_crit_edge:                     ; preds = %sw.bb6.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then12.i78:                                    ; preds = %sw.bb6.i77
  %97 = ptrtoint ptr %add.ptr.i4.i73 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i4.i73, align 2
  %99 = and i16 %98, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %99)
  %cmp.not.i10.i = icmp eq i16 %99, 32
  br i1 %cmp.not.i10.i, label %if.end.i11.i, label %if.then12.i78.if.end8_crit_edge

if.then12.i78.if.end8_crit_edge:                  ; preds = %if.then12.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.i11.i:                                     ; preds = %if.then12.i78
  %100 = ptrtoint ptr %add.ptr.i4.i73 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i4.i73, align 4
  %xor.i.i = xor i32 %101, 3145728
  store i32 %xor.i.i, ptr %add.ptr.i4.i73, align 4
  %ip_summed.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %102 = ptrtoint ptr %ip_summed.i.i79 to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i.i80 = load i16, ptr %ip_summed.i.i79, align 8
  %103 = and i16 %bf.load.i.i80, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %103)
  %cmp3.i.i = icmp eq i16 %103, 1024
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end.i11.i.if.end8_crit_edge

if.end.i11.i.if.end8_crit_edge:                   ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5.i.i:                                     ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  %104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %neg.i.i.i81 = xor i32 %101, -1
  %add.i.i.i12.i = add i32 %106, %neg.i.i.i81
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i12.i, i32 %neg.i.i.i81)
  %cmp.i.i.i13.i = icmp ult i32 %add.i.i.i12.i, %neg.i.i.i81
  %conv.i.i.i14.i = zext i1 %cmp.i.i.i13.i to i32
  %add1.i.i.i.i82 = add i32 %add.i.i.i12.i, %xor.i.i
  %add.i.i15.i = add i32 %add1.i.i.i.i82, %conv.i.i.i14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i15.i, i32 %xor.i.i)
  %cmp.i.i16.i = icmp ult i32 %add.i.i15.i, %xor.i.i
  %conv.i.i17.i = zext i1 %cmp.i.i16.i to i32
  %add1.i.i.i83 = add i32 %add.i.i15.i, %conv.i.i17.i
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add1.i.i.i83, ptr %104, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5.i.i, %if.end.i11.i.if.end8_crit_edge, %if.then12.i78.if.end8_crit_edge, %sw.bb6.i77.if.end8_crit_edge, %if.end.i.i69, %if.then.i63.if.end8_crit_edge, %sw.bb.i61.if.end8_crit_edge, %skb_protocol.exit.i53.if.end8_crit_edge, %cleanup.thread.i.i.i.i47, %do.end.i.i.i.i21, %if.else.if.end8_crit_edge, %if.then3.i.i, %if.end.i10.i.if.end8_crit_edge, %if.then12.i.if.end8_crit_edge, %sw.bb6.i.if.end8_crit_edge, %if.end.i.i, %if.then.i12.if.end8_crit_edge, %sw.bb.i.if.end8_crit_edge, %skb_protocol.exit.i.if.end8_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %if.then.if.end8_crit_edge, %sw.bb2.i, %if.then.i.if.end8_crit_edge, %if.then.i.if.end8_crit_edge101
  %retval.0.i88 = phi i32 [ 0, %if.else.if.end8_crit_edge ], [ 2, %sw.bb2.i ], [ 0, %do.end.i.i.i.i ], [ 0, %cleanup.thread.i.i.i.i ], [ 0, %skb_protocol.exit.i.if.end8_crit_edge ], [ 0, %sw.bb.i.if.end8_crit_edge ], [ 0, %if.then.i12.if.end8_crit_edge ], [ 0, %if.end.i.i ], [ 0, %sw.bb6.i.if.end8_crit_edge ], [ 0, %if.then12.i.if.end8_crit_edge ], [ 0, %if.end.i10.i.if.end8_crit_edge ], [ 0, %if.then3.i.i ], [ 0, %do.end.i.i.i.i21 ], [ 0, %cleanup.thread.i.i.i.i47 ], [ 0, %skb_protocol.exit.i53.if.end8_crit_edge ], [ 0, %sw.bb.i61.if.end8_crit_edge ], [ 0, %if.then.i63.if.end8_crit_edge ], [ 0, %if.end.i.i69 ], [ 0, %sw.bb6.i77.if.end8_crit_edge ], [ 0, %if.then12.i78.if.end8_crit_edge ], [ 0, %if.end.i11.i.if.end8_crit_edge ], [ 0, %if.then5.i.i ], [ 1, %if.then.i.if.end8_crit_edge ], [ 1, %if.then.i.if.end8_crit_edge101 ], [ 0, %if.then.if.end8_crit_edge ]
  ret i32 %retval.0.i88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_tunnel_info(ptr nocapture noundef readonly %skb) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !97

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.if.end_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.if.end_crit_edge:                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %5 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %type = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %u = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %skb_dst.exit.i.if.end_crit_edge
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i29

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i29:                                ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i28 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i28, label %land.rhs.i, label %land.lhs.true.i29.skb_dst.exit_crit_edge

land.lhs.true.i29.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i29
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !97

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i29.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool2.not = icmp eq i32 %and25.i, 0
  br i1 %tobool2.not, label %skb_dst.exit.cleanup_crit_edge, label %land.lhs.true3

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true3:                                   ; preds = %skb_dst.exit
  %13 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lwtstate, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %17, label %land.lhs.true5.cleanup_crit_edge [
    i16 2, label %land.lhs.true5.if.then15_crit_edge
    i16 4, label %land.lhs.true5.if.then15_crit_edge33
  ]

land.lhs.true5.if.then15_crit_edge33:             ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

land.lhs.true5.if.then15_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true5.if.then15_crit_edge, %land.lhs.true5.if.then15_crit_edge33
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %15, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %u, %if.then ], [ %data.i, %if.then15 ], [ null, %land.lhs.true5.cleanup_crit_edge ], [ null, %land.lhs.true3.cleanup_crit_edge ], [ null, %skb_dst.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_tunnel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_tunnel_check_pmtu(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_tunnel6_xmit_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %initval) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add1 = add i32 %initval, -559038725
  %arrayidx = getelementptr i8, ptr %key, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %add1
  %arrayidx34 = getelementptr i8, ptr %key, i32 10
  %2 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %3 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %add32, %shl36
  %arrayidx39 = getelementptr i8, ptr %key, i32 9
  %4 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %5 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %add37, %shl41
  %arrayidx44 = getelementptr i8, ptr %key, i32 8
  %6 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %7 to i32
  %add46 = add i32 %add42, %conv45
  %arrayidx48 = getelementptr i8, ptr %key, i32 7
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %9 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %add1
  %arrayidx53 = getelementptr i8, ptr %key, i32 6
  %10 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %11 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %add51, %shl55
  %arrayidx58 = getelementptr i8, ptr %key, i32 5
  %12 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %13 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %add56, %shl60
  %arrayidx63 = getelementptr i8, ptr %key, i32 4
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %15 to i32
  %add65 = add i32 %add61, %conv64
  %arrayidx67 = getelementptr i8, ptr %key, i32 3
  %16 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %17 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %add1
  %arrayidx72 = getelementptr i8, ptr %key, i32 2
  %18 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %19 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %add70, %shl74
  %arrayidx77 = getelementptr i8, ptr %key, i32 1
  %20 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %21 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %add75, %shl79
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %key, align 1
  %conv83 = zext i8 %23 to i32
  %add84 = add i32 %add80, %conv83
  %xor85 = xor i32 %add65, %add46
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add65, i32 %add65, i32 14) #14
  %sub87 = sub i32 %xor85, %or.i
  %xor88 = xor i32 %add84, %sub87
  %or.i1 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #14
  %sub90 = sub i32 %xor88, %or.i1
  %xor91 = xor i32 %sub90, %add65
  %or.i2 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #14
  %sub93 = sub i32 %xor91, %or.i2
  %xor94 = xor i32 %sub93, %sub87
  %or.i3 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #14
  %sub96 = sub i32 %xor94, %or.i3
  %xor97 = xor i32 %sub96, %sub90
  %or.i4 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #14
  %sub99 = sub i32 %xor97, %or.i4
  %xor100 = xor i32 %sub99, %sub93
  %or.i5 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #14
  %sub102 = sub i32 %xor100, %or.i5
  %or.i6 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #14
  %xor103 = xor i32 %sub102, %sub96
  %sub105 = sub i32 %xor103, %or.i6
  ret i32 %sub105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_tunnel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_xmit_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 45, ptr noundef nonnull @.str.3) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %8 = tail call i32 @llvm.read_register.i32(metadata !84) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bareudp_init_net(ptr noundef %net) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bareudp_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bareudp_exit_batch_net(ptr noundef readonly %net_list) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @rtnl_lock() #14
  %3 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn10 = load ptr, ptr %net_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %net_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %bareudp_destroy_tunnels.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %bareudp_destroy_tunnels.exit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn12, i32 -116
  %4 = load i32, ptr @bareudp_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %4) #14
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %cmp.not19.i = icmp eq ptr %6, %call.i
  br i1 %cmp.not19.i, label %for.body.bareudp_destroy_tunnels.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.bareudp_destroy_tunnels.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %bareudp_destroy_tunnels.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %6, %for.body.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %dev.i = getelementptr i8, ptr %.pn.in20.i, i32 -16
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  call void @unregister_netdevice_queue(ptr noundef %9, ptr noundef nonnull %list) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %call.i
  br i1 %cmp.not.i, label %for.body.i.bareudp_destroy_tunnels.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.bareudp_destroy_tunnels.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bareudp_destroy_tunnels.exit

bareudp_destroy_tunnels.exit:                     ; preds = %for.body.i.bareudp_destroy_tunnels.exit_crit_edge, %for.body.bareudp_destroy_tunnels.exit_crit_edge
  %10 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %bareudp_destroy_tunnels.exit.for.end_crit_edge, label %bareudp_destroy_tunnels.exit.for.body_crit_edge

bareudp_destroy_tunnels.exit.for.body_crit_edge:  ; preds = %bareudp_destroy_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

bareudp_destroy_tunnels.exit.for.end_crit_edge:   ; preds = %bareudp_destroy_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %bareudp_destroy_tunnels.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #14
  call void @rtnl_unlock() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !50, !52, !53, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__param_log_ecn_error, !1, !"__param_log_ecn_error", i1 false, i1 false}
!1 = !{!"../drivers/net/bareudp.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_log_ecn_errortype572, !1, !"__UNIQUE_ID_log_ecn_errortype572", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log_ecn_error573, !4, !"__UNIQUE_ID_log_ecn_error573", i1 false, i1 false}
!4 = !{!"../drivers/net/bareudp.c", i32 31, i32 1}
!5 = !{ptr @__initcall__kmod_bareudp__588_792_bareudp_init_module7, !6, !"__initcall__kmod_bareudp__588_792_bareudp_init_module7", i1 false, i1 false}
!6 = !{!"../drivers/net/bareudp.c", i32 792, i32 1}
!7 = !{ptr @__exitcall_bareudp_cleanup_module, !8, !"__exitcall_bareudp_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/net/bareudp.c", i32 799, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias589, !10, !"__UNIQUE_ID_alias589", i1 false, i1 false}
!10 = !{!"../drivers/net/bareudp.c", i32 801, i32 1}
!11 = !{ptr @__UNIQUE_ID_file590, !12, !"__UNIQUE_ID_file590", i1 false, i1 false}
!12 = !{!"../drivers/net/bareudp.c", i32 802, i32 1}
!13 = !{ptr @__UNIQUE_ID_license591, !12, !"__UNIQUE_ID_license591", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author592, !15, !"__UNIQUE_ID_author592", i1 false, i1 false}
!15 = !{!"../drivers/net/bareudp.c", i32 803, i32 1}
!16 = !{ptr @__UNIQUE_ID_description593, !17, !"__UNIQUE_ID_description593", i1 false, i1 false}
!17 = !{!"../drivers/net/bareudp.c", i32 804, i32 1}
!18 = !{ptr @__param_str_log_ecn_error, !1, !"__param_str_log_ecn_error", i1 false, i1 false}
!19 = !{ptr @log_ecn_error, !20, !"log_ecn_error", i1 false, i1 false}
!20 = !{!"../drivers/net/bareudp.c", i32 29, i32 13}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/bareudp.c", i32 724, i32 20}
!23 = !{ptr @bareudp_link_ops, !24, !"bareudp_link_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/bareudp.c", i32 723, i32 29}
!25 = !{ptr @bareudp_netdev_ops, !26, !"bareudp_netdev_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/bareudp.c", i32 516, i32 36}
!27 = !{ptr @bareudp_init.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/bareudp.c", i32 197, i32 16}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../drivers/net/bareudp.c", i32 71, i32 12}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/bareudp.c", i32 159, i32 5}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bareudp_udp_encap_recv._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bareudp_udp_encap_recv._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/bareudp.c", i32 164, i32 5}
!41 = !{ptr @bareudp_udp_encap_recv._entry.6, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bareudp_udp_encap_recv._entry_ptr.8, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../drivers/net/bareudp.c", i32 358, i32 25}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/net/bareudp.c", i32 295, i32 24}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!60 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../drivers/net/bareudp.c", i32 495, i32 25}
!63 = !{ptr @bareudp_type, !64, !"bareudp_type", i1 false, i1 false}
!64 = !{!"../drivers/net/bareudp.c", i32 534, i32 33}
!65 = !{ptr @bareudp_policy, !66, !"bareudp_policy", i1 false, i1 false}
!66 = !{!"../drivers/net/bareudp.c", i32 526, i32 32}
!67 = !{ptr @bareudp_validate.__msg, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../drivers/net/bareudp.c", i32 566, i32 3}
!69 = !{ptr @bareudp2info.__msg, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/bareudp.c", i32 579, i32 3}
!71 = !{ptr @bareudp2info.__msg.15, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../drivers/net/bareudp.c", i32 583, i32 3}
!73 = !{ptr @bareudp_configure.__msg, !74, !"__msg", i1 false, i1 false}
!74 = !{!"../drivers/net/bareudp.c", i32 623, i32 3}
!75 = !{ptr @bareudp_configure.__msg.16, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../drivers/net/bareudp.c", i32 630, i32 3}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!79 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bareudp_net_id, !81, !"bareudp_net_id", i1 false, i1 false}
!81 = !{!"../drivers/net/bareudp.c", i32 35, i32 21}
!82 = !{ptr @bareudp_net_ops, !83, !"bareudp_net_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/bareudp.c", i32 767, i32 33}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"auto-init"}
!96 = !{i64 2158032046}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2149374745}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2149375011}
!101 = !{i64 2149882744}
!102 = !{i64 2149887676}
!103 = !{i64 2149909388}
!104 = !{i64 2149914280}
!105 = !{i64 2149990737}
!106 = !{i64 2149991062}
