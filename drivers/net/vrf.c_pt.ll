; ModuleID = '/llk/IR_all_yes/drivers/net/vrf.c_pt.bc'
source_filename = "../drivers/net/vrf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.netns_vrf = type { i8, %struct.vrf_map, ptr }
%struct.vrf_map = type { [16 x %struct.hlist_head], %struct.spinlock, i32, i8 }
%struct.hlist_head = type { ptr }
%struct.vrf_map_elem = type { %struct.hlist_node, %struct.list_head, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.141, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.162, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.141 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.162 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
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
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.pcpu_dstats = type { i64, i64, i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.95, i32, %struct.list_head, ptr }
%union.anon.95 = type { %struct.in6_addr }
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
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.163 }
%union.anon.163 = type { [1 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@__initcall__kmod_vrf__627_2061_vrf_init_module6 = internal global ptr @vrf_init_module, section ".initcall6.init", align 4
@__UNIQUE_ID_author628 = internal constant [43 x i8] c"vrf.author=Shrijeet Mukherjee, David Ahern\00", section ".modinfo", align 1
@__UNIQUE_ID_description629 = internal constant [57 x i8] c"vrf.description=Device driver to instantiate VRF domains\00", section ".modinfo", align 1
@__UNIQUE_ID_file630 = internal constant [25 x i8] c"vrf.file=drivers/net/vrf\00", section ".modinfo", align 1
@__UNIQUE_ID_license631 = internal constant [16 x i8] c"vrf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias632 = internal constant [24 x i8] c"vrf.alias=rtnl-link-vrf\00", section ".modinfo", align 1
@__UNIQUE_ID_version633 = internal constant [16 x i8] c"vrf.version=1.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrf\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@vrf_notifier_block = internal global %struct.notifier_block { ptr @vrf_device_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@vrf_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @vrf_netns_init, ptr null, ptr @vrf_netns_exit, ptr null, ptr @vrf_net_id, i32 124 }, [32 x i8] zeroinitializer }, align 32
@vrf_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.1, i32 28, ptr null, ptr @vrf_setup, i8 0, i32 1, ptr @vrf_nl_policy, ptr @vrf_validate, ptr @vrf_newlink, ptr null, ptr @vrf_dellink, ptr @vrf_nl_getsize, ptr @vrf_fillinfo, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @vrf_get_slave_size, ptr @vrf_fill_slave_info, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to cycle device %s; route tables might be wrong!\0A\00", [39 x i8] zeroinitializer }, align 32
@vrf_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@vrf_map_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vmap->vmap_lock\00", [47 x i8] zeroinitializer }, align 32
@vrf_table = internal constant { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr null, i32 4, i16 420, ptr null, ptr @vrf_shared_table_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net/vrf\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"strict_mode\00", [20 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@vrf_nl_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@vrf_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @vrf_dev_init, ptr @vrf_dev_uninit, ptr null, ptr null, ptr @vrf_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vrf_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vrf_add_slave, ptr @vrf_del_slave, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@vrf_l3mdev_ops = internal constant { %struct.l3mdev_ops, [16 x i8] } { %struct.l3mdev_ops { ptr @vrf_fib_table, ptr @vrf_l3_rcv, ptr @vrf_l3_out, ptr @vrf_link_scope_lookup }, [16 x i8] zeroinitializer }, align 32
@vrf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @vrf_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@vrf_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@vrf_dev_init.qdisc_tx_busylock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vrf_dev_init.qdisc_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vrf_dev_init.dev_addr_list_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_addr_list_lock_key\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdisc_xmit_lock_key\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_hook.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@___neigh_lookup_noref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/neighbour.h\00", [40 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___neigh_lookup_noref.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@neigh_hh_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@vrf_rtable_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/net/vrf.c\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@vrf_rt6_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vrf_add_slave.__msg = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can not enslave an L3 master device to a VRF\00", [51 x i8] zeroinitializer }, align 32
@do_vrf_add_slave.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can not enslave loopback device to a VRF\00", [55 x i8] zeroinitializer }, align 32
@vrf_ip_out_redirect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@vrf_ip6_out_redirect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vrf_validate.__msg = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid hardware address\00", [39 x i8] zeroinitializer }, align 32
@vrf_validate.__msg.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid hardware address\00", [39 x i8] zeroinitializer }, align 32
@vrf_newlink.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VRF table id is missing\00", [40 x i8] zeroinitializer }, align 32
@vrf_newlink.__msg.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid VRF table id\00", [43 x i8] zeroinitializer }, align 32
@vrf_map_register_dev.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Table is used by another VRF\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add FIB rules.\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 7, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 129]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 2066, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"vrf_net_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 2021, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1110, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"vrf_net_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 101, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 45, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 723, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1870, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"vrf_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1952, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1976, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1954, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"vrf_nl_policy\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1823, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"vrf_netdev_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1216, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"vrf_l3mdev_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1526, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"vrf_ethtool_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1542, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1189, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"qdisc_tx_busylock_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"qdisc_xmit_lock_key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"dev_addr_list_lock_key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1204, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1011, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 271, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 229, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 749, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/net/neighbour.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 305, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 760, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1053, i32 23 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1147, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1124, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 231, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1710, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1714, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1745, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1751, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 302, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [21 x i8] c"../drivers/net/vrf.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1657, i32 18 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias632, ptr @__UNIQUE_ID_author628, ptr @__UNIQUE_ID_description629, ptr @__UNIQUE_ID_file630, ptr @__UNIQUE_ID_license631, ptr @__UNIQUE_ID_version633, ptr @__initcall__kmod_vrf__627_2061_vrf_init_module6, ptr @__modver_attr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vrf_net_ops, ptr @.str.3, ptr @vrf_net_id, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vrf_map_init.__key, ptr @.str.9, ptr @vrf_table, ptr @.str.10, ptr @.str.11, ptr @vrf_nl_policy, ptr @vrf_netdev_ops, ptr @vrf_l3mdev_ops, ptr @vrf_ethtool_ops, ptr @vrf_dev_init.__key, ptr @.str.12, ptr @vrf_dev_init.qdisc_tx_busylock_key, ptr @vrf_dev_init.qdisc_xmit_lock_key, ptr @vrf_dev_init.dev_addr_list_lock_key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @vrf_add_slave.__msg, ptr @do_vrf_add_slave.__msg, ptr @.str.30, ptr @vrf_validate.__msg, ptr @vrf_validate.__msg.31, ptr @vrf_newlink.__msg, ptr @vrf_newlink.__msg.32, ptr @vrf_map_register_dev.__msg, ptr @.str.33], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_map_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_nl_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_l3mdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_dev_init.qdisc_tx_busylock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_dev_init.qdisc_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_dev_init.dev_addr_list_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_add_slave.__msg to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_vrf_add_slave.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_validate.__msg to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_validate.__msg.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_newlink.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_newlink.__msg.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf_map_register_dev.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @vrf_notifier_block) #17
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @vrf_net_ops) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %error

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @l3mdev_table_lookup_register(i32 noundef 1, ptr noundef nonnull @vrf_ifindex_lookup_by_table_id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.unreg_pernet_crit_edge, label %if.end5

if.end.unreg_pernet_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %unreg_pernet

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @rtnl_link_register(ptr noundef nonnull @vrf_link_ops) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %table_lookup_unreg, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

table_lookup_unreg:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @l3mdev_table_lookup_unregister(i32 noundef 1, ptr noundef nonnull @vrf_ifindex_lookup_by_table_id) #17
  br label %unreg_pernet

unreg_pernet:                                     ; preds = %table_lookup_unreg, %if.end.unreg_pernet_crit_edge
  %rc.0 = phi i32 [ %call2, %if.end.unreg_pernet_crit_edge ], [ %call6, %table_lookup_unreg ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @vrf_net_ops) #17
  br label %error

error:                                            ; preds = %unreg_pernet, %entry.error_crit_edge
  %rc.1 = phi i32 [ %call1, %entry.error_crit_edge ], [ %rc.0, %unreg_pernet ]
  %call10 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @vrf_notifier_block) #17
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %error ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_table_lookup_register(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_ifindex_lookup_by_table_id(ptr noundef %net, i32 noundef %table_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vrf_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #17
  %vmap_lock.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %vmap_lock.i) #17
  %strict_mode = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %strict_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %strict_mode, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

if.end:                                           ; preds = %entry
  %vmap.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1
  %add.i.i.i = add i32 %table_id, -1448300800
  %xor3.i.i.i = xor i32 %add.i.i.i, -734014059
  %sub5.i.i.i = add i32 %xor3.i.i.i, 22237535
  %xor6.i.i.i = xor i32 %sub5.i.i.i, -1448300800
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i1.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, -734014059
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i2.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i3.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i4.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i5.i.i.i
  %mul.i.i.i = mul i32 %sub20.i.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 28
  %arrayidx.i = getelementptr [16 x %struct.hlist_head], ptr %vmap.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %me.0.in.i = phi ptr [ %arrayidx.i, %if.end ], [ %me.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %me.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %me.0.i = load ptr, ptr %me.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %me.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.unlock_crit_edge, label %for.body.i

for.cond.i.unlock_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

for.body.i:                                       ; preds = %for.cond.i
  %table_id4.i = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %table_id4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %table_id4.i, align 4
  %cmp.i = icmp eq i32 %5, %table_id
  br i1 %cmp.i, label %if.end4, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.end4:                                          ; preds = %for.body.i
  %vrf_list.i = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %vrf_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %vrf_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %vrf_list.i
  br i1 %cmp.i.not.i, label %if.end4.unlock_crit_edge, label %if.end.i

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %ifindex.i = getelementptr i8, ptr %7, i32 8
  %8 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end.i, %if.end4.unlock_crit_edge, %for.cond.i.unlock_crit_edge, %entry.unlock_crit_edge
  %ifindex.0 = phi i32 [ -1, %entry.unlock_crit_edge ], [ %9, %if.end.i ], [ -19, %if.end4.unlock_crit_edge ], [ -19, %for.cond.i.unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %vmap_lock.i) #17
  ret i32 %ifindex.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l3mdev_table_lookup_unregister(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp = icmp eq i32 %event, 6
  br i1 %cmp, label %if.then, label %entry.cleanup6_crit_edge

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup6

if.then:                                          ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then.cleanup6_crit_edge, label %if.end

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup6

if.end:                                           ; preds = %if.then
  %call3 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %1) #17
  tail call void @netdev_upper_dev_unlink(ptr noundef %1, ptr noundef %call3) #17
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i.i = and i64 %5, -2097153
  store i64 %and.i.i, ptr %priv_flags.i, align 16
  %flags1.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i.i.i, align 8
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.cleanup6_crit_edge, label %if.end.i.i.i

if.end.cleanup6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup6

if.end.i.i.i:                                     ; preds = %if.end
  %and.i.i.i = and i32 %7, -2
  %call2.i.i.i = tail call i32 @dev_change_flags(ptr noundef %1, i32 noundef %and.i.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call2.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.if.then7.i.i.i_crit_edge

if.end.i.i.i.if.then7.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %call4.i.i.i = tail call i32 @dev_change_flags(ptr noundef %1, i32 noundef %7, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.end5.i.i.i.if.then7.i.i.i_crit_edge, label %if.end5.i.i.i.cleanup6_crit_edge

if.end5.i.i.i.cleanup6_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup6

if.end5.i.i.i.if.then7.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end5.i.i.i.if.then7.i.i.i_crit_edge, %if.end.i.i.i.if.then7.i.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1) #20
  br label %cleanup6

cleanup6:                                         ; preds = %if.then7.i.i.i, %if.end5.i.i.i.cleanup6_crit_edge, %if.end.cleanup6_crit_edge, %if.then.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_del_slave(ptr noundef %dev, ptr noundef %port_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netdev_upper_dev_unlink(ptr noundef %port_dev, ptr noundef %dev) #17
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %port_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, -2097153
  store i64 %and.i, ptr %priv_flags.i, align 16
  %flags1.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1.i.i, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %entry.do_vrf_del_slave.exit_crit_edge, label %if.end.i.i

entry.do_vrf_del_slave.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do_vrf_del_slave.exit

if.end.i.i:                                       ; preds = %entry
  %and.i.i = and i32 %3, -2
  %call2.i.i = tail call i32 @dev_change_flags(ptr noundef %port_dev, i32 noundef %and.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.i = icmp sgt i32 %call2.i.i, -1
  br i1 %cmp.i.i, label %if.end5.i.i, label %if.end.i.i.if.then7.i.i_crit_edge

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @dev_change_flags(ptr noundef %port_dev, i32 noundef %3, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp6.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp6.i.i, label %if.end5.i.i.if.then7.i.i_crit_edge, label %if.end5.i.i.do_vrf_del_slave.exit_crit_edge

if.end5.i.i.do_vrf_del_slave.exit_crit_edge:      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do_vrf_del_slave.exit

if.end5.i.i.if.then7.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %port_dev, ptr noundef nonnull @.str.3, ptr noundef %port_dev) #20
  br label %do_vrf_del_slave.exit

do_vrf_del_slave.exit:                            ; preds = %if.then7.i.i, %if.end5.i.i.do_vrf_del_slave.exit_crit_edge, %entry.do_vrf_del_slave.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_netns_init(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vrf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call, align 4
  %vmap = getelementptr inbounds %struct.netns_vrf, ptr %call, i32 0, i32 1
  %vmap_lock.i = getelementptr inbounds %struct.netns_vrf, ptr %call, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %vmap_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @vrf_map_init.__key, i16 noundef signext 3) #17
  %2 = call ptr @memset(ptr %vmap, i32 0, i32 64)
  %strict_mode.i = getelementptr inbounds %struct.netns_vrf, ptr %call, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %strict_mode.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %strict_mode.i, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @vrf_table, i32 noundef 72, i32 noundef 3264) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.vrf_netns_init_sysctl.exit_crit_edge, label %if.end.i

entry.vrf_netns_init_sysctl.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_netns_init_sysctl.exit

if.end.i:                                         ; preds = %entry
  %extra1.i = getelementptr inbounds %struct.ctl_table, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %extra1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %extra1.i, align 4
  %call1.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #17
  %ctl_hdr.i = getelementptr inbounds %struct.netns_vrf, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %ctl_hdr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i, ptr %ctl_hdr.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.vrf_netns_init_sysctl.exit_crit_edge

if.end.i.vrf_netns_init_sysctl.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_netns_init_sysctl.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call.i) #17
  br label %vrf_netns_init_sysctl.exit

vrf_netns_init_sysctl.exit:                       ; preds = %if.then4.i, %if.end.i.vrf_netns_init_sysctl.exit_crit_edge, %entry.vrf_netns_init_sysctl.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then4.i ], [ -12, %entry.vrf_netns_init_sysctl.exit_crit_edge ], [ 0, %if.end.i.vrf_netns_init_sysctl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vrf_netns_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vrf_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #17
  %ctl_hdr.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %ctl_hdr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctl_hdr.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %2) #17
  tail call void @kfree(ptr noundef %4) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.5) #17
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !139
  %8 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_shared_table_handler(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  %proc_strict_mode = alloca i32, align 4
  %tmp = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  %2 = load i32, ptr @vrf_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proc_strict_mode) #17
  %3 = ptrtoint ptr %proc_strict_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %proc_strict_mode, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #17
  %4 = getelementptr inbounds i8, ptr %tmp, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !140
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table, align 4
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %tmp, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %proc_strict_mode, ptr %data, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 2
  %10 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 3
  %mode2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %11 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mode2, align 4
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 4
  %14 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 5
  %15 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 6
  %16 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %poll, align 4
  %extra13 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 7
  %17 = ptrtoint ptr %extra13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %extra13, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 8
  %18 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 2), ptr %extra2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %vmap_lock.i.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 1
  call void @_raw_spin_lock(ptr noundef %vmap_lock.i.i) #17
  %strict_mode1.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %strict_mode1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %strict_mode1.i, align 4, !range !137
  call void @_raw_spin_unlock(ptr noundef %vmap_lock.i.i) #17
  %21 = zext i8 %20 to i32
  %22 = ptrtoint ptr %proc_strict_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %proc_strict_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #17
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then8:                                         ; preds = %if.end
  %23 = ptrtoint ptr %proc_strict_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %proc_strict_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9 = icmp ne i32 %24, 0
  %vmap_lock.i.i18 = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 1
  call void @_raw_spin_lock(ptr noundef %vmap_lock.i.i18) #17
  %strict_mode.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %strict_mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %strict_mode.i, align 1, !range !137
  %27 = zext i1 %tobool9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %27)
  %cmp.i = icmp eq i8 %26, %27
  br i1 %cmp.i, label %if.then8.vrf_strict_mode_change.exit_crit_edge, label %if.end.i

if.then8.vrf_strict_mode_change.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_strict_mode_change.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.unlock.sink.split.i_crit_edge

if.end.i.unlock.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %shared_tables.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %shared_tables.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shared_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.not.i = icmp eq i32 %29, 0
  br i1 %tobool6.not.i, label %if.else.i.unlock.sink.split.i_crit_edge, label %if.else.i.vrf_strict_mode_change.exit_crit_edge

if.else.i.vrf_strict_mode_change.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_strict_mode_change.exit

if.else.i.unlock.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.sink.split.i

unlock.sink.split.i:                              ; preds = %if.else.i.unlock.sink.split.i_crit_edge, %if.end.i.unlock.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.end.i.unlock.sink.split.i_crit_edge ], [ 1, %if.else.i.unlock.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %strict_mode.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %strict_mode.i, align 1
  br label %vrf_strict_mode_change.exit

vrf_strict_mode_change.exit:                      ; preds = %unlock.sink.split.i, %if.else.i.vrf_strict_mode_change.exit_crit_edge, %if.then8.vrf_strict_mode_change.exit_crit_edge
  %res.0.i = phi i32 [ 0, %if.then8.vrf_strict_mode_change.exit_crit_edge ], [ -16, %if.else.i.vrf_strict_mode_change.exit_crit_edge ], [ 0, %unlock.sink.split.i ]
  call void @_raw_spin_unlock(ptr noundef %vmap_lock.i.i18) #17
  br label %if.end11

if.end11:                                         ; preds = %vrf_strict_mode_change.exit, %if.end.if.end11_crit_edge
  %ret.0 = phi i32 [ %res.0.i, %vrf_strict_mode_change.exit ], [ %call5, %if.end.if.end11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proc_strict_mode) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vrf_setup(ptr noundef %dev) #3 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #17
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vrf_netdev_ops, ptr %netdev_ops, align 8
  %l3mdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %l3mdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vrf_l3mdev_ops, ptr %l3mdev_ops, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vrf_ethtool_ops, ptr %ethtool_ops, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %3 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %needs_free_netdev, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #17
  %4 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #17
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr.i, align 1
  %7 = and i8 %6, -4
  %8 = or i8 %7, 2
  store i8 %8, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #17
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %9 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #17
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %or10 = or i64 %11, 1195076564073
  store i64 %or10, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %or10, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %13 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or10, ptr %hw_enc_features, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags, align 16
  %or17 = or i64 %15, 67665920
  store i64 %or17, ptr %priv_flags, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %16 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1280, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %17 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65575, ptr %max_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65575, ptr %mtu, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_validate(ptr nocapture noundef readonly %tb, ptr nocapture noundef readnone %data, ptr noundef writeonly %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vrf_validate.__msg) #17
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end5:                                          ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end5.do.body10_crit_edge

if.end5.do.body10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body10

is_valid_ether_addr.exit:                         ; preds = %if.end5
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body10_crit_edge, label %is_valid_ether_addr.exit.return_crit_edge

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

is_valid_ether_addr.exit.do.body10_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body10

do.body10:                                        ; preds = %is_valid_ether_addr.exit.do.body10_crit_edge, %if.end5.do.body10_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vrf_validate.__msg.31) #17
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.return_crit_edge, label %do.body10.return.sink.split_crit_edge

do.body10.return.sink.split_crit_edge:            ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

do.body10.return_crit_edge:                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return.sink.split:                                ; preds = %do.body10.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %vrf_validate.__msg.31.sink = phi ptr [ @vrf_validate.__msg, %do.body.return.sink.split_crit_edge ], [ @vrf_validate.__msg.31, %do.body10.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %do.body.return.sink.split_crit_edge ], [ -99, %do.body10.return.sink.split_crit_edge ]
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vrf_validate.__msg.31.sink, ptr %extack, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %do.body10.return_crit_edge, %is_valid_ether_addr.exit.return_crit_edge, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.return_crit_edge ], [ -99, %do.body10.return_crit_edge ], [ 0, %is_valid_ether_addr.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef writeonly %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vrf_newlink.__msg) #17
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vrf_newlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %tb_id = getelementptr i8, ptr %dev, i32 2316
  %5 = ptrtoint ptr %tb_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.body9, label %if.end18

do.body9:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vrf_newlink.__msg.32) #17
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %if.then12

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vrf_newlink.__msg.32, ptr %extack, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags, align 16
  %or = or i64 %12, 262144
  store i64 %or, ptr %priv_flags, align 16
  %call19 = tail call i32 @register_netdevice(ptr noundef %dev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %ifindex23 = getelementptr i8, ptr %dev, i32 2328
  %15 = ptrtoint ptr %ifindex23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ifindex23, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i.i.i, align 4
  %18 = load i32, ptr @vrf_net_id, align 4
  %call.i.i.i = tail call fastcc ptr @net_generic(ptr noundef %17, i32 noundef %18) #17
  %vmap.i.i.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tb_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 28) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.if.then26_crit_edge, label %if.end.i

if.end22.if.then26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then26

if.end.i:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex, align 4
  %table_id1.i.i = getelementptr inbounds %struct.vrf_map_elem, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %table_id1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %table_id1.i.i, align 8
  %ifindex2.i.i = getelementptr inbounds %struct.vrf_map_elem, ptr %call7.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %ifindex2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %ifindex2.i.i, align 8
  %users3.i.i = getelementptr inbounds %struct.vrf_map_elem, ptr %call7.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %users3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %users3.i.i, align 4
  %vrf_list.i.i = getelementptr inbounds %struct.vrf_map_elem, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %vrf_list.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %vrf_list.i.i, ptr %vrf_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.vrf_map_elem, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vrf_list.i.i, ptr %prev.i.i.i, align 4
  %vmap_lock.i.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i.i, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %vmap_lock.i.i) #17
  %add.i.i.i.i = add i32 %20, -1448300800
  %xor3.i.i.i.i = xor i32 %add.i.i.i.i, -734014059
  %sub5.i.i.i.i = add i32 %xor3.i.i.i.i, 22237535
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, -1448300800
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #17
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i1.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, -734014059
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #17
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i2.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #17
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i3.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i4.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #17
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i4.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i5.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #17
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i5.i.i.i.i
  %mul.i.i.i.i = mul i32 %sub20.i.i.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 28
  %arrayidx.i.i = getelementptr [16 x %struct.hlist_head], ptr %vmap.i.i.i, i32 0, i32 %shr.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %me.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ %me.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %29 = ptrtoint ptr %me.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %me.0.i.i = load ptr, ptr %me.0.in.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %me.0.i.i, null
  br i1 %tobool3.not.i.i, label %if.then5.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %table_id4.i.i = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %table_id4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %table_id4.i.i, align 4
  %cmp.i.i = icmp eq i32 %31, %20
  br i1 %cmp.i.i, label %if.end6.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.i

if.then5.i:                                       ; preds = %for.cond.i.i
  %32 = ptrtoint ptr %table_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %table_id1.i.i, align 8
  %add.i.i.i44.i = add i32 %33, -1448300800
  %xor3.i.i.i45.i = xor i32 %add.i.i.i44.i, -734014059
  %sub5.i.i.i46.i = add i32 %xor3.i.i.i45.i, 22237535
  %xor6.i.i.i47.i = xor i32 %sub5.i.i.i46.i, -1448300800
  %or.i1.i.i.i48.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i46.i, i32 %sub5.i.i.i46.i, i32 25) #17
  %sub8.i.i.i49.i = sub i32 %xor6.i.i.i47.i, %or.i1.i.i.i48.i
  %xor9.i.i.i50.i = xor i32 %sub8.i.i.i49.i, -734014059
  %or.i2.i.i.i51.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i49.i, i32 %sub8.i.i.i49.i, i32 16) #17
  %sub11.i.i.i52.i = sub i32 %xor9.i.i.i50.i, %or.i2.i.i.i51.i
  %xor12.i.i.i53.i = xor i32 %sub11.i.i.i52.i, %sub5.i.i.i46.i
  %or.i3.i.i.i54.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i52.i, i32 %sub11.i.i.i52.i, i32 4) #17
  %sub14.i.i.i55.i = sub i32 %xor12.i.i.i53.i, %or.i3.i.i.i54.i
  %xor15.i.i.i56.i = xor i32 %sub14.i.i.i55.i, %sub8.i.i.i49.i
  %or.i4.i.i.i57.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i55.i, i32 %sub14.i.i.i55.i, i32 14) #17
  %sub17.i.i.i58.i = sub i32 %xor15.i.i.i56.i, %or.i4.i.i.i57.i
  %xor18.i.i.i59.i = xor i32 %sub17.i.i.i58.i, %sub11.i.i.i52.i
  %or.i5.i.i.i60.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i58.i, i32 %sub17.i.i.i58.i, i32 24) #17
  %sub20.i.i.i61.i = sub i32 %xor18.i.i.i59.i, %or.i5.i.i.i60.i
  %mul.i.i.i62.i = mul i32 %sub20.i.i.i61.i, 1640531527
  %shr.i.i63.i = lshr i32 %mul.i.i.i62.i, 28
  %arrayidx.i64.i = getelementptr [16 x %struct.hlist_head], ptr %vmap.i.i.i, i32 0, i32 %shr.i.i63.i
  %34 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i64.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %call7.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i, label %if.then5.i.vrf_map_add_elem.exit.i_crit_edge, label %do.body12.i.i.i

if.then5.i.vrf_map_add_elem.exit.i_crit_edge:     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_map_add_elem.exit.i

do.body12.i.i.i:                                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i.i, align 4
  br label %vrf_map_add_elem.exit.i

vrf_map_add_elem.exit.i:                          ; preds = %do.body12.i.i.i, %if.then5.i.vrf_map_add_elem.exit.i_crit_edge
  %38 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i64.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx.i64.i, ptr %pprev34.i.i.i, align 4
  br label %link_vrf.i

if.end6.i:                                        ; preds = %for.body.i.i
  %strict_mode.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %strict_mode.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %strict_mode.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool7.not.i = icmp eq i8 %41, 0
  br i1 %tobool7.not.i, label %if.end6.i.link_vrf.i_crit_edge, label %do.body.i

if.end6.i.link_vrf.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %link_vrf.i

do.body.i:                                        ; preds = %if.end6.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vrf_map_register_dev.__msg) #17
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body.i.vrf_map_register_dev.exit_crit_edge, label %if.then10.i

do.body.i.vrf_map_register_dev.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_map_register_dev.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @vrf_map_register_dev.__msg, ptr %extack, align 4
  br label %vrf_map_register_dev.exit

link_vrf.i:                                       ; preds = %if.end6.i.link_vrf.i_crit_edge, %vrf_map_add_elem.exit.i
  %me.0.i = phi ptr [ %me.0.i.i, %if.end6.i.link_vrf.i_crit_edge ], [ %call7.i.i.i, %vrf_map_add_elem.exit.i ]
  %users13.i = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i, i32 0, i32 3
  %43 = ptrtoint ptr %users13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %users13.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %users13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 2
  br i1 %cmp.i, label %if.then14.i, label %link_vrf.i.if.end16.i_crit_edge

link_vrf.i.if.end16.i_crit_edge:                  ; preds = %link_vrf.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then14.i:                                      ; preds = %link_vrf.i
  call void @__sanitizer_cov_trace_pc() #19
  %shared_tables.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %shared_tables.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %shared_tables.i, align 4
  %inc15.i = add i32 %46, 1
  store i32 %inc15.i, ptr %shared_tables.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %link_vrf.i.if.end16.i_crit_edge
  %me_list.i = getelementptr i8, ptr %dev, i32 2320
  %vrf_list.i = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i, i32 0, i32 1
  %47 = ptrtoint ptr %vrf_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vrf_list.i, align 4
  %call.i.i65.i = tail call zeroext i1 @__list_add_valid(ptr noundef %me_list.i, ptr noundef %vrf_list.i, ptr noundef %48) #17
  br i1 %call.i.i65.i, label %if.end.i.i.i, label %unlock.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %me_list.i, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %me_list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %me_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %dev, i32 2324
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %vrf_list.i, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %vrf_list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %me_list.i, ptr %vrf_list.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %vmap_lock.i.i) #17
  br i1 %tobool3.not.i.i, label %if.end.i.i.i.if.end27_crit_edge, label %if.end.i.i.i.vrf_map_register_dev.exit.thread76_crit_edge

if.end.i.i.i.vrf_map_register_dev.exit.thread76_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_map_register_dev.exit.thread76

if.end.i.i.i.if.end27_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

unlock.i:                                         ; preds = %if.end16.i
  tail call void @_raw_spin_unlock(ptr noundef %vmap_lock.i.i) #17
  br i1 %tobool3.not.i.i, label %unlock.i.if.end27_crit_edge, label %unlock.i.vrf_map_register_dev.exit.thread76_crit_edge

unlock.i.vrf_map_register_dev.exit.thread76_crit_edge: ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_map_register_dev.exit.thread76

unlock.i.if.end27_crit_edge:                      ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

vrf_map_register_dev.exit.thread76:               ; preds = %unlock.i.vrf_map_register_dev.exit.thread76_crit_edge, %if.end.i.i.i.vrf_map_register_dev.exit.thread76_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  br label %if.end27

vrf_map_register_dev.exit:                        ; preds = %if.then10.i, %do.body.i.vrf_map_register_dev.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vmap_lock.i.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  br label %if.then26

if.then26:                                        ; preds = %vrf_map_register_dev.exit, %if.end22.if.then26_crit_edge
  %retval.0.i74 = phi i32 [ -16, %vrf_map_register_dev.exit ], [ -12, %if.end22.if.then26_crit_edge ]
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #17
  br label %cleanup

if.end27:                                         ; preds = %vrf_map_register_dev.exit.thread76, %unlock.i.if.end27_crit_edge, %if.end.i.i.i.if.end27_crit_edge
  %53 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nd_net.i.i.i, align 4
  %55 = load i32, ptr @vrf_net_id, align 4
  %call29 = tail call fastcc ptr @net_generic(ptr noundef %54, i32 noundef %55)
  %56 = ptrtoint ptr %call29 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %call29, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool31.not = icmp eq i8 %57, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.then32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  %call.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext 2, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i66 = icmp slt i32 %call.i, 0
  br i1 %cmp.i66, label %if.then32.if.then35_crit_edge, label %if.end.i67

if.then32.if.then35_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then35

if.end.i67:                                       ; preds = %if.then32
  %call1.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext 10, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i67.ipv6_err.i_crit_edge, label %if.end4.i

if.end.i67.ipv6_err.i_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipv6_err.i

if.end4.i:                                        ; preds = %if.end.i67
  %call5.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext -128, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.ipmr_err.i_crit_edge, label %if.end8.i

if.end4.i.ipmr_err.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_err.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext -127, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %ip6mr_err.i, label %if.end36

ip6mr_err.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %call13.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext -128, i1 noundef zeroext false) #17
  br label %ipmr_err.i

ipmr_err.i:                                       ; preds = %ip6mr_err.i, %if.end4.i.ipmr_err.i_crit_edge
  %err.0.i = phi i32 [ %call5.i, %if.end4.i.ipmr_err.i_crit_edge ], [ %call9.i, %ip6mr_err.i ]
  %call14.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext 10, i1 noundef zeroext false) #17
  br label %ipv6_err.i

ipv6_err.i:                                       ; preds = %ipmr_err.i, %if.end.i67.ipv6_err.i_crit_edge
  %err.1.i = phi i32 [ %call1.i, %if.end.i67.ipv6_err.i_crit_edge ], [ %err.0.i, %ipmr_err.i ]
  %call15.i = tail call fastcc i32 @vrf_fib_rule(ptr noundef %dev, i8 noundef zeroext 2, i1 noundef zeroext false) #17
  br label %if.then35

if.then35:                                        ; preds = %ipv6_err.i, %if.then32.if.then35_crit_edge
  %err.2.i = phi i32 [ %call.i, %if.then32.if.then35_crit_edge ], [ %err.1.i, %ipv6_err.i ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #20
  tail call fastcc void @vrf_map_unregister_dev(ptr noundef %dev)
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #17
  br label %cleanup

if.end36:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %call29 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %call29, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.end27.cleanup_crit_edge, %if.then26, %if.end18.cleanup_crit_edge, %if.then12, %do.body9.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %do.body9.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %retval.0.i74, %if.then26 ], [ %err.2.i, %if.then35 ], [ 0, %if.end36 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vrf_dellink(ptr noundef %dev, ptr noundef %head) #3 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #17
  %lower = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lower, align 8
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %iter, align 4
  %call = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter) #17
  %tobool.not9 = icmp eq ptr %call, null
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %vrf_del_slave.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %port_dev.010 = phi ptr [ %call2, %vrf_del_slave.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @netdev_upper_dev_unlink(ptr noundef nonnull %port_dev.010, ptr noundef %dev) #17
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev.010, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %4, -2097153
  store i64 %and.i.i, ptr %priv_flags.i.i, align 16
  %flags1.i.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev.010, i32 0, i32 14
  %5 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags1.i.i.i, align 8
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev.010, i32 0, i32 6
  %7 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.vrf_del_slave.exit_crit_edge, label %if.end.i.i.i

for.body.vrf_del_slave.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_del_slave.exit

if.end.i.i.i:                                     ; preds = %for.body
  %and.i.i.i = and i32 %6, -2
  %call2.i.i.i = call i32 @dev_change_flags(ptr noundef nonnull %port_dev.010, i32 noundef %and.i.i.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call2.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.if.then7.i.i.i_crit_edge

if.end.i.i.i.if.then7.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %call4.i.i.i = call i32 @dev_change_flags(ptr noundef nonnull %port_dev.010, i32 noundef %6, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.end5.i.i.i.if.then7.i.i.i_crit_edge, label %if.end5.i.i.i.vrf_del_slave.exit_crit_edge

if.end5.i.i.i.vrf_del_slave.exit_crit_edge:       ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_del_slave.exit

if.end5.i.i.i.if.then7.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end5.i.i.i.if.then7.i.i.i_crit_edge, %if.end.i.i.i.if.then7.i.i.i_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %port_dev.010, ptr noundef nonnull @.str.3, ptr noundef nonnull %port_dev.010) #20
  br label %vrf_del_slave.exit

vrf_del_slave.exit:                               ; preds = %if.then7.i.i.i, %if.end5.i.i.i.vrf_del_slave.exit_crit_edge, %for.body.vrf_del_slave.exit_crit_edge
  %call2 = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter) #17
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %vrf_del_slave.exit.for.end_crit_edge, label %vrf_del_slave.exit.for.body_crit_edge

vrf_del_slave.exit.for.body_crit_edge:            ; preds = %vrf_del_slave.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

vrf_del_slave.exit.for.end_crit_edge:             ; preds = %vrf_del_slave.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %vrf_del_slave.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call fastcc void @vrf_map_unregister_dev(ptr noundef %dev)
  call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vrf_nl_getsize(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_fillinfo(ptr noundef %skb, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_id = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tb_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vrf_get_slave_size(ptr nocapture noundef readnone %bond_dev, ptr nocapture noundef readnone %slave_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_fill_slave_info(ptr noundef %skb, ptr nocapture noundef readonly %vrf_dev, ptr nocapture noundef readnone %slave_dev) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_id = getelementptr i8, ptr %vrf_dev, i32 2316
  %0 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tb_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_dev_init(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 80, i32 noundef 8, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call277 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call277, i32 %0)
  %cmp78 = icmp ult i32 %call277, %0
  br i1 %cmp78, label %for.body.lr.ph, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call1 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call279 = phi i32 [ %call277, %for.body.lr.ph ], [ %call2, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call279
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %1
  %5 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_dstats, ptr %5, i32 0, i32 6
  %dep_map.i = getelementptr inbounds %struct.pcpu_dstats, ptr %5, i32 0, i32 6, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @vrf_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %syncp, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call279, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %8, align 64
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i.i, align 4
  %tb_id.i = getelementptr i8, ptr %dev, i32 2316
  %12 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tb_id.i, align 4
  %call2.i = tail call ptr @fib_new_table(ptr noundef %11, i32 noundef %13) #17
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end10.out_stats_crit_edge, label %if.end.i

if.end10.out_stats_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_stats

if.end.i:                                         ; preds = %if.end10
  %call3.i = tail call ptr @rt_dst_alloc(ptr noundef %dev, i32 noundef 0, i16 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext true) #17
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.out_stats_crit_edge, label %if.end14

if.end.i.out_stats_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_stats

if.end14:                                         ; preds = %if.end.i
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %call3.i, i32 0, i32 6
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vrf_output, ptr %output.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !141
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call3.i, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i.i, align 4
  %call2.i65 = tail call zeroext i1 @ipv6_mod_enabled() #17
  br i1 %call2.i65, label %if.end.i69, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.end.i69:                                       ; preds = %if.end14
  %18 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tb_id.i, align 4
  %call3.i67 = tail call ptr @fib6_new_table(ptr noundef %17, i32 noundef %19) #17
  %fib6_table.i = getelementptr i8, ptr %dev, i32 2312
  %20 = ptrtoint ptr %fib6_table.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3.i67, ptr %fib6_table.i, align 4
  %tobool.not.i68 = icmp eq ptr %call3.i67, null
  br i1 %tobool.not.i68, label %if.end.i69.out_rth_crit_edge, label %if.end6.i70

if.end.i69.out_rth_crit_edge:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_rth

if.end6.i70:                                      ; preds = %if.end.i69
  %call7.i = tail call ptr @ip6_dst_alloc(ptr noundef %17, ptr noundef %dev, i32 noundef 6) #17
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i70.out_rth_crit_edge, label %if.end10.i

if.end6.i70.out_rth_crit_edge:                    ; preds = %if.end6.i70
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_rth

if.end10.i:                                       ; preds = %if.end6.i70
  call void @__sanitizer_cov_trace_pc() #19
  %output.i71 = getelementptr inbounds %struct.dst_entry, ptr %call7.i, i32 0, i32 6
  %21 = ptrtoint ptr %output.i71 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vrf_output6, ptr %output.i71, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !142
  %rt633.i = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %rt633.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i, ptr %rt633.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end10.i, %if.end14.if.end18_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1152, ptr %flags, align 8
  %operstate = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %24 = ptrtoint ptr %operstate to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %operstate, align 8
  %qdisc_tx_busylock = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 147
  %25 = ptrtoint ptr %qdisc_tx_busylock to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vrf_dev_init.qdisc_tx_busylock_key, ptr %qdisc_tx_busylock, align 8
  %dep_map = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @vrf_dev_init.dev_addr_list_lock_key, i32 noundef 0, i8 noundef zeroext %27, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %28 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2480.not = icmp eq i32 %29, 0
  br i1 %cmp2480.not, label %if.end18.cleanup_crit_edge, label %for.body25.lr.ph

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body25.lr.ph:                                 ; preds = %if.end18
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.lr.ph
  %i.081 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc, %for.body25.for.body25_crit_edge ]
  %30 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx, align 128
  %dep_map27 = getelementptr %struct.netdev_queue, ptr %31, i32 %i.081, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner32 = getelementptr %struct.netdev_queue, ptr %31, i32 %i.081, i32 10, i32 0, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %wait_type_inner32 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wait_type_inner32, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map27, ptr noundef nonnull @.str.14, ptr noundef nonnull @vrf_dev_init.qdisc_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %33, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %inc = add nuw i32 %i.081, 1
  %34 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues, align 4
  %cmp24 = icmp ult i32 %inc, %35
  br i1 %cmp24, label %for.body25.for.body25_crit_edge, label %for.body25.cleanup_crit_edge

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body25

out_rth:                                          ; preds = %if.end6.i70.out_rth_crit_edge, %if.end.i69.out_rth_crit_edge
  tail call fastcc void @vrf_rtable_release(ptr noundef %dev, ptr noundef %add.ptr.i)
  br label %out_stats

out_stats:                                        ; preds = %out_rth, %if.end.i.out_stats_crit_edge, %if.end10.out_stats_crit_edge
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %8, align 64
  tail call void @free_percpu(ptr noundef %37) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_stats, %if.end.thread
  %.sink = phi ptr [ %2, %if.end.thread ], [ %8, %out_stats ]
  %38 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %.sink, align 64
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body25.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ -12, %cleanup.sink.split ], [ 0, %for.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vrf_dev_uninit(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @vrf_rtable_release(ptr noundef %dev, ptr noundef %add.ptr.i)
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b32.i = load i1, ptr @vrf_rt6_release.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @vrf_rt6_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 806, ptr noundef nonnull @.str.29) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %rt64.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %rt64.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt64.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i.i, align 4
  store volatile ptr null, ptr %rt64.i, align 4
  tail call void @synchronize_rcu() #17
  %tobool19.not.i = icmp eq ptr %1, null
  br i1 %tobool19.not.i, label %do.end.i.vrf_rt6_release.exit_crit_edge, label %if.then20.i

do.end.i.vrf_rt6_release.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_rt6_release.exit

if.then20.i:                                      ; preds = %do.end.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %loopback_dev.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %loopback_dev.i, align 4
  %dev_tracker.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 19
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then20.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then20.i.if.end.i.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then20.i.if.end.i.i_crit_edge
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.dev_hold.exit.i.i_crit_edge, label %do.body1.i.i.i

if.end.i.i.dev_hold.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.end.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i.i.i = add i32 %20, 1
  store i32 %add13.i.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.do.end30.i.i.i_crit_edge, !prof !145

do.body1.i.i.i.do.end30.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i.i, %do.body1.i.i.i.do.end30.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !146
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %do.end30.i.i.i, %if.end.i.i.dev_hold.exit.i.i_crit_edge
  br i1 %tobool.not.i.i, label %dev_hold.exit.i.i.dev_put.exit.i.i_crit_edge, label %do.body1.i10.i.i

dev_hold.exit.i.i.dev_put.exit.i.i_crit_edge:     ; preds = %dev_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit.i.i

do.body1.i10.i.i:                                 ; preds = %dev_hold.exit.i.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %pcpu_refcnt.i2.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i2.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i3.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i3.i.i to ptr
  %cpu.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i4.i.i, align 4
  %arrayidx.i5.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i5.i.i, align 4
  %add.i6.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i6.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i7.i.i = add i32 %34, -1
  store i32 %add13.i7.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i.i8.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8.i.i)
  %tobool24.not.i9.i.i = icmp eq i32 %and.i.i.i8.i.i, 0
  br i1 %tobool24.not.i9.i.i, label %if.then28.i11.i.i, label %do.body1.i10.i.i.do.end30.i12.i.i_crit_edge, !prof !145

do.body1.i10.i.i.do.end30.i12.i.i_crit_edge:      ; preds = %do.body1.i10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i12.i.i

if.then28.i11.i.i:                                ; preds = %do.body1.i10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i12.i.i

do.end30.i12.i.i:                                 ; preds = %if.then28.i11.i.i, %do.body1.i10.i.i.do.end30.i12.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #17, !srcloc !146
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %do.end30.i12.i.i, %dev_hold.exit.i.i.dev_put.exit.i.i_crit_edge
  br i1 %tobool.not.i.i.i, label %dev_put.exit.i.i.dev_replace_track.exit.i_crit_edge, label %if.then2.i.i

dev_put.exit.i.i.dev_replace_track.exit.i_crit_edge: ; preds = %dev_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_replace_track.exit.i

if.then2.i.i:                                     ; preds = %dev_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt_tracker.i13.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 119
  %call.i14.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i13.i.i, ptr noundef %dev_tracker.i, i32 noundef 3264) #17
  br label %dev_replace_track.exit.i

dev_replace_track.exit.i:                         ; preds = %if.then2.i.i, %dev_put.exit.i.i.dev_replace_track.exit.i_crit_edge
  %36 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %loopback_dev.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %1, align 4
  tail call void @dst_release(ptr noundef nonnull %1) #17
  br label %vrf_rt6_release.exit

vrf_rt6_release.exit:                             ; preds = %dev_replace_track.exit.i, %do.end.i.vrf_rt6_release.exit_crit_edge
  %39 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 64
  tail call void @free_percpu(ptr noundef %41) #17
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %39, align 64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  %fl6.i.i = alloca %struct.flowi6, align 8
  %fl4.i.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %is_ip_tx_frame.exit.thread [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i.i) #17
  %5 = call ptr @memset(ptr %fl4.i.i, i32 255, i32 56)
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %1, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.i.i.i.i, 34
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.if.end.i.i_crit_edge, !prof !145

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %1)
  %cmp3.i.i.i = icmp ult i32 %1, 34
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.err.i.i_crit_edge, label %pskb_may_pull.exit.i.i, !prof !145

if.end.i.i.i.err.i.i_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub nuw nsw i32 34, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #17
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.err.i.i_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i.i_crit_edge:      ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

pskb_may_pull.exit.i.i.err.i.i_crit_edge:         ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i.i

if.end.i.i:                                       ; preds = %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge, %sw.bb.i.if.end.i.i_crit_edge
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i.i
  %14 = getelementptr inbounds i8, ptr %fl4.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 48)
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i.i, align 4
  %18 = ptrtoint ptr %fl4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fl4.i.i, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tos.i.i, align 1
  %22 = and i8 %21, 30
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %flowic_tos.i.i, align 4
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %flowic_flags.i.i, align 1
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %protocol.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %flowic_proto.i.i, align 2
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %daddr.i.i, align 4
  %daddr8.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %daddr8.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %daddr8.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saddr.i.i, align 4
  %saddr9.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %saddr9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %saddr9.i.i, align 8
  %call10.i.i = call ptr @ip_route_output_flow(ptr noundef %7, ptr noundef nonnull %fl4.i.i, ptr noundef null) #17
  %cmp.i.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i.err.i.i_crit_edge, label %if.end13.i.i

if.end.i.i.err.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i, label %if.end13.i.i.skb_dst_drop.exit.i.i_crit_edge, label %if.then.i.i.i

if.end13.i.i.skb_dst_drop.exit.i.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end13.i.i
  %and.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i.i.i.refdst_drop.exit.i.i.i_crit_edge

if.then.i.i.i.refdst_drop.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refdst_drop.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i.i.i = and i32 %36, -2
  %37 = inttoptr i32 %and1.i.i.i.i to ptr
  call void @dst_release(ptr noundef %37) #17
  br label %refdst_drop.exit.i.i.i

refdst_drop.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %if.then.i.i.i.refdst_drop.exit.i.i.i_crit_edge
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %34, align 8
  br label %skb_dst_drop.exit.i.i

skb_dst_drop.exit.i.i:                            ; preds = %refdst_drop.exit.i.i.i, %if.end13.i.i.skb_dst_drop.exit.i.i_crit_edge
  %39 = ptrtoint ptr %call10.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call10.i.i, align 4
  %cmp.i.i = icmp eq ptr %40, %dev
  br i1 %cmp.i.i, label %if.then15.i.i, label %if.end18.i.i

if.then15.i.i:                                    ; preds = %skb_dst_drop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @vrf_local_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %call10.i.i) #17
  br label %vrf_process_v4_outbound.exit.i

if.end18.i.i:                                     ; preds = %skb_dst_drop.exit.i.i
  %tobool.not.i72.i.i = icmp eq ptr %call10.i.i, null
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %41 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.load.mask.i.i.i = and i32 %bf.load.i.i.i, 4096
  %bf.shl.i.i.i = select i1 %tobool.not.i72.i.i, i32 %bf.load.mask.i.i.i, i32 4096
  %bf.clear4.i.i.i = and i32 %bf.load.i.i.i, -4097
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear4.i.i.i
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  %42 = ptrtoint ptr %call10.i.i to i32
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %34, align 8
  %44 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i.i.i, align 8
  %46 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i75.i.i = zext i16 %47 to i32
  %add.ptr.i.i76.i.i = getelementptr i8, ptr %45, i32 %conv.i.i75.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i76.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %50 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len1, align 4
  %sub.i77.i.i = sub i32 %51, %sub.ptr.sub.i.i.i
  store i32 %sub.i77.i.i, ptr %len1, align 4
  %52 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i77.i.i, i32 %53)
  %cmp.i78.i.i = icmp ult i32 %sub.i77.i.i, %53
  br i1 %cmp.i78.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !145

do.body4.i.i.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !147
  unreachable

__skb_pull.exit.i.i:                              ; preds = %if.end18.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %sub.ptr.sub.i.i.i
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %55 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %saddr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i, label %if.then23.i.i, label %__skb_pull.exit.i.i.if.end28.i.i_crit_edge

__skb_pull.exit.i.i.if.end28.i.i_crit_edge:       ; preds = %__skb_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i.i

if.then23.i.i:                                    ; preds = %__skb_pull.exit.i.i
  %and.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i80.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i80.i.i, label %if.then23.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then23.i.i.skb_dst.exit.i.i_crit_edge:         ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then23.i.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !145

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then23.i.i.skb_dst.exit.i.i_crit_edge
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %34, align 8
  %and25.i.i.i = and i32 %58, -2
  %59 = inttoptr i32 %and25.i.i.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call26.i.i = call i32 @inet_select_addr(ptr noundef %61, i32 noundef 0, i32 noundef 253) #17
  %62 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call26.i.i, ptr %saddr.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %skb_dst.exit.i.i, %__skb_pull.exit.i.i.if.end28.i.i_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %63 = call ptr @memset(ptr %cb.i.i, i32 0, i32 24)
  %64 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %34, align 8
  %and.i82.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82.i.i)
  %tobool.not.i83.i.i = icmp eq i32 %and.i82.i.i, 0
  br i1 %tobool.not.i83.i.i, label %if.end28.i.i.skb_dst.exit93.i.i_crit_edge, label %land.lhs.true.i86.i.i

if.end28.i.i.skb_dst.exit93.i.i_crit_edge:        ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit93.i.i

land.lhs.true.i86.i.i:                            ; preds = %if.end28.i.i
  %call.i84.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i.i)
  %tobool1.not.i85.i.i = icmp eq i32 %call.i84.i.i, 0
  br i1 %tobool1.not.i85.i.i, label %land.rhs.i89.i.i, label %land.lhs.true.i86.i.i.skb_dst.exit93.i.i_crit_edge

land.lhs.true.i86.i.i.skb_dst.exit93.i.i_crit_edge: ; preds = %land.lhs.true.i86.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit93.i.i

land.rhs.i89.i.i:                                 ; preds = %land.lhs.true.i86.i.i
  %call2.i87.i.i = call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i87.i.i)
  %tobool3.not.i88.i.i = icmp eq i32 %call2.i87.i.i, 0
  br i1 %tobool3.not.i88.i.i, label %do.end.i90.i.i, label %land.rhs.i89.i.i.skb_dst.exit93.i.i_crit_edge, !prof !145

land.rhs.i89.i.i.skb_dst.exit93.i.i_crit_edge:    ; preds = %land.rhs.i89.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit93.i.i

do.end.i90.i.i:                                   ; preds = %land.rhs.i89.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit93.i.i

skb_dst.exit93.i.i:                               ; preds = %do.end.i90.i.i, %land.rhs.i89.i.i.skb_dst.exit93.i.i_crit_edge, %land.lhs.true.i86.i.i.skb_dst.exit93.i.i_crit_edge, %if.end28.i.i.skb_dst.exit93.i.i_crit_edge
  %66 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %34, align 8
  %and25.i91.i.i = and i32 %67, -2
  %68 = inttoptr i32 %and25.i91.i.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %nd_net.i94.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 127
  %71 = ptrtoint ptr %nd_net.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nd_net.i94.i.i, align 4
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call32.i.i = call fastcc i32 @vrf_ip_local_out(ptr noundef %72, ptr noundef %75, ptr noundef %skb) #17
  %76 = zext i32 %call32.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call32.i.i, label %if.then38.i.i [
    i32 2, label %skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge
    i32 0, label %skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge76
  ]

skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge76: ; preds = %skb_dst.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_process_v4_outbound.exit.i

skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge: ; preds = %skb_dst.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_process_v4_outbound.exit.i

if.then38.i.i:                                    ; preds = %skb_dst.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %77 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_errors.i.i, align 4
  %inc.i.i = add i32 %78, 1
  store i32 %inc.i.i, ptr %tx_errors.i.i, align 4
  br label %vrf_process_v4_outbound.exit.i

err.i.i:                                          ; preds = %if.end.i.i.err.i.i_crit_edge, %pskb_may_pull.exit.i.i.err.i.i_crit_edge, %if.end.i.i.i.err.i.i_crit_edge
  %tx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %79 = ptrtoint ptr %tx_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_errors.i.i.i, align 4
  %inc.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i, ptr %tx_errors.i.i.i, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %vrf_process_v4_outbound.exit.i

vrf_process_v4_outbound.exit.i:                   ; preds = %err.i.i, %if.then38.i.i, %skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge, %skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge76, %if.then15.i.i
  %retval.0.i.i = phi i32 [ 0, %if.then15.i.i ], [ 1, %err.i.i ], [ %call32.i.i, %if.then38.i.i ], [ 0, %skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge ], [ 0, %skb_dst.exit93.i.i.vrf_process_v4_outbound.exit.i_crit_edge76 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i.i) #17
  br label %is_ip_tx_frame.exit

sw.bb1.i:                                         ; preds = %entry
  %81 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %nd_net.i.i8.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 127
  %84 = ptrtoint ptr %nd_net.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nd_net.i.i8.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i.i) #17
  %86 = call ptr @memset(ptr %fl6.i.i, i32 255, i32 88)
  %ip6_null_entry.i.i = getelementptr inbounds %struct.net, ptr %85, i32 0, i32 36, i32 7
  %87 = ptrtoint ptr %ip6_null_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ip6_null_entry.i.i, align 4
  %data_len.i.i.i10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %89 = ptrtoint ptr %data_len.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i.i.i10.i, align 8
  %sub.i.i.i11.i = sub i32 %1, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %sub.i.i.i11.i)
  %cmp.not.i.i12.i = icmp ult i32 %sub.i.i.i11.i, 54
  br i1 %cmp.not.i.i12.i, label %if.end.i.i14.i, label %sw.bb1.i.if.end.i32.i_crit_edge, !prof !145

sw.bb1.i.if.end.i32.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i32.i

if.end.i.i14.i:                                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %1)
  %cmp3.i.i13.i = icmp ult i32 %1, 54
  br i1 %cmp3.i.i13.i, label %if.end.i.i14.i.err.i59.i_crit_edge, label %pskb_may_pull.exit.i18.i, !prof !145

if.end.i.i14.i.err.i59.i_crit_edge:               ; preds = %if.end.i.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i59.i

pskb_may_pull.exit.i18.i:                         ; preds = %if.end.i.i14.i
  %sub.i.i15.i = sub nuw nsw i32 54, %sub.i.i.i11.i
  %call13.i.i16.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i15.i) #17
  %cmp14.i.not.i17.i = icmp eq ptr %call13.i.i16.i, null
  br i1 %cmp14.i.not.i17.i, label %pskb_may_pull.exit.i18.i.err.i59.i_crit_edge, label %pskb_may_pull.exit.i18.i.if.end.i32.i_crit_edge

pskb_may_pull.exit.i18.i.if.end.i32.i_crit_edge:  ; preds = %pskb_may_pull.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i32.i

pskb_may_pull.exit.i18.i.err.i59.i_crit_edge:     ; preds = %pskb_may_pull.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i59.i

if.end.i32.i:                                     ; preds = %pskb_may_pull.exit.i18.i.if.end.i32.i_crit_edge, %sw.bb1.i.if.end.i32.i_crit_edge
  %head.i.i.i19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %91 = ptrtoint ptr %head.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i.i19.i, align 8
  %network_header.i.i.i20.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %93 = ptrtoint ptr %network_header.i.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i.i.i20.i, align 4
  %conv.i.i.i21.i = zext i16 %94 to i32
  %add.ptr.i.i.i22.i = getelementptr i8, ptr %92, i32 %conv.i.i.i21.i
  %95 = getelementptr inbounds i8, ptr %fl6.i.i, i32 8
  %96 = call ptr @memset(ptr %95, i32 0, i32 80)
  %ifindex.i23.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %97 = ptrtoint ptr %ifindex.i23.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ifindex.i23.i, align 4
  %99 = ptrtoint ptr %fl6.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %fl6.i.i, align 8
  %flowic_iif.i24.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %flowic_iif.i24.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %flowic_iif.i24.i, align 4
  %daddr.i25.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 1
  %daddr5.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i22.i, i32 0, i32 6
  %101 = call ptr @memcpy(ptr %daddr.i25.i, ptr %daddr5.i.i, i32 16)
  %saddr.i26.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 2
  %saddr6.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i22.i, i32 0, i32 5
  %102 = call ptr @memcpy(ptr %saddr.i26.i, ptr %saddr6.i.i, i32 16)
  %103 = ptrtoint ptr %add.ptr.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i.i.i22.i, align 4
  %and.i.i27.i = and i32 %104, 268435455
  %flowlabel.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %flowlabel.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and.i.i27.i, ptr %flowlabel.i.i, align 8
  %106 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %109 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %95, align 8
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i22.i, i32 0, i32 3
  %110 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %nexthdr.i.i, align 2
  %flowic_proto.i28.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i.i, i32 0, i32 5
  %112 = ptrtoint ptr %flowic_proto.i28.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %flowic_proto.i28.i, align 2
  %flowic_flags.i29.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i.i, i32 0, i32 6
  %113 = ptrtoint ptr %flowic_flags.i29.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 4, ptr %flowic_flags.i29.i, align 1
  %call11.i.i = call ptr @ip6_dst_lookup_flow(ptr noundef %85, ptr noundef null, ptr noundef nonnull %fl6.i.i, ptr noundef null) #17
  %cmp.i.i30.i = icmp ugt ptr %call11.i.i, inttoptr (i32 -4096 to ptr)
  %cmp.i31.i = icmp eq ptr %call11.i.i, %88
  %or.cond.i.i = select i1 %cmp.i.i30.i, i1 true, i1 %cmp.i31.i
  br i1 %or.cond.i.i, label %if.end.i32.i.err.i59.i_crit_edge, label %if.end14.i.i

if.end.i32.i.err.i59.i_crit_edge:                 ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i59.i

if.end14.i.i:                                     ; preds = %if.end.i32.i
  %114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i.i33.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i.i33.i, label %if.end14.i.i.skb_dst_drop.exit.i40.i_crit_edge, label %if.then.i.i36.i

if.end14.i.i.skb_dst_drop.exit.i40.i_crit_edge:   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst_drop.exit.i40.i

if.then.i.i36.i:                                  ; preds = %if.end14.i.i
  %and.i.i.i34.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i34.i)
  %tobool.not.i.i.i35.i = icmp eq i32 %and.i.i.i34.i, 0
  br i1 %tobool.not.i.i.i35.i, label %if.then.i.i.i38.i, label %if.then.i.i36.i.refdst_drop.exit.i.i39.i_crit_edge

if.then.i.i36.i.refdst_drop.exit.i.i39.i_crit_edge: ; preds = %if.then.i.i36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refdst_drop.exit.i.i39.i

if.then.i.i.i38.i:                                ; preds = %if.then.i.i36.i
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i.i37.i = and i32 %116, -2
  %117 = inttoptr i32 %and1.i.i.i37.i to ptr
  call void @dst_release(ptr noundef %117) #17
  br label %refdst_drop.exit.i.i39.i

refdst_drop.exit.i.i39.i:                         ; preds = %if.then.i.i.i38.i, %if.then.i.i36.i.refdst_drop.exit.i.i39.i_crit_edge
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %114, align 8
  br label %skb_dst_drop.exit.i40.i

skb_dst_drop.exit.i40.i:                          ; preds = %refdst_drop.exit.i.i39.i, %if.end14.i.i.skb_dst_drop.exit.i40.i_crit_edge
  %119 = ptrtoint ptr %call11.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call11.i.i, align 4
  %cmp16.i.i = icmp eq ptr %120, %dev
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end19.i.i

if.then17.i.i:                                    ; preds = %skb_dst_drop.exit.i40.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @vrf_local_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %call11.i.i) #17
  br label %vrf_process_v6_outbound.exit.i

if.end19.i.i:                                     ; preds = %skb_dst_drop.exit.i40.i
  %tobool.not.i61.i.i = icmp eq ptr %call11.i.i, null
  %slow_gro.i.i41.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %121 = ptrtoint ptr %slow_gro.i.i41.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %bf.load.i.i42.i = load i32, ptr %slow_gro.i.i41.i, align 2
  %bf.load.mask.i.i43.i = and i32 %bf.load.i.i42.i, 4096
  %bf.shl.i.i44.i = select i1 %tobool.not.i61.i.i, i32 %bf.load.mask.i.i43.i, i32 4096
  %bf.clear4.i.i45.i = and i32 %bf.load.i.i42.i, -4097
  %bf.set.i.i46.i = or i32 %bf.shl.i.i44.i, %bf.clear4.i.i45.i
  store i32 %bf.set.i.i46.i, ptr %slow_gro.i.i41.i, align 2
  %122 = ptrtoint ptr %call11.i.i to i32
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %114, align 8
  %124 = ptrtoint ptr %head.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %head.i.i.i19.i, align 8
  %126 = ptrtoint ptr %network_header.i.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %network_header.i.i.i20.i, align 4
  %conv.i.i64.i.i = zext i16 %127 to i32
  %add.ptr.i.i65.i.i = getelementptr i8, ptr %125, i32 %conv.i.i64.i.i
  %data.i.i47.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %128 = ptrtoint ptr %data.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data.i.i47.i, align 4
  %sub.ptr.lhs.cast.i.i48.i = ptrtoint ptr %add.ptr.i.i65.i.i to i32
  %sub.ptr.rhs.cast.i.i49.i = ptrtoint ptr %129 to i32
  %sub.ptr.sub.i.i50.i = sub i32 %sub.ptr.lhs.cast.i.i48.i, %sub.ptr.rhs.cast.i.i49.i
  %130 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len1, align 4
  %sub.i66.i.i = sub i32 %131, %sub.ptr.sub.i.i50.i
  store i32 %sub.i66.i.i, ptr %len1, align 4
  %132 = ptrtoint ptr %data_len.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %data_len.i.i.i10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i66.i.i, i32 %133)
  %cmp.i67.i.i = icmp ult i32 %sub.i66.i.i, %133
  br i1 %cmp.i67.i.i, label %do.body4.i.i51.i, label %__skb_pull.exit.i54.i, !prof !145

do.body4.i.i51.i:                                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !147
  unreachable

__skb_pull.exit.i54.i:                            ; preds = %if.end19.i.i
  %add.ptr.i.i52.i = getelementptr i8, ptr %129, i32 %sub.ptr.sub.i.i50.i
  %134 = ptrtoint ptr %data.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr.i.i52.i, ptr %data.i.i47.i, align 4
  %cb.i53.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %135 = call ptr @memset(ptr %cb.i53.i, i32 0, i32 24)
  %136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %call22.i.i = call fastcc i32 @vrf_ip6_local_out(ptr noundef %85, ptr noundef %138, ptr noundef %skb) #17
  %139 = zext i32 %call22.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call22.i.i, label %if.then26.i.i [
    i32 2, label %__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge
    i32 0, label %__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge77
  ]

__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge77: ; preds = %__skb_pull.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_process_v6_outbound.exit.i

__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge: ; preds = %__skb_pull.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_process_v6_outbound.exit.i

if.then26.i.i:                                    ; preds = %__skb_pull.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors.i55.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %140 = ptrtoint ptr %tx_errors.i55.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_errors.i55.i, align 4
  %inc.i56.i = add i32 %141, 1
  store i32 %inc.i56.i, ptr %tx_errors.i55.i, align 4
  br label %vrf_process_v6_outbound.exit.i

err.i59.i:                                        ; preds = %if.end.i32.i.err.i59.i_crit_edge, %pskb_may_pull.exit.i18.i.err.i59.i_crit_edge, %if.end.i.i14.i.err.i59.i_crit_edge
  %tx_errors.i.i57.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %142 = ptrtoint ptr %tx_errors.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_errors.i.i57.i, align 4
  %inc.i.i58.i = add i32 %143, 1
  store i32 %inc.i.i58.i, ptr %tx_errors.i.i57.i, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %vrf_process_v6_outbound.exit.i

vrf_process_v6_outbound.exit.i:                   ; preds = %err.i59.i, %if.then26.i.i, %__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge, %__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge77, %if.then17.i.i
  %retval.0.i60.i = phi i32 [ 1, %err.i59.i ], [ 0, %if.then17.i.i ], [ %call22.i.i, %if.then26.i.i ], [ 0, %__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge ], [ 0, %__skb_pull.exit.i54.i.vrf_process_v6_outbound.exit.i_crit_edge77 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i.i) #17
  br label %is_ip_tx_frame.exit

is_ip_tx_frame.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors.i61.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %144 = ptrtoint ptr %tx_errors.i61.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_errors.i61.i, align 4
  %inc.i62.i = add i32 %145, 1
  store i32 %inc.i62.i, ptr %tx_errors.i61.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %do.body9

is_ip_tx_frame.exit:                              ; preds = %vrf_process_v6_outbound.exit.i, %vrf_process_v4_outbound.exit.i
  %retval.0.i = phi i32 [ %retval.0.i60.i, %vrf_process_v6_outbound.exit.i ], [ %retval.0.i.i, %vrf_process_v4_outbound.exit.i ]
  %146 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %retval.0.i, label %is_ip_tx_frame.exit.do.body9_crit_edge [
    i32 2, label %is_ip_tx_frame.exit.if.then_crit_edge
    i32 0, label %is_ip_tx_frame.exit.if.then_crit_edge78
  ]

is_ip_tx_frame.exit.if.then_crit_edge78:          ; preds = %is_ip_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

is_ip_tx_frame.exit.if.then_crit_edge:            ; preds = %is_ip_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

is_ip_tx_frame.exit.do.body9_crit_edge:           ; preds = %is_ip_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body9

if.then:                                          ; preds = %is_ip_tx_frame.exit.if.then_crit_edge, %is_ip_tx_frame.exit.if.then_crit_edge78
  %147 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 64
  %150 = ptrtoint ptr %149 to i32
  %151 = call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %154
  %155 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx, align 4
  %add = add i32 %156, %150
  %157 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_dstats, ptr %157, i32 0, i32 6
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %157, align 8
  %inc = add i64 %159, 1
  store i64 %inc, ptr %157, align 8
  %conv = sext i32 %1 to i64
  %tx_bytes = getelementptr inbounds %struct.pcpu_dstats, ptr %157, i32 0, i32 1
  %160 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %tx_bytes, align 8
  %add6 = add i64 %161, %conv
  store i64 %add6, ptr %tx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.pcpu_dstats, ptr %157, i32 0, i32 6, i32 0, i32 1
  %162 = call ptr @llvm.returnaddress(i32 0) #17
  %163 = ptrtoint ptr %162 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %163) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %164 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %syncp, align 4
  %inc.i.i.i71 = add i32 %165, 1
  store i32 %inc.i.i.i71, ptr %syncp, align 4
  br label %if.end62

do.body9:                                         ; preds = %is_ip_tx_frame.exit.do.body9_crit_edge, %is_ip_tx_frame.exit.thread
  %retval.0.i75 = phi i32 [ 1, %is_ip_tx_frame.exit.thread ], [ %retval.0.i, %is_ip_tx_frame.exit.do.body9_crit_edge ]
  %166 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %167 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 64
  %tx_drps = getelementptr inbounds %struct.pcpu_dstats, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %tx_drps to i32
  %171 = call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i72 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i72 to ptr
  %cpu30 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %cpu30 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cpu30, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %176, %170
  %177 = inttoptr i32 %add32 to ptr
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %177, align 8
  %add33 = add i64 %179, 1
  store i64 %add33, ptr %177, align 8
  %180 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i = and i32 %180, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not, label %if.then53, label %do.body9.do.end55_crit_edge, !prof !145

do.body9.do.end55_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55

if.then53:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %do.end55

do.end55:                                         ; preds = %if.then53, %do.body9.do.end55_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %166) #17, !srcloc !146
  br label %if.end62

if.end62:                                         ; preds = %do.end55, %if.then
  %retval.0.i74 = phi i32 [ %retval.0.i75, %do.end55 ], [ %retval.0.i, %if.then ]
  ret i32 %retval.0.i74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vrf_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call32 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %0)
  %cmp33 = icmp ult i32 %call32, %0
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %tx_bytes8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %rx_bytes12 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end7.for.body_crit_edge, %for.body.lr.ph
  %call34 = phi i32 [ %call32, %for.body.lr.ph ], [ %call, %do.end7.for.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 64
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call34
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_dstats, ptr %7, i32 0, i32 6
  %tx_bytes = getelementptr inbounds %struct.pcpu_dstats, ptr %7, i32 0, i32 1
  %tx_drps = getelementptr inbounds %struct.pcpu_dstats, ptr %7, i32 0, i32 2
  %rx_bytes = getelementptr inbounds %struct.pcpu_dstats, ptr %7, i32 0, i32 4
  %rx_pkts = getelementptr inbounds %struct.pcpu_dstats, ptr %7, i32 0, i32 3
  br label %do.body2

do.body2:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body2_crit_edge, %for.body
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %syncp) #17
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %do.body2.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.body2.do.end.i.i_crit_edge

do.body2.do.end.i.i_crit_edge:                    ; preds = %do.body2
  br label %do.end.i.i

do.body2.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body2.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !149
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !150
  %10 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %11, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %do.body2.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %9, %do.body2.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %11, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !151
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_bytes, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %7, align 8
  %16 = ptrtoint ptr %tx_drps to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_drps, align 8
  %18 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_bytes, align 8
  %20 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_pkts, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  %22 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %23, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end7, label %u64_stats_fetch_begin_irq.exit.do.body2_crit_edge

u64_stats_fetch_begin_irq.exit.do.body2_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.end7:                                          ; preds = %u64_stats_fetch_begin_irq.exit
  %24 = ptrtoint ptr %tx_bytes8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_bytes8, align 8
  %add9 = add i64 %25, %13
  store i64 %add9, ptr %tx_bytes8, align 8
  %26 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_packets, align 8
  %add10 = add i64 %27, %15
  store i64 %add10, ptr %tx_packets, align 8
  %28 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_dropped, align 8
  %add11 = add i64 %29, %17
  store i64 %add11, ptr %tx_dropped, align 8
  %30 = ptrtoint ptr %rx_bytes12 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_bytes12, align 8
  %add13 = add i64 %31, %19
  store i64 %add13, ptr %rx_bytes12, align 8
  %32 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %stats, align 8
  %add14 = add i64 %33, %21
  store i64 %add14, ptr %stats, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call34, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %34
  br i1 %cmp, label %do.end7.for.body_crit_edge, label %do.end7.for.end_crit_edge

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %do.end7.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_add_slave(ptr noundef %dev, ptr noundef %port_dev, ptr noundef %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %port_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end2, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vrf_add_slave.__msg) #17
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then1

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vrf_add_slave.__msg, ptr %extack, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %and.i12 = and i64 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i12)
  %tobool.i13.not = icmp eq i64 %and.i12, 0
  br i1 %tobool.i13.not, label %if.end5, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end5:                                          ; preds = %if.end2
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i, align 4
  %loopback_dev.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %loopback_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %loopback_dev.i, align 4
  %cmp.i = icmp eq ptr %6, %port_dev
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @do_vrf_add_slave.__msg) #17
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.return_crit_edge, label %if.then1.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @do_vrf_add_slave.__msg, ptr %extack, align 4
  br label %return

if.end2.i:                                        ; preds = %if.end5
  %or.i = or i64 %1, 2097152
  %8 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or.i, ptr %priv_flags.i, align 16
  %call3.i = tail call i32 @netdev_master_upper_dev_link(ptr noundef %port_dev, ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %err.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end2.i
  %flags1.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev, i32 0, i32 14
  %9 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags1.i.i, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %port_dev, i32 0, i32 6
  %11 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end6.i.return_crit_edge, label %if.end.i.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i.i:                                       ; preds = %if.end6.i
  %and.i.i = and i32 %10, -2
  %call2.i.i = tail call i32 @dev_change_flags(ptr noundef %port_dev, i32 noundef %and.i.i, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.i = icmp sgt i32 %call2.i.i, -1
  br i1 %cmp.i.i, label %if.end5.i.i, label %if.end.i.i.if.then7.i.i_crit_edge

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @dev_change_flags(ptr noundef %port_dev, i32 noundef %10, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp6.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp6.i.i, label %if.end5.i.i.if.then7.i.i_crit_edge, label %if.end5.i.i.return_crit_edge

if.end5.i.i.return_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end5.i.i.if.then7.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %port_dev, ptr noundef nonnull @.str.3, ptr noundef %port_dev) #20
  br label %return

err.i:                                            ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i, align 16
  %and.i15 = and i64 %14, -2097153
  store i64 %and.i15, ptr %priv_flags.i, align 16
  br label %return

return:                                           ; preds = %err.i, %if.then7.i.i, %if.end5.i.i.return_crit_edge, %if.end6.i.return_crit_edge, %if.then1.i, %do.body.i.return_crit_edge, %if.end2.return_crit_edge, %if.then1, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %do.body.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ %call3.i, %err.i ], [ -95, %if.then1.i ], [ -95, %do.body.i.return_crit_edge ], [ 0, %if.end6.i.return_crit_edge ], [ 0, %if.end5.i.i.return_crit_edge ], [ 0, %if.then7.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vrf_rtable_release(ptr nocapture noundef readonly %dev, ptr noundef %vrf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @vrf_rtable_release.__warned, align 1
  br i1 %.b32, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @vrf_rtable_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1053, ptr noundef nonnull @.str.29) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %vrf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrf, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  store volatile ptr null, ptr %vrf, align 4
  tail call void @synchronize_rcu() #17
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %do.end.if.end25_crit_edge, label %if.then20

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then20:                                        ; preds = %do.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %loopback_dev = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %loopback_dev, align 4
  %dev_tracker = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then20.if.end.i_crit_edge, label %if.then.i

if.then20.if.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then20.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end.i.dev_hold.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i.i = add i32 %20, 1
  store i32 %add13.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !145

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !146
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end.i.dev_hold.exit.i_crit_edge
  br i1 %tobool.not.i, label %dev_hold.exit.i.dev_put.exit.i_crit_edge, label %do.body1.i10.i

dev_hold.exit.i.dev_put.exit.i_crit_edge:         ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit.i

do.body1.i10.i:                                   ; preds = %dev_hold.exit.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %pcpu_refcnt.i2.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i2.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i3.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i3.i to ptr
  %cpu.i4.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i4.i, align 4
  %arrayidx.i5.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i5.i, align 4
  %add.i6.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i6.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i7.i = add i32 %34, -1
  store i32 %add13.i7.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i.i8.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8.i)
  %tobool24.not.i9.i = icmp eq i32 %and.i.i.i8.i, 0
  br i1 %tobool24.not.i9.i, label %if.then28.i11.i, label %do.body1.i10.i.do.end30.i12.i_crit_edge, !prof !145

do.body1.i10.i.do.end30.i12.i_crit_edge:          ; preds = %do.body1.i10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i12.i

if.then28.i11.i:                                  ; preds = %do.body1.i10.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i12.i

do.end30.i12.i:                                   ; preds = %if.then28.i11.i, %do.body1.i10.i.do.end30.i12.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #17, !srcloc !146
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i12.i, %dev_hold.exit.i.dev_put.exit.i_crit_edge
  br i1 %tobool.not.i.i, label %dev_put.exit.i.dev_replace_track.exit_crit_edge, label %if.then2.i

dev_put.exit.i.dev_replace_track.exit_crit_edge:  ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_replace_track.exit

if.then2.i:                                       ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt_tracker.i13.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 119
  %call.i14.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i13.i, ptr noundef %dev_tracker, i32 noundef 3264) #17
  br label %dev_replace_track.exit

dev_replace_track.exit:                           ; preds = %if.then2.i, %dev_put.exit.i.dev_replace_track.exit_crit_edge
  %36 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %loopback_dev, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %1, align 4
  tail call void @dst_release(ptr noundef nonnull %1) #17
  br label %if.end25

if.end25:                                         ; preds = %dev_replace_track.exit, %do.end.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_new_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt_dst_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %8 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mib, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i27 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i27 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx6 = getelementptr [37 x i64], ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx6, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %arrayidx6, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %conv = zext i32 %21 to i64
  %arrayidx8 = getelementptr [37 x i64], ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %23, %conv
  store i64 %add9, ptr %arrayidx8, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1, i32 0, i32 1
  %24 = tail call ptr @llvm.returnaddress(i32 0) #17
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %25) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %26 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %28 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %7, ptr %28, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2048, ptr %protocol, align 8
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags, align 4
  %33 = and i16 %32, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not = icmp eq i16 %33, 0
  br i1 %tobool.not, label %lor.lhs.false.i, label %skb_dst.exit.if.then.i_crit_edge

skb_dst.exit.if.then.i_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %skb_dst.exit
  %call.i28 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %7, ptr noundef nonnull @vrf_finish_output) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28)
  %cmp.i = icmp eq i32 %call.i28, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge

lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %NF_HOOK_COND.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %skb_dst.exit.if.then.i_crit_edge
  %call1.i = tail call i32 @vrf_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #17, !callees !153
  br label %NF_HOOK_COND.exit

NF_HOOK_COND.exit:                                ; preds = %if.then.i, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i28, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !154
  %5 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !155
  %14 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !156
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !157
  %33 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !158

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !159
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_finish_output(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %9 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %needed_headroom, align 8
  %conv2 = zext i16 %11 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %and = and i32 %add, 131056
  %add3 = add nuw nsw i32 %and, 16
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %12 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp.i = icmp eq i32 %13, 7
  br i1 %cmp.i, label %nf_reset_ct.exit.i, label %skb_dst.exit.vrf_nf_reset_ct.exit_crit_edge

skb_dst.exit.vrf_nf_reset_ct.exit_crit_edge:      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_reset_ct.exit

nf_reset_ct.exit.i:                               ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %vrf_nf_reset_ct.exit

vrf_nf_reset_ct.exit:                             ; preds = %nf_reset_ct.exit.i, %skb_dst.exit.vrf_nf_reset_ct.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add3)
  %cmp = icmp ult i32 %sub.ptr.sub.i, %add3
  br i1 %cmp, label %land.rhs, label %vrf_nf_reset_ct.exit.if.end11_crit_edge

vrf_nf_reset_ct.exit.if.end11_crit_edge:          ; preds = %vrf_nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

land.rhs:                                         ; preds = %vrf_nf_reset_ct.exit
  %header_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 49
  %19 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %header_ops, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.rhs.if.end11_crit_edge, label %if.then, !prof !158

land.rhs.if.end11_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then:                                          ; preds = %land.rhs
  %call8 = tail call ptr @skb_expand_head(ptr noundef %skb, i32 noundef %add3) #17
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 5
  %21 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %land.rhs.if.end11_crit_edge, %vrf_nf_reset_ct.exit.if.end11_crit_edge
  %skb.addr.0 = phi ptr [ %call8, %if.then.if.end11_crit_edge ], [ %skb, %land.rhs.if.end11_crit_edge ], [ %skb, %vrf_nf_reset_ct.exit.if.end11_crit_edge ]
  tail call fastcc void @local_bh_disable() #17
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #17
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i39, label %if.end11.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i41

if.end11.rcu_read_lock_bh.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true.i41:                                ; preds = %if.end11
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i40 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i41.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i41
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 750, ptr noundef nonnull @.str.23) #17
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i41.rcu_read_lock_bh.exit_crit_edge, %if.end11.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %rt_gw_family.i = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %rt_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rt_gw_family.i, align 4
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %26, label %if.else10.i [
    i8 2, label %if.then.i44
    i8 10, label %if.then8.i
  ], !prof !160

if.then.i44:                                      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  %28 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %call.i43 = tail call fastcc ptr @ip_neigh_gw4(ptr noundef %24, i32 noundef %30) #17
  br label %ip_neigh_for_gw.exit

if.then8.i:                                       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  %31 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  %call9.i = tail call fastcc ptr @ip_neigh_gw6(ptr noundef %24, ptr noundef %31) #17
  br label %ip_neigh_for_gw.exit

if.else10.i:                                      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %daddr.i, align 4
  %call12.i = tail call fastcc ptr @ip_neigh_gw4(ptr noundef %24, i32 noundef %37) #17
  br label %ip_neigh_for_gw.exit

ip_neigh_for_gw.exit:                             ; preds = %if.else10.i, %if.then8.i, %if.then.i44
  %tobool15 = phi i1 [ false, %if.then.i44 ], [ true, %if.then8.i ], [ false, %if.else10.i ]
  %neigh.0.i = phi ptr [ %call.i43, %if.then.i44 ], [ %call9.i, %if.then8.i ], [ %call12.i, %if.else10.i ]
  %cmp.i45 = icmp ugt ptr %neigh.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.end17, label %if.then14

if.then14:                                        ; preds = %ip_neigh_for_gw.exit
  %dst_pending_confirm.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 3
  %38 = ptrtoint ptr %dst_pending_confirm.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load.i.i = load i32, ptr %dst_pending_confirm.i.i, align 2
  %39 = and i32 %bf.load.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.not.i = icmp eq i32 %39, 0
  br i1 %cmp.i.not.i, label %if.then14.sock_confirm_neigh.exit_crit_edge, label %if.then.i47

if.then14.sock_confirm_neigh.exit_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_confirm_neigh.exit

if.then.i47:                                      ; preds = %if.then14
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i46 = icmp eq ptr %42, null
  br i1 %tobool.not.i46, label %if.then.i47.if.end.i_crit_edge, label %do.end.i49

if.then.i47.if.end.i_crit_edge:                   ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i49:                                       ; preds = %if.then.i47
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 29
  %43 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %sk_dst_pending_confirm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool1.not.i48 = icmp eq i32 %44, 0
  br i1 %tobool1.not.i48, label %do.end.i49.if.end.i_crit_edge, label %do.body7.i

do.end.i49.if.end.i_crit_edge:                    ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.body7.i:                                       ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %sk_dst_pending_confirm.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %do.end.i49.if.end.i_crit_edge, %if.then.i47.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %neigh.0.i, null
  br i1 %tobool.not.i.i, label %if.end.i.sock_confirm_neigh.exit_crit_edge, label %if.then.i.i

if.end.i.sock_confirm_neigh.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_confirm_neigh.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %confirmed.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 3
  %47 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %confirmed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp.not.i.i = icmp eq i32 %48, %46
  br i1 %cmp.not.i.i, label %if.then.i.i.sock_confirm_neigh.exit_crit_edge, label %do.body6.i.i

if.then.i.i.sock_confirm_neigh.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_confirm_neigh.exit

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %46, ptr %confirmed.i.i, align 4
  br label %sock_confirm_neigh.exit

sock_confirm_neigh.exit:                          ; preds = %do.body6.i.i, %if.then.i.i.sock_confirm_neigh.exit_crit_edge, %if.end.i.sock_confirm_neigh.exit_crit_edge, %if.then14.sock_confirm_neigh.exit_crit_edge
  %call16 = tail call fastcc i32 @neigh_output(ptr noundef %neigh.0.i, ptr noundef %skb.addr.0, i1 noundef zeroext %tobool15)
  %call.i50 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i50, label %sock_confirm_neigh.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i53

sock_confirm_neigh.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %sock_confirm_neigh.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i53:                                ; preds = %sock_confirm_neigh.exit
  %call1.i51 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i53.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i55

land.lhs.true.i53.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i55:                               ; preds = %land.lhs.true.i53
  %.b4.i54 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i54, label %land.lhs.true2.i55.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i56

land.lhs.true2.i55.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

if.then.i56:                                      ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 761, ptr noundef nonnull @.str.27) #17
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i56, %land.lhs.true2.i55.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i53.rcu_read_unlock_bh.exit_crit_edge, %sock_confirm_neigh.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #17
  tail call fastcc void @local_bh_enable() #17
  br label %cleanup

if.end17:                                         ; preds = %ip_neigh_for_gw.exit
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i58, label %if.end17.rcu_read_unlock_bh.exit66_crit_edge, label %land.lhs.true.i61

if.end17.rcu_read_unlock_bh.exit66_crit_edge:     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit66

land.lhs.true.i61:                                ; preds = %if.end17
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock_bh.exit66_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock_bh.exit66_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit66

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock_bh.exit66_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock_bh.exit66_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit66

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 761, ptr noundef nonnull @.str.27) #17
  br label %rcu_read_unlock_bh.exit66

rcu_read_unlock_bh.exit66:                        ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock_bh.exit66_crit_edge, %land.lhs.true.i61.rcu_read_unlock_bh.exit66_crit_edge, %if.end17.rcu_read_unlock_bh.exit66_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #17
  tail call fastcc void @local_bh_enable() #17
  %50 = getelementptr inbounds %struct.anon.51, ptr %skb.addr.0, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 36, i32 5
  %53 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock_bh.exit66, %rcu_read_unlock_bh.exit, %if.then10
  %retval.0 = phi i32 [ -22, %rcu_read_unlock_bh.exit66 ], [ %call16, %rcu_read_unlock_bh.exit ], [ -12, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i8 noundef zeroext %pf, i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #5 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %pf, label %land.end149 [
    i8 2, label %sw.bb
    i8 10, label %sw.bb16
    i8 3, label %sw.bb36
    i8 7, label %sw.bb102
  ]

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b226 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b226, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb16:                                          ; preds = %rcu_read_lock.exit
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb16
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b217225 = load i1, ptr @nf_hook.__warned.18, align 1
  br i1 %.b217225, label %land.lhs.true29.sw.epilog_crit_edge, label %land.lhs.true29.sw.epilog.sink.split_crit_edge

land.lhs.true29.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb36:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hook)
  %cmp = icmp ugt i32 %hook, 2
  br i1 %cmp, label %land.rhs, label %if.end82.critedge

land.rhs:                                         ; preds = %sw.bb36
  %.b218224 = load i1, ptr @nf_hook.__already_done, align 1
  br i1 %.b218224, label %land.rhs.if.end194_crit_edge, label %if.then46, !prof !158

land.rhs.if.end194_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end194

if.then46:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nf_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 236, i32 noundef 9, ptr noundef null) #17
  br label %if.end194

if.end82.critedge:                                ; preds = %sw.bb36
  %arrayidx88 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 5, i32 %hook
  %9 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx88, align 4
  %call90 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %if.end82.critedge.sw.epilog_crit_edge

if.end82.critedge.sw.epilog_crit_edge:            ; preds = %if.end82.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true92:                                  ; preds = %if.end82.critedge
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.sw.epilog_crit_edge, label %land.lhs.true95

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %.b219223 = load i1, ptr @nf_hook.__warned.19, align 1
  br i1 %.b219223, label %land.lhs.true95.sw.epilog_crit_edge, label %land.lhs.true95.sw.epilog.sink.split_crit_edge

land.lhs.true95.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

land.lhs.true95.sw.epilog_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb102:                                         ; preds = %rcu_read_lock.exit
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %11 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %sw.bb102.sw.epilog_crit_edge

sw.bb102.sw.epilog_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %sw.bb102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b220222 = load i1, ptr @nf_hook.__warned.20, align 1
  br i1 %.b220222, label %land.lhs.true115.sw.epilog_crit_edge, label %land.lhs.true115.sw.epilog.sink.split_crit_edge

land.lhs.true115.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.end149:                                      ; preds = %rcu_read_lock.exit
  %.b221227 = load i1, ptr @nf_hook.__already_done.22, align 1
  br i1 %.b221227, label %land.end149.if.end194_crit_edge, label %if.then156, !prof !158

land.end149.if.end194_crit_edge:                  ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end194

if.then156:                                       ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nf_hook.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 252, i32 noundef 9, ptr noundef null) #17
  br label %if.end194

sw.epilog.sink.split:                             ; preds = %land.lhs.true115.sw.epilog.sink.split_crit_edge, %land.lhs.true95.sw.epilog.sink.split_crit_edge, %land.lhs.true29.sw.epilog.sink.split_crit_edge, %land.lhs.true9.sw.epilog.sink.split_crit_edge
  %nf_hook.__warned.20.sink = phi ptr [ @nf_hook.__warned, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.18, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.19, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.20, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 229, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ 232, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ 238, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ 243, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %hook_head.0.ph = phi ptr [ %6, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ %8, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ %12, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %13 = ptrtoint ptr %nf_hook.__warned.20.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i1 true, ptr %nf_hook.__warned.20.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef %.sink, ptr noundef nonnull @.str.5) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %sw.bb102.sw.epilog_crit_edge, %land.lhs.true95.sw.epilog_crit_edge, %land.lhs.true92.sw.epilog_crit_edge, %if.end82.critedge.sw.epilog_crit_edge, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hook_head.0 = phi ptr [ %6, %land.lhs.true9.sw.epilog_crit_edge ], [ %6, %land.lhs.true6.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %8, %land.lhs.true29.sw.epilog_crit_edge ], [ %8, %land.lhs.true26.sw.epilog_crit_edge ], [ %8, %sw.bb16.sw.epilog_crit_edge ], [ %10, %land.lhs.true95.sw.epilog_crit_edge ], [ %10, %land.lhs.true92.sw.epilog_crit_edge ], [ %10, %if.end82.critedge.sw.epilog_crit_edge ], [ %12, %land.lhs.true115.sw.epilog_crit_edge ], [ %12, %land.lhs.true112.sw.epilog_crit_edge ], [ %12, %sw.bb102.sw.epilog_crit_edge ], [ %hook_head.0.ph, %sw.epilog.sink.split ]
  %tobool191.not = icmp eq ptr %hook_head.0, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #17
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pf, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %17 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %19 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %20 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %hook_head.0, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #17
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge, %if.then156, %land.end149.if.end194_crit_edge, %if.then46, %land.rhs.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ], [ 1, %if.then46 ], [ 1, %if.then156 ], [ 1, %land.end149.if.end194_crit_edge ], [ 1, %land.rhs.if.end194_crit_edge ]
  %call.i229 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i229, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i232

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i232:                               ; preds = %if.end194
  %call1.i230 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230)
  %tobool.not.i231 = icmp eq i32 %call1.i230, 0
  br i1 %tobool.not.i231, label %land.lhs.true.i232.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i234

land.lhs.true.i232.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i234:                              ; preds = %land.lhs.true.i232
  %.b4.i233 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i233, label %land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge, label %if.then.i235

land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i234
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i235:                                     ; preds = %land.lhs.true2.i234
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i235, %land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i232.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !139
  %21 = call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i236 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i236 to ptr
  %preempt_count.i.i.i.i237 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i237, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i237, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @neigh_output(ptr noundef %n, ptr noundef %skb, i1 noundef zeroext %skip_cache) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %hh1 = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 19
  br i1 %skip_cache, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 12
  %0 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nud_state, align 8
  %2 = and i8 %1, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %do.end.if.end_crit_edge, label %do.end6

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end6:                                          ; preds = %do.end
  %3 = ptrtoint ptr %hh1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %hh1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %do.end6.if.end_crit_edge, label %if.then

do.end6.if.end_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %do.end6
  %hh_lock.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 19, i32 1
  %data.i110.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i111.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %hh_data24.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 19, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond28.i.do.body.i_crit_edge, %if.then
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %hh_lock.i) #17
  %5 = ptrtoint ptr %hh_lock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %hh_lock.i, align 4
  %and18.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %do.body.i.read_seqbegin.exit.i_crit_edge, label %do.body.i.do.end.i.i_crit_edge

do.body.i.do.end.i.i_crit_edge:                   ; preds = %do.body.i
  br label %do.end.i.i

do.body.i.read_seqbegin.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !161
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !162
  %7 = ptrtoint ptr %hh_lock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %hh_lock.i, align 4
  %and.i.i = and i32 %8, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %do.body.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %6, %do.body.i.read_seqbegin.exit.i_crit_edge ], [ %8, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !163
  %9 = ptrtoint ptr %hh1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %hh1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp.i = icmp ult i32 %10, 17
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !158

if.then.i:                                        ; preds = %read_seqbegin.exit.i
  %11 = ptrtoint ptr %data.i110.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i110.i, align 4
  %13 = ptrtoint ptr %head.i111.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i111.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub.i.i)
  %cmp5.i = icmp ugt i32 %sub.ptr.sub.i.i, 15
  br i1 %cmp5.i, label %if.then12.i, label %if.then.i.do.cond28.i_crit_edge, !prof !158

if.then.i.do.cond28.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond28.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %12, i32 -16
  %15 = call ptr @memcpy(ptr %add.ptr.i, ptr %hh_data24.i, i32 16)
  br label %do.cond28.i

if.else.i:                                        ; preds = %read_seqbegin.exit.i
  %add.i = add i32 %10, 15
  %and.i = and i32 %add.i, -16
  %16 = ptrtoint ptr %data.i110.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i110.i, align 4
  %18 = ptrtoint ptr %head.i111.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i111.i, align 8
  %sub.ptr.lhs.cast.i112.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i113.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i114.i = sub i32 %sub.ptr.lhs.cast.i112.i, %sub.ptr.rhs.cast.i113.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i114.i, i32 %and.i)
  %cmp14.not.i = icmp ult i32 %sub.ptr.sub.i114.i, %and.i
  br i1 %cmp14.not.i, label %if.else.i.do.cond28.i_crit_edge, label %if.then21.i, !prof !145

if.else.i.do.cond28.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond28.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %idx.neg.i = sub i32 0, %and.i
  %add.ptr23.i = getelementptr i8, ptr %17, i32 %idx.neg.i
  %20 = call ptr @memcpy(ptr %add.ptr23.i, ptr %hh_data24.i, i32 %and.i)
  br label %do.cond28.i

do.cond28.i:                                      ; preds = %if.then21.i, %if.else.i.do.cond28.i_crit_edge, %if.then12.i, %if.then.i.do.cond28.i_crit_edge
  %hh_alen.0.i = phi i32 [ 16, %if.then12.i ], [ 16, %if.then.i.do.cond28.i_crit_edge ], [ %and.i, %if.then21.i ], [ %and.i, %if.else.i.do.cond28.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  %21 = ptrtoint ptr %hh_lock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %hh_lock.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %22, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %do.end32.i, label %do.cond28.i.do.body.i_crit_edge

do.cond28.i.do.body.i_crit_edge:                  ; preds = %do.cond28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

do.end32.i:                                       ; preds = %do.cond28.i
  %23 = ptrtoint ptr %data.i110.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i110.i, align 4
  %25 = ptrtoint ptr %head.i111.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i111.i, align 8
  %sub.ptr.lhs.cast.i117.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i118.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i119.i = sub i32 %sub.ptr.lhs.cast.i117.i, %sub.ptr.rhs.cast.i118.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i119.i, i32 %hh_alen.0.i)
  %cmp34.i = icmp ult i32 %sub.ptr.sub.i119.i, %hh_alen.0.i
  br i1 %cmp34.i, label %land.rhs.i, label %if.end85.i

land.rhs.i:                                       ; preds = %do.end32.i
  %.b108.i = load i1, ptr @neigh_hh_output.__already_done, align 1
  br i1 %.b108.i, label %land.rhs.i.if.then84.i_crit_edge, label %if.then49.i, !prof !158

land.rhs.i.if.then84.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then84.i

if.then49.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @neigh_hh_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 527, i32 noundef 9, ptr noundef null) #17
  br label %if.then84.i

if.then84.i:                                      ; preds = %if.then49.i, %land.rhs.i.if.then84.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

if.end85.i:                                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  %idx.neg.i.i = sub i32 0, %10
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %idx.neg.i.i
  %27 = ptrtoint ptr %data.i110.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i, ptr %data.i110.i, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len1.i.i, align 4
  %add.i.i = add i32 %29, %10
  store i32 %add.i.i, ptr %len1.i.i, align 4
  %call87.i = tail call i32 @dev_queue_xmit(ptr noundef %skb) #17
  br label %cleanup

if.end:                                           ; preds = %do.end6.if.end_crit_edge, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %output = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 20
  %30 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %output, align 4
  %call9 = tail call i32 %31(ptr noundef %n, ptr noundef %skb) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end85.i, %if.then84.i
  %retval.0 = phi i32 [ %call9, %if.end ], [ 1, %if.then84.i ], [ %call87.i, %if.end85.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw4(ptr noundef %dev, i32 noundef %daddr) unnamed_addr #5 align 64 {
entry:
  %daddr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %daddr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %daddr, ptr %daddr.addr, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 %daddr, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31) to i32))
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end8.i.i_crit_edge

entry.do.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b65.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 305, ptr noundef nonnull @.str.5) #17
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %entry.do.end8.i.i_crit_edge
  %hash_rnd.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  %xor.i.i = xor i32 %spec.store.select.i, %4
  %5 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_rnd.i.i, align 4
  %mul.i.i = mul i32 %6, %xor.i.i
  %hash_shift.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_shift.i.i, align 4
  %sub.i.i = sub i32 32, %8
  %shr.i.i = lshr i32 %mul.i.i, %sub.i.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %10, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call16.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %do.end8.i.i.do.end26.i.i_crit_edge

do.end8.i.i.do.end26.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

land.lhs.true18.i.i:                              ; preds = %do.end8.i.i
  %call19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.do.end26.i.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true18.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true18.i.i
  %.b6164.i.i = load i1, ptr @___neigh_lookup_noref.__warned.25, align 1
  br i1 %.b6164.i.i, label %land.lhs.true21.i.i.do.end26.i.i_crit_edge, label %if.then23.i.i

land.lhs.true21.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 310, ptr noundef nonnull @.str.5) #17
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true21.i.i.do.end26.i.i_crit_edge, %land.lhs.true18.i.i.do.end26.i.i_crit_edge, %do.end8.i.i.do.end26.i.i_crit_edge
  %cmp.not66.i.i = icmp eq ptr %12, null
  br i1 %cmp.not66.i.i, label %do.end26.i.i.if.then_crit_edge, label %do.end26.i.i.for.body.i.i_crit_edge

do.end26.i.i.for.body.i.i_crit_edge:              ; preds = %do.end26.i.i
  br label %for.body.i.i

do.end26.i.i.if.then_crit_edge:                   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.body.i.i:                                     ; preds = %do.end49.i.i.for.body.i.i_crit_edge, %do.end26.i.i.for.body.i.i_crit_edge
  %n.067.i.i = phi ptr [ %18, %do.end49.i.i.for.body.i.i_crit_edge ], [ %12, %do.end26.i.i.for.body.i.i_crit_edge ]
  %dev28.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev28.i.i, align 4
  %cmp29.i.i = icmp eq ptr %14, %dev
  br i1 %cmp29.i.i, label %land.lhs.true30.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true30.i.i:                              ; preds = %for.body.i.i
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 27
  %15 = ptrtoint ptr %primary_key.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %primary_key.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %spec.store.select.i)
  %cmp.i.i = icmp eq i32 %16, %spec.store.select.i
  br i1 %cmp.i.i, label %land.lhs.true30.i.i.if.end_crit_edge, label %land.lhs.true30.i.i.for.inc.i.i_crit_edge

land.lhs.true30.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true30.i.i.if.end_crit_edge:             ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.inc.i.i:                                      ; preds = %land.lhs.true30.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %17 = ptrtoint ptr %n.067.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %n.067.i.i, align 8
  %call39.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true41.i.i, label %for.inc.i.i.do.end49.i.i_crit_edge

for.inc.i.i.do.end49.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

land.lhs.true41.i.i:                              ; preds = %for.inc.i.i
  %call42.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %land.lhs.true41.i.i.do.end49.i.i_crit_edge, label %land.lhs.true44.i.i

land.lhs.true41.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

land.lhs.true44.i.i:                              ; preds = %land.lhs.true41.i.i
  %.b6263.i.i = load i1, ptr @___neigh_lookup_noref.__warned.26, align 1
  br i1 %.b6263.i.i, label %land.lhs.true44.i.i.do.end49.i.i_crit_edge, label %if.then46.i.i

land.lhs.true44.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 312, ptr noundef nonnull @.str.5) #17
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %if.then46.i.i, %land.lhs.true44.i.i.do.end49.i.i_crit_edge, %land.lhs.true41.i.i.do.end49.i.i_crit_edge, %for.inc.i.i.do.end49.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %18, null
  br i1 %cmp.not.i.i, label %do.end49.i.i.if.then_crit_edge, label %do.end49.i.i.for.body.i.i_crit_edge

do.end49.i.i.for.body.i.i_crit_edge:              ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

do.end49.i.i.if.then_crit_edge:                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %do.end49.i.i.if.then_crit_edge, %do.end26.i.i.if.then_crit_edge
  %call4 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %daddr.addr, ptr noundef %dev, i1 noundef zeroext false) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true30.i.i.if.end_crit_edge
  %neigh.0 = phi ptr [ %call4, %if.then ], [ %n.067.i.i, %land.lhs.true30.i.i.if.end_crit_edge ]
  ret ptr %neigh.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw6(ptr noundef %dev, ptr noundef %addr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %0 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl.i = getelementptr inbounds %struct.ipv6_stub, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %nd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_tbl.i, align 4
  %nht1.i.i = getelementptr inbounds %struct.neigh_table, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %nht1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %nht1.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end8.i.i_crit_edge

entry.do.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b65.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 305, ptr noundef nonnull @.str.5) #17
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %entry.do.end8.i.i_crit_edge
  %hash_rnd.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %dev to i32
  %xor.i1.i = xor i32 %6, %7
  %8 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i, align 4
  %mul.i.i = mul i32 %xor.i1.i, %9
  %arrayidx2.i2.i = getelementptr i32, ptr %addr, i32 1
  %10 = ptrtoint ptr %arrayidx2.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i2.i, align 4
  %arrayidx3.i3.i = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx3.i3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i3.i, align 4
  %mul4.i.i = mul i32 %13, %11
  %add.i.i = add i32 %mul4.i.i, %mul.i.i
  %arrayidx5.i4.i = getelementptr i32, ptr %addr, i32 2
  %14 = ptrtoint ptr %arrayidx5.i4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i4.i, align 4
  %arrayidx6.i5.i = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx6.i5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i5.i, align 4
  %mul7.i.i = mul i32 %17, %15
  %add8.i.i = add i32 %add.i.i, %mul7.i.i
  %arrayidx9.i6.i = getelementptr i32, ptr %addr, i32 3
  %18 = ptrtoint ptr %arrayidx9.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i6.i, align 4
  %arrayidx10.i7.i = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx10.i7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.i7.i, align 4
  %mul11.i.i = mul i32 %21, %19
  %add12.i.i = add i32 %add8.i.i, %mul11.i.i
  %hash_shift.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_shift.i.i, align 4
  %sub.i.i = sub i32 32, %23
  %shr.i.i = lshr i32 %add12.i.i, %sub.i.i
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %shr.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call16.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %do.end8.i.i.do.end26.i.i_crit_edge

do.end8.i.i.do.end26.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

land.lhs.true18.i.i:                              ; preds = %do.end8.i.i
  %call19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.do.end26.i.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true18.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true18.i.i
  %.b6164.i.i = load i1, ptr @___neigh_lookup_noref.__warned.25, align 1
  br i1 %.b6164.i.i, label %land.lhs.true21.i.i.do.end26.i.i_crit_edge, label %if.then23.i.i

land.lhs.true21.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 310, ptr noundef nonnull @.str.5) #17
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true21.i.i.do.end26.i.i_crit_edge, %land.lhs.true18.i.i.do.end26.i.i_crit_edge, %do.end8.i.i.do.end26.i.i_crit_edge
  %cmp.not66.i.i = icmp eq ptr %27, null
  br i1 %cmp.not66.i.i, label %do.end26.i.i.if.then_crit_edge, label %do.end26.i.i.for.body.i.i_crit_edge

do.end26.i.i.for.body.i.i_crit_edge:              ; preds = %do.end26.i.i
  br label %for.body.i.i

do.end26.i.i.if.then_crit_edge:                   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.body.i.i:                                     ; preds = %do.end49.i.i.for.body.i.i_crit_edge, %do.end26.i.i.for.body.i.i_crit_edge
  %n.067.i.i = phi ptr [ %47, %do.end49.i.i.for.body.i.i_crit_edge ], [ %27, %do.end26.i.i.for.body.i.i_crit_edge ]
  %dev28.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 25
  %28 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28.i.i, align 4
  %cmp29.i.i = icmp eq ptr %29, %dev
  br i1 %cmp29.i.i, label %land.lhs.true30.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true30.i.i:                              ; preds = %for.body.i.i
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 27
  %30 = ptrtoint ptr %primary_key.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %primary_key.i.i, align 4
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %33, %31
  %arrayidx2.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i.i, align 4
  %36 = ptrtoint ptr %arrayidx2.i2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i2.i, align 4
  %xor4.i.i = xor i32 %37, %35
  %or.i.i = or i32 %xor4.i.i, %xor.i.i
  %arrayidx5.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i.i, align 4
  %40 = ptrtoint ptr %arrayidx5.i4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i4.i, align 4
  %xor7.i.i = xor i32 %41, %39
  %or8.i.i = or i32 %or.i.i, %xor7.i.i
  %arrayidx9.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i.i, align 4
  %44 = ptrtoint ptr %arrayidx9.i6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i6.i, align 4
  %xor11.i.i = xor i32 %45, %43
  %or12.i.i = or i32 %or8.i.i, %xor11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i.i)
  %cmp.i.i = icmp eq i32 %or12.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true30.i.i.if.end_crit_edge, label %land.lhs.true30.i.i.for.inc.i.i_crit_edge

land.lhs.true30.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true30.i.i.if.end_crit_edge:             ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.inc.i.i:                                      ; preds = %land.lhs.true30.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %46 = ptrtoint ptr %n.067.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %n.067.i.i, align 8
  %call39.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true41.i.i, label %for.inc.i.i.do.end49.i.i_crit_edge

for.inc.i.i.do.end49.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

land.lhs.true41.i.i:                              ; preds = %for.inc.i.i
  %call42.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %land.lhs.true41.i.i.do.end49.i.i_crit_edge, label %land.lhs.true44.i.i

land.lhs.true41.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

land.lhs.true44.i.i:                              ; preds = %land.lhs.true41.i.i
  %.b6263.i.i = load i1, ptr @___neigh_lookup_noref.__warned.26, align 1
  br i1 %.b6263.i.i, label %land.lhs.true44.i.i.do.end49.i.i_crit_edge, label %if.then46.i.i

land.lhs.true44.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 312, ptr noundef nonnull @.str.5) #17
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %if.then46.i.i, %land.lhs.true44.i.i.do.end49.i.i_crit_edge, %land.lhs.true41.i.i.do.end49.i.i_crit_edge, %for.inc.i.i.do.end49.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %47, null
  br i1 %cmp.not.i.i, label %do.end49.i.i.if.then_crit_edge, label %do.end49.i.i.for.body.i.i_crit_edge

do.end49.i.i.for.body.i.i_crit_edge:              ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

do.end49.i.i.if.then_crit_edge:                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %do.end49.i.i.if.then_crit_edge, %do.end26.i.i.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %48 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nd_tbl, align 4
  %call4 = tail call ptr @__neigh_create(ptr noundef %50, ptr noundef %addr, ptr noundef %dev, i1 noundef zeroext false) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true30.i.i.if.end_crit_edge
  %neigh.0 = phi ptr [ %call4, %if.then ], [ %n.067.i.i, %land.lhs.true30.i.i.if.end_crit_edge ]
  ret ptr %neigh.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #17
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #17
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #17
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !145

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #17, !srcloc !146
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_mod_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_new_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_output6(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 8
  %5 = and i16 %4, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.i, label %skb_dst.exit.if.then.i_crit_edge

skb_dst.exit.if.then.i_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %skb_dst.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 8
  %and25.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i4 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %10, ptr noundef nonnull @vrf_finish_output6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i4)
  %cmp.i = icmp eq i32 %call.i4, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge

lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %NF_HOOK_COND.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %skb_dst.exit.if.then.i_crit_edge
  %call1.i = tail call i32 @vrf_finish_output6(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #17, !callees !153
  br label %NF_HOOK_COND.exit

NF_HOOK_COND.exit:                                ; preds = %if.then.i, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i4, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_finish_output6(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %8 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp.i = icmp eq i32 %9, 7
  br i1 %cmp.i, label %nf_reset_ct.exit.i, label %skb_dst.exit.vrf_nf_reset_ct.exit_crit_edge

skb_dst.exit.vrf_nf_reset_ct.exit_crit_edge:      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_reset_ct.exit

nf_reset_ct.exit.i:                               ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %vrf_nf_reset_ct.exit

vrf_nf_reset_ct.exit:                             ; preds = %nf_reset_ct.exit.i, %skb_dst.exit.vrf_nf_reset_ct.exit_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -31011, ptr %protocol, align 8
  %12 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %12, align 8
  tail call fastcc void @local_bh_disable() #17
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #17
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i85, label %vrf_nf_reset_ct.exit.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i87

vrf_nf_reset_ct.exit.rcu_read_lock_bh.exit_crit_edge: ; preds = %vrf_nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true.i87:                                ; preds = %vrf_nf_reset_ct.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i86 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i87.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i87
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 750, ptr noundef nonnull @.str.23) #17
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i87.rcu_read_lock_bh.exit_crit_edge, %vrf_nf_reset_ct.exit.rcu_read_lock_bh.exit_crit_edge
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt6i_flags.i, align 4
  %and.i89 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool.not.i90, label %if.else.i, label %if.then.i91

if.then.i91:                                      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %rcu_read_lock_bh.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %and2.i = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i92 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i92, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !158

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i91
  %retval.0.i = phi ptr [ %rt6i_gateway.i, %if.then.i91 ], [ %rt6i_dst.i, %if.then6.i ], [ %daddr, %if.else.i.rt6_nexthop.exit_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31) to i32))
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31), align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rt6_nexthop.exit.do.end8.i.i_crit_edge

rt6_nexthop.exit.do.end8.i.i_crit_edge:           ; preds = %rt6_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rt6_nexthop.exit
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b65.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 305, ptr noundef nonnull @.str.5) #17
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rt6_nexthop.exit.do.end8.i.i_crit_edge
  %hash_rnd.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retval.0.i, align 4
  %25 = ptrtoint ptr %21 to i32
  %xor.i1.i = xor i32 %24, %25
  %26 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hash_rnd.i.i, align 4
  %mul.i.i = mul i32 %xor.i1.i, %27
  %arrayidx2.i2.i = getelementptr i32, ptr %retval.0.i, i32 1
  %28 = ptrtoint ptr %arrayidx2.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i2.i, align 4
  %arrayidx3.i3.i = getelementptr %struct.neigh_hash_table, ptr %22, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx3.i3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.i3.i, align 4
  %mul4.i.i = mul i32 %31, %29
  %add.i.i = add i32 %mul4.i.i, %mul.i.i
  %arrayidx5.i4.i = getelementptr i32, ptr %retval.0.i, i32 2
  %32 = ptrtoint ptr %arrayidx5.i4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.i4.i, align 4
  %arrayidx6.i5.i = getelementptr %struct.neigh_hash_table, ptr %22, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %arrayidx6.i5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i5.i, align 4
  %mul7.i.i = mul i32 %35, %33
  %add8.i.i = add i32 %add.i.i, %mul7.i.i
  %arrayidx9.i6.i = getelementptr i32, ptr %retval.0.i, i32 3
  %36 = ptrtoint ptr %arrayidx9.i6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx9.i6.i, align 4
  %arrayidx10.i7.i = getelementptr %struct.neigh_hash_table, ptr %22, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx10.i7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10.i7.i, align 4
  %mul11.i.i = mul i32 %39, %37
  %add12.i.i = add i32 %add8.i.i, %mul11.i.i
  %hash_shift.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %22, i32 0, i32 1
  %40 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash_shift.i.i, align 4
  %sub.i.i = sub i32 32, %41
  %shr.i.i = lshr i32 %add12.i.i, %sub.i.i
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %22, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %43, i32 %shr.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call16.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %do.end8.i.i.do.end26.i.i_crit_edge

do.end8.i.i.do.end26.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

land.lhs.true18.i.i:                              ; preds = %do.end8.i.i
  %call19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.do.end26.i.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true18.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true18.i.i
  %.b6164.i.i = load i1, ptr @___neigh_lookup_noref.__warned.25, align 1
  br i1 %.b6164.i.i, label %land.lhs.true21.i.i.do.end26.i.i_crit_edge, label %if.then23.i.i

land.lhs.true21.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 310, ptr noundef nonnull @.str.5) #17
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true21.i.i.do.end26.i.i_crit_edge, %land.lhs.true18.i.i.do.end26.i.i_crit_edge, %do.end8.i.i.do.end26.i.i_crit_edge
  %cmp.not66.i.i = icmp eq ptr %45, null
  br i1 %cmp.not66.i.i, label %do.end26.i.i.if.then_crit_edge, label %do.end26.i.i.for.body.i.i_crit_edge

do.end26.i.i.for.body.i.i_crit_edge:              ; preds = %do.end26.i.i
  br label %for.body.i.i

do.end26.i.i.if.then_crit_edge:                   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.body.i.i:                                     ; preds = %do.end49.i.i.for.body.i.i_crit_edge, %do.end26.i.i.for.body.i.i_crit_edge
  %n.067.i.i = phi ptr [ %65, %do.end49.i.i.for.body.i.i_crit_edge ], [ %45, %do.end26.i.i.for.body.i.i_crit_edge ]
  %dev28.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 25
  %46 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev28.i.i, align 4
  %cmp29.i.i = icmp eq ptr %47, %21
  br i1 %cmp29.i.i, label %land.lhs.true30.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true30.i.i:                              ; preds = %for.body.i.i
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 27
  %48 = ptrtoint ptr %primary_key.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %primary_key.i.i, align 4
  %50 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retval.0.i, align 4
  %xor.i.i = xor i32 %51, %49
  %arrayidx2.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1
  %52 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i.i, align 4
  %54 = ptrtoint ptr %arrayidx2.i2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx2.i2.i, align 4
  %xor4.i.i = xor i32 %55, %53
  %or.i.i = or i32 %xor4.i.i, %xor.i.i
  %arrayidx5.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx5.i.i, align 4
  %58 = ptrtoint ptr %arrayidx5.i4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.i4.i, align 4
  %xor7.i.i = xor i32 %59, %57
  %or8.i.i = or i32 %or.i.i, %xor7.i.i
  %arrayidx9.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1, i32 2
  %60 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx9.i.i, align 4
  %62 = ptrtoint ptr %arrayidx9.i6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx9.i6.i, align 4
  %xor11.i.i = xor i32 %63, %61
  %or12.i.i = or i32 %or8.i.i, %xor11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i.i)
  %cmp.i.i = icmp eq i32 %or12.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true30.i.i.if.end_crit_edge, label %land.lhs.true30.i.i.for.inc.i.i_crit_edge

land.lhs.true30.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true30.i.i.if.end_crit_edge:             ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.inc.i.i:                                      ; preds = %land.lhs.true30.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %64 = ptrtoint ptr %n.067.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %n.067.i.i, align 8
  %call39.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true41.i.i, label %for.inc.i.i.do.end49.i.i_crit_edge

for.inc.i.i.do.end49.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

land.lhs.true41.i.i:                              ; preds = %for.inc.i.i
  %call42.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %land.lhs.true41.i.i.do.end49.i.i_crit_edge, label %land.lhs.true44.i.i

land.lhs.true41.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

land.lhs.true44.i.i:                              ; preds = %land.lhs.true41.i.i
  %.b6263.i.i = load i1, ptr @___neigh_lookup_noref.__warned.26, align 1
  br i1 %.b6263.i.i, label %land.lhs.true44.i.i.do.end49.i.i_crit_edge, label %if.then46.i.i

land.lhs.true44.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @___neigh_lookup_noref.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 312, ptr noundef nonnull @.str.5) #17
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %if.then46.i.i, %land.lhs.true44.i.i.do.end49.i.i_crit_edge, %land.lhs.true41.i.i.do.end49.i.i_crit_edge, %for.inc.i.i.do.end49.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %65, null
  br i1 %cmp.not.i.i, label %do.end49.i.i.if.then_crit_edge, label %do.end49.i.i.for.body.i.i_crit_edge

do.end49.i.i.for.body.i.i_crit_edge:              ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

do.end49.i.i.if.then_crit_edge:                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %do.end49.i.i.if.then_crit_edge, %do.end26.i.i.if.then_crit_edge
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %call10 = tail call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %retval.0.i, ptr noundef %67, i1 noundef zeroext false) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true30.i.i.if.end_crit_edge
  %neigh.0 = phi ptr [ %call10, %if.then ], [ %n.067.i.i, %land.lhs.true30.i.i.if.end_crit_edge ]
  %cmp.i93 = icmp ugt ptr %neigh.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  %dst_pending_confirm.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %68 = ptrtoint ptr %dst_pending_confirm.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load.i.i = load i32, ptr %dst_pending_confirm.i.i, align 2
  %69 = and i32 %bf.load.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.not.i = icmp eq i32 %69, 0
  br i1 %cmp.i.not.i, label %if.then12.sock_confirm_neigh.exit_crit_edge, label %if.then.i95

if.then12.sock_confirm_neigh.exit_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_confirm_neigh.exit

if.then.i95:                                      ; preds = %if.then12
  %70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool.not.i94 = icmp eq ptr %72, null
  br i1 %tobool.not.i94, label %if.then.i95.if.end.i_crit_edge, label %do.end.i97

if.then.i95.if.end.i_crit_edge:                   ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i97:                                       ; preds = %if.then.i95
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %72, i32 0, i32 29
  %73 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %sk_dst_pending_confirm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool1.not.i96 = icmp eq i32 %74, 0
  br i1 %tobool1.not.i96, label %do.end.i97.if.end.i_crit_edge, label %do.body7.i

do.end.i97.if.end.i_crit_edge:                    ; preds = %do.end.i97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.body7.i:                                       ; preds = %do.end.i97
  call void @__sanitizer_cov_trace_pc() #19
  %75 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %sk_dst_pending_confirm.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %do.end.i97.if.end.i_crit_edge, %if.then.i95.if.end.i_crit_edge
  %tobool.not.i.i98 = icmp eq ptr %neigh.0, null
  br i1 %tobool.not.i.i98, label %if.end.i.sock_confirm_neigh.exit_crit_edge, label %if.then.i.i100

if.end.i.sock_confirm_neigh.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_confirm_neigh.exit

if.then.i.i100:                                   ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %confirmed.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 3
  %77 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %confirmed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp.not.i.i99 = icmp eq i32 %78, %76
  br i1 %cmp.not.i.i99, label %if.then.i.i100.sock_confirm_neigh.exit_crit_edge, label %do.body6.i.i

if.then.i.i100.sock_confirm_neigh.exit_crit_edge: ; preds = %if.then.i.i100
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_confirm_neigh.exit

do.body6.i.i:                                     ; preds = %if.then.i.i100
  call void @__sanitizer_cov_trace_pc() #19
  %79 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %76, ptr %confirmed.i.i, align 4
  br label %sock_confirm_neigh.exit

sock_confirm_neigh.exit:                          ; preds = %do.body6.i.i, %if.then.i.i100.sock_confirm_neigh.exit_crit_edge, %if.end.i.sock_confirm_neigh.exit_crit_edge, %if.then12.sock_confirm_neigh.exit_crit_edge
  %call13 = tail call fastcc i32 @neigh_output(ptr noundef %neigh.0, ptr noundef %skb, i1 noundef zeroext false)
  %call.i101 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i101, label %sock_confirm_neigh.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i104

sock_confirm_neigh.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %sock_confirm_neigh.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i104:                               ; preds = %sock_confirm_neigh.exit
  %call1.i102 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 761, ptr noundef nonnull @.str.27) #17
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock_bh.exit_crit_edge, %sock_confirm_neigh.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #17
  tail call fastcc void @local_bh_enable() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call.i109 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i109, label %if.end14.rcu_read_unlock_bh.exit117_crit_edge, label %land.lhs.true.i112

if.end14.rcu_read_unlock_bh.exit117_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit117

land.lhs.true.i112:                               ; preds = %if.end14
  %call1.i110 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %tobool.not.i111 = icmp eq i32 %call1.i110, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i112.rcu_read_unlock_bh.exit117_crit_edge, label %land.lhs.true2.i114

land.lhs.true.i112.rcu_read_unlock_bh.exit117_crit_edge: ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit117

land.lhs.true2.i114:                              ; preds = %land.lhs.true.i112
  %.b4.i113 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i113, label %land.lhs.true2.i114.rcu_read_unlock_bh.exit117_crit_edge, label %if.then.i115

land.lhs.true2.i114.rcu_read_unlock_bh.exit117_crit_edge: ; preds = %land.lhs.true2.i114
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit117

if.then.i115:                                     ; preds = %land.lhs.true2.i114
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 761, ptr noundef nonnull @.str.27) #17
  br label %rcu_read_unlock_bh.exit117

rcu_read_unlock_bh.exit117:                       ; preds = %if.then.i115, %land.lhs.true2.i114.rcu_read_unlock_bh.exit117_crit_edge, %land.lhs.true.i112.rcu_read_unlock_bh.exit117_crit_edge, %if.end14.rcu_read_unlock_bh.exit117_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #17
  tail call fastcc void @local_bh_enable() #17
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 6
  %80 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp.not = icmp eq ptr %81, null
  br i1 %cmp.not, label %rcu_read_unlock_bh.exit117.do.body35_crit_edge, label %do.body, !prof !145

rcu_read_unlock_bh.exit117.do.body35_crit_edge:   ; preds = %rcu_read_unlock_bh.exit117
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

do.body:                                          ; preds = %rcu_read_unlock_bh.exit117
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %81, i32 0, i32 33, i32 1
  %82 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipv6, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i118 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i118 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 4
  %add = add i32 %90, %84
  %91 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %91, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx27 = getelementptr [37 x i64], ptr %91, i32 0, i32 15
  %92 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx27, align 8
  %add28 = add i64 %93, 1
  store i64 %add28, ptr %arrayidx27, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %91, i32 0, i32 1, i32 0, i32 1
  %94 = tail call ptr @llvm.returnaddress(i32 0) #17
  %95 = ptrtoint ptr %94 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %95) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %96 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body35

do.body35:                                        ; preds = %do.body, %rcu_read_unlock_bh.exit117.do.body35_crit_edge
  tail call fastcc void @local_bh_disable()
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %5, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 127
  %100 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nd_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %101, i32 0, i32 30, i32 1
  %102 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ipv6_statistics, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i119 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i119 to ptr
  %cpu48 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %cpu48 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu48, align 4
  %arrayidx49 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %110, %104
  %111 = inttoptr i32 %add50 to ptr
  %syncp51 = getelementptr inbounds %struct.ipstats_mib, ptr %111, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp51)
  %arrayidx53 = getelementptr [37 x i64], ptr %111, i32 0, i32 15
  %112 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx53, align 8
  %add54 = add i64 %113, 1
  store i64 %add54, ptr %arrayidx53, align 8
  %dep_map.i.i120 = getelementptr inbounds %struct.ipstats_mib, ptr %111, i32 0, i32 1, i32 0, i32 1
  %114 = tail call ptr @llvm.returnaddress(i32 0) #17
  %115 = ptrtoint ptr %114 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i120, i32 noundef %115) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %116 = ptrtoint ptr %syncp51 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %syncp51, align 4
  %inc.i.i.i121 = add i32 %117, 1
  store i32 %inc.i.i.i121, ptr %syncp51, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %rcu_read_unlock_bh.exit
  %retval.0 = phi i32 [ -22, %do.body35 ], [ %call13, %rcu_read_unlock_bh.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vrf_local_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %dst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %3(ptr noundef %skb) #17
  %4 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %destructor.i, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !158

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #17, !srcloc !164
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %tobool.not.i1 = icmp eq ptr %dst, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %10 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i1, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %11 = ptrtoint ptr %dst to i32
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %14 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, -24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %dev) #17
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call, ptr %protocol, align 8
  %call2 = tail call i32 @netif_rx(ptr noundef %skb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %do.body4, !prof !158

if.then:                                          ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #19
  %16 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 64
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_dstats, ptr %26, i32 0, i32 6
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #17
  %rx_pkts.i = getelementptr inbounds %struct.pcpu_dstats, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_pkts.i, align 8
  %inc.i = add i64 %28, 1
  store i64 %inc.i, ptr %rx_pkts.i, align 8
  %conv.i = sext i32 %1 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_dstats, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %30, %conv.i
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_dstats, ptr %26, i32 0, i32 6, i32 0, i32 1
  %31 = tail call ptr @llvm.returnaddress(i32 0) #17
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %32) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %33 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %if.end48

do.body4:                                         ; preds = %skb_orphan.exit
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !143
  %36 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 64
  %rx_drps = getelementptr inbounds %struct.pcpu_dstats, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %rx_drps to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %add = add i32 %45, %39
  %46 = inttoptr i32 %add to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %add19 = add i64 %48, 1
  store i64 %add19, ptr %46, align 8
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !144
  %and.i.i2 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool30.not = icmp eq i32 %and.i.i2, 0
  br i1 %tobool30.not, label %if.then39, label %do.body4.do.end41_crit_edge, !prof !145

do.body4.do.end41_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

if.then39:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end41

do.end41:                                         ; preds = %if.then39, %do.body4.do.end41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #17, !srcloc !146
  br label %if.end48

if.end48:                                         ; preds = %do.end41, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vrf_ip_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i = icmp eq i32 %1, 7
  br i1 %cmp.i, label %nf_reset_ct.exit.i, label %entry.vrf_nf_reset_ct.exit_crit_edge

entry.vrf_nf_reset_ct.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_reset_ct.exit

nf_reset_ct.exit.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %vrf_nf_reset_ct.exit

vrf_nf_reset_ct.exit:                             ; preds = %nf_reset_ct.exit.i, %entry.vrf_nf_reset_ct.exit_crit_edge
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %vrf_nf_reset_ct.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i

vrf_nf_reset_ct.exit.skb_dst.exit_crit_edge:      ; preds = %vrf_nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %vrf_nf_reset_ct.exit
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %vrf_nf_reset_ct.exit.skb_dst.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %and25.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 3, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %10, ptr noundef nonnull @dst_output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %skb_dst.exit.if.end_crit_edge, !prof !158

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %skb_dst.exit
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_output.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !145

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.then.dst_output.exit_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %17(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #17
  br label %if.end

if.end:                                           ; preds = %dst_output.exit, %skb_dst.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call1.i, %dst_output.exit ], [ %call1, %skb_dst.exit.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %output = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %call1 = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #17
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vrf_ip6_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i = icmp eq i32 %1, 7
  br i1 %cmp.i, label %nf_reset_ct.exit.i, label %entry.vrf_nf_reset_ct.exit_crit_edge

entry.vrf_nf_reset_ct.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_reset_ct.exit

nf_reset_ct.exit.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %vrf_nf_reset_ct.exit

vrf_nf_reset_ct.exit:                             ; preds = %nf_reset_ct.exit.i, %entry.vrf_nf_reset_ct.exit_crit_edge
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %vrf_nf_reset_ct.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i

vrf_nf_reset_ct.exit.skb_dst.exit_crit_edge:      ; preds = %vrf_nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %vrf_nf_reset_ct.exit
  %call.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !145

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %vrf_nf_reset_ct.exit.skb_dst.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %and25.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 3, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %10, ptr noundef nonnull @dst_output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %skb_dst.exit.if.end_crit_edge, !prof !158

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %skb_dst.exit
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_output.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !145

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.then.dst_output.exit_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %17(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #17
  br label %if.end

if.end:                                           ; preds = %dst_output.exit, %skb_dst.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call1.i, %dst_output.exit ], [ %call1, %skb_dst.exit.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vrf_fib_table(ptr nocapture noundef readonly %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_id = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tb_id, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vrf_l3_rcv(ptr noundef %vrf_dev, ptr noundef %skb, i16 noundef zeroext %proto) #3 align 64 {
entry:
  %fl6.i110.i = alloca %struct.flowi6, align 8
  %fl6.i.i = alloca %struct.flowi6, align 8
  %_icmph.i.i = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %proto, label %entry.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vrf_dev, ptr %1, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex.i, align 4
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %5 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %skb_iif.i, align 8
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = or i16 %7, 128
  store i16 %8, ptr %flags.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr.i, align 4
  %and.i.i = and i32 %14, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, -24576
  br i1 %cmp.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear.i = and i16 %bf.load.i, 8191
  %16 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  br label %return

if.end8.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %19 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 130
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 64
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.pcpu_dstats, ptr %29, i32 0, i32 6
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #17
  %rx_pkts.i.i = getelementptr inbounds %struct.pcpu_dstats, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %rx_pkts.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_pkts.i.i, align 8
  %inc.i.i = add i64 %31, 1
  store i64 %inc.i.i, ptr %rx_pkts.i.i, align 8
  %conv.i.i = sext i32 %18 to i64
  %rx_bytes.i.i = getelementptr inbounds %struct.pcpu_dstats, ptr %29, i32 0, i32 4
  %32 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rx_bytes.i.i, align 8
  %add2.i.i = add i64 %33, %conv.i.i
  store i64 %add2.i.i, ptr %rx_bytes.i.i, align 8
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_dstats, ptr %29, i32 0, i32 6, i32 0, i32 1
  %34 = tail call ptr @llvm.returnaddress(i32 0) #17
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %35) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %36 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %ptype_all.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 11
  %38 = ptrtoint ptr %ptype_all.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %ptype_all.i, align 4
  %cmp.i45.not.i = icmp eq ptr %39, %ptype_all.i
  br i1 %cmp.i45.not.i, label %if.end8.i.if.end23.i_crit_edge, label %if.then10.i

if.end8.i.if.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.then10.i:                                      ; preds = %if.end8.i
  %call11.i = tail call fastcc i32 @vrf_add_mac_header_if_unset(ptr noundef %skb, ptr noundef %vrf_dev, i16 noundef zeroext 2048) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then16.i, label %if.then10.i.if.end23.i_crit_edge, !prof !158

if.then10.i.if.end23.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %40 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_len.i, align 4
  %conv17.i = zext i16 %41 to i32
  %call18.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv17.i) #17
  tail call void @dev_queue_xmit_nit(ptr noundef %skb, ptr noundef %vrf_dev) #17
  %42 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_len.i, align 4
  %conv20.i = zext i16 %43 to i32
  %call21.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv20.i) #17
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then16.i, %if.then10.i.if.end23.i_crit_edge, %if.end8.i.if.end23.i_crit_edge
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 127
  %44 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nd_net.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 0, ptr noundef %45, ptr noundef null, ptr noundef %skb, ptr noundef %vrf_dev, ptr noundef null, ptr noundef nonnull @vrf_rcv_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp.not.i.i = icmp eq i32 %call1.i.i, 1
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr %skb, ptr null
  br label %return

sw.bb1:                                           ; preds = %entry
  %skb_iif.i6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %46 = ptrtoint ptr %skb_iif.i6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %skb_iif.i6, align 8
  %head.i.i.i7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i7, align 8
  %network_header.i.i.i8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %50 = ptrtoint ptr %network_header.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i.i8, align 4
  %conv.i.i.i9 = zext i16 %51 to i32
  %add.ptr.i.i.i10 = getelementptr i8, ptr %49, i32 %conv.i.i.i9
  %daddr.i11 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i10, i32 0, i32 6
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %daddr.i11) #17
  %and.i.i12 = and i32 %call.i.i.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.i.not.i = icmp eq i32 %and.i.i12, 0
  %52 = ptrtoint ptr %head.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i7, align 8
  %54 = ptrtoint ptr %network_header.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i.i8, align 4
  %conv.i.i.i.i = zext i16 %55 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i.i.i
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nexthdr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %57)
  %cmp.i.i13 = icmp eq i8 %57, 58
  br i1 %cmp.i.i13, label %if.then.i.i, label %ipv6_ndisc_frame.exit.thread.i

if.then.i.i:                                      ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_icmph.i.i) #17
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %_icmph.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %_icmph.i.i, align 8
  %59 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %61 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = add i32 %60, -40
  %sub.i1.i.i.i = sub i32 %sub.i.i.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 7
  br i1 %cmp.i.i.i.i, label %skb_header_pointer.exit.i.i, label %if.end.i.i.i.i, !prof !158

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipv6_ndisc_frame.exit.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 40, ptr noundef nonnull %_icmph.i.i, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipv6_ndisc_frame.exit.i

skb_header_pointer.exit.i.i:                      ; preds = %if.then.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %64, i32 40
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i12.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.ipv6_ndisc_frame.exit.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

skb_header_pointer.exit.i.i.ipv6_ndisc_frame.exit.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipv6_ndisc_frame.exit.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i18.i.i = phi ptr [ %add.ptr.i.i12.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_icmph.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %65 = ptrtoint ptr %retval.0.i.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %retval.0.i.i18.i.i, align 4
  %.off.i.i = add i8 %66, 123
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 5
  br label %ipv6_ndisc_frame.exit.i

ipv6_ndisc_frame.exit.i:                          ; preds = %if.end.i.i, %skb_header_pointer.exit.i.i.ipv6_ndisc_frame.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge, %if.end.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge
  %rc.1.i.i = phi i1 [ %switch.i.i, %if.end.i.i ], [ false, %skb_header_pointer.exit.i.i.ipv6_ndisc_frame.exit.i_crit_edge ], [ false, %if.end.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge ], [ false, %lor.lhs.false.i.i.i.i.ipv6_ndisc_frame.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph.i.i) #17
  %pkt_type.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %67 = ptrtoint ptr %pkt_type.i14 to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i15 = load i16, ptr %pkt_type.i14, align 8
  %bf.lshr.mask.i16 = and i16 %bf.load.i15, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i16)
  %cmp.i17 = icmp ne i16 %bf.lshr.mask.i16, -24576
  %brmerge.i = select i1 %tobool.i.not.i, i1 true, i1 %rc.1.i.i
  %or.cond.i = select i1 %cmp.i17, i1 %brmerge.i, i1 false
  br i1 %or.cond.i, label %if.end25.i, label %ipv6_ndisc_frame.exit.i.if.then.i_crit_edge

ipv6_ndisc_frame.exit.i.if.then.i_crit_edge:      ; preds = %ipv6_ndisc_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

ipv6_ndisc_frame.exit.thread.i:                   ; preds = %sw.bb1
  %pkt_type142.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %68 = ptrtoint ptr %pkt_type142.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load143.i = load i16, ptr %pkt_type142.i, align 8
  %bf.lshr.mask144.i = and i16 %bf.load143.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask144.i)
  %cmp145.i = icmp ne i16 %bf.lshr.mask144.i, -24576
  %or.cond147.i = select i1 %cmp145.i, i1 %tobool.i.not.i, i1 false
  br i1 %or.cond147.i, label %ipv6_ndisc_frame.exit.thread.i.if.then27.i_crit_edge, label %ipv6_ndisc_frame.exit.thread.i.if.then.i_crit_edge

ipv6_ndisc_frame.exit.thread.i.if.then.i_crit_edge: ; preds = %ipv6_ndisc_frame.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

ipv6_ndisc_frame.exit.thread.i.if.then27.i_crit_edge: ; preds = %ipv6_ndisc_frame.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

if.then.i:                                        ; preds = %ipv6_ndisc_frame.exit.thread.i.if.then.i_crit_edge, %ipv6_ndisc_frame.exit.i.if.then.i_crit_edge
  %bf.lshr.mask151.i = phi i16 [ %bf.lshr.mask144.i, %ipv6_ndisc_frame.exit.thread.i.if.then.i_crit_edge ], [ %bf.lshr.mask.i16, %ipv6_ndisc_frame.exit.i.if.then.i_crit_edge ]
  %bf.load150.i = phi i16 [ %bf.load143.i, %ipv6_ndisc_frame.exit.thread.i.if.then.i_crit_edge ], [ %bf.load.i15, %ipv6_ndisc_frame.exit.i.if.then.i_crit_edge ]
  %pkt_type149.i = phi ptr [ %pkt_type142.i, %ipv6_ndisc_frame.exit.thread.i.if.then.i_crit_edge ], [ %pkt_type.i14, %ipv6_ndisc_frame.exit.i.if.then.i_crit_edge ]
  %69 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %vrf_dev, ptr %69, align 8
  %ifindex.i18 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 17
  %71 = ptrtoint ptr %ifindex.i18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ifindex.i18, align 4
  %73 = ptrtoint ptr %skb_iif.i6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %skb_iif.i6, align 8
  %flags.i19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %74 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flags.i19, align 8
  %76 = or i16 %75, 64
  store i16 %76, ptr %flags.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask151.i)
  %cmp15.i = icmp eq i16 %bf.lshr.mask151.i, -24576
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear.i20 = and i16 %bf.load150.i, 8191
  %77 = ptrtoint ptr %pkt_type149.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %bf.clear.i20, ptr %pkt_type149.i, align 8
  br label %return

if.else.i:                                        ; preds = %if.then.i
  %78 = ptrtoint ptr %head.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i.i7, align 8
  %80 = ptrtoint ptr %network_header.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %network_header.i.i.i8, align 4
  %conv.i.i95.i = zext i16 %81 to i32
  %add.ptr.i.i96.i = getelementptr i8, ptr %79, i32 %conv.i.i95.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i96.i, i32 0, i32 5
  %call.i.i = call i32 @__ipv6_addr_type(ptr noundef %saddr.i) #17
  %and.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.else.i.return_crit_edge, label %if.then23.i

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then23.i:                                      ; preds = %if.else.i
  %82 = ptrtoint ptr %head.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i.i7, align 8
  %84 = ptrtoint ptr %network_header.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i.i8, align 4
  %conv.i.i.i100.i = zext i16 %85 to i32
  %add.ptr.i.i.i101.i = getelementptr i8, ptr %83, i32 %conv.i.i.i100.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i.i) #17
  %86 = getelementptr inbounds i8, ptr %fl6.i.i, i32 80
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 4294967295, ptr %86, align 8, !annotation !140
  %88 = call ptr @memset(ptr %fl6.i.i, i32 0, i32 40)
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %47, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i.i, i32 0, i32 2
  %90 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %93 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %flowic_mark.i.i, align 8
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i.i, i32 0, i32 5
  %nexthdr.i102.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i101.i, i32 0, i32 3
  %94 = ptrtoint ptr %nexthdr.i102.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nexthdr.i102.i, align 2
  %96 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %flowic_proto.i.i, align 2
  %daddr.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 1
  %daddr1.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i101.i, i32 0, i32 6
  %97 = call ptr @memcpy(ptr %daddr.i.i, ptr %daddr1.i.i, i32 16)
  %saddr.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 2
  %saddr2.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i101.i, i32 0, i32 5
  %98 = call ptr @memcpy(ptr %saddr.i.i, ptr %saddr2.i.i, i32 16)
  %flowlabel.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %add.ptr.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i.i101.i, align 4
  %and.i.i.i21 = and i32 %100, 268435455
  %101 = ptrtoint ptr %flowlabel.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i.i.i21, ptr %flowlabel.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %uli.i.i, align 4
  %nd_net.i.i.i22 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 127
  %103 = ptrtoint ptr %nd_net.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nd_net.i.i.i22, align 4
  %fib6_table.i.i.i = getelementptr i8, ptr %vrf_dev, i32 2312
  %105 = ptrtoint ptr %fib6_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fib6_table.i.i.i, align 4
  %call1.i.i.i = call ptr @ip6_pol_route(ptr noundef %104, ptr noundef %106, i32 noundef %47, ptr noundef nonnull %fl6.i.i, ptr noundef %skb, i32 noundef 5) #17
  %tobool.not.i103.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i103.i, label %if.then23.i.vrf_ip6_input_dst.exit.i_crit_edge, label %if.end.i105.i, !prof !145

if.then23.i.vrf_ip6_input_dst.exit.i_crit_edge:   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_ip6_input_dst.exit.i

if.end.i105.i:                                    ; preds = %if.then23.i
  %ip6_null_entry.i.i = getelementptr inbounds %struct.net, ptr %104, i32 0, i32 36, i32 7
  %107 = ptrtoint ptr %ip6_null_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ip6_null_entry.i.i, align 4
  %cmp.i104.i = icmp eq ptr %call1.i.i.i, %108
  br i1 %cmp.i104.i, label %if.end.i105.i.vrf_ip6_input_dst.exit.i_crit_edge, label %if.end17.i.i, !prof !145

if.end.i105.i.vrf_ip6_input_dst.exit.i_crit_edge: ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_ip6_input_dst.exit.i

if.end17.i.i:                                     ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #19
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %109 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  %110 = ptrtoint ptr %call1.i.i.i to i32
  %111 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %110, ptr %111, align 8
  br label %vrf_ip6_input_dst.exit.i

vrf_ip6_input_dst.exit.i:                         ; preds = %if.end17.i.i, %if.end.i105.i.vrf_ip6_input_dst.exit.i_crit_edge, %if.then23.i.vrf_ip6_input_dst.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i.i) #17
  br label %return

if.end25.i:                                       ; preds = %ipv6_ndisc_frame.exit.i
  br i1 %rc.1.i.i, label %if.end25.i.if.end52.i_crit_edge, label %if.end25.i.if.then27.i_crit_edge

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

if.end25.i.if.end52.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %ipv6_ndisc_frame.exit.thread.i.if.then27.i_crit_edge
  %len.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %113 = ptrtoint ptr %len.i23 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len.i23, align 4
  %115 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 130
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 64
  %118 = ptrtoint ptr %117 to i32
  %119 = call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i107.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i107.i to ptr
  %cpu.i.i24 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %cpu.i.i24 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpu.i.i24, align 4
  %arrayidx.i.i25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i25, align 4
  %add.i.i26 = add i32 %124, %118
  %125 = inttoptr i32 %add.i.i26 to ptr
  %syncp.i.i27 = getelementptr inbounds %struct.pcpu_dstats, ptr %125, i32 0, i32 6
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i27) #17
  %rx_pkts.i.i28 = getelementptr inbounds %struct.pcpu_dstats, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %rx_pkts.i.i28 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rx_pkts.i.i28, align 8
  %inc.i.i29 = add i64 %127, 1
  store i64 %inc.i.i29, ptr %rx_pkts.i.i28, align 8
  %conv.i.i30 = sext i32 %114 to i64
  %rx_bytes.i.i31 = getelementptr inbounds %struct.pcpu_dstats, ptr %125, i32 0, i32 4
  %128 = ptrtoint ptr %rx_bytes.i.i31 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %rx_bytes.i.i31, align 8
  %add2.i.i32 = add i64 %129, %conv.i.i30
  store i64 %add2.i.i32, ptr %rx_bytes.i.i31, align 8
  %dep_map.i.i.i.i33 = getelementptr inbounds %struct.pcpu_dstats, ptr %125, i32 0, i32 6, i32 0, i32 1
  %130 = call ptr @llvm.returnaddress(i32 0) #17
  %131 = ptrtoint ptr %130 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i33, i32 noundef %131) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !148
  %132 = ptrtoint ptr %syncp.i.i27 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %syncp.i.i27, align 4
  %inc.i.i.i.i.i34 = add i32 %133, 1
  store i32 %inc.i.i.i.i.i34, ptr %syncp.i.i27, align 4
  %134 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %vrf_dev, ptr %134, align 8
  %ifindex28.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 17
  %136 = ptrtoint ptr %ifindex28.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ifindex28.i, align 4
  %138 = ptrtoint ptr %skb_iif.i6 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %skb_iif.i6, align 8
  %ptype_all.i35 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 11
  %139 = ptrtoint ptr %ptype_all.i35 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %ptype_all.i35, align 4
  %cmp.i108.not.i = icmp eq ptr %140, %ptype_all.i35
  br i1 %cmp.i108.not.i, label %if.then27.i.if.end45.i_crit_edge, label %if.then32.i

if.then27.i.if.end45.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i

if.then32.i:                                      ; preds = %if.then27.i
  %call33.i = call fastcc i32 @vrf_add_mac_header_if_unset(ptr noundef %skb, ptr noundef %vrf_dev, i16 noundef zeroext -31011) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then38.i, label %if.then32.i.if.end45.i_crit_edge, !prof !158

if.then32.i.if.end45.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #19
  %mac_len.i36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %141 = ptrtoint ptr %mac_len.i36 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %mac_len.i36, align 4
  %conv39.i = zext i16 %142 to i32
  %call40.i = call ptr @skb_push(ptr noundef %skb, i32 noundef %conv39.i) #17
  call void @dev_queue_xmit_nit(ptr noundef %skb, ptr noundef %vrf_dev) #17
  %143 = ptrtoint ptr %mac_len.i36 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %mac_len.i36, align 4
  %conv42.i = zext i16 %144 to i32
  %call43.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv42.i) #17
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then38.i, %if.then32.i.if.end45.i_crit_edge, %if.then27.i.if.end45.i_crit_edge
  %flags48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %145 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %flags48.i, align 8
  %147 = or i16 %146, 64
  store i16 %147, ptr %flags48.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end45.i, %if.end25.i.if.end52.i_crit_edge
  br i1 %tobool.i.not.i, label %if.end52.i.if.end55.i_crit_edge, label %if.then54.i

if.end52.i.if.end55.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end52.i
  %148 = ptrtoint ptr %head.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %head.i.i.i7, align 8
  %150 = ptrtoint ptr %network_header.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %network_header.i.i.i8, align 4
  %conv.i.i.i113.i = zext i16 %151 to i32
  %add.ptr.i.i.i114.i = getelementptr i8, ptr %149, i32 %conv.i.i.i113.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i110.i) #17
  %152 = getelementptr inbounds i8, ptr %fl6.i110.i, i32 80
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 4294967295, ptr %152, align 8, !annotation !140
  %154 = call ptr @memset(ptr %fl6.i110.i, i32 0, i32 40)
  %flowic_iif.i115.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i110.i, i32 0, i32 1
  %155 = ptrtoint ptr %flowic_iif.i115.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %47, ptr %flowic_iif.i115.i, align 4
  %flowic_mark.i116.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i110.i, i32 0, i32 2
  %156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %159 = ptrtoint ptr %flowic_mark.i116.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %flowic_mark.i116.i, align 8
  %flowic_proto.i117.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i110.i, i32 0, i32 5
  %nexthdr.i118.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i114.i, i32 0, i32 3
  %160 = ptrtoint ptr %nexthdr.i118.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %nexthdr.i118.i, align 2
  %162 = ptrtoint ptr %flowic_proto.i117.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %flowic_proto.i117.i, align 2
  %daddr.i119.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i110.i, i32 0, i32 1
  %daddr1.i120.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i114.i, i32 0, i32 6
  %163 = call ptr @memcpy(ptr %daddr.i119.i, ptr %daddr1.i120.i, i32 16)
  %saddr.i121.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i110.i, i32 0, i32 2
  %saddr2.i122.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i114.i, i32 0, i32 5
  %164 = call ptr @memcpy(ptr %saddr.i121.i, ptr %saddr2.i122.i, i32 16)
  %flowlabel.i123.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i110.i, i32 0, i32 3
  %165 = ptrtoint ptr %add.ptr.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %add.ptr.i.i.i114.i, align 4
  %and.i.i124.i = and i32 %166, 268435455
  %167 = ptrtoint ptr %flowlabel.i123.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and.i.i124.i, ptr %flowlabel.i123.i, align 8
  %uli.i125.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i110.i, i32 0, i32 4
  %168 = ptrtoint ptr %uli.i125.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %uli.i125.i, align 4
  %nd_net.i.i127.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 127
  %169 = ptrtoint ptr %nd_net.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %nd_net.i.i127.i, align 4
  %fib6_table.i.i128.i = getelementptr i8, ptr %vrf_dev, i32 2312
  %171 = ptrtoint ptr %fib6_table.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fib6_table.i.i128.i, align 4
  %call1.i.i129.i = call ptr @ip6_pol_route(ptr noundef %170, ptr noundef %172, i32 noundef %47, ptr noundef nonnull %fl6.i110.i, ptr noundef %skb, i32 noundef 5) #17
  %tobool.not.i130.i = icmp eq ptr %call1.i.i129.i, null
  br i1 %tobool.not.i130.i, label %if.then54.i.vrf_ip6_input_dst.exit139.i_crit_edge, label %if.end.i133.i, !prof !145

if.then54.i.vrf_ip6_input_dst.exit139.i_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_ip6_input_dst.exit139.i

if.end.i133.i:                                    ; preds = %if.then54.i
  %ip6_null_entry.i131.i = getelementptr inbounds %struct.net, ptr %170, i32 0, i32 36, i32 7
  %173 = ptrtoint ptr %ip6_null_entry.i131.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ip6_null_entry.i131.i, align 4
  %cmp.i132.i = icmp eq ptr %call1.i.i129.i, %174
  br i1 %cmp.i132.i, label %if.end.i133.i.vrf_ip6_input_dst.exit139.i_crit_edge, label %if.end17.i137.i, !prof !145

if.end.i133.i.vrf_ip6_input_dst.exit139.i_crit_edge: ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_ip6_input_dst.exit139.i

if.end17.i137.i:                                  ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #19
  %slow_gro.i.i134.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %175 = ptrtoint ptr %slow_gro.i.i134.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %bf.load.i.i135.i = load i32, ptr %slow_gro.i.i134.i, align 2
  %bf.set.i.i136.i = or i32 %bf.load.i.i135.i, 4096
  store i32 %bf.set.i.i136.i, ptr %slow_gro.i.i134.i, align 2
  %176 = ptrtoint ptr %call1.i.i129.i to i32
  %177 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %176, ptr %177, align 8
  br label %vrf_ip6_input_dst.exit139.i

vrf_ip6_input_dst.exit139.i:                      ; preds = %if.end17.i137.i, %if.end.i133.i.vrf_ip6_input_dst.exit139.i_crit_edge, %if.then54.i.vrf_ip6_input_dst.exit139.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i110.i) #17
  br label %if.end55.i

if.end55.i:                                       ; preds = %vrf_ip6_input_dst.exit139.i, %if.end52.i.if.end55.i_crit_edge
  %nd_net.i.i140.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 127
  %179 = ptrtoint ptr %nd_net.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %nd_net.i.i140.i, align 4
  %call1.i.i37 = call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 0, ptr noundef %180, ptr noundef null, ptr noundef %skb, ptr noundef %vrf_dev, ptr noundef null, ptr noundef nonnull @vrf_rcv_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i37)
  %cmp.not.i.i38 = icmp eq i32 %call1.i.i37, 1
  %spec.select.i.i39 = select i1 %cmp.not.i.i38, ptr %skb, ptr null
  br label %return

return:                                           ; preds = %if.end55.i, %vrf_ip6_input_dst.exit.i, %if.else.i.return_crit_edge, %if.then17.i, %if.end23.i, %if.then5.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %skb, %entry.return_crit_edge ], [ %skb, %sw.bb.return_crit_edge ], [ %skb, %if.then5.i ], [ %spec.select.i.i, %if.end23.i ], [ %skb, %if.then17.i ], [ %skb, %vrf_ip6_input_dst.exit.i ], [ %skb, %if.else.i.return_crit_edge ], [ %spec.select.i.i39, %if.end55.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vrf_l3_out(ptr noundef %vrf_dev, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %proto) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %proto, label %entry.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %4 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %daddr.i, align 4
  %and.i.i = and i32 %6, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i23.i = icmp eq i32 %6, -1
  %or.cond.i = or i1 %cmp.i23.i, %cmp.i.i
  br i1 %or.cond.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %7 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %_nfct.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i24.i = icmp eq i32 %8, 0
  br i1 %cmp.i24.i, label %if.then.i.i, label %if.end.i.vrf_nf_set_untracked.exit.i_crit_edge

if.end.i.vrf_nf_set_untracked.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_set_untracked.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %slow_gro.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %9 = ptrtoint ptr %slow_gro.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %slow_gro.i.i.i.i, align 2
  %bf.set.i.i.i.i = or i32 %bf.load.i.i.i.i, 4096
  store i32 %bf.set.i.i.i.i, ptr %slow_gro.i.i.i.i, align 2
  %10 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %_nfct.i.i.i, align 8
  br label %vrf_nf_set_untracked.exit.i

vrf_nf_set_untracked.exit.i:                      ; preds = %if.then.i.i, %if.end.i.vrf_nf_set_untracked.exit.i_crit_edge
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 104
  %11 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i25.i = icmp ugt i32 %12, 1
  br i1 %cmp.i25.i, label %vrf_nf_set_untracked.exit.i.lor.lhs.false6.i_crit_edge, label %qdisc_tx_is_default.exit.i

vrf_nf_set_untracked.exit.i.lor.lhs.false6.i_crit_edge: ; preds = %vrf_nf_set_untracked.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false6.i

qdisc_tx_is_default.exit.i:                       ; preds = %vrf_nf_set_untracked.exit.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i.i, align 128
  %qdisc1.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %qdisc1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %qdisc1.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %qdisc_tx_is_default.exit.i.if.then7.i_crit_edge, label %qdisc_tx_is_default.exit.i.lor.lhs.false6.i_crit_edge

qdisc_tx_is_default.exit.i.lor.lhs.false6.i_crit_edge: ; preds = %qdisc_tx_is_default.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false6.i

qdisc_tx_is_default.exit.i.if.then7.i_crit_edge:  ; preds = %qdisc_tx_is_default.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i

lor.lhs.false6.i:                                 ; preds = %qdisc_tx_is_default.exit.i.lor.lhs.false6.i_crit_edge, %vrf_nf_set_untracked.exit.i.lor.lhs.false6.i_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i, align 4
  %21 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end9.i, label %lor.lhs.false6.i.if.then7.i_crit_edge

lor.lhs.false6.i.if.then7.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false6.i.if.then7.i_crit_edge, %qdisc_tx_is_default.exit.i.if.then7.i_crit_edge
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 127
  %22 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nd_net.i.i.i, align 4
  %24 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vrf_dev, ptr %24, align 8
  %call1.i.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 3, ptr noundef %23, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %vrf_dev, ptr noundef nonnull @vrf_ip_out_direct_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp.i26.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp.i26.i, label %if.then.i27.i, label %if.then7.i.return_crit_edge, !prof !158

if.then7.i.return_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then.i27.i:                                    ; preds = %if.then7.i
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %26 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2048, ptr %protocol.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i.i.i, align 4
  %29 = and i16 %28, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.i.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i27.i._crit_edge

if.then.i27.i._crit_edge:                         ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %32

if.end.i.i.i:                                     ; preds = %if.then.i27.i
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 8
  %call.i.i.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 4, ptr noundef %23, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %31, ptr noundef nonnull @vrf_output_direct_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end.i.i.i._crit_edge, label %if.end.i.i.i.return_crit_edge, !prof !158

if.end.i.i.i.return_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i.i.i._crit_edge:                          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %32

32:                                               ; preds = %if.end.i.i.i._crit_edge, %if.then.i27.i._crit_edge
  tail call fastcc void @vrf_finish_direct(ptr noundef %skb) #17
  br label %return

if.end9.i:                                        ; preds = %lor.lhs.false6.i
  %add.ptr.i.i28.i = getelementptr i8, ptr %vrf_dev, i32 2304
  %33 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i29.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i29.i, label %if.end9.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end9.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i30.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i30.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end9.i.rcu_read_lock.exit.i.i_crit_edge
  %37 = ptrtoint ptr %add.ptr.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %add.ptr.i.i28.i, align 4
  %call3.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i31.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end9.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end9.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end9.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @vrf_ip_out_redirect.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true6.i.i.do.end9.i.i_crit_edge, label %if.then.i32.i

land.lhs.true6.i.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i.i

if.then.i32.i:                                    ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @vrf_ip_out_redirect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 939, ptr noundef nonnull @.str.5) #17
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then.i32.i, %land.lhs.true6.i.i.do.end9.i.i_crit_edge, %land.lhs.true.i.i.do.end9.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end9.i.i_crit_edge
  %tobool11.not.i.i = icmp eq ptr %38, null
  br i1 %tobool11.not.i.i, label %do.end9.i.i.if.end16.i.i_crit_edge, label %if.then14.i.i, !prof !145

do.end9.i.i.if.end16.i.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %do.end9.i.i
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #17
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #17, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %do.end10.i.i.i, label %atomic_inc_not_zero.exit.thread.i.i.i

atomic_inc_not_zero.exit.thread.i.i.i:            ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !167
  br label %if.end16.i.i

do.end10.i.i.i:                                   ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 231, i32 noundef 9, ptr noundef null) #17
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.end10.i.i.i, %atomic_inc_not_zero.exit.thread.i.i.i, %do.end9.i.i.if.end16.i.i_crit_edge
  %call.i38.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i38.i.i, label %if.end16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i41.i.i

if.end16.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i41.i.i:                            ; preds = %if.end16.i.i
  %call1.i39.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i.i)
  %tobool.not.i40.i.i = icmp eq i32 %call1.i39.i.i, 0
  br i1 %tobool.not.i40.i.i, label %land.lhs.true.i41.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i43.i.i

land.lhs.true.i41.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i43.i.i:                           ; preds = %land.lhs.true.i41.i.i
  %.b4.i42.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42.i.i, label %land.lhs.true2.i43.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i44.i.i

land.lhs.true2.i43.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

if.then.i44.i.i:                                  ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i44.i.i, %land.lhs.true2.i43.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i41.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end16.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !139
  %40 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i45.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i45.i.i to ptr
  %preempt_count.i.i.i.i46.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i46.i.i, align 4
  %sub.i.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i46.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %tobool11.not.i.i, label %if.then26.i.i, label %if.end27.i.i, !prof !145

if.then26.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 36, i32 5
  %44 = ptrtoint ptr %tx_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_errors.i.i.i, align 4
  %inc.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i, ptr %tx_errors.i.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %return

if.end27.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  %46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i47.i.i = icmp ne i32 %48, 0
  %and.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %or.cond.i.i = and i1 %tobool.not.i47.i.i, %tobool.not.i.i.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.i.i, label %if.end27.i.i.skb_dst_drop.exit.i.i_crit_edge

if.end27.i.i.skb_dst_drop.exit.i.i_crit_edge:     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst_drop.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i.i.i = and i32 %48, -2
  %49 = inttoptr i32 %and1.i.i.i.i to ptr
  tail call void @dst_release(ptr noundef %49) #17
  br label %skb_dst_drop.exit.i.i

skb_dst_drop.exit.i.i:                            ; preds = %if.then.i.i.i.i, %if.end27.i.i.skb_dst_drop.exit.i.i_crit_edge
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %50 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  %51 = ptrtoint ptr %38 to i32
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %46, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %head.i.i.i7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %53 = ptrtoint ptr %head.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i.i7, align 8
  %network_header.i.i.i8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %55 = ptrtoint ptr %network_header.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %network_header.i.i.i8, align 4
  %conv.i.i.i9 = zext i16 %56 to i32
  %add.ptr.i.i.i10 = getelementptr i8, ptr %54, i32 %conv.i.i.i9
  %daddr.i11 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i10, i32 0, i32 6
  %call.i.i.i12 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr.i11) #17
  %and.i.i13 = and i32 %call.i.i.i12, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.i.not.i = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.i.not.i, label %if.end.i16, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i16:                                       ; preds = %sw.bb1
  %_nfct.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %57 = ptrtoint ptr %_nfct.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %_nfct.i.i.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i15 = icmp eq i32 %58, 0
  br i1 %cmp.i.i15, label %if.then.i.i20, label %if.end.i16.vrf_nf_set_untracked.exit.i22_crit_edge

if.end.i16.vrf_nf_set_untracked.exit.i22_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_set_untracked.exit.i22

if.then.i.i20:                                    ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #19
  %slow_gro.i.i.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %59 = ptrtoint ptr %slow_gro.i.i.i.i17 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load.i.i.i.i18 = load i32, ptr %slow_gro.i.i.i.i17, align 2
  %bf.set.i.i.i.i19 = or i32 %bf.load.i.i.i.i18, 4096
  store i32 %bf.set.i.i.i.i19, ptr %slow_gro.i.i.i.i17, align 2
  %60 = ptrtoint ptr %_nfct.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 7, ptr %_nfct.i.i.i14, align 8
  br label %vrf_nf_set_untracked.exit.i22

vrf_nf_set_untracked.exit.i22:                    ; preds = %if.then.i.i20, %if.end.i16.vrf_nf_set_untracked.exit.i22_crit_edge
  %num_tx_queues.i.i21 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 104
  %61 = ptrtoint ptr %num_tx_queues.i.i21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_tx_queues.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i14.i = icmp ugt i32 %62, 1
  br i1 %cmp.i14.i, label %vrf_nf_set_untracked.exit.i22.lor.lhs.false.i_crit_edge, label %qdisc_tx_is_default.exit.i26

vrf_nf_set_untracked.exit.i22.lor.lhs.false.i_crit_edge: ; preds = %vrf_nf_set_untracked.exit.i22
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

qdisc_tx_is_default.exit.i26:                     ; preds = %vrf_nf_set_untracked.exit.i22
  %_tx.i.i.i23 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 103
  %63 = ptrtoint ptr %_tx.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_tx.i.i.i23, align 128
  %qdisc1.i.i24 = getelementptr inbounds %struct.netdev_queue, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %qdisc1.i.i24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %qdisc1.i.i24, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 128
  %tobool.not.i.i25 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i25, label %qdisc_tx_is_default.exit.i26.if.then3.i_crit_edge, label %qdisc_tx_is_default.exit.i26.lor.lhs.false.i_crit_edge

qdisc_tx_is_default.exit.i26.lor.lhs.false.i_crit_edge: ; preds = %qdisc_tx_is_default.exit.i26
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

qdisc_tx_is_default.exit.i26.if.then3.i_crit_edge: ; preds = %qdisc_tx_is_default.exit.i26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %qdisc_tx_is_default.exit.i26.lor.lhs.false.i_crit_edge, %vrf_nf_set_untracked.exit.i22.lor.lhs.false.i_crit_edge
  %flags.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %69 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags.i27, align 8
  %71 = and i16 %70, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.not.i28 = icmp eq i16 %71, 0
  br i1 %tobool.not.i28, label %if.end5.i, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %qdisc_tx_is_default.exit.i26.if.then3.i_crit_edge
  %nd_net.i.i.i29 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 127
  %72 = ptrtoint ptr %nd_net.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nd_net.i.i.i29, align 4
  %74 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %vrf_dev, ptr %74, align 8
  %call1.i.i30 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 3, ptr noundef %73, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %vrf_dev, ptr noundef nonnull @vrf_ip6_out_direct_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i30)
  %cmp.i15.i = icmp eq i32 %call1.i.i30, 1
  br i1 %cmp.i15.i, label %if.then.i16.i, label %if.then3.i.return_crit_edge, !prof !158

if.then3.i.return_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then.i16.i:                                    ; preds = %if.then3.i
  %protocol.i.i.i31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %76 = ptrtoint ptr %protocol.i.i.i31 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -31011, ptr %protocol.i.i.i31, align 8
  %flags.i.i.i32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %77 = ptrtoint ptr %flags.i.i.i32 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %flags.i.i.i32, align 4
  %79 = and i16 %78, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i.i.i33 = icmp eq i16 %79, 0
  br i1 %tobool.not.i.i.i33, label %if.end.i.i.i35, label %if.then.i16.i._crit_edge

if.then.i16.i._crit_edge:                         ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %82

if.end.i.i.i35:                                   ; preds = %if.then.i16.i
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %74, align 8
  %call.i.i17.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 4, ptr noundef %73, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %81, ptr noundef nonnull @vrf_output6_direct_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i17.i)
  %cmp.i.i.i34 = icmp eq i32 %call.i.i17.i, 1
  br i1 %cmp.i.i.i34, label %if.end.i.i.i35._crit_edge, label %if.end.i.i.i35.return_crit_edge, !prof !158

if.end.i.i.i35.return_crit_edge:                  ; preds = %if.end.i.i.i35
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i.i.i35._crit_edge:                        ; preds = %if.end.i.i.i35
  call void @__sanitizer_cov_trace_pc() #19
  br label %82

82:                                               ; preds = %if.end.i.i.i35._crit_edge, %if.then.i16.i._crit_edge
  tail call fastcc void @vrf_finish_direct(ptr noundef %skb) #17
  br label %return

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %83 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i.i.i36 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i37, align 4
  %add.i.i.i.i.i38 = add i32 %86, 1
  store volatile i32 %add.i.i.i.i.i38, ptr %preempt_count.i.i.i.i.i.i37, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i18.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i18.i, label %if.end5.i.rcu_read_lock.exit.i.i45_crit_edge, label %land.lhs.true.i.i.i40

if.end5.i.rcu_read_lock.exit.i.i45_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i45

land.lhs.true.i.i.i40:                            ; preds = %if.end5.i
  %call1.i.i.i39 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i39)
  %tobool.not.i.i19.i = icmp eq i32 %call1.i.i.i39, 0
  br i1 %tobool.not.i.i19.i, label %land.lhs.true.i.i.i40.rcu_read_lock.exit.i.i45_crit_edge, label %land.lhs.true2.i.i.i42

land.lhs.true.i.i.i40.rcu_read_lock.exit.i.i45_crit_edge: ; preds = %land.lhs.true.i.i.i40
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i45

land.lhs.true2.i.i.i42:                           ; preds = %land.lhs.true.i.i.i40
  %.b4.i.i.i41 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i41, label %land.lhs.true2.i.i.i42.rcu_read_lock.exit.i.i45_crit_edge, label %if.then.i.i.i43

land.lhs.true2.i.i.i42.rcu_read_lock.exit.i.i45_crit_edge: ; preds = %land.lhs.true2.i.i.i42
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i45

if.then.i.i.i43:                                  ; preds = %land.lhs.true2.i.i.i42
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit.i.i45

rcu_read_lock.exit.i.i45:                         ; preds = %if.then.i.i.i43, %land.lhs.true2.i.i.i42.rcu_read_lock.exit.i.i45_crit_edge, %land.lhs.true.i.i.i40.rcu_read_lock.exit.i.i45_crit_edge, %if.end5.i.rcu_read_lock.exit.i.i45_crit_edge
  %rt61.i.i = getelementptr i8, ptr %vrf_dev, i32 2308
  %87 = ptrtoint ptr %rt61.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %rt61.i.i, align 4
  %call3.i.i44 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i44)
  %tobool.not.i20.i = icmp eq i32 %call3.i.i44, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i.i48, label %rcu_read_lock.exit.i.i45.do.end9.i.i52_crit_edge

rcu_read_lock.exit.i.i45.do.end9.i.i52_crit_edge: ; preds = %rcu_read_lock.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i.i52

land.lhs.true.i.i48:                              ; preds = %rcu_read_lock.exit.i.i45
  %call4.i.i46 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i46)
  %tobool5.not.i.i47 = icmp eq i32 %call4.i.i46, 0
  br i1 %tobool5.not.i.i47, label %land.lhs.true.i.i48.do.end9.i.i52_crit_edge, label %land.lhs.true6.i.i50

land.lhs.true.i.i48.do.end9.i.i52_crit_edge:      ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i.i52

land.lhs.true6.i.i50:                             ; preds = %land.lhs.true.i.i48
  %.b37.i.i49 = load i1, ptr @vrf_ip6_out_redirect.__warned, align 1
  br i1 %.b37.i.i49, label %land.lhs.true6.i.i50.do.end9.i.i52_crit_edge, label %if.then.i21.i

land.lhs.true6.i.i50.do.end9.i.i52_crit_edge:     ; preds = %land.lhs.true6.i.i50
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i.i52

if.then.i21.i:                                    ; preds = %land.lhs.true6.i.i50
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @vrf_ip6_out_redirect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 709, ptr noundef nonnull @.str.5) #17
  br label %do.end9.i.i52

do.end9.i.i52:                                    ; preds = %if.then.i21.i, %land.lhs.true6.i.i50.do.end9.i.i52_crit_edge, %land.lhs.true.i.i48.do.end9.i.i52_crit_edge, %rcu_read_lock.exit.i.i45.do.end9.i.i52_crit_edge
  %tobool11.not.i.i51 = icmp eq ptr %88, null
  br i1 %tobool11.not.i.i51, label %do.end9.i.i52.if.end16.i.i61_crit_edge, label %if.then14.i.i57, !prof !145

do.end9.i.i52.if.end16.i.i61_crit_edge:           ; preds = %do.end9.i.i52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i.i61

if.then14.i.i57:                                  ; preds = %do.end9.i.i52
  %__refcnt.i.i.i53 = getelementptr inbounds %struct.dst_entry, ptr %88, i32 0, i32 18
  %call.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i53, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i53, i32 1, i32 3, i32 1) #17
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i53, ptr %__refcnt.i.i.i53, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i53) #17, !srcloc !166
  %asmresult.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i55)
  %cmp.not.i.i.i.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i55, 0
  br i1 %cmp.not.i.i.i.i.i.i.i56, label %do.end10.i.i.i59, label %atomic_inc_not_zero.exit.thread.i.i.i58

atomic_inc_not_zero.exit.thread.i.i.i58:          ; preds = %if.then14.i.i57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !167
  br label %if.end16.i.i61

do.end10.i.i.i59:                                 ; preds = %if.then14.i.i57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 231, i32 noundef 9, ptr noundef null) #17
  br label %if.end16.i.i61

if.end16.i.i61:                                   ; preds = %do.end10.i.i.i59, %atomic_inc_not_zero.exit.thread.i.i.i58, %do.end9.i.i52.if.end16.i.i61_crit_edge
  %call.i38.i.i60 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i38.i.i60, label %if.end16.i.i61.rcu_read_unlock.exit.i.i71_crit_edge, label %land.lhs.true.i41.i.i64

if.end16.i.i61.rcu_read_unlock.exit.i.i71_crit_edge: ; preds = %if.end16.i.i61
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i71

land.lhs.true.i41.i.i64:                          ; preds = %if.end16.i.i61
  %call1.i39.i.i62 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i.i62)
  %tobool.not.i40.i.i63 = icmp eq i32 %call1.i39.i.i62, 0
  br i1 %tobool.not.i40.i.i63, label %land.lhs.true.i41.i.i64.rcu_read_unlock.exit.i.i71_crit_edge, label %land.lhs.true2.i43.i.i66

land.lhs.true.i41.i.i64.rcu_read_unlock.exit.i.i71_crit_edge: ; preds = %land.lhs.true.i41.i.i64
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i71

land.lhs.true2.i43.i.i66:                         ; preds = %land.lhs.true.i41.i.i64
  %.b4.i42.i.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42.i.i65, label %land.lhs.true2.i43.i.i66.rcu_read_unlock.exit.i.i71_crit_edge, label %if.then.i44.i.i67

land.lhs.true2.i43.i.i66.rcu_read_unlock.exit.i.i71_crit_edge: ; preds = %land.lhs.true2.i43.i.i66
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i71

if.then.i44.i.i67:                                ; preds = %land.lhs.true2.i43.i.i66
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit.i.i71

rcu_read_unlock.exit.i.i71:                       ; preds = %if.then.i44.i.i67, %land.lhs.true2.i43.i.i66.rcu_read_unlock.exit.i.i71_crit_edge, %land.lhs.true.i41.i.i64.rcu_read_unlock.exit.i.i71_crit_edge, %if.end16.i.i61.rcu_read_unlock.exit.i.i71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !139
  %90 = tail call i32 @llvm.read_register.i32(metadata !127) #17
  %and.i.i.i.i.i45.i.i68 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i45.i.i68 to ptr
  %preempt_count.i.i.i.i46.i.i69 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i46.i.i69 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i46.i.i69, align 4
  %sub.i.i.i.i.i70 = add i32 %93, -1
  store volatile i32 %sub.i.i.i.i.i70, ptr %preempt_count.i.i.i.i46.i.i69, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %tobool11.not.i.i51, label %if.then26.i.i74, label %if.end27.i.i79, !prof !145

if.then26.i.i74:                                  ; preds = %rcu_read_unlock.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #19
  %tx_errors.i.i.i72 = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 36, i32 5
  %94 = ptrtoint ptr %tx_errors.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_errors.i.i.i72, align 4
  %inc.i.i.i73 = add i32 %95, 1
  store i32 %inc.i.i.i73, ptr %tx_errors.i.i.i72, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %return

if.end27.i.i79:                                   ; preds = %rcu_read_unlock.exit.i.i71
  %96 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i47.i.i75 = icmp ne i32 %98, 0
  %and.i.i.i.i76 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i76)
  %tobool.not.i.i.i.i77 = icmp eq i32 %and.i.i.i.i76, 0
  %or.cond.i.i78 = and i1 %tobool.not.i47.i.i75, %tobool.not.i.i.i.i77
  br i1 %or.cond.i.i78, label %if.then.i.i.i.i81, label %if.end27.i.i79.skb_dst_drop.exit.i.i85_crit_edge

if.end27.i.i79.skb_dst_drop.exit.i.i85_crit_edge: ; preds = %if.end27.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst_drop.exit.i.i85

if.then.i.i.i.i81:                                ; preds = %if.end27.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i.i.i80 = and i32 %98, -2
  %99 = inttoptr i32 %and1.i.i.i.i80 to ptr
  tail call void @dst_release(ptr noundef %99) #17
  br label %skb_dst_drop.exit.i.i85

skb_dst_drop.exit.i.i85:                          ; preds = %if.then.i.i.i.i81, %if.end27.i.i79.skb_dst_drop.exit.i.i85_crit_edge
  %slow_gro.i.i.i82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %100 = ptrtoint ptr %slow_gro.i.i.i82 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %bf.load.i.i.i83 = load i32, ptr %slow_gro.i.i.i82, align 2
  %bf.set.i.i.i84 = or i32 %bf.load.i.i.i83, 4096
  store i32 %bf.set.i.i.i84, ptr %slow_gro.i.i.i82, align 2
  %101 = ptrtoint ptr %88 to i32
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %96, align 8
  br label %return

return:                                           ; preds = %skb_dst_drop.exit.i.i85, %if.then26.i.i74, %82, %if.end.i.i.i35.return_crit_edge, %if.then3.i.return_crit_edge, %sw.bb1.return_crit_edge, %skb_dst_drop.exit.i.i, %if.then26.i.i, %32, %if.end.i.i.i.return_crit_edge, %if.then7.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %skb, %entry.return_crit_edge ], [ %skb, %sw.bb.return_crit_edge ], [ %skb, %32 ], [ null, %if.then7.i.return_crit_edge ], [ null, %if.end.i.i.i.return_crit_edge ], [ null, %if.then26.i.i ], [ %skb, %skb_dst_drop.exit.i.i ], [ %skb, %sw.bb1.return_crit_edge ], [ %skb, %82 ], [ null, %if.then3.i.return_crit_edge ], [ null, %if.end.i.i.i35.return_crit_edge ], [ null, %if.then26.i.i74 ], [ %skb, %skb_dst_drop.exit.i.i85 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vrf_link_scope_lookup(ptr nocapture noundef readonly %dev, ptr noundef %fl6) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl6, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ip6_null_entry = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %ip6_null_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ip6_null_entry, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %11, %9
  %arrayidx4.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %13
  %arrayidx7.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %spec.select = select i1 %cmp.i, i32 129, i32 133
  %fib6_table.i = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %fib6_table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fib6_table.i, align 4
  %call1.i = tail call ptr @ip6_pol_route(ptr noundef %1, ptr noundef %17, i32 noundef %3, ptr noundef %fl6, ptr noundef null, i32 noundef %spec.select) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %7, %if.then ], [ %call1.i, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vrf_add_mac_header_if_unset(ptr noundef %skb, ptr nocapture noundef readonly %vrf_dev, i16 noundef zeroext %proto) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not = icmp eq i16 %1, -1
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %3 to i32
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 21
  %4 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %needed_headroom.i, align 8
  %conv1.i3 = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv1.i3, %conv.i
  %and.i = and i32 %add.i, 131056
  %add2.i = add nuw nsw i32 %and.i, 16
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %6 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i

if.end.skb_header_cloned.exit.i.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #17
  %9 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %10, 65535
  %shr.i.i.i = ashr i32 %10, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i, %if.end.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i ], [ true, %if.end.skb_header_cloned.exit.i.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add2.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %add2.i
  %or.cond.i.i.i = and i1 %retval.0.i.i.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end.i_crit_edge:    ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %add2.i, i32 %sub.ptr.sub.i.i.i.i) #17
  %add.i.i.i = add nuw nsw i32 %15, 127
  %and.i4.i.i = and i32 %add.i.i.i, 524160
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i, label %skb_cow_head.exit.i.if.end.i_crit_edge, label %skb_cow_head.exit.i.return_crit_edge, !prof !158

skb_cow_head.exit.i.return_crit_edge:             ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

skb_cow_head.exit.i.if.end.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %skb_cow_head.exit.i.if.end.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.i_crit_edge
  %16 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -14
  store ptr %add.ptr.i.i, ptr %data.i.i.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i.i, align 4
  %add.i.i = add i32 %19, 14
  store i32 %add.i.i, ptr %len1.i.i, align 4
  %20 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %22 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %mac_header.i, align 2
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %vrf_dev, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i, align 64
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %add.ptr.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %24, i32 4
  %28 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i27.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %17, i32 -10
  %30 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr1.i.i, align 2
  %h_source.i = getelementptr i8, ptr %17, i32 -8
  %31 = load ptr, ptr %dev_addr.i, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %h_source.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %31, i32 4
  %35 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i28.i, align 2
  %add.ptr1.i29.i = getelementptr i8, ptr %17, i32 -4
  %37 = ptrtoint ptr %add.ptr1.i29.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i29.i, align 2
  %h_proto.i = getelementptr i8, ptr %17, i32 -2
  %38 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %proto, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %proto, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %40 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %41 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %41)
  %cmp.i.i.i = icmp eq i16 %41, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.skb_postpush_rcsum.exit.i_crit_edge

if.end.i.skb_postpush_rcsum.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_postpush_rcsum.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i.i, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %call.i.i.i = tail call i32 @csum_partial(ptr noundef %43, i32 noundef 14, i32 noundef 0) #17
  %add.i.i.i.i.i = add i32 %call.i.i.i, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add1.i.i.i.i.i, ptr %44, align 8
  br label %skb_postpush_rcsum.exit.i

skb_postpush_rcsum.exit.i:                        ; preds = %if.then.i.i.i, %if.end.i.skb_postpush_rcsum.exit.i_crit_edge
  %48 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %49)
  %cmp.i.i = icmp ult i32 %49, 14
  br i1 %cmp.i.i, label %skb_postpush_rcsum.exit.i.return_crit_edge, label %cond.false.i.i, !prof !145

skb_postpush_rcsum.exit.i.return_crit_edge:       ; preds = %skb_postpush_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

cond.false.i.i:                                   ; preds = %skb_postpush_rcsum.exit.i
  %sub.i.i32.i = add i32 %49, -14
  %50 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i.i32.i, ptr %len1.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %51 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i32.i, i32 %52)
  %cmp.i.i33.i = icmp ult i32 %sub.i.i32.i, %52
  br i1 %cmp.i.i33.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !145

do.body4.i.i.i:                                   ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !147
  unreachable

__skb_pull.exit.i.i:                              ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 14
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i.i, align 4
  br label %return

return:                                           ; preds = %__skb_pull.exit.i.i, %skb_postpush_rcsum.exit.i.return_crit_edge, %skb_cow_head.exit.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -105, %skb_cow_head.exit.i.return_crit_edge ], [ 0, %skb_postpush_rcsum.exit.i.return_crit_edge ], [ 0, %__skb_pull.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_queue_xmit_nit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_rcv_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_pol_route(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_ip_out_direct_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2048, ptr %protocol.i, align 8
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 4
  %3 = and i16 %2, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %6, ptr noundef nonnull @vrf_output_direct_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end.i.if.then_crit_edge, label %if.end.i.if.end_crit_edge, !prof !158

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @vrf_finish_direct(ptr noundef %skb) #17
  %call2 = tail call fastcc i32 @vrf_ip_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %err.0 = phi i32 [ %call2, %if.then ], [ %call.i, %if.end.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_output_direct_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vrf_finish_direct(ptr noundef %skb)
  %call = tail call fastcc i32 @vrf_ip_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vrf_finish_direct(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ptype_all = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %ptype_all to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ptype_all, align 4
  %cmp.i.not = icmp eq ptr %4, %ptype_all
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub.i)
  %cmp = icmp ugt i32 %sub.ptr.sub.i, 13
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge, !prof !158

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #17
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %call4, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %h_source, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ethhdr, ptr %call4, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  %17 = call ptr @memset(ptr %call4, i32 0, i32 6)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %protocol, align 8
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %call4, i32 0, i32 2
  %20 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %h_proto, align 1
  tail call fastcc void @local_bh_disable() #17
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.then.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 750, ptr noundef nonnull @.str.23) #17
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.then.rcu_read_lock_bh.exit_crit_edge
  tail call void @dev_queue_xmit_nit(ptr noundef %skb, ptr noundef %2) #17
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i17, label %rcu_read_lock_bh.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i20

rcu_read_lock_bh.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i20:                                ; preds = %rcu_read_lock_bh.exit
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 761, ptr noundef nonnull @.str.27) #17
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock_bh.exit_crit_edge, %rcu_read_lock_bh.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #17
  tail call fastcc void @local_bh_enable() #17
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #17
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock_bh.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %21 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp.i24 = icmp eq i32 %22, 7
  br i1 %cmp.i24, label %nf_reset_ct.exit.i, label %if.end.vrf_nf_reset_ct.exit_crit_edge

if.end.vrf_nf_reset_ct.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_nf_reset_ct.exit

nf_reset_ct.exit.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %vrf_nf_reset_ct.exit

vrf_nf_reset_ct.exit:                             ; preds = %nf_reset_ct.exit.i, %if.end.vrf_nf_reset_ct.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_ip6_out_direct_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -31011, ptr %protocol.i, align 8
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 4
  %3 = and i16 %2, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %6, ptr noundef nonnull @vrf_output6_direct_finish) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end.i.if.then_crit_edge, label %if.end.i.if.end_crit_edge, !prof !158

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @vrf_finish_direct(ptr noundef %skb) #17
  %call2 = tail call fastcc i32 @vrf_ip6_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %err.0 = phi i32 [ %call2, %if.then ], [ %call.i, %if.end.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrf_output6_direct_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vrf_finish_direct(ptr noundef %skb)
  %call = tail call fastcc i32 @vrf_ip6_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vrf_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #17
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #17
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vrf_map_unregister_dev(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  %2 = load i32, ptr @vrf_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #17
  %vmap.i.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i, i32 0, i32 1
  %tb_id = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tb_id, align 4
  %vmap_lock.i = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %vmap_lock.i) #17
  %add.i.i.i = add i32 %4, -1448300800
  %xor3.i.i.i = xor i32 %add.i.i.i, -734014059
  %sub5.i.i.i = add i32 %xor3.i.i.i, 22237535
  %xor6.i.i.i = xor i32 %sub5.i.i.i, -1448300800
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i1.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, -734014059
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i2.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i3.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i4.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i5.i.i.i
  %mul.i.i.i = mul i32 %sub20.i.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 28
  %arrayidx.i = getelementptr [16 x %struct.hlist_head], ptr %vmap.i.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %me.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %me.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %me.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %me.0.i = load ptr, ptr %me.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %me.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.unlock_crit_edge, label %for.body.i

for.cond.i.unlock_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

for.body.i:                                       ; preds = %for.cond.i
  %table_id4.i = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %table_id4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %table_id4.i, align 4
  %cmp.i = icmp eq i32 %7, %4
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %me_list = getelementptr i8, ptr %dev, i32 2320
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %me_list) #17
  br i1 %call.i.i19, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %me_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %me_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %me_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %me_list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2324
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %users3 = getelementptr inbounds %struct.vrf_map_elem, ptr %me.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %users3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %users3, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %users3, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %17, label %list_del.exit.unlock_crit_edge [
    i32 2, label %if.then4
    i32 1, label %if.then7
  ]

list_del.exit.unlock_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

if.then4:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  %shared_tables = getelementptr inbounds %struct.netns_vrf, ptr %call.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %shared_tables to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shared_tables, align 4
  %dec5 = add i32 %20, -1
  store i32 %dec5, ptr %shared_tables, align 4
  br label %unlock

if.then7:                                         ; preds = %list_del.exit
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %me.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then7.vrf_map_del_elem.exit_crit_edge, label %if.then.i.i.i

if.then7.vrf_map_del_elem.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %vrf_map_del_elem.exit

if.then.i.i.i:                                    ; preds = %if.then7
  %23 = ptrtoint ptr %me.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %me.0.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %22, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %27 = ptrtoint ptr %me.0.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %me.0.i, align 4
  %28 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %vrf_map_del_elem.exit

vrf_map_del_elem.exit:                            ; preds = %__hlist_del.exit.i.i.i, %if.then7.vrf_map_del_elem.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %me.0.i) #17
  br label %unlock

unlock:                                           ; preds = %vrf_map_del_elem.exit, %if.then4, %list_del.exit.unlock_crit_edge, %for.cond.i.unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vmap_lock.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vrf_fib_rule(ptr nocapture noundef readonly %dev, i8 noundef zeroext %family, i1 noundef zeroext %add_it) unnamed_addr #3 align 64 {
entry:
  %tmp.i70 = alloca i32, align 4
  %tmp.i68 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %family, label %entry.if.end_crit_edge [
    i8 10, label %entry.land.lhs.true_crit_edge
    i8 -127, label %entry.land.lhs.true_crit_edge75
  ]

entry.land.lhs.true_crit_edge75:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge75
  %call = tail call zeroext i1 @ipv6_mod_enabled() #17
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 52, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

skb_tailroom.exit.i:                              ; preds = %if.end8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup.sink.split_crit_edge, label %nlmsg_put.exit, !prof !145

skb_tailroom.exit.i.cleanup.sink.split_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 12, i32 noundef 0) #17
  %tobool10.not = icmp eq ptr %call3.i, null
  br i1 %tobool10.not, label %nlmsg_put.exit.cleanup.sink.split_crit_edge, label %if.end12

nlmsg_put.exit.cleanup.sink.split_crit_edge:      ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end12:                                         ; preds = %nlmsg_put.exit
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %call3.i, i32 0, i32 2
  %7 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_flags, align 2
  %9 = or i16 %8, 512
  store i16 %9, ptr %nlmsg_flags, align 2
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %10 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 12)
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %family, ptr %add.ptr.i, align 4
  %action = getelementptr i8, ptr %call3.i, i32 23
  %12 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %action, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i68) #17
  %14 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tmp.i68, align 1
  %call.i69 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i68) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i68) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool22.not = icmp eq i32 %call.i69, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup.sink.split_crit_edge

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70) #17
  %15 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %tmp.i70, align 4
  %call.i71 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i70) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool26.not = icmp eq i32 %call.i71, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup.sink.split_crit_edge

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end24
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %18 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %rtnl = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %rtnl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtnl, align 32
  %23 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %23, align 4
  br i1 %add_it, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  %call32 = call i32 @fib_nl_newrule(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call3.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call32)
  %cmp33 = icmp eq i32 %call32, -17
  %spec.store.select = select i1 %cmp33, i32 0, i32 %call32
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  %call37 = call i32 @fib_nl_delrule(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call3.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call37)
  %cmp38 = icmp eq i32 %call37, -2
  %spec.store.select46 = select i1 %cmp38, i32 0, i32 %call37
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then31, %if.end24.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %nlmsg_put.exit.cleanup.sink.split_crit_edge, %skb_tailroom.exit.i.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %spec.store.select, %if.then31 ], [ %spec.store.select46, %if.else ], [ -90, %if.end8.cleanup.sink.split_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup.sink.split_crit_edge ], [ -90, %if.end24.cleanup.sink.split_crit_edge ], [ -90, %if.end20.cleanup.sink.split_crit_edge ], [ -90, %if.end12.cleanup.sink.split_crit_edge ], [ -90, %nlmsg_put.exit.cleanup.sink.split_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nl_newrule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nl_delrule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !56, !57, !58, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !84, !86, !88, !90, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_vrf__627_2061_vrf_init_module6, !1, !"__initcall__kmod_vrf__627_2061_vrf_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/vrf.c", i32 2061, i32 1}
!2 = !{ptr @__UNIQUE_ID_author628, !3, !"__UNIQUE_ID_author628", i1 false, i1 false}
!3 = !{!"../drivers/net/vrf.c", i32 2062, i32 1}
!4 = !{ptr @__UNIQUE_ID_description629, !5, !"__UNIQUE_ID_description629", i1 false, i1 false}
!5 = !{!"../drivers/net/vrf.c", i32 2063, i32 1}
!6 = !{ptr @__UNIQUE_ID_file630, !7, !"__UNIQUE_ID_file630", i1 false, i1 false}
!7 = !{!"../drivers/net/vrf.c", i32 2064, i32 1}
!8 = !{ptr @__UNIQUE_ID_license631, !7, !"__UNIQUE_ID_license631", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias632, !10, !"__UNIQUE_ID_alias632", i1 false, i1 false}
!10 = !{!"../drivers/net/vrf.c", i32 2065, i32 1}
!11 = !{ptr @__UNIQUE_ID_version633, !12, !"__UNIQUE_ID_version633", i1 false, i1 false}
!12 = !{!"../drivers/net/vrf.c", i32 2066, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @vrf_notifier_block, !18, !"vrf_notifier_block", i1 false, i1 false}
!18 = !{!"../drivers/net/vrf.c", i32 1864, i32 30}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/vrf.c", i32 1110, i32 7}
!21 = !{ptr @vrf_net_ops, !22, !"vrf_net_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/vrf.c", i32 2021, i32 33}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vrf_map_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/vrf.c", i32 1870, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/vrf.c", i32 1976, i32 45}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/vrf.c", i32 1954, i32 15}
!41 = !{ptr @vrf_table, !42, !"vrf_table", i1 false, i1 false}
!42 = !{!"../drivers/net/vrf.c", i32 1952, i32 31}
!43 = !{ptr @vrf_net_id, !44, !"vrf_net_id", i1 false, i1 false}
!44 = !{!"../drivers/net/vrf.c", i32 101, i32 21}
!45 = !{ptr @vrf_link_ops, !46, !"vrf_link_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/vrf.c", i32 1827, i32 29}
!47 = !{ptr @vrf_netdev_ops, !48, !"vrf_netdev_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/vrf.c", i32 1216, i32 36}
!49 = !{ptr @vrf_dev_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/vrf.c", i32 1189, i32 16}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vrf_dev_init.qdisc_tx_busylock_key, !53, !"qdisc_tx_busylock_key", i1 false, i1 false}
!53 = !{!"../drivers/net/vrf.c", i32 1204, i32 2}
!54 = !{ptr @vrf_dev_init.qdisc_xmit_lock_key, !53, !"qdisc_xmit_lock_key", i1 false, i1 false}
!55 = !{ptr @vrf_dev_init.dev_addr_list_lock_key, !53, !"dev_addr_list_lock_key", i1 false, i1 false}
!56 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/net/neighbour.h", i32 305, i32 33}
!83 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/net/neighbour.h", i32 310, i32 11}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/net/neighbour.h", i32 312, i32 11}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/net/neighbour.h", i32 527, i32 6}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!92 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../drivers/net/vrf.c", i32 1053, i32 23}
!95 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../drivers/net/vrf.c", i32 806, i32 25}
!99 = !{ptr @vrf_add_slave.__msg, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../drivers/net/vrf.c", i32 1147, i32 3}
!101 = !{ptr @do_vrf_add_slave.__msg, !102, !"__msg", i1 false, i1 false}
!102 = !{!"../drivers/net/vrf.c", i32 1124, i32 3}
!103 = !{ptr @vrf_l3mdev_ops, !104, !"vrf_l3mdev_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/vrf.c", i32 1526, i32 32}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../drivers/net/vrf.c", i32 939, i32 8}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/net/dst.h", i32 231, i32 2}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../drivers/net/vrf.c", i32 709, i32 8}
!111 = !{ptr @vrf_ethtool_ops, !112, !"vrf_ethtool_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/vrf.c", i32 1542, i32 33}
!113 = !{ptr @vrf_nl_policy, !114, !"vrf_nl_policy", i1 false, i1 false}
!114 = !{!"../drivers/net/vrf.c", i32 1823, i32 32}
!115 = !{ptr @vrf_validate.__msg, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../drivers/net/vrf.c", i32 1710, i32 4}
!117 = !{ptr @vrf_validate.__msg.31, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../drivers/net/vrf.c", i32 1714, i32 4}
!119 = !{ptr @vrf_newlink.__msg, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../drivers/net/vrf.c", i32 1745, i32 3}
!121 = !{ptr @vrf_newlink.__msg.32, !122, !"__msg", i1 false, i1 false}
!122 = !{!"../drivers/net/vrf.c", i32 1751, i32 3}
!123 = !{ptr @vrf_map_register_dev.__msg, !124, !"__msg", i1 false, i1 false}
!124 = !{!"../drivers/net/vrf.c", i32 302, i32 3}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/vrf.c", i32 1657, i32 18}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{i64 2149483388}
!139 = !{i64 2149483654}
!140 = !{!"auto-init"}
!141 = !{i64 2158543035}
!142 = !{i64 2158526015}
!143 = !{i64 656627, i64 656688}
!144 = !{i64 659359}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{i64 659644}
!147 = !{i64 2154705761, i64 2154706249, i64 2154705798, i64 2154705854, i64 2154705888, i64 2154705912, i64 2154705953, i64 2154705974, i64 2154706002, i64 2154706036}
!148 = !{i64 2150108509}
!149 = !{i64 2155204293}
!150 = !{i64 2155204135}
!151 = !{i64 2155204463}
!152 = !{i64 2150107859}
!153 = !{ptr @vrf_finish_output, ptr @vrf_finish_output6}
!154 = !{i64 2150000191}
!155 = !{i64 2150005123}
!156 = !{i64 2150026835}
!157 = !{i64 2150031727}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{i64 2150108184}
!160 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!161 = !{i64 2150122612}
!162 = !{i64 2150122454}
!163 = !{i64 2150122782}
!164 = !{i64 2154720811, i64 2154721299, i64 2154720848, i64 2154720904, i64 2154720938, i64 2154720962, i64 2154721003, i64 2154721024, i64 2154721052, i64 2154721086}
!165 = !{i64 2148263565}
!166 = !{i64 748388, i64 748413, i64 748435, i64 748451, i64 748463, i64 748483, i64 748507, i64 748523, i64 748535}
!167 = !{i64 2148263753}
