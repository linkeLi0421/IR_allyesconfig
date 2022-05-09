; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_gre.c_pt.bc'
source_filename = "../net/ipv6/ip6_gre.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.137 }
%union.anon.137 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ip6gre_net = type { [4 x [32 x ptr]], ptr, ptr, ptr }
%struct.__ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32, i32, i32, i8, i8, i16 }
%struct.ip6_tnl = type { ptr, ptr, ptr, ptr, %struct.__ip6_tnl_parm, %struct.flowi, %struct.dst_cache, %struct.gro_cells, i32, i32, i32, i32, i32, i32, i32, %struct.ip_tunnel_encap, i32 }
%struct.flowi = type { %union.anon.82 }
%union.anon.82 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_cache = type { ptr, i32 }
%struct.gro_cells = type { ptr }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.162 }
%union.anon.162 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.159, i16, i8, i8, i32, i16, i16 }
%union.anon.159 = type { %struct.anon.161 }
%struct.anon.161 = type { %struct.in6_addr, %struct.in6_addr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.anon.60 = type { i16, i16 }
%struct.ipv6_tlv_tnl_enc_lim = type { i8, i8, i8 }
%struct.ip6_tnl_parm2 = type { [16 x i8], i32, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.163, i16 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.165 }
%union.anon.165 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.167, i16 }
%struct.anon.167 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.168 }
%union.anon.168 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.erspan_metadata = type { i32, %union.anon.169 }
%union.anon.169 = type { %struct.erspan_md2 }
%struct.erspan_md2 = type { i32, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.erspan_base_hdr = type { i32 }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }

@__param_str_log_ecn_error = internal constant [22 x i8] c"ip6_gre.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.137 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype599 = internal constant [36 x i8] c"ip6_gre.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error600 = internal constant [67 x i8] c"ip6_gre.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@ip6gre_tap_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 248, ptr null, ptr @ip6gre_tap_setup, i8 0, i32 24, ptr @ip6gre_policy, ptr @ip6gre_tap_validate, ptr @ip6gre_newlink, ptr @ip6gre_changelink, ptr null, ptr @ip6gre_get_size, ptr @ip6gre_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@ip6gre_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.14, i32 248, ptr null, ptr @ip6gre_tunnel_setup, i8 0, i32 24, ptr @ip6gre_policy, ptr @ip6gre_tunnel_validate, ptr @ip6gre_newlink, ptr @ip6gre_changelink, ptr @ip6gre_dellink, ptr @ip6gre_get_size, ptr @ip6gre_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@ip6erspan_tap_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.15, i32 248, ptr null, ptr @ip6erspan_tap_setup, i8 0, i32 24, ptr @ip6gre_policy, ptr @ip6erspan_tap_validate, ptr @ip6erspan_newlink, ptr @ip6erspan_changelink, ptr null, ptr @ip6gre_get_size, ptr @ip6gre_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@ip6gre_protocol = internal global %struct.inet6_protocol { ptr null, ptr null, ptr @gre_rcv, ptr @ip6gre_err, i32 2 }, section ".data..read_mostly", align 4
@ip6gre_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6gre_init_net, ptr null, ptr null, ptr @ip6gre_exit_batch_net, ptr @ip6gre_net_id, i32 524 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip6_gre__647_2394_ip6gre_init6 = internal global ptr @ip6gre_init, section ".initcall6.init", align 4
@__exitcall_ip6gre_fini = internal global ptr @ip6gre_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file648 = internal constant [30 x i8] c"ip6_gre.file=net/ipv6/ip6_gre\00", section ".modinfo", align 1
@__UNIQUE_ID_license649 = internal constant [20 x i8] c"ip6_gre.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author650 = internal constant [39 x i8] c"ip6_gre.author=D. Kozlov (xeb@mail.ru)\00", section ".modinfo", align 1
@__UNIQUE_ID_description651 = internal constant [51 x i8] c"ip6_gre.description=GRE over IPv6 tunneling device\00", section ".modinfo", align 1
@__UNIQUE_ID_alias652 = internal constant [31 x i8] c"ip6_gre.alias=rtnl-link-ip6gre\00", section ".modinfo", align 1
@__UNIQUE_ID_alias653 = internal constant [34 x i8] c"ip6_gre.alias=rtnl-link-ip6gretap\00", section ".modinfo", align 1
@__UNIQUE_ID_alias654 = internal constant [34 x i8] c"ip6_gre.alias=rtnl-link-ip6erspan\00", section ".modinfo", align 1
@__UNIQUE_ID_alias655 = internal constant [29 x i8] c"ip6_gre.alias=netdev-ip6gre0\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@ip6gre_policy = internal constant { [25 x %struct.nla_policy], [56 x i8] } { [25 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ip6gre_tap_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ip6gre_tap_init, ptr @ip6gre_tunnel_uninit, ptr null, ptr null, ptr @ip6gre_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ip6gre_tunnel_init_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@ip6gre_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip6gre_tunnel_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/ip6_gre.c\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@ip6gre_newlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ip6gre%d\00", [23 x i8] zeroinitializer }, align 32
@ip6gre_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ip6gre_tunnel_init, ptr @ip6gre_tunnel_uninit, ptr null, ptr null, ptr @ip6gre_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6gre_tunnel_siocdevprivate, ptr null, ptr @ip6_tnl_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip6gre_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @ip6gre_header, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ip6gre\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6erspan\00", [22 x i8] zeroinitializer }, align 32
@ip6erspan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ip6erspan_tap_init, ptr @ip6erspan_tunnel_uninit, ptr null, ptr null, ptr @ip6erspan_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip6erspan_tap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ip6erspan_newlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_tunnel_lookup.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_err.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6_gre\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6gre_err\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Path to destination invalid or inactive!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ip6_gre: %s: Path to destination invalid or inactive!\0A\00", [41 x i8] zeroinitializer }, align 32
@ip6gre_err.descriptor.29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.7, ptr @.str.30, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Too small hop limit or routing loop in tunnel!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ip6_gre: %s: Too small hop limit or routing loop in tunnel!\0A\00", [35 x i8] zeroinitializer }, align 32
@ip6gre_err.descriptor.32 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.7, ptr @.str.33, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Too small encapsulation limit or routing loop in tunnel!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ip6_gre: %s: Too small encapsulation limit or routing loop in tunnel!\0A\00", [57 x i8] zeroinitializer }, align 32
@ip6gre_err.descriptor.35 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.7, ptr @.str.36, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Recipient unable to parse tunneled packet!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ip6_gre: %s: Recipient unable to parse tunneled packet!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6gre0\00", [24 x i8] zeroinitializer }, align 32
@sysctl_fb_tunnels_only_for_init_net = external dso_local local_unnamed_addr global i32, align 4
@init_net = external dso_local global %struct.net, align 128
@ip6gre_destroy_tunnels.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_destroy_tunnels.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6gre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ip6_gre: GRE over IPv6 tunneling driver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip6gre_init\00", [20 x i8] zeroinitializer }, align 32
@ip6gre_init._entry_ptr = internal global ptr @ip6gre_init._entry, section ".printk_index", align 4
@ip6gre_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.7, i32 2355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ip6_gre: %s: can't add protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@ip6gre_init._entry_ptr.44 = internal global ptr @ip6gre_init._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 35312, i64 35313, i64 35314, i64 35315]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 8939, i64 35006]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 137]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 8939, i64 25944, i64 35006]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 8939, i64 35006]
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"log_ecn_error\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 57, i32 13 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"ip6gre_net_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1636, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2312, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"ip6gre_policy\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2193, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"ip6gre_tap_netdev_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1836, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1478, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 45, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 723, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 312, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1011, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 365, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"ip6gre_netdev_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1401, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"ip6gre_header_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1397, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 156, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2297, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2326, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"ip6erspan_netdev_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1905, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1872, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 443, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 450, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 466, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 470, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1593, i32 9 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2347, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [22 x i8] c"../net/ipv6/ip6_gre.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 2355, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias652, ptr @__UNIQUE_ID_alias653, ptr @__UNIQUE_ID_alias654, ptr @__UNIQUE_ID_alias655, ptr @__UNIQUE_ID_author650, ptr @__UNIQUE_ID_description651, ptr @__UNIQUE_ID_file648, ptr @__UNIQUE_ID_license649, ptr @__UNIQUE_ID_log_ecn_error600, ptr @__UNIQUE_ID_log_ecn_errortype599, ptr @__exitcall_ip6gre_fini, ptr @__initcall__kmod_ip6_gre__647_2394_ip6gre_init6, ptr @__param_log_ecn_error, ptr @ip6gre_fini, ptr @ip6gre_init._entry, ptr @ip6gre_init._entry.42, ptr @ip6gre_init._entry_ptr, ptr @ip6gre_init._entry_ptr.44, ptr @log_ecn_error, ptr @ip6gre_net_ops, ptr @.str, ptr @ip6gre_policy, ptr @ip6gre_tap_netdev_ops, ptr @ip6gre_tunnel_init_common.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ip6gre_netdev_ops, ptr @ip6gre_header_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ip6erspan_netdev_ops, ptr @ip6erspan_tap_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ecn_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_policy to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_tap_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_tunnel_init_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6erspan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6erspan_tap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6gre_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ip6gre_tap_ops) #15
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ip6gre_link_ops) #15
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ip6erspan_tap_ops) #15
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @ip6gre_protocol, i8 noundef zeroext 47) #15
  tail call void @unregister_pernet_device(ptr noundef nonnull @ip6gre_net_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #18
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @ip6gre_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @ip6gre_protocol, i8 noundef zeroext 47) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #18
  br label %add_proto_failed

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ip6gre_link_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.rtnl_link_failed_crit_edge, label %if.end14

if.end10.rtnl_link_failed_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rtnl_link_failed

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ip6gre_tap_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.tap_ops_failed_crit_edge, label %if.end18

if.end14.tap_ops_failed_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %tap_ops_failed

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ip6erspan_tap_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %erspan_link_failed, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

erspan_link_failed:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ip6gre_tap_ops) #15
  br label %tap_ops_failed

tap_ops_failed:                                   ; preds = %erspan_link_failed, %if.end14.tap_ops_failed_crit_edge
  %err.1 = phi i32 [ %call15, %if.end14.tap_ops_failed_crit_edge ], [ %call19, %erspan_link_failed ]
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ip6gre_link_ops) #15
  br label %rtnl_link_failed

rtnl_link_failed:                                 ; preds = %tap_ops_failed, %if.end10.rtnl_link_failed_crit_edge
  %err.2 = phi i32 [ %call11, %if.end10.rtnl_link_failed_crit_edge ], [ %err.1, %tap_ops_failed ]
  %call23 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @ip6gre_protocol, i8 noundef zeroext 47) #15
  br label %add_proto_failed

add_proto_failed:                                 ; preds = %rtnl_link_failed, %do.end7
  %err.3 = phi i32 [ %call2, %do.end7 ], [ %err.2, %rtnl_link_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ip6gre_net_ops) #15
  br label %cleanup

cleanup:                                          ; preds = %add_proto_failed, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %err.3, %add_proto_failed ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_tap_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #15
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip6gre_tap_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %2 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %3 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ip6gre_dev_free, ptr %priv_destructor, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags, align 16
  %and = and i64 %5, -165921
  %or = or i64 %and, 32768
  store i64 %or, ptr %priv_flags, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_tap_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %data, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %arrayidx12 = getelementptr ptr, ptr %data, i32 7
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end11.if.end.i_crit_edge, label %if.then14

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %11 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %10, i32 noundef 16) #15
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %daddr.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %daddr.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %13 = ptrtoint ptr %daddr.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %daddr.sroa.5.0.copyload = load i32, ptr %daddr.sroa.5.0.tmp.sroa_idx, align 4
  %daddr.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %14 = ptrtoint ptr %daddr.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %daddr.sroa.7.0.copyload = load i32, ptr %daddr.sroa.7.0.tmp.sroa_idx, align 4
  %daddr.sroa.9.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %15 = ptrtoint ptr %daddr.sroa.9.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %daddr.sroa.9.0.copyload = load i32, ptr %daddr.sroa.9.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %or.i = or i32 %daddr.sroa.5.0.copyload, %daddr.sroa.0.0.copyload
  %or5.i = or i32 %or.i, %daddr.sroa.7.0.copyload
  %or8.i = or i32 %or5.i, %daddr.sroa.9.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then14.cleanup_crit_edge, label %if.then14.if.end.i_crit_edge

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then14.if.end.i_crit_edge, %if.end11.if.end.i_crit_edge
  %arrayidx.i = getelementptr ptr, ptr %data, i32 2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %flags.0.i = phi i16 [ %19, %if.then2.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %arrayidx7.i27 = getelementptr ptr, ptr %data, i32 3
  %20 = ptrtoint ptr %arrayidx7.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7.i27, align 4
  %tobool8.not.i = icmp eq ptr %21, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end16.i_crit_edge, label %if.then9.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i29.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i29.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i29.i, align 2
  %or1428.i = or i16 %23, %flags.0.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end16.i_crit_edge
  %flags.1.i = phi i16 [ %or1428.i, %if.then9.i ], [ %flags.0.i, %if.end6.i.if.end16.i_crit_edge ]
  %24 = and i16 %flags.1.i, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool18.not.i = icmp eq i16 %24, 0
  %..i = select i1 %tobool18.not.i, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %if.then14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ %..i, %if.end16.i ], [ 0, %if.end8.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %parms = getelementptr i8, ptr %dev, i32 2320
  tail call fastcc void @ip6gre_netlink_parms(ptr noundef %data, ptr noundef %parms)
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %3 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call4, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @ip6gre_newlink.__warned, align 1
  br i1 %.b42, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_newlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2011, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %collect_md_tun = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %collect_md_tun to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %collect_md_tun, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end.if.end18_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type, align 16
  %conv = zext i16 %8 to i32
  %call14 = tail call fastcc ptr @ip6gre_tunnel_find(ptr noundef %1, ptr noundef %parms, i32 noundef %conv)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %do.end.if.end18_crit_edge
  %call19 = tail call fastcc i32 @ip6gre_newlink_common(ptr noundef %dev, ptr noundef %tb, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %10, null
  %lnot.ext = zext i1 %tobool22.not to i32
  tail call fastcc void @ip6gre_tnl_link_config_common(ptr noundef %add.ptr.i) #15
  %o_flags.i.i = getelementptr i8, ptr %dev, i32 2386
  %11 = ptrtoint ptr %o_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %o_flags.i.i, align 2
  %conv.i.i.i = zext i16 %12 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 4, i32 8
  %and2.i.i.i = and i32 %conv.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %add5.i.i.i = add nuw nsw i32 %spec.select.i.i.i, 4
  %addend.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %add5.i.i.i
  %and8.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  %add11.i.i.i = add nuw nsw i32 %addend.1.i.i.i, 4
  %addend.2.i.i.i = select i1 %tobool9.not.i.i.i, i32 %addend.1.i.i.i, i32 %add11.i.i.i
  %tun_hlen.i.i = getelementptr i8, ptr %dev, i32 2528
  %13 = ptrtoint ptr %tun_hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %addend.2.i.i.i, ptr %tun_hlen.i.i, align 8
  %encap_hlen.i.i = getelementptr i8, ptr %dev, i32 2532
  %14 = ptrtoint ptr %encap_hlen.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encap_hlen.i.i, align 4
  %add.i.i = add i32 %addend.2.i.i.i, %15
  %hlen.i.i = getelementptr i8, ptr %dev, i32 2524
  %16 = ptrtoint ptr %hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i.i, ptr %hlen.i.i, align 4
  %dev.i.i = getelementptr i8, ptr %dev, i32 2308
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 49
  %19 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  %21 = trunc i32 %add.i.i to i16
  %conv7.i.i = add i16 %21, 168
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv7.i.i, ptr %hard_header_len.i.i, align 2
  br label %ip6gre_tnl_link_config.exit

if.else.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 21
  %23 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv7.i.i, ptr %needed_headroom.i.i, align 8
  br label %ip6gre_tnl_link_config.exit

ip6gre_tnl_link_config.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %add3.i.i = add i32 %add.i.i, 40
  tail call fastcc void @ip6gre_tnl_link_config_route(ptr noundef %add.ptr.i, i32 noundef %lnot.ext, i32 noundef %add3.i.i) #15
  %24 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %ip6gre_tnl_link_config.exit.ip6gre_tunnel_link_md.exit_crit_edge, label %do.body.i

ip6gre_tnl_link_config.exit.ip6gre_tunnel_link_md.exit_crit_edge: ; preds = %ip6gre_tnl_link_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_tunnel_link_md.exit

do.body.i:                                        ; preds = %ip6gre_tnl_link_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !154
  %collect_md_tun22.i = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 1
  %26 = ptrtoint ptr %collect_md_tun22.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %add.ptr.i, ptr %collect_md_tun22.i, align 4
  br label %ip6gre_tunnel_link_md.exit

ip6gre_tunnel_link_md.exit:                       ; preds = %do.body.i, %ip6gre_tnl_link_config.exit.ip6gre_tunnel_link_md.exit_crit_edge
  %27 = load i32, ptr @ip6gre_net_id, align 4
  %call23 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %27)
  tail call fastcc void @ip6gre_tunnel_link(ptr noundef %call23, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %ip6gre_tunnel_link_md.exit, %if.end18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %do.end.cleanup_crit_edge ], [ -17, %if.else.cleanup_crit_edge ], [ 0, %ip6gre_tunnel_link_md.exit ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_changelink(ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %p = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %p) #15
  %3 = call ptr @memset(ptr %p, i32 255, i32 88)
  %call2 = call fastcc ptr @ip6gre_changelink_common(ptr noundef %dev, ptr noundef %data, ptr noundef nonnull %p)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %collect_md.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 5
  %5 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.ip6gre_tunnel_unlink_md.exit_crit_edge, label %do.body4.i

if.end.ip6gre_tunnel_unlink_md.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_tunnel_unlink_md.exit

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %collect_md_tun.i = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %collect_md_tun.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %collect_md_tun.i, align 4
  br label %ip6gre_tunnel_unlink_md.exit

ip6gre_tunnel_unlink_md.exit:                     ; preds = %do.body4.i, %if.end.ip6gre_tunnel_unlink_md.exit_crit_edge
  tail call fastcc void @ip6gre_tunnel_unlink(ptr noundef %call1, ptr noundef %call2)
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  %lnot.ext = zext i1 %tobool.not to i32
  call fastcc void @ip6gre_tnl_change(ptr noundef %call2, ptr noundef nonnull %p, i32 noundef %lnot.ext)
  %10 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i21 = icmp eq i8 %11, 0
  br i1 %tobool.not.i21, label %ip6gre_tunnel_unlink_md.exit.ip6gre_tunnel_link_md.exit_crit_edge, label %do.body.i

ip6gre_tunnel_unlink_md.exit.ip6gre_tunnel_link_md.exit_crit_edge: ; preds = %ip6gre_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_tunnel_link_md.exit

do.body.i:                                        ; preds = %ip6gre_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !154
  %collect_md_tun22.i = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %collect_md_tun22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call2, ptr %collect_md_tun22.i, align 4
  br label %ip6gre_tunnel_link_md.exit

ip6gre_tunnel_link_md.exit:                       ; preds = %do.body.i, %ip6gre_tunnel_unlink_md.exit.ip6gre_tunnel_link_md.exit_crit_edge
  tail call fastcc void @ip6gre_tunnel_link(ptr noundef %call1, ptr noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %ip6gre_tunnel_link_md.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %ip6gre_tunnel_link_md.exit ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %p) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6gre_get_size(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 164
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_fill_info(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %tmp.i187 = alloca i16, align 2
  %tmp.i185 = alloca i16, align 2
  %tmp.i183 = alloca i16, align 2
  %tmp.i181 = alloca i16, align 2
  %tmp.i179 = alloca i32, align 4
  %tmp.i177 = alloca i32, align 4
  %tmp.i175 = alloca i32, align 4
  %tmp.i173 = alloca i8, align 1
  %tmp.i171 = alloca i8, align 1
  %tmp.i167 = alloca i32, align 4
  %tmp.i165 = alloca i32, align 4
  %tmp.i163 = alloca i16, align 2
  %tmp.i153 = alloca i16, align 2
  %tmp.i151 = alloca i32, align 4
  %tmp.i149 = alloca i16, align 2
  %tmp.i147 = alloca i8, align 1
  %tmp.i145 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %o_flags1 = getelementptr i8, ptr %dev, i32 2386
  %0 = ptrtoint ptr %o_flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %o_flags1, align 2
  %erspan_ver = getelementptr i8, ptr %dev, i32 2404
  %2 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %erspan_ver, align 4
  %.off = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then:                                          ; preds = %entry
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %4 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = or i16 %1, 4
  %spec.select = select i1 %tobool.not, i16 %6, i16 %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.then.nla_put_failure_crit_edge

if.then.nla_put_failure_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end14:                                         ; preds = %if.then
  %8 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %erspan_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp17 = icmp eq i8 %9, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  %index = getelementptr i8, ptr %dev, i32 2400
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i145) #15
  %12 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i145, align 4
  %call.i146 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i145) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i145) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool21.not = icmp eq i32 %call.i146, 0
  br i1 %tobool21.not, label %if.then19.if.end33_crit_edge, label %if.then19.nla_put_failure_crit_edge

if.then19.nla_put_failure_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.else:                                          ; preds = %if.end14
  %dir = getelementptr i8, ptr %dev, i32 2405
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dir, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i147) #15
  %15 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmp.i147, align 1
  %call.i148 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 1, ptr noundef nonnull %tmp.i147) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i147) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool25.not = icmp eq i32 %call.i148, 0
  br i1 %tobool25.not, label %if.end27, label %if.else.nla_put_failure_crit_edge

if.else.nla_put_failure_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end27:                                         ; preds = %if.else
  %hwid = getelementptr i8, ptr %dev, i32 2406
  %16 = ptrtoint ptr %hwid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hwid, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i149) #15
  %18 = ptrtoint ptr %tmp.i149 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %tmp.i149, align 2
  %call.i150 = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 2, ptr noundef nonnull %tmp.i149) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i149) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool29.not = icmp eq i32 %call.i150, 0
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.end27.nla_put_failure_crit_edge

if.end27.nla_put_failure_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %if.end27.if.end33_crit_edge, %if.then19.if.end33_crit_edge, %entry.if.end33_crit_edge
  %o_flags.1 = phi i16 [ %spec.select, %if.then19.if.end33_crit_edge ], [ %spec.select, %if.end27.if.end33_crit_edge ], [ %1, %entry.if.end33_crit_edge ]
  %link = getelementptr i8, ptr %dev, i32 2336
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i151) #15
  %21 = ptrtoint ptr %tmp.i151 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i151, align 4
  %call.i152 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i151) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i151) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool35.not = icmp eq i32 %call.i152, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end33.nla_put_failure_crit_edge

if.end33.nla_put_failure_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false36:                                  ; preds = %if.end33
  %i_flags = getelementptr i8, ptr %dev, i32 2384
  %22 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_flags, align 4
  %conv.i = zext i16 %23 to i32
  %rev65.i = call i16 @llvm.bitreverse.i16(i16 %23) #15
  %24 = and i16 %rev65.i, -2048
  %and36.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %25 = or i16 %24, 1792
  %flags.5.i = select i1 %tobool37.not.i, i16 %24, i16 %25
  %and44.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %26 = or i16 %flags.5.i, 7
  %flags.6.i = select i1 %tobool45.not.i, i16 %flags.5.i, i16 %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i153) #15
  %27 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %flags.6.i, ptr %tmp.i153, align 2
  %call.i154 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i153) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i153) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool39.not = icmp eq i32 %call.i154, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false36.nla_put_failure_crit_edge

lor.lhs.false36.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %conv.i155 = zext i16 %o_flags.1 to i32
  %rev65.i156 = call i16 @llvm.bitreverse.i16(i16 %o_flags.1) #15
  %28 = and i16 %rev65.i156, -2048
  %and36.i157 = and i32 %conv.i155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i157)
  %tobool37.not.i158 = icmp eq i32 %and36.i157, 0
  %29 = or i16 %28, 1792
  %flags.5.i159 = select i1 %tobool37.not.i158, i16 %28, i16 %29
  %and44.i160 = and i32 %conv.i155, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i160)
  %tobool45.not.i161 = icmp eq i32 %and44.i160, 0
  %30 = or i16 %flags.5.i159, 7
  %flags.6.i162 = select i1 %tobool45.not.i161, i16 %flags.5.i159, i16 %30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i163) #15
  %31 = ptrtoint ptr %tmp.i163 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %flags.6.i162, ptr %tmp.i163, align 2
  %call.i164 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i163) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i163) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool43.not = icmp eq i32 %call.i164, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %lor.lhs.false40.nla_put_failure_crit_edge

lor.lhs.false40.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %i_key = getelementptr i8, ptr %dev, i32 2388
  %32 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i165) #15
  %34 = ptrtoint ptr %tmp.i165 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i165, align 4
  %call.i166 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i165) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i165) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool46.not = icmp eq i32 %call.i166, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %lor.lhs.false44.nla_put_failure_crit_edge

lor.lhs.false44.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %35 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %o_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i167) #15
  %37 = ptrtoint ptr %tmp.i167 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i167, align 4
  %call.i168 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i167) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i167) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool49.not = icmp eq i32 %call.i168, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %lor.lhs.false47.nla_put_failure_crit_edge

lor.lhs.false47.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %laddr = getelementptr i8, ptr %dev, i32 2352
  %call.i169 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 16, ptr noundef %laddr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool52.not = icmp eq i32 %call.i169, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false50.nla_put_failure_crit_edge

lor.lhs.false50.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %call.i170 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 16, ptr noundef %raddr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool55.not = icmp eq i32 %call.i170, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false53.nla_put_failure_crit_edge

lor.lhs.false53.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %hop_limit = getelementptr i8, ptr %dev, i32 2342
  %38 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hop_limit, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i171) #15
  %40 = ptrtoint ptr %tmp.i171 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tmp.i171, align 1
  %call.i172 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i171) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i171) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool58.not = icmp eq i32 %call.i172, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false56.nla_put_failure_crit_edge

lor.lhs.false56.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %encap_limit = getelementptr i8, ptr %dev, i32 2341
  %41 = ptrtoint ptr %encap_limit to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %encap_limit, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i173) #15
  %43 = ptrtoint ptr %tmp.i173 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tmp.i173, align 1
  %call.i174 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i173) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i173) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool61.not = icmp eq i32 %call.i174, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false59.nla_put_failure_crit_edge

lor.lhs.false59.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %flowinfo = getelementptr i8, ptr %dev, i32 2344
  %44 = ptrtoint ptr %flowinfo to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flowinfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i175) #15
  %46 = ptrtoint ptr %tmp.i175 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i175, align 4
  %call.i176 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i175) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i175) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool64.not = icmp eq i32 %call.i176, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false62.nla_put_failure_crit_edge

lor.lhs.false62.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %flags = getelementptr i8, ptr %dev, i32 2348
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i177) #15
  %49 = ptrtoint ptr %tmp.i177 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i177, align 4
  %call.i178 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i177) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i177) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool67.not = icmp eq i32 %call.i178, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %lor.lhs.false65.nla_put_failure_crit_edge

lor.lhs.false65.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %fwmark = getelementptr i8, ptr %dev, i32 2396
  %50 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i179) #15
  %52 = ptrtoint ptr %tmp.i179 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tmp.i179, align 4
  %call.i180 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i179) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i179) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool70.not = icmp eq i32 %call.i180, 0
  br i1 %tobool70.not, label %if.end72, label %lor.lhs.false68.nla_put_failure_crit_edge

lor.lhs.false68.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end72:                                         ; preds = %lor.lhs.false68
  %encap = getelementptr i8, ptr %dev, i32 2536
  %53 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %encap, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i181) #15
  %55 = ptrtoint ptr %tmp.i181 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %tmp.i181, align 2
  %call.i182 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i181) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i181) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool74.not = icmp eq i32 %call.i182, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %if.end72.nla_put_failure_crit_edge

if.end72.nla_put_failure_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false75:                                  ; preds = %if.end72
  %sport = getelementptr i8, ptr %dev, i32 2540
  %56 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %sport, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i183) #15
  %58 = ptrtoint ptr %tmp.i183 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %tmp.i183, align 2
  %call.i184 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %tmp.i183) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i183) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool78.not = icmp eq i32 %call.i184, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %lor.lhs.false75.nla_put_failure_crit_edge

lor.lhs.false75.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %dport = getelementptr i8, ptr %dev, i32 2542
  %59 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dport, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i185) #15
  %61 = ptrtoint ptr %tmp.i185 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %tmp.i185, align 2
  %call.i186 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i185) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i185) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool82.not = icmp eq i32 %call.i186, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %lor.lhs.false79.nla_put_failure_crit_edge

lor.lhs.false79.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %flags85 = getelementptr i8, ptr %dev, i32 2538
  %62 = ptrtoint ptr %flags85 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags85, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i187) #15
  %64 = ptrtoint ptr %tmp.i187 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %tmp.i187, align 2
  %call.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i187) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i187) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool87.not = icmp eq i32 %call.i188, 0
  br i1 %tobool87.not, label %if.end89, label %lor.lhs.false83.nla_put_failure_crit_edge

lor.lhs.false83.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end89:                                         ; preds = %lor.lhs.false83
  %collect_md90 = getelementptr i8, ptr %dev, i32 2343
  %65 = ptrtoint ptr %collect_md90 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %collect_md90, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool91.not = icmp eq i8 %66, 0
  br i1 %tobool91.not, label %if.end89.cleanup_crit_edge, label %if.then92

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then92:                                        ; preds = %if.end89
  %call.i189 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool94.not = icmp eq i32 %call.i189, 0
  br i1 %tobool94.not, label %if.then92.cleanup_crit_edge, label %if.then92.nla_put_failure_crit_edge

if.then92.nla_put_failure_crit_edge:              ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then92.nla_put_failure_crit_edge, %lor.lhs.false83.nla_put_failure_crit_edge, %lor.lhs.false79.nla_put_failure_crit_edge, %lor.lhs.false75.nla_put_failure_crit_edge, %if.end72.nla_put_failure_crit_edge, %lor.lhs.false68.nla_put_failure_crit_edge, %lor.lhs.false65.nla_put_failure_crit_edge, %lor.lhs.false62.nla_put_failure_crit_edge, %lor.lhs.false59.nla_put_failure_crit_edge, %lor.lhs.false56.nla_put_failure_crit_edge, %lor.lhs.false53.nla_put_failure_crit_edge, %lor.lhs.false50.nla_put_failure_crit_edge, %lor.lhs.false47.nla_put_failure_crit_edge, %lor.lhs.false44.nla_put_failure_crit_edge, %lor.lhs.false40.nla_put_failure_crit_edge, %lor.lhs.false36.nla_put_failure_crit_edge, %if.end33.nla_put_failure_crit_edge, %if.end27.nla_put_failure_crit_edge, %if.else.nla_put_failure_crit_edge, %if.then19.nla_put_failure_crit_edge, %if.then.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.then92.cleanup_crit_edge, %if.end89.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.then92.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_tnl_get_link_net(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_dev_free(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %gro_cells = getelementptr i8, ptr %dev, i32 2504
  tail call void @gro_cells_destroy(ptr noundef %gro_cells) #15
  %dst_cache = getelementptr i8, ptr %dev, i32 2496
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #15
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_tap_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip6gre_tunnel_init_common(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %or = or i64 %1, 32768
  store i64 %or, ptr %priv_flags, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_tunnel_uninit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %net = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %collect_md.i = getelementptr i8, ptr %dev, i32 2343
  %3 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.ip6gre_tunnel_unlink_md.exit_crit_edge, label %do.body4.i

entry.ip6gre_tunnel_unlink_md.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_tunnel_unlink_md.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %collect_md_tun.i = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %collect_md_tun.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %collect_md_tun.i, align 4
  br label %ip6gre_tunnel_unlink_md.exit

ip6gre_tunnel_unlink_md.exit:                     ; preds = %do.body4.i, %entry.ip6gre_tunnel_unlink_md.exit_crit_edge
  tail call fastcc void @ip6gre_tunnel_unlink(ptr noundef %call1, ptr noundef %add.ptr.i)
  %fb_tunnel_dev = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp = icmp eq ptr %7, %dev
  br i1 %cmp, label %do.body3, label %ip6gre_tunnel_unlink_md.exit.if.end_crit_edge

ip6gre_tunnel_unlink_md.exit.if.end_crit_edge:    ; preds = %ip6gre_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body3:                                         ; preds = %ip6gre_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %fb_tunnel_dev, align 4
  br label %if.end

if.end:                                           ; preds = %do.body3, %ip6gre_tunnel_unlink_md.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr i8, ptr %dev, i32 2500
  %10 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %reset_ts.i, align 4
  %tobool.not.i18 = icmp eq ptr %dev, null
  br i1 %tobool.not.i18, label %if.end.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end.dev_put_track.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end
  %dev_tracker = getelementptr i8, ptr %dev, i32 2312
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #15
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !155
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %12 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add13.i.i = add i32 %23, -1
  store i32 %add13.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !156
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !157

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #15, !srcloc !158
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_tunnel_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %fl6.i56 = alloca %struct.flowi6, align 8
  %mtu.i57 = alloca i32, align 4
  %encap_limit.i = alloca i32, align 4
  %fl6.i43 = alloca %struct.flowi6, align 8
  %dsfield.i = alloca i8, align 1
  %mtu.i44 = alloca i32, align 4
  %fl6.i = alloca %struct.flowi6, align 8
  %mtu.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %switch.selectcmp.i = icmp eq i16 %3, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %3)
  %switch.selectcmp3.i = icmp eq i16 %3, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !157

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %11, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_err_crit_edge, label %pskb_inet_may_pull.exit, !prof !157

if.end.i.i.i.tx_err_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #15
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_err_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

pskb_inet_may_pull.exit.tx_err_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %laddr = getelementptr i8, ptr %dev, i32 2352
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %call5 = tail call i32 @ip6_tnl_xmit_ctl(ptr noundef %add.ptr.i, ptr noundef %laddr, ptr noundef %raddr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.tx_err_crit_edge, label %if.end7

if.end.tx_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.end7:                                          ; preds = %if.end
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i, align 8
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #15
  %17 = call ptr @memset(ptr %fl6.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu.i) #15
  %18 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %mtu.i, align 4, !annotation !159
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %19 = call ptr @memset(ptr %opt.i, i32 0, i32 16)
  %collect_md.i = getelementptr i8, ptr %dev, i32 2343
  %20 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  %22 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i.i, align 8
  %24 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i40 = zext i16 %25 to i32
  %add.ptr.i.i.i.i41 = getelementptr i8, ptr %23, i32 %conv.i.i.i.i40
  %flags.i.i = getelementptr i8, ptr %dev, i32 2348
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %encap_limit3.i.i = getelementptr i8, ptr %dev, i32 2341
  %28 = ptrtoint ptr %encap_limit3.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %encap_limit3.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %encap_limit.0.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ -1, %if.then.i.if.end.i.i_crit_edge ]
  %fl.i.i = getelementptr i8, ptr %dev, i32 2408
  %30 = call ptr @memcpy(ptr %fl6.i, ptr %fl.i.i, i32 88)
  %and6.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i41, i32 0, i32 1
  %31 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tos.i.i.i, align 1
  br label %prepare_ip6gre_xmit_ipv4.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %flowinfo.i.i = getelementptr i8, ptr %dev, i32 2344
  %33 = ptrtoint ptr %flowinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flowinfo.i.i, align 8
  %and.i.i.i = lshr i32 %34, 20
  %conv.i.i.i = trunc i32 %and.i.i.i to i8
  br label %prepare_ip6gre_xmit_ipv4.exit.i

prepare_ip6gre_xmit_ipv4.exit.i:                  ; preds = %if.else.i.i, %if.then8.i.i
  %storemerge.i.i = phi i8 [ %conv.i.i.i, %if.else.i.i ], [ %32, %if.then8.i.i ]
  %and15.i.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %fwmark.i.i = getelementptr i8, ptr %dev, i32 2396
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %.sink.in.i.i = select i1 %tobool16.not.i.i, ptr %fwmark.i.i, ptr %35
  %36 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %37 = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink.i.i, ptr %37, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %39 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nd_net.i.i.i, align 4
  %user_ns.i.i.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %user_ns.i.i.i, align 4
  %call.i.i.i = tail call i32 @make_kuid(ptr noundef %42, i32 noundef 0) #15
  %43 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i.i.i, ptr %flowic_uid.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %prepare_ip6gre_xmit_ipv4.exit.i, %sw.bb.if.end.i_crit_edge
  %encap_limit.1.i = phi i32 [ %encap_limit.0.i, %prepare_ip6gre_xmit_ipv4.exit.i ], [ -1, %sw.bb.if.end.i_crit_edge ]
  %dsfield.0.i = phi i8 [ %storemerge.i.i, %prepare_ip6gre_xmit_ipv4.exit.i ], [ 0, %sw.bb.if.end.i_crit_edge ]
  %o_flags.i = getelementptr i8, ptr %dev, i32 2386
  %44 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %o_flags.i, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool2.not.i = icmp eq i16 %46, 0
  %cond.i.i = select i1 %tobool2.not.i, i32 64, i32 128
  %call.i.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.ip6gre_xmit_ipv4.exit_crit_edge

if.end.i.ip6gre_xmit_ipv4.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv4.exit

if.end7.i:                                        ; preds = %if.end.i
  %47 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %protocol.i, align 8
  %call8.i = call fastcc i32 @__gre6_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext %dsfield.0.i, ptr noundef nonnull %fl6.i, i32 noundef %encap_limit.1.i, ptr noundef nonnull %mtu.i, i16 noundef zeroext %48) #15
  %49 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call8.i, label %if.end7.i.ip6gre_xmit_ipv4.exit_crit_edge [
    i32 0, label %if.end15.i
    i32 -90, label %if.then13.i
  ]

if.end7.i.ip6gre_xmit_ipv4.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv4.exit

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mtu.i, align 4
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %51) #15
  br label %ip6gre_xmit_ipv4.exit

if.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv4.exit

ip6gre_xmit_ipv4.exit:                            ; preds = %if.end15.i, %if.then13.i, %if.end7.i.ip6gre_xmit_ipv4.exit_crit_edge, %if.end.i.ip6gre_xmit_ipv4.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end15.i ], [ -1, %if.end.i.ip6gre_xmit_ipv4.exit_crit_edge ], [ -1, %if.end7.i.ip6gre_xmit_ipv4.exit_crit_edge ], [ -1, %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu.i) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  %52 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i.i, align 8
  %54 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i45 = zext i16 %55 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i.i45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %encap_limit.i) #15
  %56 = ptrtoint ptr %encap_limit.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %encap_limit.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i43) #15
  %57 = call ptr @memset(ptr %fl6.i43, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dsfield.i) #15
  %58 = ptrtoint ptr %dsfield.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %dsfield.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu.i44) #15
  %59 = ptrtoint ptr %mtu.i44 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %mtu.i44, align 4, !annotation !159
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %raddr, align 4
  %62 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %saddr.i, align 4
  %xor.i.i = xor i32 %63, %61
  %arrayidx4.i.i = getelementptr i8, ptr %dev, i32 2372
  %64 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %67, %65
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr i8, ptr %dev, i32 2376
  %68 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %71, %69
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %dev, i32 2380
  %72 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %75, %73
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %sw.bb9.ip6gre_xmit_ipv6.exit_crit_edge, label %if.end.i48

sw.bb9.ip6gre_xmit_ipv6.exit_crit_edge:           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv6.exit

if.end.i48:                                       ; preds = %sw.bb9
  %collect_md.i46 = getelementptr i8, ptr %dev, i32 2343
  %76 = ptrtoint ptr %collect_md.i46 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %collect_md.i46, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i47 = icmp eq i8 %77, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i, label %if.end.i48.if.end7.i53_crit_edge

if.end.i48.if.end7.i53_crit_edge:                 ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i53

land.lhs.true.i:                                  ; preds = %if.end.i48
  %call4.i = call fastcc i32 @prepare_ip6gre_xmit_ipv6(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %fl6.i43, ptr noundef nonnull %dsfield.i, ptr noundef nonnull %encap_limit.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i49 = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i49, label %land.lhs.true.i.if.end7.i53_crit_edge, label %land.lhs.true.i.ip6gre_xmit_ipv6.exit_crit_edge

land.lhs.true.i.ip6gre_xmit_ipv6.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv6.exit

land.lhs.true.i.if.end7.i53_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i53

if.end7.i53:                                      ; preds = %land.lhs.true.i.if.end7.i53_crit_edge, %if.end.i48.if.end7.i53_crit_edge
  %o_flags.i50 = getelementptr i8, ptr %dev, i32 2386
  %78 = ptrtoint ptr %o_flags.i50 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %o_flags.i50, align 2
  %80 = and i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool9.not.i = icmp eq i16 %80, 0
  %cond.i.i51 = select i1 %tobool9.not.i, i32 64, i32 128
  %call.i.i52 = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i.i51) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool12.not.i = icmp eq i32 %call.i.i52, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i53.ip6gre_xmit_ipv6.exit_crit_edge

if.end7.i53.ip6gre_xmit_ipv6.exit_crit_edge:      ; preds = %if.end7.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv6.exit

if.end14.i:                                       ; preds = %if.end7.i53
  %81 = ptrtoint ptr %dsfield.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dsfield.i, align 1
  %83 = ptrtoint ptr %encap_limit.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %encap_limit.i, align 4
  %85 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %protocol.i, align 8
  %call15.i = call fastcc i32 @__gre6_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext %82, ptr noundef nonnull %fl6.i43, i32 noundef %84, ptr noundef nonnull %mtu.i44, i16 noundef zeroext %86) #15
  %87 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call15.i, label %if.end14.i.ip6gre_xmit_ipv6.exit_crit_edge [
    i32 0, label %if.end22.i
    i32 -90, label %if.then20.i
  ]

if.end14.i.ip6gre_xmit_ipv6.exit_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv6.exit

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %mtu.i44 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mtu.i44, align 4
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %89) #15
  br label %ip6gre_xmit_ipv6.exit

if.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_ipv6.exit

ip6gre_xmit_ipv6.exit:                            ; preds = %if.end22.i, %if.then20.i, %if.end14.i.ip6gre_xmit_ipv6.exit_crit_edge, %if.end7.i53.ip6gre_xmit_ipv6.exit_crit_edge, %land.lhs.true.i.ip6gre_xmit_ipv6.exit_crit_edge, %sw.bb9.ip6gre_xmit_ipv6.exit_crit_edge
  %retval.0.i55 = phi i32 [ 0, %if.end22.i ], [ -1, %sw.bb9.ip6gre_xmit_ipv6.exit_crit_edge ], [ -1, %land.lhs.true.i.ip6gre_xmit_ipv6.exit_crit_edge ], [ -1, %if.end7.i53.ip6gre_xmit_ipv6.exit_crit_edge ], [ -1, %if.end14.i.ip6gre_xmit_ipv6.exit_crit_edge ], [ -1, %if.then20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu.i44) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dsfield.i) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i43) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %encap_limit.i) #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i56) #15
  %90 = call ptr @memset(ptr %fl6.i56, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu.i57) #15
  %91 = ptrtoint ptr %mtu.i57 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %mtu.i57, align 4, !annotation !159
  %flags.i = getelementptr i8, ptr %dev, i32 2348
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i58 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i58, label %if.then.i59, label %sw.default.if.end.i62_crit_edge

sw.default.if.end.i62_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i62

if.then.i59:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %encap_limit2.i = getelementptr i8, ptr %dev, i32 2341
  %94 = ptrtoint ptr %encap_limit2.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %encap_limit2.i, align 1
  %conv.i = zext i8 %95 to i32
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i59, %sw.default.if.end.i62_crit_edge
  %encap_limit.0.i60 = phi i32 [ -1, %sw.default.if.end.i62_crit_edge ], [ %conv.i, %if.then.i59 ]
  %collect_md.i61 = getelementptr i8, ptr %dev, i32 2343
  %96 = ptrtoint ptr %collect_md.i61 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %collect_md.i61, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool4.not.i = icmp eq i8 %97, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i62.if.end6.i_crit_edge

if.end.i62.if.end6.i_crit_edge:                   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #17
  %fl.i = getelementptr i8, ptr %dev, i32 2408
  %98 = call ptr @memcpy(ptr %fl6.i56, ptr %fl.i, i32 88)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i62.if.end6.i_crit_edge
  %o_flags.i63 = getelementptr i8, ptr %dev, i32 2386
  %99 = ptrtoint ptr %o_flags.i63 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %o_flags.i63, align 2
  %101 = and i16 %100, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool10.not.i = icmp eq i16 %101, 0
  %cond.i.i64 = select i1 %tobool10.not.i, i32 64, i32 128
  %call.i.i65 = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i.i64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool13.not.i = icmp eq i32 %call.i.i65, 0
  br i1 %tobool13.not.i, label %if.end15.i67, label %if.end6.i.ip6gre_xmit_other.exit_crit_edge

if.end6.i.ip6gre_xmit_other.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_xmit_other.exit

if.end15.i67:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %protocol.i, align 8
  %call16.i = call fastcc i32 @__gre6_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 0, ptr noundef nonnull %fl6.i56, i32 noundef %encap_limit.0.i60, ptr noundef nonnull %mtu.i57, i16 noundef zeroext %103) #15
  br label %ip6gre_xmit_other.exit

ip6gre_xmit_other.exit:                           ; preds = %if.end15.i67, %if.end6.i.ip6gre_xmit_other.exit_crit_edge
  %retval.0.i68 = phi i32 [ %call16.i, %if.end15.i67 ], [ %call.i.i65, %if.end6.i.ip6gre_xmit_other.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu.i57) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i56) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %ip6gre_xmit_other.exit, %ip6gre_xmit_ipv6.exit, %ip6gre_xmit_ipv4.exit
  %ret.0 = phi i32 [ %retval.0.i68, %ip6gre_xmit_other.exit ], [ %retval.0.i55, %ip6gre_xmit_ipv6.exit ], [ %retval.0.i, %ip6gre_xmit_ipv4.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog.tx_err_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.tx_err_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

tx_err:                                           ; preds = %sw.epilog.tx_err_crit_edge, %if.end.tx_err_crit_edge, %pskb_inet_may_pull.exit.tx_err_crit_edge, %if.end.i.i.i.tx_err_crit_edge
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %104 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool16.not = icmp eq i8 %105, 0
  br i1 %tobool16.not, label %tx_err.if.then19_crit_edge, label %lor.lhs.false

tx_err.if.then19_crit_edge:                       ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

lor.lhs.false:                                    ; preds = %tx_err
  %call17 = call fastcc ptr @skb_tunnel_info_txcheck(ptr noundef %skb)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %tx_err.if.then19_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %106 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %107, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false.if.end20_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %108 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_dropped, align 4
  %inc21 = add i32 %109, 1
  store i32 %inc21, ptr %tx_dropped, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.epilog.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_get_iflink(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6gre_tunnel_init_common(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %net = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %net, align 4
  %parms = getelementptr i8, ptr %dev, i32 2320
  %call5 = tail call ptr @strcpy(ptr noundef %parms, ptr noundef %dev) #19
  %call6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call780 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call780, i32 %4)
  %cmp81 = icmp ult i32 %call780, %4
  br i1 %cmp81, label %for.body.lr.ph, label %for.cond.preheader.if.end15_crit_edge

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %call6 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call782 = phi i32 [ %call780, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call782
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %5
  %10 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ip6gre_tunnel_init_common.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %11 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %syncp, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %call782, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %for.cond.preheader.if.end15_crit_edge
  %13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6, ptr %13, align 64
  %dst_cache = getelementptr i8, ptr %dev, i32 2496
  %call16 = tail call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_alloc_pcpu_stats_crit_edge

if.end15.cleanup_alloc_pcpu_stats_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup_alloc_pcpu_stats

if.end19:                                         ; preds = %if.end15
  %gro_cells = getelementptr i8, ptr %dev, i32 2504
  %call20 = tail call i32 @gro_cells_init(ptr noundef %gro_cells, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup_dst_cache_init

if.end23:                                         ; preds = %if.end19
  %o_flags.i = getelementptr i8, ptr %dev, i32 2386
  %15 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %o_flags.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %and2.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %add5.i.i = add nuw nsw i32 %spec.select.i.i, 4
  %addend.1.i.i = select i1 %tobool3.not.i.i, i32 %spec.select.i.i, i32 %add5.i.i
  %and8.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %add11.i.i = add nuw nsw i32 %addend.1.i.i, 4
  %addend.2.i.i = select i1 %tobool9.not.i.i, i32 %addend.1.i.i, i32 %add11.i.i
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2528
  %17 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addend.2.i.i, ptr %tun_hlen.i, align 8
  %encap_hlen.i = getelementptr i8, ptr %dev, i32 2532
  %18 = ptrtoint ptr %encap_hlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %encap_hlen.i, align 4
  %add.i = add i32 %addend.2.i.i, %19
  %hlen.i = getelementptr i8, ptr %dev, i32 2524
  %20 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %hlen.i, align 4
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 49
  %23 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  %25 = trunc i32 %add.i to i16
  %conv7.i = add i16 %25, 168
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv7.i, ptr %hard_header_len.i, align 2
  br label %ip6gre_calc_hlen.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 21
  %27 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv7.i, ptr %needed_headroom.i, align 8
  br label %ip6gre_calc_hlen.exit

ip6gre_calc_hlen.exit:                            ; preds = %if.else.i, %if.then.i
  %sub = sub i32 1460, %add.i
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %28 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp25 = icmp eq i16 %30, 1
  br i1 %cmp25, label %if.then27, label %ip6gre_calc_hlen.exit.if.end30_crit_edge

ip6gre_calc_hlen.exit.if.end30_crit_edge:         ; preds = %ip6gre_calc_hlen.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then27:                                        ; preds = %ip6gre_calc_hlen.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub29 = sub i32 1446, %add.i
  %31 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub29, ptr %mtu, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %ip6gre_calc_hlen.exit.if.end30_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 2348
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mtu, align 4
  %sub35 = add i32 %35, -8
  store i32 %sub35, ptr %mtu, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %36 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool38.not = icmp eq i8 %37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %38 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %39, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %40 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features.i, align 16
  %or.i = or i64 %41, 105
  store i64 %or.i, ptr %features.i, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %42 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hw_features.i, align 8
  %or1.i = or i64 %43, 105
  store i64 %or1.i, ptr %hw_features.i, align 8
  %44 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %o_flags.i, align 2
  %conv.i = zext i16 %45 to i32
  %and.i75 = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76, label %if.then.i77, label %if.end40.ip6gre_tnl_init_features.exit_crit_edge

if.end40.ip6gre_tnl_init_features.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_tnl_init_features.exit

if.then.i77:                                      ; preds = %if.end40
  %and5.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then.i77.if.then9.i_crit_edge, label %lor.lhs.false.i

if.then.i77.if.then9.i_crit_edge:                 ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.then.i77
  %encap.i = getelementptr i8, ptr %dev, i32 2536
  %46 = ptrtoint ptr %encap.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %encap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i = icmp eq i16 %47, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %if.then.i77.if.then9.i_crit_edge
  %or11.i = or i64 %41, 26845446249
  %48 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %or11.i, ptr %features.i, align 16
  %or13.i = or i64 %43, 26845446249
  %49 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or13.i, ptr %hw_features.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %lor.lhs.false.i.if.end.i_crit_edge
  %50 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %features.i, align 16
  %or15.i = or i64 %51, 4096
  store i64 %or15.i, ptr %features.i, align 16
  br label %ip6gre_tnl_init_features.exit

ip6gre_tnl_init_features.exit:                    ; preds = %if.end.i, %if.end40.ip6gre_tnl_init_features.exit_crit_edge
  %dev_tracker = getelementptr i8, ptr %dev, i32 2312
  %tobool.not.i78 = icmp eq ptr %dev, null
  br i1 %tobool.not.i78, label %ip6gre_tnl_init_features.exit.cleanup_crit_edge, label %do.body1.i.i

ip6gre_tnl_init_features.exit.cleanup_crit_edge:  ; preds = %ip6gre_tnl_init_features.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1.i.i:                                     ; preds = %ip6gre_tnl_init_features.exit
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !155
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %53 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %61, %55
  %62 = inttoptr i32 %add.i.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add13.i.i = add i32 %64, 1
  store i32 %add13.i.i, ptr %62, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !156
  %and.i.i.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !157

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #15, !srcloc !158
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #15
  br label %cleanup

cleanup_dst_cache_init:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #15
  br label %cleanup_alloc_pcpu_stats

cleanup_alloc_pcpu_stats:                         ; preds = %cleanup_dst_cache_init, %if.end15.cleanup_alloc_pcpu_stats_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.cleanup_alloc_pcpu_stats_crit_edge ], [ %call20, %cleanup_dst_cache_init ]
  %66 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %13, align 64
  tail call void @free_percpu(ptr noundef %67) #15
  %68 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %13, align 64
  br label %cleanup

cleanup:                                          ; preds = %cleanup_alloc_pcpu_stats, %dev_hold.exit.i, %ip6gre_tnl_init_features.exit.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %ret.0, %cleanup_alloc_pcpu_stats ], [ -12, %if.end.thread ], [ 0, %ip6gre_tnl_init_features.exit.cleanup_crit_edge ], [ 0, %dev_hold.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !161
  %8 = tail call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6gre_tunnel_unlink(ptr noundef %ign, ptr noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %raddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %laddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %i_key.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %i_key.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_key.i.i, align 4
  %shr.i.i = lshr i32 %1, 4
  %xor.i.i = xor i32 %shr.i.i, %1
  %and.i.i = and i32 %xor.i.i, 31
  %2 = ptrtoint ptr %laddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %laddr.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %5, %3
  %arrayidx4.i.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %7
  %arrayidx7.i.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp ne i32 %or8.i.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i.i to i32
  %10 = ptrtoint ptr %raddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raddr.i.i, align 4
  %arrayidx2.i18.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i18.i.i, align 4
  %or.i19.i.i = or i32 %13, %11
  %arrayidx4.i20.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx4.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i20.i.i, align 4
  %or5.i21.i.i = or i32 %or.i19.i.i, %15
  %arrayidx7.i22.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx7.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i22.i.i, align 4
  %or8.i23.i.i = or i32 %or5.i21.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i23.i.i)
  %cmp.i24.i.i = icmp eq i32 %or8.i23.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %11)
  %cmp.i25.i.i = icmp ugt i32 %11, -16777217
  %or.cond.i.i = select i1 %cmp.i24.i.i, i1 true, i1 %cmp.i25.i.i
  br i1 %or.cond.i.i, label %entry.ip6gre_bucket.exit_crit_edge, label %if.then4.i.i

entry.ip6gre_bucket.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_bucket.exit

if.then4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or5.i.i = or i32 %spec.select.i.i, 2
  %xor.i.i.i.i = xor i32 %13, %11
  %xor5.i.i.i.i = xor i32 %xor.i.i.i.i, %15
  %xor8.i.i.i.i = xor i32 %xor5.i.i.i.i, %17
  %mul.i.i.i.i.i = mul i32 %xor8.i.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 27
  %xor7.i.i = xor i32 %shr.i.i.i.i, %and.i.i
  br label %ip6gre_bucket.exit

ip6gre_bucket.exit:                               ; preds = %if.then4.i.i, %entry.ip6gre_bucket.exit_crit_edge
  %h.0.i.i = phi i32 [ %and.i.i, %entry.ip6gre_bucket.exit_crit_edge ], [ %xor7.i.i, %if.then4.i.i ]
  %prio.1.i.i = phi i32 [ %spec.select.i.i, %entry.ip6gre_bucket.exit_crit_edge ], [ %or5.i.i, %if.then4.i.i ]
  %arrayidx9.i.i = getelementptr [4 x [32 x ptr]], ptr %ign, i32 0, i32 %prio.1.i.i, i32 %h.0.i.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %ip6gre_bucket.exit
  %tp.0 = phi ptr [ %arrayidx9.i.i, %ip6gre_bucket.exit ], [ %19, %for.body.for.cond_crit_edge ]
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call1, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @ip6gre_tunnel_unlink.__warned, align 1
  br i1 %.b50, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 312, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %18 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp.0, align 4
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %do.end
  %cmp5 = icmp eq ptr %19, %t
  br i1 %cmp5, label %do.body7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !162
  %22 = ptrtoint ptr %tp.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %tp.0, align 4
  br label %for.end

for.end:                                          ; preds = %do.body7, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_xmit_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_tunnel_info_txcheck(ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !157

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %entry.skb_dst.exit.i.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.i.i.if.end.i_crit_edge:              ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %5 = inttoptr i32 %and25.i.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.i
  %type.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  br label %skb_tunnel_info.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %skb_dst.exit.i.i.if.end.i_crit_edge
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i29.i

if.end.i.skb_dst.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.lhs.true.i29.i:                              ; preds = %if.end.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i28.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i28.i, label %land.rhs.i.i, label %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge

land.lhs.true.i29.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i29.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !157

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge, %if.end.i.skb_dst.exit.i_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool2.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool2.not.i, label %skb_dst.exit.i.if.then_crit_edge, label %land.lhs.true3.i

skb_dst.exit.i.if.then_crit_edge:                 ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true3.i:                                 ; preds = %skb_dst.exit.i
  %13 = inttoptr i32 %and25.i.i to ptr
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lwtstate.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.then_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.if.then_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %17, label %land.lhs.true5.i.if.then_crit_edge [
    i16 2, label %land.lhs.true5.i.if.then15.i_crit_edge
    i16 4, label %land.lhs.true5.i.if.then15.i_crit_edge10
  ]

land.lhs.true5.i.if.then15.i_crit_edge10:         ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

land.lhs.true5.i.if.then15.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

land.lhs.true5.i.if.then_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then15.i:                                      ; preds = %land.lhs.true5.i.if.then15.i_crit_edge, %land.lhs.true5.i.if.then15.i_crit_edge10
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %15, i32 0, i32 7
  br label %skb_tunnel_info.exit

skb_tunnel_info.exit:                             ; preds = %if.then15.i, %if.then.i
  %retval.0.i = phi ptr [ %u.i, %if.then.i ], [ %data.i.i, %if.then15.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %skb_tunnel_info.exit.if.then_crit_edge, label %lor.rhs, !prof !157

skb_tunnel_info.exit.if.then_crit_edge:           ; preds = %skb_tunnel_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.rhs:                                          ; preds = %skb_tunnel_info.exit
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mode, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not = icmp eq i8 %21, 0
  br i1 %tobool1.not, label %lor.rhs.if.then_crit_edge, label %lor.rhs.cleanup_crit_edge, !prof !157

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %skb_tunnel_info.exit.if.then_crit_edge, %land.lhs.true5.i.if.then_crit_edge, %land.lhs.true3.i.if.then_crit_edge, %skb_dst.exit.i.if.then_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %retval.0.i, %lor.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_ip6gre_xmit_ipv4(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %fl6, ptr nocapture noundef writeonly %dsfield, ptr nocapture noundef writeonly %encap_limit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %flags = getelementptr i8, ptr %dev, i32 2348
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %encap_limit3 = getelementptr i8, ptr %dev, i32 2341
  %6 = ptrtoint ptr %encap_limit3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %encap_limit3, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %encap_limit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %encap_limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fl = getelementptr i8, ptr %dev, i32 2408
  %9 = call ptr @memcpy(ptr %fl6, ptr %fl, i32 88)
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and6 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tos.i, align 1
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flowinfo = getelementptr i8, ptr %dev, i32 2344
  %14 = ptrtoint ptr %flowinfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flowinfo, align 8
  %and.i = lshr i32 %15, 20
  %conv.i = trunc i32 %and.i to i8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %storemerge = phi i8 [ %conv.i, %if.else ], [ %13, %if.then8 ]
  %16 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge, ptr %dsfield, align 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and15 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %fwmark = getelementptr i8, ptr %dev, i32 2396
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %.sink.in = select i1 %tobool16.not, ptr %fwmark, ptr %19
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.sink = load i32, ptr %.sink.in, align 4
  %21 = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %23 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nd_net.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %26, i32 noundef 0) #15
  %27 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i, ptr %flowic_uid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gre6_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext %dsfield, ptr noundef %fl6, i32 noundef %encap_limit, ptr noundef %pmtu, i16 noundef zeroext %proto) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 823, i16 %6)
  %cmp4 = icmp eq i16 %6, 823
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %daddr7 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %daddr, ptr %daddr7, i32 16)
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %daddr8 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %10 = call ptr @memcpy(ptr %daddr8, ptr %raddr, i32 16)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %11 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %needed_headroom, align 8
  %conv10 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %cond.false, label %if.end9.cond.end_crit_edge

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %hlen = getelementptr i8, ptr %dev, i32 2524
  %13 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hlen, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ %14, %cond.false ], [ %conv10, %if.end9.cond.end_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %15 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %cond.end.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

cond.end.skb_header_cloned.exit.i_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #15
  %18 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %19, 65535
  %shr.i.i = ashr i32 %19, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %cond.end.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %cond.end.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %cond)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %cond
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end15_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end15_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %cond, i32 %sub.ptr.sub.i.i.i) #15
  %add.i.i = add i32 %24, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool13.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool13.not, label %skb_cow_head.exit.if.end15_crit_edge, label %skb_cow_head.exit.cleanup79_crit_edge

skb_cow_head.exit.cleanup79_crit_edge:            ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup79

skb_cow_head.exit.if.end15_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end15:                                         ; preds = %skb_cow_head.exit.if.end15_crit_edge, %skb_header_cloned.exit.i.if.end15_crit_edge
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp18 = icmp eq i16 %26, 1
  %spec.select = select i1 %cmp18, i16 25944, i16 %proto
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %27 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool27.not = icmp eq i8 %28, 0
  br i1 %tobool27.not, label %if.else63, label %if.then28

if.then28:                                        ; preds = %if.end15
  %call30 = tail call fastcc ptr @skb_tunnel_info_txcheck(ptr noundef %skb)
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28.cleanup79_crit_edge, label %lor.lhs.false

if.then28.cleanup79_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup79

lor.lhs.false:                                    ; preds = %if.then28
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call30, i32 0, i32 3
  %29 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mode.i, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.not = icmp eq i8 %31, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false.cleanup79_crit_edge, label %if.end40, !prof !157

lor.lhs.false.cleanup79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup79

if.end40:                                         ; preds = %lor.lhs.false
  %32 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %33 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 47, ptr %flowic_proto, align 2
  %daddr42 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %call30, i32 0, i32 1, i32 0, i32 1
  %34 = call ptr @memcpy(ptr %daddr42, ptr %dst, i32 16)
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %call30, i32 0, i32 5
  %35 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %label, align 4
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %37 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flowlabel, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %38 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nd_net.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %41, i32 noundef 0) #15
  %42 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i, ptr %flowic_uid, align 4
  %43 = ptrtoint ptr %call30 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %call30, align 8
  %conv.i = trunc i64 %44 to i32
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %45 = ptrtoint ptr %uli to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv.i, ptr %uli, align 4
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %call30, i32 0, i32 3
  %46 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tos, align 2
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %call30, i32 0, i32 2
  %48 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tun_flags, align 8
  %50 = and i16 %49, 13
  %conv.i124 = zext i16 %50 to i32
  %and.i = and i32 %conv.i124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i125 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i125, i32 4, i32 8
  %and2.i = and i32 %conv.i124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %add5.i = add nuw nsw i32 %spec.select.i, 4
  %addend.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %add5.i
  %and8.i = and i32 %conv.i124, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %add11.i = add nuw nsw i32 %addend.1.i, 4
  %addend.2.i = select i1 %tobool9.not.i, i32 %addend.1.i, i32 %add11.i
  %tun_hlen = getelementptr i8, ptr %dev, i32 2528
  %51 = ptrtoint ptr %tun_hlen to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %addend.2.i, ptr %tun_hlen, align 8
  %52 = ptrtoint ptr %call30 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %call30, align 8
  %conv.i126 = trunc i64 %53 to i32
  %54 = and i16 %49, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool56.not = icmp eq i16 %54, 0
  br i1 %tobool56.not, label %if.end40.cleanup_crit_edge, label %cond.true57

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.true57:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %o_seqno = getelementptr i8, ptr %dev, i32 2520
  %55 = ptrtoint ptr %o_seqno to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %o_seqno, align 8
  %inc = add i32 %56, 1
  store i32 %inc, ptr %o_seqno, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.true57, %if.end40.cleanup_crit_edge
  %cond60 = phi i32 [ %56, %cond.true57 ], [ 0, %if.end40.cleanup_crit_edge ]
  tail call fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %addend.2.i, i16 noundef zeroext %50, i16 noundef zeroext %spec.select, i32 noundef %conv.i126, i32 noundef %cond60)
  br label %if.end77

if.else63:                                        ; preds = %if.end15
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %57 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %o_flags, align 2
  %59 = and i16 %58, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool67.not = icmp eq i16 %59, 0
  br i1 %tobool67.not, label %if.else63.if.end71_crit_edge, label %if.then68

if.else63.if.end71_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then68:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #17
  %o_seqno69 = getelementptr i8, ptr %dev, i32 2520
  %60 = ptrtoint ptr %o_seqno69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %o_seqno69, align 8
  %inc70 = add i32 %61, 1
  store i32 %inc70, ptr %o_seqno69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.else63.if.end71_crit_edge
  %tun_hlen72 = getelementptr i8, ptr %dev, i32 2528
  %62 = ptrtoint ptr %tun_hlen72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tun_hlen72, align 8
  %64 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %o_flags, align 2
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %66 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %o_key, align 8
  %o_seqno76 = getelementptr i8, ptr %dev, i32 2520
  %68 = ptrtoint ptr %o_seqno76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %o_seqno76, align 8
  tail call fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %63, i16 noundef zeroext %65, i16 noundef zeroext %spec.select, i32 noundef %67, i32 noundef %69)
  br label %if.end77

if.end77:                                         ; preds = %if.end71, %cleanup
  %dsfield.addr.1 = phi i8 [ %47, %cleanup ], [ %dsfield, %if.end71 ]
  %call78 = tail call i32 @ip6_tnl_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext %dsfield.addr.1, ptr noundef %fl6, i32 noundef %encap_limit, ptr noundef %pmtu, i8 noundef zeroext 47) #15
  br label %cleanup79

cleanup79:                                        ; preds = %if.end77, %lor.lhs.false.cleanup79_crit_edge, %if.then28.cleanup79_crit_edge, %skb_cow_head.exit.cleanup79_crit_edge
  %retval.1 = phi i32 [ %call78, %if.end77 ], [ -12, %skb_cow_head.exit.cleanup79_crit_edge ], [ -22, %lor.lhs.false.cleanup79_crit_edge ], [ -22, %if.then28.cleanup79_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %hdr_len, i16 noundef zeroext %flags, i16 noundef zeroext %proto, i32 noundef %key, i32 noundef %seq) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %hdr_len) #15
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %proto, ptr %0, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %conv.i58 = zext i16 %flags to i32
  %rev65.i = tail call i16 @llvm.bitreverse.i16(i16 %flags) #15
  %8 = and i16 %rev65.i, -2048
  %and36.i = and i32 %conv.i58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %9 = or i16 %8, 1792
  %flags.5.i = select i1 %tobool37.not.i, i16 %8, i16 %9
  %and44.i = and i32 %conv.i58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %10 = or i16 %flags.5.i, 7
  %flags.6.i = select i1 %tobool45.not.i, i16 %flags.5.i, i16 %10
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %flags.6.i, ptr %4, align 1
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %proto, ptr %protocol, align 1
  %and = and i32 %conv.i58, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 %hdr_len
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 -4
  %and5 = and i32 %conv.i58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %seq, ptr %add.ptr3, align 4
  %incdec.ptr = getelementptr i32, ptr %add.ptr3, i32 -1
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then7 ], [ %add.ptr3, %if.then.if.end_crit_edge ]
  %and9 = and i32 %conv.i58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %key, ptr %ptr.0, align 4
  %incdec.ptr12 = getelementptr i32, ptr %ptr.0, i32 -1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %ptr.1 = phi ptr [ %incdec.ptr12, %if.then11 ], [ %ptr.0, %if.end.if.end13_crit_edge ]
  %and15 = and i32 %conv.i58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end33_crit_edge, label %land.lhs.true

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gso_type, align 8
  %and18 = and i32 %18, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then20:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ptr.1, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %ip_summed, align 8
  %21 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %21)
  %cmp = icmp eq i16 %21, 1536
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 8
  %conv.i8.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i8.i
  %27 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i, align 2
  %conv.i10.i = zext i16 %28 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %23, i32 %conv.i10.i
  %csum_offset.i = getelementptr inbounds %struct.anon.60, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %csum_offset.i, align 2
  %conv.i59 = zext i16 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i59
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %neg.i = xor i32 %conv.i.i, -1
  %sub.ptr.lhs.cast.i60 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i61 = ptrtoint ptr %add.ptr.i11.i to i32
  %sub.ptr.sub.i62 = sub i32 %sub.ptr.lhs.cast.i60, %sub.ptr.rhs.cast.i61
  %call3.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i11.i, i32 noundef %sub.ptr.sub.i62, i32 noundef %neg.i) #15
  %33 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call3.i) #22, !srcloc !163
  %neg.i63 = xor i32 %33, -1
  %shr.i = lshr i32 %neg.i63, 16
  %conv.i64 = trunc i32 %shr.i to i16
  %34 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i64, ptr %ptr.1, align 2
  br label %if.end33

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set = or i16 %bf.load, 1536
  %35 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bf.set, ptr %ip_summed, align 8
  %36 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i, align 2
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %37, ptr %38, align 8
  %csum_offset = getelementptr inbounds %struct.anon.60, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4, ptr %csum_offset, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then23, %land.lhs.true.if.end33_crit_edge, %if.end13.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_xmit(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_ip6gre_xmit_ipv6(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef %fl6, ptr nocapture noundef writeonly %dsfield, ptr nocapture noundef writeonly %encap_limit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i76 = getelementptr i8, ptr %1, i32 %conv.i
  %call2 = tail call zeroext i16 @ip6_tnl_parse_tlv_enc_lim(ptr noundef %skb, ptr noundef %add.ptr.i76) #15
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %6 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %conv = zext i16 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2)
  %cmp.not = icmp eq i16 %call2, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %add.ptr.i.i, i32 %conv
  %encap_limit6 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %encap_limit6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %encap_limit6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8 = icmp eq i8 %9, 0
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %add = add nuw nsw i32 %conv, 2
  tail call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %add) #15
  br label %cleanup50

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv7 = zext i8 %9 to i32
  %sub = add nsw i32 %conv7, -1
  br label %if.end19.sink.split

if.else:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2348
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then14, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %encap_limit16 = getelementptr i8, ptr %dev, i32 2341
  %12 = ptrtoint ptr %encap_limit16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %encap_limit16, align 1
  %conv17 = zext i8 %13 to i32
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then14, %if.end
  %sub.sink = phi i32 [ %sub, %if.end ], [ %conv17, %if.then14 ]
  %14 = ptrtoint ptr %encap_limit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.sink, ptr %encap_limit, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge
  %fl = getelementptr i8, ptr %dev, i32 2408
  %15 = call ptr @memcpy(ptr %fl6, ptr %fl, i32 88)
  %flags21 = getelementptr i8, ptr %dev, i32 2348
  %16 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags21, align 4
  %and22 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i, align 2
  %20 = lshr i16 %19, 4
  %conv1.i = trunc i16 %20 to i8
  br label %if.end29

if.else26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %flowinfo = getelementptr i8, ptr %dev, i32 2344
  %21 = ptrtoint ptr %flowinfo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flowinfo, align 8
  %and.i = lshr i32 %22, 20
  %conv.i81 = trunc i32 %and.i to i8
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24
  %storemerge = phi i8 [ %conv.i81, %if.else26 ], [ %conv1.i, %if.then24 ]
  %23 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge, ptr %dsfield, align 1
  %24 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags21, align 4
  %and32 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end29.if.end36_crit_edge, label %if.then34

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %and.i82 = and i32 %27, 1048575
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %28 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flowlabel, align 8
  %or = or i32 %29, %and.i82
  store i32 %or, ptr %flowlabel, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29.if.end36_crit_edge
  %30 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags21, align 4
  %and39 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %fwmark = getelementptr i8, ptr %dev, i32 2396
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %.sink.in = select i1 %tobool40.not, ptr %fwmark, ptr %32
  %33 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %.sink = load i32, ptr %.sink.in, align 4
  %34 = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %34, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %36 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nd_net.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %39, i32 noundef 0) #15
  %40 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i, ptr %flowic_uid, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.end36, %if.then10
  %retval.1 = phi i32 [ 0, %if.end36 ], [ -1, %if.then10 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ip6_tnl_parse_tlv_enc_lim(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6gre_tunnel_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %flags.0 = phi i16 [ %3, %if.then2 ], [ 0, %if.end.if.end6_crit_edge ]
  %arrayidx7 = getelementptr ptr, ptr %data, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i29 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i29, align 2
  %or1428 = or i16 %7, %flags.0
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end6.if.end16_crit_edge
  %flags.1 = phi i16 [ %or1428, %if.then9 ], [ %flags.0, %if.end6.if.end16_crit_edge ]
  %8 = and i16 %flags.1, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool18.not = icmp eq i16 %8, 0
  %. = select i1 %tobool18.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6gre_netlink_parms(ptr noundef readonly %data, ptr nocapture noundef writeonly %parms) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  %tmp39 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %parms, i32 0, i32 88)
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end75_crit_edge, label %if.end

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %link = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 1
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %link, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %if.then7

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i123 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i123, align 2
  %conv.i = zext i16 %9 to i32
  %and.lobit.i = lshr i16 %9, 15
  %and4.i = lshr i16 %9, 13
  %10 = and i16 %and4.i, 2
  %11 = or i16 %10, %and.lobit.i
  %and12.i = lshr i16 %9, 11
  %12 = and i16 %and12.i, 4
  %13 = or i16 %11, %12
  %and20.i = lshr i16 %9, 9
  %14 = and i16 %and20.i, 8
  %15 = or i16 %13, %14
  %and28.i = lshr i16 %9, 7
  %16 = and i16 %and28.i, 16
  %17 = or i16 %15, %16
  %and36.i = and i32 %conv.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %18 = or i16 %17, 32
  %tflags.5.i = select i1 %tobool37.not.i, i16 %17, i16 %18
  %and44.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %19 = or i16 %tflags.5.i, 64
  %tflags.6.i = select i1 %tobool45.not.i, i16 %tflags.5.i, i16 %19
  %i_flags = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 10
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %tflags.6.i, ptr %i_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4.if.end11_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %data, i32 3
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i124 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i124, align 2
  %conv.i125 = zext i16 %24 to i32
  %and.lobit.i126 = lshr i16 %24, 15
  %and4.i127 = lshr i16 %24, 13
  %25 = and i16 %and4.i127, 2
  %26 = or i16 %25, %and.lobit.i126
  %and12.i128 = lshr i16 %24, 11
  %27 = and i16 %and12.i128, 4
  %28 = or i16 %26, %27
  %and20.i129 = lshr i16 %24, 9
  %29 = and i16 %and20.i129, 8
  %30 = or i16 %28, %29
  %and28.i130 = lshr i16 %24, 7
  %31 = and i16 %and28.i130, 16
  %32 = or i16 %30, %31
  %and36.i131 = and i32 %conv.i125, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i131)
  %tobool37.not.i132 = icmp eq i32 %and36.i131, 0
  %33 = or i16 %32, 32
  %tflags.5.i133 = select i1 %tobool37.not.i132, i16 %32, i16 %33
  %and44.i134 = and i32 %conv.i125, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i134)
  %tobool45.not.i135 = icmp eq i32 %and44.i134, 0
  %34 = or i16 %tflags.5.i133, 64
  %tflags.6.i136 = select i1 %tobool45.not.i135, i16 %tflags.5.i133, i16 %34
  %o_flags = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 11
  %35 = ptrtoint ptr %o_flags to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %tflags.6.i136, ptr %o_flags, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %arrayidx19 = getelementptr ptr, ptr %data, i32 4
  %36 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %37, null
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i137 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i137 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i137, align 4
  %i_key = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 12
  %40 = ptrtoint ptr %i_key to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %i_key, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %arrayidx25 = getelementptr ptr, ptr %data, i32 5
  %41 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %42, null
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i138 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i138, align 4
  %o_key = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 13
  %45 = ptrtoint ptr %o_key to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %o_key, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %arrayidx31 = getelementptr ptr, ptr %data, i32 6
  %46 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %47, null
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %laddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %48 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %47, i32 noundef 16) #15
  %49 = call ptr @memcpy(ptr %laddr, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %arrayidx36 = getelementptr ptr, ptr %data, i32 7
  %50 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %51, null
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp39) #15
  %52 = call ptr @memset(ptr %tmp39, i32 255, i32 16)
  %call.i139 = call i32 @nla_memcpy(ptr noundef nonnull %tmp39, ptr noundef nonnull %51, i32 noundef 16) #15
  %53 = call ptr @memcpy(ptr %raddr, ptr %tmp39, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp39) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %arrayidx42 = getelementptr ptr, ptr %data, i32 8
  %54 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %55, null
  br i1 %tobool43.not, label %if.end41.if.end47_crit_edge, label %if.then44

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i140 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i140 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr.i.i140, align 1
  %hop_limit = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 4
  %58 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %hop_limit, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge
  %arrayidx48 = getelementptr ptr, ptr %data, i32 11
  %59 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %60, null
  br i1 %tobool49.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i141 = getelementptr i8, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr.i.i141 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr.i.i141, align 1
  %encap_limit = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 3
  %63 = ptrtoint ptr %encap_limit to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %encap_limit, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  %arrayidx54 = getelementptr ptr, ptr %data, i32 12
  %64 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %65, null
  br i1 %tobool55.not, label %if.end53.if.end59_crit_edge, label %if.then56

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i142 = getelementptr i8, ptr %65, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i142 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i142, align 4
  %flowinfo = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 6
  %68 = ptrtoint ptr %flowinfo to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %flowinfo, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  %arrayidx60 = getelementptr ptr, ptr %data, i32 13
  %69 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq ptr %70, null
  br i1 %tobool61.not, label %if.end59.if.end65_crit_edge, label %if.then62

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i143 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i143 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i143, align 4
  %flags = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 7
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %flags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end59.if.end65_crit_edge
  %arrayidx66 = getelementptr ptr, ptr %data, i32 20
  %74 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx66, align 4
  %tobool67.not = icmp eq ptr %75, null
  br i1 %tobool67.not, label %if.end65.if.end71_crit_edge, label %if.then68

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i144 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i144, align 4
  %fwmark = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 14
  %78 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %fwmark, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65.if.end71_crit_edge
  %arrayidx72 = getelementptr ptr, ptr %data, i32 18
  %79 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %80, null
  br i1 %tobool73.not, label %if.end71.if.end75_crit_edge, label %if.then74

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %collect_md = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 5
  %81 = ptrtoint ptr %collect_md to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %collect_md, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71.if.end75_crit_edge, %entry.if.end75_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6gre_tunnel_find(ptr noundef %net, ptr nocapture noundef readonly %parms, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 9
  %laddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 8
  %i_key = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 12
  %0 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_key, align 4
  %link1 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 1
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link1, align 4
  %4 = load i32, ptr @ip6gre_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4)
  %5 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_key, align 4
  %shr.i = lshr i32 %6, 4
  %xor.i = xor i32 %shr.i, %6
  %and.i = and i32 %xor.i, 31
  %7 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %laddr, align 4
  %arrayidx2.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 8, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %10, %8
  %arrayidx4.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 8, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %12
  %arrayidx7.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 8, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp ne i32 %or8.i.i, 0
  %spec.select.i = zext i1 %cmp.i.i to i32
  %15 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %raddr, align 4
  %arrayidx2.i18.i = getelementptr %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 9, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.i18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i18.i, align 4
  %or.i19.i = or i32 %18, %16
  %arrayidx4.i20.i = getelementptr %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 9, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx4.i20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i20.i, align 4
  %or5.i21.i = or i32 %or.i19.i, %20
  %arrayidx7.i22.i = getelementptr %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 9, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx7.i22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i22.i, align 4
  %or8.i23.i = or i32 %or5.i21.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i23.i)
  %cmp.i24.i = icmp eq i32 %or8.i23.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %16)
  %cmp.i25.i = icmp ugt i32 %16, -16777217
  %or.cond.i = select i1 %cmp.i24.i, i1 true, i1 %cmp.i25.i
  br i1 %or.cond.i, label %entry.__ip6gre_bucket.exit_crit_edge, label %if.then4.i

entry.__ip6gre_bucket.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ip6gre_bucket.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or5.i = or i32 %spec.select.i, 2
  %xor.i.i.i = xor i32 %18, %16
  %xor5.i.i.i = xor i32 %xor.i.i.i, %20
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %22
  %mul.i.i.i.i = mul i32 %xor8.i.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 27
  %xor7.i = xor i32 %shr.i.i.i, %and.i
  br label %__ip6gre_bucket.exit

__ip6gre_bucket.exit:                             ; preds = %if.then4.i, %entry.__ip6gre_bucket.exit_crit_edge
  %h.0.i = phi i32 [ %and.i, %entry.__ip6gre_bucket.exit_crit_edge ], [ %xor7.i, %if.then4.i ]
  %prio.1.i = phi i32 [ %spec.select.i, %entry.__ip6gre_bucket.exit_crit_edge ], [ %or5.i, %if.then4.i ]
  %arrayidx9.i = getelementptr [4 x [32 x ptr]], ptr %call, i32 0, i32 %prio.1.i, i32 %h.0.i
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %__ip6gre_bucket.exit
  %tp.0 = phi ptr [ %arrayidx9.i, %__ip6gre_bucket.exit ], [ %24, %for.cond.backedge ]
  %call3 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call3, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @ip6gre_tunnel_find.__warned, align 1
  br i1 %.b38, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 334, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %23 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tp.0, align 4
  %cmp.not = icmp eq ptr %24, null
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %do.end
  %laddr8 = getelementptr inbounds %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %laddr, align 4
  %27 = ptrtoint ptr %laddr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %laddr8, align 4
  %xor.i39 = xor i32 %28, %26
  %29 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx6.i = getelementptr %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i40 = xor i32 %32, %30
  %or.i = or i32 %xor7.i40, %xor.i39
  %33 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx11.i = getelementptr %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %36, %34
  %or13.i = or i32 %or.i, %xor12.i
  %37 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx17.i = getelementptr %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %40, %38
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true10, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true22.for.cond.backedge_crit_edge, %land.lhs.true18.for.cond.backedge_crit_edge, %land.lhs.true14.for.cond.backedge_crit_edge, %land.lhs.true10.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

land.lhs.true10:                                  ; preds = %for.body
  %raddr12 = getelementptr inbounds %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 9
  %41 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %raddr, align 4
  %43 = ptrtoint ptr %raddr12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %raddr12, align 4
  %xor.i42 = xor i32 %44, %42
  %45 = ptrtoint ptr %arrayidx2.i18.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i18.i, align 4
  %arrayidx6.i44 = getelementptr %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx6.i44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx6.i44, align 4
  %xor7.i45 = xor i32 %48, %46
  %or.i46 = or i32 %xor7.i45, %xor.i42
  %49 = ptrtoint ptr %arrayidx4.i20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4.i20.i, align 4
  %arrayidx11.i48 = getelementptr %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx11.i48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx11.i48, align 4
  %xor12.i49 = xor i32 %52, %50
  %or13.i50 = or i32 %or.i46, %xor12.i49
  %53 = ptrtoint ptr %arrayidx7.i22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i22.i, align 4
  %arrayidx17.i52 = getelementptr %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx17.i52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx17.i52, align 4
  %xor18.i53 = xor i32 %56, %54
  %or19.i54 = or i32 %or13.i50, %xor18.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i54)
  %cmp.i55 = icmp eq i32 %or19.i54, 0
  br i1 %cmp.i55, label %land.lhs.true14, label %land.lhs.true10.for.cond.backedge_crit_edge

land.lhs.true10.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %i_key16 = getelementptr inbounds %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 12
  %57 = ptrtoint ptr %i_key16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_key16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %58)
  %cmp17 = icmp eq i32 %1, %58
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true14.for.cond.backedge_crit_edge

land.lhs.true14.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %link20 = getelementptr inbounds %struct.ip6_tnl, ptr %24, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %link20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %link20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %60)
  %cmp21 = icmp eq i32 %3, %60
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true18.for.cond.backedge_crit_edge

land.lhs.true18.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %dev = getelementptr inbounds %struct.ip6_tnl, ptr %24, i32 0, i32 1
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %type23 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %type23 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %type23, align 16
  %conv = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp24 = icmp eq i32 %conv, %type
  br i1 %cmp24, label %land.lhs.true22.for.end_crit_edge, label %land.lhs.true22.for.cond.backedge_crit_edge

land.lhs.true22.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

land.lhs.true22.for.end_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %land.lhs.true22.for.end_crit_edge, %do.end.for.end_crit_edge
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6gre_newlink_common(ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %ipencap = alloca %struct.ip_tunnel_encap, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap) #15
  %0 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %3 = ptrtoint ptr %ipencap to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %ipencap, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.if.end5_crit_edge, label %if.end.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %data, i32 14
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i.i, align 2
  %8 = ptrtoint ptr %ipencap to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ipencap, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %9 = xor i1 %tobool2.not.i, true
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 15
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i43.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i43.i, align 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %0, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %ret.1.off0.i = phi i1 [ true, %if.then8.i ], [ %9, %if.end5.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 16
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %if.end17.i, label %if.end17.i.thread

if.end17.i:                                       ; preds = %if.end11.i
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 17
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %18, null
  br i1 %tobool19.not.i, label %ip6gre_netlink_encap_parms.exit, label %if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_netlink_encap_parms.exit.thread

if.end17.i.thread:                                ; preds = %if.end11.i
  %add.ptr.i.i44.i = getelementptr i8, ptr %16, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i44.i, align 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %1, align 4
  %arrayidx18.i5 = getelementptr ptr, ptr %data, i32 17
  %22 = ptrtoint ptr %arrayidx18.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18.i5, align 4
  %tobool19.not.i6 = icmp eq ptr %23, null
  br i1 %tobool19.not.i6, label %if.end17.i.thread.if.then_crit_edge, label %if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_netlink_encap_parms.exit.thread

if.end17.i.thread.if.then_crit_edge:              ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

ip6gre_netlink_encap_parms.exit.thread:           ; preds = %if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge, %if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge
  %24 = phi ptr [ %23, %if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge ], [ %18, %if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge ]
  %add.ptr.i.i45.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i45.i, align 2
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %2, align 2
  br label %if.then

ip6gre_netlink_encap_parms.exit:                  ; preds = %if.end17.i
  br i1 %ret.1.off0.i, label %ip6gre_netlink_encap_parms.exit.if.then_crit_edge, label %ip6gre_netlink_encap_parms.exit.if.end5_crit_edge

ip6gre_netlink_encap_parms.exit.if.end5_crit_edge: ; preds = %ip6gre_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

ip6gre_netlink_encap_parms.exit.if.then_crit_edge: ; preds = %ip6gre_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %ip6gre_netlink_encap_parms.exit.if.then_crit_edge, %ip6gre_netlink_encap_parms.exit.thread, %if.end17.i.thread.if.then_crit_edge
  %call3 = call i32 @ip6_tnl_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup23_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then.cleanup23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %ip6gre_netlink_encap_parms.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp6 = icmp eq i16 %29, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.then8, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #15
  %32 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr.i, align 1
  %35 = and i8 %34, -4
  %36 = or i8 %35, 2
  store i8 %36, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %37 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %dev10 = getelementptr i8, ptr %dev, i32 2308
  %38 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %dev10, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %39 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nd_net.i, align 4
  %net = getelementptr i8, ptr %dev, i32 2316
  %41 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %net, align 4
  %call12 = call i32 @register_netdevice(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup23_crit_edge

if.end9.cleanup23_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end15:                                         ; preds = %if.end9
  %arrayidx16 = getelementptr ptr, ptr %tb, i32 4
  %42 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %43, null
  br i1 %tobool17.not, label %if.end15.cleanup23_crit_edge, label %if.then18

if.end15.cleanup23_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i, align 4
  %call21 = call i32 @ip6_tnl_change_mtu(ptr noundef %dev, i32 noundef %45) #15
  br label %cleanup23

cleanup23:                                        ; preds = %if.then18, %if.end15.cleanup23_crit_edge, %if.end9.cleanup23_crit_edge, %if.then.cleanup23_crit_edge
  %retval.1 = phi i32 [ %call3, %if.then.cleanup23_crit_edge ], [ 0, %if.end15.cleanup23_crit_edge ], [ 0, %if.then18 ], [ %call12, %if.end9.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6gre_tunnel_link(ptr noundef %ign, ptr noundef %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %raddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %laddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %i_key.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %i_key.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_key.i.i, align 4
  %shr.i.i = lshr i32 %1, 4
  %xor.i.i = xor i32 %shr.i.i, %1
  %and.i.i = and i32 %xor.i.i, 31
  %2 = ptrtoint ptr %laddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %laddr.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %5, %3
  %arrayidx4.i.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %7
  %arrayidx7.i.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp ne i32 %or8.i.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i.i to i32
  %10 = ptrtoint ptr %raddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raddr.i.i, align 4
  %arrayidx2.i18.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i18.i.i, align 4
  %or.i19.i.i = or i32 %13, %11
  %arrayidx4.i20.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx4.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i20.i.i, align 4
  %or5.i21.i.i = or i32 %or.i19.i.i, %15
  %arrayidx7.i22.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx7.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i22.i.i, align 4
  %or8.i23.i.i = or i32 %or5.i21.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i23.i.i)
  %cmp.i24.i.i = icmp eq i32 %or8.i23.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %11)
  %cmp.i25.i.i = icmp ugt i32 %11, -16777217
  %or.cond.i.i = select i1 %cmp.i24.i.i, i1 true, i1 %cmp.i25.i.i
  br i1 %or.cond.i.i, label %entry.ip6gre_bucket.exit_crit_edge, label %if.then4.i.i

entry.ip6gre_bucket.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_bucket.exit

if.then4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or5.i.i = or i32 %spec.select.i.i, 2
  %xor.i.i.i.i = xor i32 %13, %11
  %xor5.i.i.i.i = xor i32 %xor.i.i.i.i, %15
  %xor8.i.i.i.i = xor i32 %xor5.i.i.i.i, %17
  %mul.i.i.i.i.i = mul i32 %xor8.i.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 27
  %xor7.i.i = xor i32 %shr.i.i.i.i, %and.i.i
  br label %ip6gre_bucket.exit

ip6gre_bucket.exit:                               ; preds = %if.then4.i.i, %entry.ip6gre_bucket.exit_crit_edge
  %h.0.i.i = phi i32 [ %and.i.i, %entry.ip6gre_bucket.exit_crit_edge ], [ %xor7.i.i, %if.then4.i.i ]
  %prio.1.i.i = phi i32 [ %spec.select.i.i, %entry.ip6gre_bucket.exit_crit_edge ], [ %or5.i.i, %if.then4.i.i ]
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call2, label %ip6gre_bucket.exit.do.end_crit_edge, label %land.lhs.true

ip6gre_bucket.exit.do.end_crit_edge:              ; preds = %ip6gre_bucket.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %ip6gre_bucket.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @ip6gre_tunnel_link.__warned, align 1
  br i1 %.b69, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 302, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %ip6gre_bucket.exit.do.end_crit_edge
  %arrayidx9.i.i = getelementptr [4 x [32 x ptr]], ptr %ign, i32 0, i32 %prio.1.i.i, i32 %h.0.i.i
  %18 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !164
  %20 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %t, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !165
  %21 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %t, ptr %arrayidx9.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_encap_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6gre_tnl_link_config_common(ptr noundef %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %fl = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 5
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %laddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %laddr, i32 noundef 16) #15
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %raddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %4 = call ptr @memcpy(ptr %broadcast, ptr %raddr, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %saddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 2
  %laddr3 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %5 = call ptr @memcpy(ptr %saddr, ptr %laddr3, i32 16)
  %daddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1
  %raddr4 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %6 = call ptr @memcpy(ptr %daddr, ptr %raddr4, i32 16)
  %link = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link, align 4
  %9 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fl, align 8
  %flowlabel = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flowlabel, align 8
  %flowic_proto = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 0, i32 5
  %11 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 47, ptr %flowic_proto, align 2
  %o_key = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 13
  %12 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %o_key, align 8
  %uli = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %uli to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %uli, align 4
  %flags = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flowinfo = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %flowinfo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flowinfo, align 4
  %and8 = and i32 %18, 267386880
  %19 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and8, ptr %flowlabel, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %and12 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %flowinfo15 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %flowinfo15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flowinfo15, align 4
  %and16 = and i32 %21, 1048575
  %22 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flowlabel, align 8
  %or18 = or i32 %23, %and16
  store i32 %or18, ptr %flowlabel, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end10.if.end19_crit_edge
  %and21 = and i32 %16, -458753
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and21, ptr %flags, align 4
  %call = tail call i32 @ip6_tnl_get_cap(ptr noundef %t, ptr noundef %laddr3, ptr noundef %raddr4) #15
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or25 = or i32 %26, %call
  store i32 %or25, ptr %flags, align 4
  %27 = and i32 %or25, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %27)
  %.not = icmp eq i32 %27, 196608
  br i1 %.not, label %land.lhs.true32, label %if.end19.if.else_crit_edge

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true32:                                  ; preds = %if.end19
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp35.not = icmp eq i16 %29, 1
  br i1 %cmp35.not, label %land.lhs.true32.if.else_crit_edge, label %if.then37

land.lhs.true32.if.else_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then37:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  %flags38 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags38, align 8
  %or39 = or i32 %31, 16
  store i32 %or39, ptr %flags38, align 8
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true32.if.else_crit_edge, %if.end19.if.else_crit_edge
  %flags40 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags40, align 8
  %and41 = and i32 %33, -17
  store i32 %and41, ptr %flags40, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6gre_tnl_link_config_route(ptr noundef %t, i32 noundef %set_mtu, i32 noundef %t_hlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %flags = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.then

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup47

if.then:                                          ; preds = %entry
  %raddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %raddr) #15
  %and2 = and i32 %call.i, 34
  %net = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 3
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %laddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %link = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link, align 4
  %call4 = tail call ptr @rt6_lookup(ptr noundef %5, ptr noundef %raddr, ptr noundef %laddr, i32 noundef %7, ptr noundef null, i32 noundef %and2) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.cleanup47_crit_edge, label %if.end

if.then.cleanup47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup47

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call4, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end.if.end44_crit_edge, label %if.then9

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then9:                                         ; preds = %if.end
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %12 = trunc i32 %t_hlen to i16
  %conv12 = add i16 %11, %12
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  %header_ops = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 49
  %15 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %header_ops, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %hard_header_len16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %hard_header_len16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv12, ptr %hard_header_len16, align 2
  br label %if.end17

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12, ptr %needed_headroom, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_mtu)
  %tobool18.not = icmp eq i32 %set_mtu, 0
  br i1 %tobool18.not, label %if.end17.if.end44_crit_edge, label %if.then19

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then19:                                        ; preds = %if.end17
  %19 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call4, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu, align 4
  %sub = sub i32 %22, %t_hlen
  %mtu22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %mtu22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %mtu22, align 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and25 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then19.if.end30_crit_edge

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %sub29 = add i32 %sub, -8
  %26 = ptrtoint ptr %mtu22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub29, ptr %mtu22, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then19.if.end30_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp = icmp eq i16 %28, 1
  %29 = ptrtoint ptr %mtu22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu22, align 4
  %sub35 = add i32 %30, -14
  %31 = select i1 %cmp, i32 %sub35, i32 %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %31)
  %cmp38 = icmp ult i32 %31, 1280
  %32 = or i1 %cmp, %cmp38
  br i1 %32, label %33, label %if.end30.if.end44_crit_edge

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

33:                                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %34 = call i32 @llvm.umax.i32(i32 %31, i32 1280)
  %35 = ptrtoint ptr %mtu22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mtu22, align 4
  br label %if.end44

if.end44:                                         ; preds = %33, %if.end30.if.end44_crit_edge, %if.end17.if.end44_crit_edge, %if.end.if.end44_crit_edge
  tail call void @dst_release(ptr noundef nonnull %call4) #15
  br label %cleanup47

cleanup47:                                        ; preds = %if.end44, %if.then.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_get_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6gre_changelink_common(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef %p_p) unnamed_addr #2 align 64 {
entry:
  %ipencap = alloca %struct.ip_tunnel_encap, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %net1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap) #15
  %3 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 3
  %fb_tunnel_dev = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp = icmp eq ptr %7, %dev
  br i1 %cmp, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup20

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ipencap to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %ipencap, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end.if.end11_crit_edge, label %if.end.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %data, i32 14
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i.i, align 2
  %13 = ptrtoint ptr %ipencap to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %ipencap, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %14 = xor i1 %tobool2.not.i, true
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 15
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %16, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i43.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i43.i, align 2
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %3, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %ret.1.off0.i = phi i1 [ true, %if.then8.i ], [ %14, %if.end5.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 16
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %21, null
  br i1 %tobool13.not.i, label %if.end17.i, label %if.end17.i.thread

if.end17.i:                                       ; preds = %if.end11.i
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 17
  %22 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %23, null
  br i1 %tobool19.not.i, label %ip6gre_netlink_encap_parms.exit, label %if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_netlink_encap_parms.exit.thread

if.end17.i.thread:                                ; preds = %if.end11.i
  %add.ptr.i.i44.i = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i44.i, align 2
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %4, align 4
  %arrayidx18.i9 = getelementptr ptr, ptr %data, i32 17
  %27 = ptrtoint ptr %arrayidx18.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx18.i9, align 4
  %tobool19.not.i10 = icmp eq ptr %28, null
  br i1 %tobool19.not.i10, label %if.end17.i.thread.if.then5_crit_edge, label %if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_netlink_encap_parms.exit.thread

if.end17.i.thread.if.then5_crit_edge:             ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

ip6gre_netlink_encap_parms.exit.thread:           ; preds = %if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge, %if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge
  %29 = phi ptr [ %28, %if.end17.i.thread.ip6gre_netlink_encap_parms.exit.thread_crit_edge ], [ %23, %if.end17.i.ip6gre_netlink_encap_parms.exit.thread_crit_edge ]
  %add.ptr.i.i45.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i45.i, align 2
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %5, align 2
  br label %if.then5

ip6gre_netlink_encap_parms.exit:                  ; preds = %if.end17.i
  br i1 %ret.1.off0.i, label %ip6gre_netlink_encap_parms.exit.if.then5_crit_edge, label %ip6gre_netlink_encap_parms.exit.if.end11_crit_edge

ip6gre_netlink_encap_parms.exit.if.end11_crit_edge: ; preds = %ip6gre_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

ip6gre_netlink_encap_parms.exit.if.then5_crit_edge: ; preds = %ip6gre_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.then5:                                         ; preds = %ip6gre_netlink_encap_parms.exit.if.then5_crit_edge, %ip6gre_netlink_encap_parms.exit.thread, %if.end17.i.thread.if.then5_crit_edge
  %call6 = call i32 @ip6_tnl_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup.thread, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %33 = inttoptr i32 %call6 to ptr
  br label %cleanup20

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %ip6gre_netlink_encap_parms.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call fastcc void @ip6gre_netlink_parms(ptr noundef %data, ptr noundef %p_p)
  %34 = load i32, ptr @ip6gre_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %34) #15
  %call1.i = call fastcc ptr @ip6gre_tunnel_find(ptr noundef %1, ptr noundef %p_p, i32 noundef 823) #15
  %tobool.not.i1 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i1, label %if.end11.cleanup20_crit_edge, label %if.then13

if.end11.cleanup20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup20

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %dev14 = getelementptr inbounds %struct.ip6_tnl, ptr %call1.i, i32 0, i32 1
  %35 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev14, align 4
  %cmp15.not = icmp eq ptr %36, %dev
  %spec.select = select i1 %cmp15.not, ptr %call1.i, ptr inttoptr (i32 -17 to ptr)
  br label %cleanup20

cleanup20:                                        ; preds = %if.then13, %if.end11.cleanup20_crit_edge, %cleanup.thread, %entry.cleanup20_crit_edge
  %retval.1 = phi ptr [ %add.ptr.i, %if.end11.cleanup20_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup20_crit_edge ], [ %33, %cleanup.thread ], [ %spec.select, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap) #15
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6gre_tnl_change(ptr noundef %t, ptr nocapture noundef readonly %p, i32 noundef %set_mtu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %laddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %laddr1.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  %0 = call ptr @memcpy(ptr %laddr.i, ptr %laddr1.i, i32 16)
  %raddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %raddr3.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  %1 = call ptr @memcpy(ptr %raddr.i, ptr %raddr3.i, i32 16)
  %flags.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 7
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %flags5.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags5.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 4
  %5 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hop_limit.i, align 2
  %hop_limit7.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %hop_limit7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %hop_limit7.i, align 2
  %encap_limit.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %encap_limit.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %encap_limit.i, align 1
  %encap_limit9.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %encap_limit9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %encap_limit9.i, align 1
  %flowinfo.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 6
  %11 = ptrtoint ptr %flowinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flowinfo.i, align 4
  %flowinfo11.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %flowinfo11.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flowinfo11.i, align 8
  %link.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 1
  %14 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link.i, align 4
  %link13.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %link13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %link13.i, align 8
  %proto.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 2
  %17 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %proto.i, align 4
  %proto15.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %proto15.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %proto15.i, align 4
  %i_key.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 12
  %20 = ptrtoint ptr %i_key.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_key.i, align 4
  %i_key17.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 12
  %22 = ptrtoint ptr %i_key17.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_key17.i, align 4
  %o_key.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 13
  %23 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %o_key.i, align 4
  %o_key19.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 13
  %25 = ptrtoint ptr %o_key19.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %o_key19.i, align 8
  %i_flags.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 10
  %26 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %i_flags.i, align 4
  %i_flags21.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 10
  %28 = ptrtoint ptr %i_flags21.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %i_flags21.i, align 8
  %o_flags.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 11
  %29 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %o_flags.i, align 2
  %o_flags23.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 11
  %31 = ptrtoint ptr %o_flags23.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %o_flags23.i, align 2
  %fwmark.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 14
  %32 = ptrtoint ptr %fwmark.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fwmark.i, align 4
  %fwmark25.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 14
  %34 = ptrtoint ptr %fwmark25.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fwmark25.i, align 4
  %erspan_ver.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 16
  %35 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %erspan_ver.i, align 4
  %erspan_ver27.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 16
  %37 = ptrtoint ptr %erspan_ver27.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %erspan_ver27.i, align 4
  %index.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 15
  %38 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i, align 4
  %index29.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 15
  %40 = ptrtoint ptr %index29.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %index29.i, align 8
  %dir.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 17
  %41 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dir.i, align 1
  %dir31.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 17
  %43 = ptrtoint ptr %dir31.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %dir31.i, align 1
  %hwid.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 18
  %44 = ptrtoint ptr %hwid.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hwid.i, align 2
  %hwid33.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 18
  %46 = ptrtoint ptr %hwid33.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %hwid33.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %reset_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %reset_ts.i.i, align 4
  tail call fastcc void @ip6gre_tnl_link_config_common(ptr noundef %t) #15
  %49 = ptrtoint ptr %o_flags23.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %o_flags23.i, align 2
  %conv.i.i.i = zext i16 %50 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 4, i32 8
  %and2.i.i.i = and i32 %conv.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %add5.i.i.i = add nuw nsw i32 %spec.select.i.i.i, 4
  %addend.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %add5.i.i.i
  %and8.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  %add11.i.i.i = add nuw nsw i32 %addend.1.i.i.i, 4
  %addend.2.i.i.i = select i1 %tobool9.not.i.i.i, i32 %addend.1.i.i.i, i32 %add11.i.i.i
  %tun_hlen.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 13
  %51 = ptrtoint ptr %tun_hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %addend.2.i.i.i, ptr %tun_hlen.i.i, align 8
  %encap_hlen.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 14
  %52 = ptrtoint ptr %encap_hlen.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %encap_hlen.i.i, align 4
  %add.i.i = add i32 %addend.2.i.i.i, %53
  %hlen.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 12
  %54 = ptrtoint ptr %hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i, ptr %hlen.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 1
  %55 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i, align 4
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 49
  %57 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %58, null
  %59 = trunc i32 %add.i.i to i16
  %conv7.i.i = add i16 %59, 168
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 19
  %60 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv7.i.i, ptr %hard_header_len.i.i, align 2
  br label %ip6gre_tnl_link_config.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 21
  %61 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv7.i.i, ptr %needed_headroom.i.i, align 8
  br label %ip6gre_tnl_link_config.exit

ip6gre_tnl_link_config.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %add3.i.i = add i32 %add.i.i, 40
  tail call fastcc void @ip6gre_tnl_link_config_route(ptr noundef %t, i32 noundef %set_mtu, i32 noundef %add3.i.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6gre_tunnel_locate(ptr noundef %net, ptr noundef %parms, i32 noundef %create) unnamed_addr #2 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #15
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = load i32, ptr @ip6gre_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1)
  %call1 = tail call fastcc ptr @ip6gre_tunnel_find(ptr noundef %net, ptr noundef %parms, i32 noundef 823)
  %tobool.not = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool2.not = icmp eq i32 %create, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %or.cond65 = or i1 %tobool2.not, %tobool.not.not
  br i1 %or.cond65, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %parms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %parms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call11 = tail call zeroext i1 @dev_valid_name(ptr noundef %parms) #15
  br i1 %call11, label %if.end13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef %parms, i32 noundef 16) #15
  br label %if.end20

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %4 = call ptr @memcpy(ptr %name, ptr @.str.10, i32 9)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end13
  %call22 = call ptr @alloc_netdev_mqs(i32 noundef 248, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @ip6gre_tunnel_setup, i32 noundef 1, i32 noundef 1) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %net, ptr %nd_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call22, i32 2304
  %parms27 = getelementptr i8, ptr %call22, i32 2320
  %6 = call ptr @memcpy(ptr %parms27, ptr %parms, i32 88)
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 136
  %7 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ip6gre_link_ops, ptr %rtnl_link_ops, align 4
  %dev28 = getelementptr i8, ptr %call22, i32 2308
  %8 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %dev28, align 4
  %net30 = getelementptr i8, ptr %call22, i32 2316
  %9 = ptrtoint ptr %net30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %net, ptr %net30, align 4
  %call31 = call i32 @register_netdevice(ptr noundef nonnull %call22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %failed_free, label %if.end33

if.end33:                                         ; preds = %if.end25
  call fastcc void @ip6gre_tnl_link_config_common(ptr noundef %add.ptr.i) #15
  %o_flags.i.i = getelementptr i8, ptr %call22, i32 2386
  %10 = ptrtoint ptr %o_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %o_flags.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 4, i32 8
  %and2.i.i.i = and i32 %conv.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %add5.i.i.i = add nuw nsw i32 %spec.select.i.i.i, 4
  %addend.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %add5.i.i.i
  %and8.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  %add11.i.i.i = add nuw nsw i32 %addend.1.i.i.i, 4
  %addend.2.i.i.i = select i1 %tobool9.not.i.i.i, i32 %addend.1.i.i.i, i32 %add11.i.i.i
  %tun_hlen.i.i = getelementptr i8, ptr %call22, i32 2528
  %12 = ptrtoint ptr %tun_hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %addend.2.i.i.i, ptr %tun_hlen.i.i, align 8
  %encap_hlen.i.i = getelementptr i8, ptr %call22, i32 2532
  %13 = ptrtoint ptr %encap_hlen.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encap_hlen.i.i, align 4
  %add.i.i = add i32 %addend.2.i.i.i, %14
  %hlen.i.i = getelementptr i8, ptr %call22, i32 2524
  %15 = ptrtoint ptr %hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i.i, ptr %hlen.i.i, align 4
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 4
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  %20 = trunc i32 %add.i.i to i16
  %conv7.i.i = add i16 %20, 168
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 19
  %21 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv7.i.i, ptr %hard_header_len.i.i, align 2
  br label %ip6gre_tnl_link_config.exit

if.else.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 21
  %22 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv7.i.i, ptr %needed_headroom.i.i, align 8
  br label %ip6gre_tnl_link_config.exit

ip6gre_tnl_link_config.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %add3.i.i = add i32 %add.i.i, 40
  call fastcc void @ip6gre_tnl_link_config_route(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %add3.i.i) #15
  %23 = ptrtoint ptr %o_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %o_flags.i.i, align 2
  %25 = and i16 %24, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool35.not = icmp eq i16 %25, 0
  br i1 %tobool35.not, label %if.then36, label %ip6gre_tnl_link_config.exit.if.end37_crit_edge

ip6gre_tnl_link_config.exit.if.end37_crit_edge:   ; preds = %ip6gre_tnl_link_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then36:                                        ; preds = %ip6gre_tnl_link_config.exit
  call void @__sanitizer_cov_trace_pc() #17
  %features = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 23
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features, align 16
  %or = or i64 %27, 4096
  store i64 %or, ptr %features, align 16
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %ip6gre_tnl_link_config.exit.if.end37_crit_edge
  call fastcc void @ip6gre_tunnel_link(ptr noundef %call, ptr noundef %add.ptr.i)
  br label %cleanup

failed_free:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  call void @free_netdev(ptr noundef nonnull %call22) #15
  br label %cleanup

cleanup:                                          ; preds = %failed_free, %if.end37, %if.end20.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %failed_free ], [ %add.ptr.i, %if.end37 ], [ null, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ null, %if.then9.cleanup_crit_edge ], [ null, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_tunnel_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ip6gre_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %2 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ip6gre_dev_free, ptr %priv_destructor, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 823, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 128
  store i32 %or, ptr %flags, align 8
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %addr_len, align 1
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %8, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %9 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %addr_assign_type, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 54
  tail call void @get_random_bytes(ptr noundef %perm_addr, i32 noundef 6) #15
  %10 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %perm_addr, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %perm_addr, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_tunnel_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip6gre_tunnel_init_common(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %0 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %laddr = getelementptr i8, ptr %dev, i32 2352
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %laddr, i32 noundef 16) #15
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %2 = call ptr @memcpy(ptr %broadcast, ptr %raddr, i32 16)
  %3 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %raddr, align 4
  %arrayidx2.i = getelementptr i8, ptr %dev, i32 2372
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %6, %4
  %arrayidx4.i = getelementptr i8, ptr %dev, i32 2376
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %8
  %arrayidx7.i = getelementptr i8, ptr %dev, i32 2380
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %11 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ip6gre_header_ops, ptr %header_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_tunnel_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #2 align 64 {
entry:
  %p = alloca %struct.ip6_tnl_parm2, align 4
  %p1 = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %p) #15
  %0 = call ptr @memset(ptr %p, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %p1) #15
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %net1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net1, align 4
  %3 = load i32, ptr @ip6gre_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %2, i32 noundef %3)
  %4 = call ptr @memset(ptr %p1, i32 0, i32 88)
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %cmd, label %entry.done_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %entry.sw.bb15_crit_edge
    i32 35315, label %entry.sw.bb15_crit_edge327
    i32 35314, label %sw.bb70
  ]

entry.sw.bb15_crit_edge327:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb:                                            ; preds = %entry
  %fb_tunnel_dev = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp = icmp eq ptr %7, %dev
  br i1 %cmp, label %if.then.i, label %sw.bb.if.end10_crit_edge

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then.i:                                        ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #22, !srcloc !166
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !167

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 76) #15
  %9 = call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !168
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %data, i32 noundef 76) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !167

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 76, %if.then.i.if.then11.i.i_crit_edge ], [ 76, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 76, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %done

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %laddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 8
  %laddr1.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %laddr.i, ptr %laddr1.i, i32 16)
  %raddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 9
  %raddr2.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %14 = call ptr @memcpy(ptr %raddr.i, ptr %raddr2.i, i32 16)
  %flags.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 6
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 7
  %17 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags3.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 4
  %18 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hop_limit.i, align 2
  %hop_limit4.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 4
  %20 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %hop_limit4.i, align 2
  %encap_limit.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 3
  %21 = ptrtoint ptr %encap_limit.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %encap_limit.i, align 1
  %encap_limit5.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 3
  %23 = ptrtoint ptr %encap_limit5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %encap_limit5.i, align 1
  %flowinfo.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 5
  %24 = ptrtoint ptr %flowinfo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flowinfo.i, align 4
  %flowinfo6.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 6
  %26 = ptrtoint ptr %flowinfo6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flowinfo6.i, align 4
  %link.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %27 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link.i, align 4
  %link7.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 1
  %29 = ptrtoint ptr %link7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %link7.i, align 4
  %i_key.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %30 = ptrtoint ptr %i_key.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_key.i, align 4
  %i_key8.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 12
  %32 = ptrtoint ptr %i_key8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %i_key8.i, align 4
  %o_key.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %33 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %o_key.i, align 4
  %o_key9.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 13
  %35 = ptrtoint ptr %o_key9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %o_key9.i, align 4
  %i_flags.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 9
  %36 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %i_flags.i, align 4
  %conv.i.i = zext i16 %37 to i32
  %and.lobit.i.i = lshr i16 %37, 15
  %and4.i.i = lshr i16 %37, 13
  %38 = and i16 %and4.i.i, 2
  %39 = or i16 %38, %and.lobit.i.i
  %and12.i.i = lshr i16 %37, 11
  %40 = and i16 %and12.i.i, 4
  %41 = or i16 %39, %40
  %and20.i.i = lshr i16 %37, 9
  %42 = and i16 %and20.i.i, 8
  %43 = or i16 %41, %42
  %and28.i.i = lshr i16 %37, 7
  %44 = and i16 %and28.i.i, 16
  %45 = or i16 %43, %44
  %and36.i.i = and i32 %conv.i.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  %46 = or i16 %45, 32
  %tflags.5.i.i = select i1 %tobool37.not.i.i, i16 %45, i16 %46
  %and44.i.i = and i32 %conv.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %tobool45.not.i.i = icmp eq i32 %and44.i.i, 0
  %47 = or i16 %tflags.5.i.i, 64
  %tflags.6.i.i = select i1 %tobool45.not.i.i, i16 %tflags.5.i.i, i16 %47
  %i_flags10.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 10
  %48 = ptrtoint ptr %i_flags10.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %tflags.6.i.i, ptr %i_flags10.i, align 4
  %o_flags.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 10
  %49 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %o_flags.i, align 2
  %conv.i37.i = zext i16 %50 to i32
  %and.lobit.i38.i = lshr i16 %50, 15
  %and4.i39.i = lshr i16 %50, 13
  %51 = and i16 %and4.i39.i, 2
  %52 = or i16 %51, %and.lobit.i38.i
  %and12.i40.i = lshr i16 %50, 11
  %53 = and i16 %and12.i40.i, 4
  %54 = or i16 %52, %53
  %and20.i41.i = lshr i16 %50, 9
  %55 = and i16 %and20.i41.i, 8
  %56 = or i16 %54, %55
  %and28.i42.i = lshr i16 %50, 7
  %57 = and i16 %and28.i42.i, 16
  %58 = or i16 %56, %57
  %and36.i43.i = and i32 %conv.i37.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i43.i)
  %tobool37.not.i44.i = icmp eq i32 %and36.i43.i, 0
  %59 = or i16 %58, 32
  %tflags.5.i45.i = select i1 %tobool37.not.i44.i, i16 %58, i16 %59
  %and44.i46.i = and i32 %conv.i37.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i46.i)
  %tobool45.not.i47.i = icmp eq i32 %and44.i46.i, 0
  %60 = or i16 %tflags.5.i45.i, 64
  %tflags.6.i48.i = select i1 %tobool45.not.i47.i, i16 %tflags.5.i45.i, i16 %60
  %o_flags12.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 11
  %61 = ptrtoint ptr %o_flags12.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %tflags.6.i48.i, ptr %o_flags12.i, align 2
  %62 = call ptr @memcpy(ptr %p1, ptr %p, i32 16)
  %63 = load i32, ptr @ip6gre_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %2, i32 noundef %63) #15
  %call1.i = call fastcc ptr @ip6gre_tunnel_find(ptr noundef %2, ptr noundef nonnull %p1, i32 noundef 823) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  %spec.select = select i1 %tobool.not.i, ptr %add.ptr.i, ptr %call1.i
  br label %if.end10

if.end10:                                         ; preds = %if.end, %sw.bb.if.end10_crit_edge
  %t.0 = phi ptr [ %add.ptr.i, %sw.bb.if.end10_crit_edge ], [ %spec.select, %if.end ]
  %64 = call ptr @memset(ptr %p, i32 0, i32 76)
  %parms = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4
  %proto.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 2
  %65 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 47, ptr %proto.i, align 4
  %laddr.i198 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %laddr1.i199 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 8
  %66 = call ptr @memcpy(ptr %laddr.i198, ptr %laddr1.i199, i32 16)
  %raddr.i200 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %raddr2.i201 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 9
  %67 = call ptr @memcpy(ptr %raddr.i200, ptr %raddr2.i201, i32 16)
  %flags.i202 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 7
  %68 = ptrtoint ptr %flags.i202 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i202, align 4
  %flags3.i203 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 6
  %70 = ptrtoint ptr %flags3.i203 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %flags3.i203, align 4
  %hop_limit.i204 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %hop_limit.i204 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hop_limit.i204, align 2
  %hop_limit4.i205 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 4
  %73 = ptrtoint ptr %hop_limit4.i205 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %hop_limit4.i205, align 2
  %encap_limit.i206 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 3
  %74 = ptrtoint ptr %encap_limit.i206 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %encap_limit.i206, align 1
  %encap_limit5.i207 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 3
  %76 = ptrtoint ptr %encap_limit5.i207 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %encap_limit5.i207, align 1
  %flowinfo.i208 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 6
  %77 = ptrtoint ptr %flowinfo.i208 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flowinfo.i208, align 4
  %flowinfo6.i209 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 5
  %79 = ptrtoint ptr %flowinfo6.i209 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %flowinfo6.i209, align 4
  %link.i210 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %link.i210 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link.i210, align 4
  %link7.i211 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %82 = ptrtoint ptr %link7.i211 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %link7.i211, align 4
  %i_key.i212 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 12
  %83 = ptrtoint ptr %i_key.i212 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_key.i212, align 4
  %i_key8.i213 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %85 = ptrtoint ptr %i_key8.i213 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %i_key8.i213, align 4
  %o_key.i214 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 13
  %86 = ptrtoint ptr %o_key.i214 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %o_key.i214, align 4
  %o_key9.i215 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %88 = ptrtoint ptr %o_key9.i215 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %o_key9.i215, align 4
  %i_flags.i216 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 10
  %89 = ptrtoint ptr %i_flags.i216 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %i_flags.i216, align 4
  %conv.i.i217 = zext i16 %90 to i32
  %rev65.i.i = call i16 @llvm.bitreverse.i16(i16 %90) #15
  %91 = and i16 %rev65.i.i, -2048
  %and36.i.i218 = and i32 %conv.i.i217, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i218)
  %tobool37.not.i.i219 = icmp eq i32 %and36.i.i218, 0
  %92 = or i16 %91, 1792
  %flags.5.i.i = select i1 %tobool37.not.i.i219, i16 %91, i16 %92
  %and44.i.i220 = and i32 %conv.i.i217, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i220)
  %tobool45.not.i.i221 = icmp eq i32 %and44.i.i220, 0
  %93 = or i16 %flags.5.i.i, 7
  %flags.6.i.i = select i1 %tobool45.not.i.i221, i16 %flags.5.i.i, i16 %93
  %i_flags10.i222 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 9
  %94 = ptrtoint ptr %i_flags10.i222 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %flags.6.i.i, ptr %i_flags10.i222, align 4
  %o_flags.i223 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 11
  %95 = ptrtoint ptr %o_flags.i223 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %o_flags.i223, align 2
  %conv.i38.i = zext i16 %96 to i32
  %rev65.i39.i = call i16 @llvm.bitreverse.i16(i16 %96) #15
  %97 = and i16 %rev65.i39.i, -2048
  %and36.i40.i = and i32 %conv.i38.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i40.i)
  %tobool37.not.i41.i = icmp eq i32 %and36.i40.i, 0
  %98 = or i16 %97, 1792
  %flags.5.i42.i = select i1 %tobool37.not.i41.i, i16 %97, i16 %98
  %and44.i43.i = and i32 %conv.i38.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i43.i)
  %tobool45.not.i44.i = icmp eq i32 %and44.i43.i, 0
  %99 = or i16 %flags.5.i42.i, 7
  %flags.6.i45.i = select i1 %tobool45.not.i44.i, i16 %flags.5.i42.i, i16 %99
  %o_flags12.i224 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 10
  %100 = ptrtoint ptr %o_flags12.i224 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %flags.6.i45.i, ptr %o_flags12.i224, align 2
  %101 = call ptr @memcpy(ptr %p, ptr %parms, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #15
  %call.i.i136 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i136, label %if.end10.done_crit_edge, label %if.end.i.i140

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end.i.i140:                                    ; preds = %if.end10
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #22, !srcloc !171
  %asmresult.i.i138 = extractvalue { i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i138)
  %cmp.i.i139 = icmp eq i32 %asmresult.i.i138, 0
  br i1 %cmp.i.i139, label %copy_to_user.exit, label %if.end.i.i140.done_crit_edge

if.end.i.i140.done_crit_edge:                     ; preds = %if.end.i.i140
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

copy_to_user.exit:                                ; preds = %if.end.i.i140
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i141 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p, i32 noundef 76) #15
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %p, i32 noundef 76) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool12.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select286 = select i1 %tobool12.not, i32 0, i32 -14
  br label %done

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge327
  %user_ns = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %103 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %user_ns, align 4
  %call16 = tail call zeroext i1 @ns_capable(ptr noundef %104, i32 noundef 12) #15
  br i1 %call16, label %if.then.i146, label %sw.bb15.done_crit_edge

sw.bb15.done_crit_edge:                           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then.i146:                                     ; preds = %sw.bb15
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #15
  %call.i.i145 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i145, label %if.then.i146.if.then11.i.i161_crit_edge, label %land.lhs.true.i.i149

if.then.i146.if.then11.i.i161_crit_edge:          ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i161

land.lhs.true.i.i149:                             ; preds = %if.then.i146
  %105 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #22
  %asmresult.i.i147 = extractvalue { i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i147)
  %cmp.i.i148 = icmp eq i32 %asmresult.i.i147, 0
  br i1 %cmp.i.i148, label %if.end.i.i157, label %land.lhs.true.i.i149.if.then11.i.i161_crit_edge, !prof !167

land.lhs.true.i.i149.if.then11.i.i161_crit_edge:  ; preds = %land.lhs.true.i.i149
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i161

if.end.i.i157:                                    ; preds = %land.lhs.true.i.i149
  %call.i.i.i150 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 76) #15
  %106 = call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i.i.i.i151 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i151 to ptr
  %cpu_domain.i.i.i.i.i152 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i152) #8, !srcloc !168
  %and.i.i.i.i153 = and i32 %108, -13
  %or.i.i.i.i154 = or i32 %and.i.i.i.i153, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i154) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  %call1.i.i.i155 = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %data, i32 noundef 76) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i155)
  %tobool4.not.i.i156 = icmp eq i32 %call1.i.i.i155, 0
  br i1 %tobool4.not.i.i156, label %if.end22, label %if.end.i.i157.if.then11.i.i161_crit_edge, !prof !167

if.end.i.i157.if.then11.i.i161_crit_edge:         ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i161

if.then11.i.i161:                                 ; preds = %if.end.i.i157.if.then11.i.i161_crit_edge, %land.lhs.true.i.i149.if.then11.i.i161_crit_edge, %if.then.i146.if.then11.i.i161_crit_edge
  %res.03.i.i158 = phi i32 [ %call1.i.i.i155, %if.end.i.i157.if.then11.i.i161_crit_edge ], [ 76, %if.then.i146.if.then11.i.i161_crit_edge ], [ 76, %land.lhs.true.i.i149.if.then11.i.i161_crit_edge ]
  %sub.i.i159 = sub i32 76, %res.03.i.i158
  %add.ptr.i.i160 = getelementptr i8, ptr %p, i32 %sub.i.i159
  %109 = call ptr @memset(ptr %add.ptr.i.i160, i32 0, i32 %res.03.i.i158)
  br label %done

if.end22:                                         ; preds = %if.end.i.i157
  %i_flags = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 9
  %110 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %i_flags, align 4
  %o_flags = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 10
  %112 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %o_flags, align 2
  %or132 = or i16 %113, %111
  %114 = and i16 %or132, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool24.not = icmp eq i16 %114, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.done_crit_edge

if.end22.done_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end26:                                         ; preds = %if.end22
  %115 = and i16 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool30.not = icmp eq i16 %115, 0
  br i1 %tobool30.not, label %if.then31, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %i_key = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %116 = ptrtoint ptr %i_key to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %i_key, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end26.if.end32_crit_edge
  %117 = and i16 %113, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool36.not = icmp eq i16 %117, 0
  br i1 %tobool36.not, label %if.then37, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %o_key = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %118 = ptrtoint ptr %o_key to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %o_key, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32.if.end38_crit_edge
  %laddr.i225 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 8
  %laddr1.i226 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %119 = call ptr @memcpy(ptr %laddr.i225, ptr %laddr1.i226, i32 16)
  %raddr.i227 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 9
  %raddr2.i228 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %120 = call ptr @memcpy(ptr %raddr.i227, ptr %raddr2.i228, i32 16)
  %flags.i229 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 6
  %121 = ptrtoint ptr %flags.i229 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags.i229, align 4
  %flags3.i230 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 7
  %123 = ptrtoint ptr %flags3.i230 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %flags3.i230, align 4
  %hop_limit.i231 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 4
  %124 = ptrtoint ptr %hop_limit.i231 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %hop_limit.i231, align 2
  %hop_limit4.i232 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 4
  %126 = ptrtoint ptr %hop_limit4.i232 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %hop_limit4.i232, align 2
  %encap_limit.i233 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 3
  %127 = ptrtoint ptr %encap_limit.i233 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %encap_limit.i233, align 1
  %encap_limit5.i234 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 3
  %129 = ptrtoint ptr %encap_limit5.i234 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %encap_limit5.i234, align 1
  %flowinfo.i235 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 5
  %130 = ptrtoint ptr %flowinfo.i235 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flowinfo.i235, align 4
  %flowinfo6.i236 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 6
  %132 = ptrtoint ptr %flowinfo6.i236 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %flowinfo6.i236, align 4
  %link.i237 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %133 = ptrtoint ptr %link.i237 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %link.i237, align 4
  %link7.i238 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 1
  %135 = ptrtoint ptr %link7.i238 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %link7.i238, align 4
  %i_key.i239 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %136 = ptrtoint ptr %i_key.i239 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %i_key.i239, align 4
  %i_key8.i240 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 12
  %138 = ptrtoint ptr %i_key8.i240 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %i_key8.i240, align 4
  %o_key.i241 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %139 = ptrtoint ptr %o_key.i241 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %o_key.i241, align 4
  %o_key9.i242 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 13
  %141 = ptrtoint ptr %o_key9.i242 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %o_key9.i242, align 4
  %conv.i.i244 = zext i16 %111 to i32
  %and.lobit.i.i245 = lshr i16 %111, 15
  %and4.i.i246 = lshr i16 %111, 13
  %142 = and i16 %and4.i.i246, 2
  %143 = or i16 %142, %and.lobit.i.i245
  %and12.i.i247 = lshr i16 %111, 11
  %144 = and i16 %and12.i.i247, 4
  %145 = or i16 %143, %144
  %and20.i.i248 = lshr i16 %111, 9
  %146 = and i16 %and20.i.i248, 8
  %147 = or i16 %145, %146
  %and28.i.i249 = lshr i16 %111, 7
  %148 = and i16 %and28.i.i249, 16
  %149 = or i16 %147, %148
  %and36.i.i250 = and i32 %conv.i.i244, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i250)
  %tobool37.not.i.i251 = icmp eq i32 %and36.i.i250, 0
  %150 = or i16 %149, 32
  %tflags.5.i.i252 = select i1 %tobool37.not.i.i251, i16 %149, i16 %150
  %and44.i.i253 = and i32 %conv.i.i244, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i253)
  %tobool45.not.i.i254 = icmp eq i32 %and44.i.i253, 0
  %151 = or i16 %tflags.5.i.i252, 64
  %tflags.6.i.i255 = select i1 %tobool45.not.i.i254, i16 %tflags.5.i.i252, i16 %151
  %i_flags10.i256 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 10
  %152 = ptrtoint ptr %i_flags10.i256 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %tflags.6.i.i255, ptr %i_flags10.i256, align 4
  %conv.i37.i258 = zext i16 %113 to i32
  %and.lobit.i38.i259 = lshr i16 %113, 15
  %and4.i39.i260 = lshr i16 %113, 13
  %153 = and i16 %and4.i39.i260, 2
  %154 = or i16 %153, %and.lobit.i38.i259
  %and12.i40.i261 = lshr i16 %113, 11
  %155 = and i16 %and12.i40.i261, 4
  %156 = or i16 %154, %155
  %and20.i41.i262 = lshr i16 %113, 9
  %157 = and i16 %and20.i41.i262, 8
  %158 = or i16 %156, %157
  %and28.i42.i263 = lshr i16 %113, 7
  %159 = and i16 %and28.i42.i263, 16
  %160 = or i16 %158, %159
  %and36.i43.i264 = and i32 %conv.i37.i258, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i43.i264)
  %tobool37.not.i44.i265 = icmp eq i32 %and36.i43.i264, 0
  %161 = or i16 %160, 32
  %tflags.5.i45.i266 = select i1 %tobool37.not.i44.i265, i16 %160, i16 %161
  %and44.i46.i267 = and i32 %conv.i37.i258, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i46.i267)
  %tobool45.not.i47.i268 = icmp eq i32 %and44.i46.i267, 0
  %162 = or i16 %tflags.5.i45.i266, 64
  %tflags.6.i48.i269 = select i1 %tobool45.not.i47.i268, i16 %tflags.5.i45.i266, i16 %162
  %o_flags12.i270 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 11
  %163 = ptrtoint ptr %o_flags12.i270 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %tflags.6.i48.i269, ptr %o_flags12.i270, align 2
  %164 = call ptr @memcpy(ptr %p1, ptr %p, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 35313, i32 %cmd)
  %cmp39 = icmp eq i32 %cmd, 35313
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call fastcc ptr @ip6gre_tunnel_locate(ptr noundef %2, ptr noundef nonnull %p1, i32 noundef %conv40)
  %fb_tunnel_dev42 = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 3
  %165 = ptrtoint ptr %fb_tunnel_dev42 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fb_tunnel_dev42, align 4
  %cmp43.not = icmp ne ptr %166, %dev
  call void @__sanitizer_cov_trace_const_cmp4(i32 35315, i32 %cmd)
  %cmp45 = icmp eq i32 %cmd, 35315
  %or.cond = and i1 %cmp45, %cmp43.not
  br i1 %or.cond, label %if.then47, label %if.end38.if.end58_crit_edge

if.end38.if.end58_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then47:                                        ; preds = %if.end38
  %tobool48.not = icmp eq ptr %call41, null
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then47
  %dev50 = getelementptr inbounds %struct.ip6_tnl, ptr %call41, i32 0, i32 1
  %167 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev50, align 4
  %cmp51.not = icmp eq ptr %168, %dev
  br i1 %cmp51.not, label %if.then49.if.then.i167_crit_edge, label %if.then49.done_crit_edge

if.then49.done_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then49.if.then.i167_crit_edge:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i167

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ip6gre_tunnel_unlink(ptr noundef %call2, ptr noundef %add.ptr.i)
  call void @synchronize_net() #15
  call fastcc void @ip6gre_tnl_change(ptr noundef %add.ptr.i, ptr noundef nonnull %p1, i32 noundef 1)
  call fastcc void @ip6gre_tunnel_link(ptr noundef %call2, ptr noundef %add.ptr.i)
  call void @netdev_state_change(ptr noundef %dev) #15
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.end38.if.end58_crit_edge
  %t.1 = phi ptr [ %add.ptr.i, %if.else ], [ %call41, %if.end38.if.end58_crit_edge ]
  %tobool59.not = icmp eq ptr %t.1, null
  br i1 %tobool59.not, label %if.else66, label %if.end58.if.then.i167_crit_edge

if.end58.if.then.i167_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i167

if.then.i167:                                     ; preds = %if.end58.if.then.i167_crit_edge, %if.then49.if.then.i167_crit_edge
  %t.1281 = phi ptr [ %t.1, %if.end58.if.then.i167_crit_edge ], [ %call41, %if.then49.if.then.i167_crit_edge ]
  %169 = call ptr @memset(ptr %p, i32 0, i32 76)
  %parms61 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4
  %proto.i288 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 2
  %170 = ptrtoint ptr %proto.i288 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 47, ptr %proto.i288, align 4
  %laddr1.i290 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 8
  %171 = call ptr @memcpy(ptr %laddr1.i226, ptr %laddr1.i290, i32 16)
  %raddr2.i292 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 9
  %172 = call ptr @memcpy(ptr %raddr2.i228, ptr %raddr2.i292, i32 16)
  %flags.i293 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 7
  %173 = ptrtoint ptr %flags.i293 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags.i293, align 4
  %175 = ptrtoint ptr %flags.i229 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %flags.i229, align 4
  %hop_limit.i295 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 4
  %176 = ptrtoint ptr %hop_limit.i295 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %hop_limit.i295, align 2
  %178 = ptrtoint ptr %hop_limit.i231 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %hop_limit.i231, align 2
  %encap_limit.i297 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 3
  %179 = ptrtoint ptr %encap_limit.i297 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %encap_limit.i297, align 1
  %181 = ptrtoint ptr %encap_limit.i233 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %encap_limit.i233, align 1
  %flowinfo.i299 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 6
  %182 = ptrtoint ptr %flowinfo.i299 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %flowinfo.i299, align 4
  %184 = ptrtoint ptr %flowinfo.i235 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %flowinfo.i235, align 4
  %link.i301 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 1
  %185 = ptrtoint ptr %link.i301 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %link.i301, align 4
  %187 = ptrtoint ptr %link.i237 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %link.i237, align 4
  %i_key.i303 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 12
  %188 = ptrtoint ptr %i_key.i303 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %i_key.i303, align 4
  %190 = ptrtoint ptr %i_key.i239 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %i_key.i239, align 4
  %o_key.i305 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 13
  %191 = ptrtoint ptr %o_key.i305 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %o_key.i305, align 4
  %193 = ptrtoint ptr %o_key.i241 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %o_key.i241, align 4
  %i_flags.i307 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 10
  %194 = ptrtoint ptr %i_flags.i307 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %i_flags.i307, align 4
  %conv.i.i308 = zext i16 %195 to i32
  %rev65.i.i309 = call i16 @llvm.bitreverse.i16(i16 %195) #15
  %196 = and i16 %rev65.i.i309, -2048
  %and36.i.i310 = and i32 %conv.i.i308, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i310)
  %tobool37.not.i.i311 = icmp eq i32 %and36.i.i310, 0
  %197 = or i16 %196, 1792
  %flags.5.i.i312 = select i1 %tobool37.not.i.i311, i16 %196, i16 %197
  %and44.i.i313 = and i32 %conv.i.i308, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i313)
  %tobool45.not.i.i314 = icmp eq i32 %and44.i.i313, 0
  %198 = or i16 %flags.5.i.i312, 7
  %flags.6.i.i315 = select i1 %tobool45.not.i.i314, i16 %flags.5.i.i312, i16 %198
  %199 = ptrtoint ptr %i_flags to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %flags.6.i.i315, ptr %i_flags, align 4
  %o_flags.i317 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1281, i32 0, i32 4, i32 11
  %200 = ptrtoint ptr %o_flags.i317 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %o_flags.i317, align 2
  %conv.i38.i318 = zext i16 %201 to i32
  %rev65.i39.i319 = call i16 @llvm.bitreverse.i16(i16 %201) #15
  %202 = and i16 %rev65.i39.i319, -2048
  %and36.i40.i320 = and i32 %conv.i38.i318, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i40.i320)
  %tobool37.not.i41.i321 = icmp eq i32 %and36.i40.i320, 0
  %203 = or i16 %202, 1792
  %flags.5.i42.i322 = select i1 %tobool37.not.i41.i321, i16 %202, i16 %203
  %and44.i43.i323 = and i32 %conv.i38.i318, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i43.i323)
  %tobool45.not.i44.i324 = icmp eq i32 %and44.i43.i323, 0
  %204 = or i16 %flags.5.i42.i322, 7
  %flags.6.i45.i325 = select i1 %tobool45.not.i44.i324, i16 %flags.5.i42.i322, i16 %204
  %205 = ptrtoint ptr %o_flags to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %flags.6.i45.i325, ptr %o_flags, align 2
  %206 = call ptr @memcpy(ptr %p, ptr %parms61, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #15
  %call.i.i166 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i166, label %if.then.i167.done_crit_edge, label %copy_to_user.exit175

if.then.i167.done_crit_edge:                      ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

copy_to_user.exit175:                             ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i171 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p, i32 noundef 76) #15
  %call.i1.i.i172 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %p, i32 noundef 76) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i172)
  %tobool63.not = icmp eq i32 %call.i1.i.i172, 0
  %spec.select287 = select i1 %tobool63.not, i32 0, i32 -14
  br label %done

if.else66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %cond = select i1 %cmp39, i32 -105, i32 -2
  br label %done

sw.bb70:                                          ; preds = %entry
  %user_ns71 = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %207 = ptrtoint ptr %user_ns71 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %user_ns71, align 4
  %call72 = tail call zeroext i1 @ns_capable(ptr noundef %208, i32 noundef 12) #15
  br i1 %call72, label %if.end74, label %sw.bb70.done_crit_edge

sw.bb70.done_crit_edge:                           ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end74:                                         ; preds = %sw.bb70
  %fb_tunnel_dev75 = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 3
  %209 = ptrtoint ptr %fb_tunnel_dev75 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %fb_tunnel_dev75, align 4
  %cmp76 = icmp eq ptr %210, %dev
  br i1 %cmp76, label %if.then.i179, label %if.end74.if.end94_crit_edge

if.end74.if.end94_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then.i179:                                     ; preds = %if.end74
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #15
  %call.i.i178 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i178, label %if.then.i179.if.then11.i.i194_crit_edge, label %land.lhs.true.i.i182

if.then.i179.if.then11.i.i194_crit_edge:          ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i194

land.lhs.true.i.i182:                             ; preds = %if.then.i179
  %211 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #22, !srcloc !166
  %asmresult.i.i180 = extractvalue { i32, i32 } %211, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i180)
  %cmp.i.i181 = icmp eq i32 %asmresult.i.i180, 0
  br i1 %cmp.i.i181, label %if.end.i.i190, label %land.lhs.true.i.i182.if.then11.i.i194_crit_edge, !prof !167

land.lhs.true.i.i182.if.then11.i.i194_crit_edge:  ; preds = %land.lhs.true.i.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i194

if.end.i.i190:                                    ; preds = %land.lhs.true.i.i182
  %call.i.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 76) #15
  %212 = call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i.i.i.i184 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i.i.i.i.i.i184 to ptr
  %cpu_domain.i.i.i.i.i185 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 4
  %214 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i185) #8, !srcloc !168
  %and.i.i.i.i186 = and i32 %214, -13
  %or.i.i.i.i187 = or i32 %and.i.i.i.i186, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i187) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  %call1.i.i.i188 = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %data, i32 noundef 76) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i188)
  %tobool4.not.i.i189 = icmp eq i32 %call1.i.i.i188, 0
  br i1 %tobool4.not.i.i189, label %if.end82, label %if.end.i.i190.if.then11.i.i194_crit_edge, !prof !167

if.end.i.i190.if.then11.i.i194_crit_edge:         ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i194

if.then11.i.i194:                                 ; preds = %if.end.i.i190.if.then11.i.i194_crit_edge, %land.lhs.true.i.i182.if.then11.i.i194_crit_edge, %if.then.i179.if.then11.i.i194_crit_edge
  %res.03.i.i191 = phi i32 [ %call1.i.i.i188, %if.end.i.i190.if.then11.i.i194_crit_edge ], [ 76, %if.then.i179.if.then11.i.i194_crit_edge ], [ 76, %land.lhs.true.i.i182.if.then11.i.i194_crit_edge ]
  %sub.i.i192 = sub i32 76, %res.03.i.i191
  %add.ptr.i.i193 = getelementptr i8, ptr %p, i32 %sub.i.i192
  %215 = call ptr @memset(ptr %add.ptr.i.i193, i32 0, i32 %res.03.i.i191)
  br label %done

if.end82:                                         ; preds = %if.end.i.i190
  call fastcc void @ip6gre_tnl_parm_from_user(ptr noundef nonnull %p1, ptr noundef nonnull %p)
  %call83 = call fastcc ptr @ip6gre_tunnel_locate(ptr noundef %2, ptr noundef nonnull %p1, i32 noundef 0)
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.end82.done_crit_edge, label %if.end86

if.end82.done_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end86:                                         ; preds = %if.end82
  %216 = ptrtoint ptr %fb_tunnel_dev75 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %fb_tunnel_dev75, align 4
  %add.ptr.i272 = getelementptr i8, ptr %217, i32 2304
  %cmp89 = icmp eq ptr %call83, %add.ptr.i272
  br i1 %cmp89, label %if.end86.done_crit_edge, label %if.end92

if.end86.done_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  %dev93 = getelementptr inbounds %struct.ip6_tnl, ptr %call83, i32 0, i32 1
  %218 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev93, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %if.end74.if.end94_crit_edge
  %dev.addr.0 = phi ptr [ %219, %if.end92 ], [ %dev, %if.end74.if.end94_crit_edge ]
  call void @unregister_netdevice_queue(ptr noundef %dev.addr.0, ptr noundef null) #15
  br label %done

done:                                             ; preds = %if.end94, %if.end86.done_crit_edge, %if.end82.done_crit_edge, %if.then11.i.i194, %sw.bb70.done_crit_edge, %if.else66, %copy_to_user.exit175, %if.then.i167.done_crit_edge, %if.then49.done_crit_edge, %if.end22.done_crit_edge, %if.then11.i.i161, %sw.bb15.done_crit_edge, %copy_to_user.exit, %if.end.i.i140.done_crit_edge, %if.end10.done_crit_edge, %if.then11.i.i, %entry.done_crit_edge
  %err.0 = phi i32 [ -1, %if.end86.done_crit_edge ], [ 0, %if.end94 ], [ -2, %if.end82.done_crit_edge ], [ -1, %sw.bb70.done_crit_edge ], [ -22, %if.end22.done_crit_edge ], [ %cond, %if.else66 ], [ -1, %sw.bb15.done_crit_edge ], [ -17, %if.then49.done_crit_edge ], [ -22, %entry.done_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end10.done_crit_edge ], [ -14, %if.end.i.i140.done_crit_edge ], [ -14, %if.then11.i.i161 ], [ -14, %if.then.i167.done_crit_edge ], [ -14, %if.then11.i.i194 ], [ %spec.select286, %copy_to_user.exit ], [ %spec.select287, %copy_to_user.exit175 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %p1) #15
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %p) #15
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #2 align 64 {
entry:
  %keys.i.i = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hlen = getelementptr i8, ptr %dev, i32 2524
  %0 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hlen, align 4
  %add = add i32 %1, 40
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add) #15
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %fl = getelementptr i8, ptr %dev, i32 2408
  %flowlabel = getelementptr i8, ptr %dev, i32 2480
  %4 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flowlabel, align 8
  %and.i = and i32 %5, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.ip6_make_flowlabel.exit_crit_edge

entry.ip6_make_flowlabel.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6_make_flowlabel.exit

lor.lhs.false.i:                                  ; preds = %entry
  %auto_flowlabels.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 1, i32 17
  %6 = ptrtoint ptr %auto_flowlabels.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %auto_flowlabels.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6_make_flowlabel.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %8 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %9 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %if.then.i.i, label %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge

if.end.i.skb_get_hash_flowi6.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_get_hash_flowi6.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys.i.i) #15
  %11 = call ptr @memset(ptr %keys.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__get_hash_from_flowi6(ptr noundef %fl, ptr noundef nonnull %keys.i.i) #15
  %ports.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %flow_keys_have_l4.exit.i.i, label %flow_keys_have_l4.exit.thread.i.i

flow_keys_have_l4.exit.thread.i.i:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i11.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear.i.i12.i.i = and i16 %bf.load.i.i11.i.i, -193
  br label %18

flow_keys_have_l4.exit.i.i:                       ; preds = %if.then.i.i
  %tags.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %tags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.i.not.i.i = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, -193
  br i1 %tobool1.i.not.i.i, label %flow_keys_have_l4.exit.i.i._crit_edge, label %flow_keys_have_l4.exit.i.i._crit_edge49

flow_keys_have_l4.exit.i.i._crit_edge49:          ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %18

flow_keys_have_l4.exit.i.i._crit_edge:            ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %19

18:                                               ; preds = %flow_keys_have_l4.exit.i.i._crit_edge49, %flow_keys_have_l4.exit.thread.i.i
  %bf.clear.i.i14.i.i = phi i16 [ %bf.clear.i.i12.i.i, %flow_keys_have_l4.exit.thread.i.i ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge49 ]
  br label %19

19:                                               ; preds = %18, %flow_keys_have_l4.exit.i.i._crit_edge
  %bf.clear.i.i13.i.i = phi i16 [ %bf.clear.i.i14.i.i, %18 ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %20 = phi i16 [ 192, %18 ], [ 64, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %bf.set8.i.i.i.i = or i16 %20, %bf.clear.i.i13.i.i
  %21 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.set8.i.i.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %22 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i.i, ptr %hash10.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys.i.i) #15
  br label %skb_get_hash_flowi6.exit.i

skb_get_hash_flowi6.exit.i:                       ; preds = %19, %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge
  %hash7.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %23 = ptrtoint ptr %hash7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash7.i.i, align 4
  %or.i.i = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 16) #15
  %and11.i = and i32 %or.i.i, 1048575
  %flowlabel_state_ranges.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 1, i32 27
  %25 = ptrtoint ptr %flowlabel_state_ranges.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flowlabel_state_ranges.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not.i = icmp eq i8 %26, 0
  %or.i = or i32 %and11.i, 524288
  %spec.select.i = select i1 %tobool14.not.i, i32 %and11.i, i32 %or.i
  br label %ip6_make_flowlabel.exit

ip6_make_flowlabel.exit:                          ; preds = %skb_get_hash_flowi6.exit.i, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge, %entry.ip6_make_flowlabel.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %skb_get_hash_flowi6.exit.i ], [ 0, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge ], [ %and.i, %entry.ip6_make_flowlabel.exit_crit_edge ]
  %or1.i = or i32 %retval.0.i, 1610612736
  %27 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or1.i, ptr %call1, align 4
  %hop_limit = getelementptr i8, ptr %dev, i32 2342
  %28 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hop_limit, align 2
  %hop_limit6 = getelementptr inbounds %struct.ipv6hdr, ptr %call1, i32 0, i32 4
  %30 = ptrtoint ptr %hop_limit6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %hop_limit6, align 1
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %call1, i32 0, i32 3
  %31 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 47, ptr %nexthdr, align 2
  %saddr7 = getelementptr inbounds %struct.ipv6hdr, ptr %call1, i32 0, i32 5
  %laddr = getelementptr i8, ptr %dev, i32 2352
  %32 = call ptr @memcpy(ptr %saddr7, ptr %laddr, i32 16)
  %daddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %call1, i32 0, i32 6
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %33 = call ptr @memcpy(ptr %daddr9, ptr %raddr, i32 16)
  %add.ptr = getelementptr %struct.ipv6hdr, ptr %call1, i32 1
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %34 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %o_flags, align 2
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr, align 2
  %arrayidx12 = getelementptr %struct.ipv6hdr, ptr %call1, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %type, ptr %arrayidx12, align 2
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %ip6_make_flowlabel.exit.if.end_crit_edge, label %if.then

ip6_make_flowlabel.exit.if.end_crit_edge:         ; preds = %ip6_make_flowlabel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %ip6_make_flowlabel.exit
  call void @__sanitizer_cov_trace_pc() #17
  %38 = call ptr @memcpy(ptr %saddr7, ptr %saddr, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %ip6_make_flowlabel.exit.if.end_crit_edge
  %tobool14.not = icmp eq ptr %daddr, null
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %39 = call ptr @memcpy(ptr %daddr9, ptr %daddr, i32 16)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %40 = ptrtoint ptr %daddr9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %daddr9, align 4
  %arrayidx2.i = getelementptr %struct.ipv6hdr, ptr %call1, i32 0, i32 6, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx2.i, align 4
  %or.i47 = or i32 %43, %41
  %arrayidx4.i = getelementptr %struct.ipv6hdr, ptr %call1, i32 0, i32 6, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i47, %45
  %arrayidx7.i = getelementptr %struct.ipv6hdr, ptr %call1, i32 0, i32 6, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i48 = icmp eq i32 %or8.i, 0
  %48 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hlen, align 4
  %sub = sub i32 0, %49
  %retval.0 = select i1 %cmp.i48, i32 %sub, i32 %49
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_hash_from_flowi6(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ip6gre_tnl_parm_from_user(ptr nocapture noundef writeonly %p, ptr nocapture noundef readonly %u) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %laddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  %laddr1 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 7
  %0 = call ptr @memcpy(ptr %laddr, ptr %laddr1, i32 16)
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  %raddr2 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 8
  %1 = call ptr @memcpy(ptr %raddr, ptr %raddr2, i32 16)
  %flags = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags3, align 4
  %hop_limit = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 4
  %5 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hop_limit, align 2
  %hop_limit4 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 4
  %7 = ptrtoint ptr %hop_limit4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %hop_limit4, align 2
  %encap_limit = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 3
  %8 = ptrtoint ptr %encap_limit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %encap_limit, align 1
  %encap_limit5 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 3
  %10 = ptrtoint ptr %encap_limit5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %encap_limit5, align 1
  %flowinfo = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 5
  %11 = ptrtoint ptr %flowinfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flowinfo, align 4
  %flowinfo6 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 6
  %13 = ptrtoint ptr %flowinfo6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flowinfo6, align 4
  %link = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link, align 4
  %link7 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 1
  %16 = ptrtoint ptr %link7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %link7, align 4
  %i_key = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 11
  %17 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_key, align 4
  %i_key8 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 12
  %19 = ptrtoint ptr %i_key8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i_key8, align 4
  %o_key = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 12
  %20 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %o_key, align 4
  %o_key9 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 13
  %22 = ptrtoint ptr %o_key9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %o_key9, align 4
  %i_flags = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 9
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_flags, align 4
  %conv.i = zext i16 %24 to i32
  %and.lobit.i = lshr i16 %24, 15
  %and4.i = lshr i16 %24, 13
  %25 = and i16 %and4.i, 2
  %26 = or i16 %25, %and.lobit.i
  %and12.i = lshr i16 %24, 11
  %27 = and i16 %and12.i, 4
  %28 = or i16 %26, %27
  %and20.i = lshr i16 %24, 9
  %29 = and i16 %and20.i, 8
  %30 = or i16 %28, %29
  %and28.i = lshr i16 %24, 7
  %31 = and i16 %and28.i, 16
  %32 = or i16 %30, %31
  %and36.i = and i32 %conv.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %33 = or i16 %32, 32
  %tflags.5.i = select i1 %tobool37.not.i, i16 %32, i16 %33
  %and44.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %34 = or i16 %tflags.5.i, 64
  %tflags.6.i = select i1 %tobool45.not.i, i16 %tflags.5.i, i16 %34
  %i_flags10 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 10
  %35 = ptrtoint ptr %i_flags10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %tflags.6.i, ptr %i_flags10, align 4
  %o_flags = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %u, i32 0, i32 10
  %36 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %o_flags, align 2
  %conv.i37 = zext i16 %37 to i32
  %and.lobit.i38 = lshr i16 %37, 15
  %and4.i39 = lshr i16 %37, 13
  %38 = and i16 %and4.i39, 2
  %39 = or i16 %38, %and.lobit.i38
  %and12.i40 = lshr i16 %37, 11
  %40 = and i16 %and12.i40, 4
  %41 = or i16 %39, %40
  %and20.i41 = lshr i16 %37, 9
  %42 = and i16 %and20.i41, 8
  %43 = or i16 %41, %42
  %and28.i42 = lshr i16 %37, 7
  %44 = and i16 %and28.i42, 16
  %45 = or i16 %43, %44
  %and36.i43 = and i32 %conv.i37, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i43)
  %tobool37.not.i44 = icmp eq i32 %and36.i43, 0
  %46 = or i16 %45, 32
  %tflags.5.i45 = select i1 %tobool37.not.i44, i16 %45, i16 %46
  %and44.i46 = and i32 %conv.i37, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i46)
  %tobool45.not.i47 = icmp eq i32 %and44.i46, 0
  %47 = or i16 %tflags.5.i45, 64
  %tflags.6.i48 = select i1 %tobool45.not.i47, i16 %tflags.5.i45, i16 %47
  %o_flags12 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 11
  %48 = ptrtoint ptr %o_flags12 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %tflags.6.i48, ptr %o_flags12, align 2
  %49 = call ptr @memcpy(ptr %p, ptr %u, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_dellink(ptr noundef %dev, ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %fb_tunnel_dev = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp.not = icmp eq ptr %4, %dev
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6erspan_tap_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #15
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip6erspan_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %2 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %3 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ip6gre_dev_free, ptr %priv_destructor, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags, align 16
  %and = and i64 %5, -165921
  %or = or i64 %and, 32768
  store i64 %or, ptr %priv_flags, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6erspan_tap_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp.i = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup105_crit_edge, label %if.end

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.if.end11.i_crit_edge, label %if.then.i

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 10
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup105_crit_edge

if.then.i.cleanup105_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.end.i:                                         ; preds = %if.then.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.cleanup105_crit_edge

if.end.i.cleanup105_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %or.i.i.i = or i32 %5, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.cleanup105_crit_edge, label %is_valid_ether_addr.exit.i.if.end11.i_crit_edge

is_valid_ether_addr.exit.i.if.end11.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

is_valid_ether_addr.exit.i.cleanup105_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.end11.i:                                       ; preds = %is_valid_ether_addr.exit.i.if.end11.i_crit_edge, %if.end.if.end11.i_crit_edge
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 7
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %10, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end.i.i_crit_edge, label %if.then14.i

if.end11.i.if.end.i.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #15
  %11 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %10, i32 noundef 16) #15
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %daddr.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  %daddr.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 4
  %13 = ptrtoint ptr %daddr.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %daddr.sroa.5.0.copyload.i = load i32, ptr %daddr.sroa.5.0.tmp.sroa_idx.i, align 4
  %daddr.sroa.7.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %14 = ptrtoint ptr %daddr.sroa.7.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %daddr.sroa.7.0.copyload.i = load i32, ptr %daddr.sroa.7.0.tmp.sroa_idx.i, align 4
  %daddr.sroa.9.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 12
  %15 = ptrtoint ptr %daddr.sroa.9.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %daddr.sroa.9.0.copyload.i = load i32, ptr %daddr.sroa.9.0.tmp.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #15
  %or.i.i = or i32 %daddr.sroa.5.0.copyload.i, %daddr.sroa.0.0.copyload.i
  %or5.i.i = or i32 %or.i.i, %daddr.sroa.7.0.copyload.i
  %or8.i.i = or i32 %or5.i.i, %daddr.sroa.9.0.copyload.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.cleanup105_crit_edge, label %if.then14.i.if.end.i.i_crit_edge

if.then14.i.if.end.i.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then14.i.cleanup105_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.end.i.i:                                       ; preds = %if.then14.i.if.end.i.i_crit_edge, %if.end11.i.if.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr ptr, ptr %data, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i.i.i, align 2
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %flags.0.i.i = phi i16 [ %19, %if.then2.i.i ], [ 0, %if.end.i.i.if.end6.i.i_crit_edge ]
  %arrayidx7.i27.i = getelementptr ptr, ptr %data, i32 3
  %20 = ptrtoint ptr %arrayidx7.i27.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7.i27.i, align 4
  %tobool8.not.i.i = icmp eq ptr %21, null
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end16.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i29.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i29.i.i, align 2
  %or1428.i.i = or i16 %23, %flags.0.i.i
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end16.i.i_crit_edge
  %flags.1.i.i = phi i16 [ %or1428.i.i, %if.then9.i.i ], [ %flags.0.i.i, %if.end6.i.i.if.end16.i.i_crit_edge ]
  %24 = and i16 %flags.1.i.i, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool18.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool18.not.i.i, label %if.end3, label %if.end16.i.i.cleanup105_crit_edge

if.end16.i.i.cleanup105_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.end3:                                          ; preds = %if.end16.i.i
  %25 = ptrtoint ptr %arrayidx7.i27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7.i27.i, align 4
  %tobool4.not = icmp eq ptr %26, null
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i144 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i144, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3.if.end10_crit_edge
  %flags.0 = phi i16 [ %28, %if.then5 ], [ 0, %if.end3.if.end10_crit_edge ]
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool12.not = icmp eq ptr %30, null
  br i1 %tobool12.not, label %if.end10.if.end20_crit_edge, label %if.then13

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i145 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i145, align 2
  %or18143 = or i16 %32, %flags.0
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end10.if.end20_crit_edge
  %flags.1 = phi i16 [ %or18143, %if.then13 ], [ %flags.0, %if.end10.if.end20_crit_edge ]
  %arrayidx21 = getelementptr ptr, ptr %data, i32 18
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp ne ptr %34, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %flags.1)
  %cmp.not = icmp eq i16 %flags.1, 12288
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end26, label %if.end20.cleanup105_crit_edge

if.end20.cleanup105_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.end26:                                         ; preds = %if.end20
  %arrayidx27 = getelementptr ptr, ptr %data, i32 4
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %36, null
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %land.lhs.true29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.end26
  %add.ptr.i.i146 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i146 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %38)
  %tobool32.not = icmp ult i32 %38, 1024
  br i1 %tobool32.not, label %land.lhs.true29.if.end34_crit_edge, label %land.lhs.true29.cleanup105_crit_edge

land.lhs.true29.cleanup105_crit_edge:             ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true29.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %arrayidx35 = getelementptr ptr, ptr %data, i32 5
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %40, null
  br i1 %tobool36.not, label %if.end34.if.end43_crit_edge, label %land.lhs.true37

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

land.lhs.true37:                                  ; preds = %if.end34
  %add.ptr.i.i147 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %42)
  %tobool41.not = icmp ult i32 %42, 1024
  br i1 %tobool41.not, label %land.lhs.true37.if.end43_crit_edge, label %land.lhs.true37.cleanup105_crit_edge

land.lhs.true37.cleanup105_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

land.lhs.true37.if.end43_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true37.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %arrayidx44 = getelementptr ptr, ptr %data, i32 22
  %43 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %44, null
  br i1 %tobool45.not, label %if.end43.if.end104_crit_edge, label %if.then46

if.end43.if.end104_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then46:                                        ; preds = %if.end43
  %add.ptr.i.i148 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i148, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %46, label %if.then46.cleanup105_crit_edge [
    i8 1, label %if.then60
    i8 2, label %if.then73
  ]

if.then46.cleanup105_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.then60:                                        ; preds = %if.then46
  %arrayidx61 = getelementptr ptr, ptr %data, i32 21
  %48 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %49, null
  br i1 %tobool62.not, label %if.then60.if.end104_crit_edge, label %if.then63

if.then60.if.end104_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then63:                                        ; preds = %if.then60
  %add.ptr.i.i149 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %51)
  %tobool67.not = icmp ult i32 %51, 1048576
  br i1 %tobool67.not, label %if.then63.if.end104_crit_edge, label %if.then63.cleanup105_crit_edge

if.then63.cleanup105_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.then63.if.end104_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then73:                                        ; preds = %if.then46
  %arrayidx74 = getelementptr ptr, ptr %data, i32 23
  %52 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx74, align 4
  %tobool75.not = icmp eq ptr %53, null
  br i1 %tobool75.not, label %if.then73.if.end88_crit_edge, label %if.then76

if.then73.if.end88_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then76:                                        ; preds = %if.then73
  %add.ptr.i.i150 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i150 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i.i150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %tobool82.not = icmp ult i8 %55, 2
  br i1 %tobool82.not, label %if.then76.if.end88_crit_edge, label %if.then76.cleanup105_crit_edge

if.then76.cleanup105_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.then76.if.end88_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.end88:                                         ; preds = %if.then76.if.end88_crit_edge, %if.then73.if.end88_crit_edge
  %arrayidx89 = getelementptr ptr, ptr %data, i32 24
  %56 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %57, null
  br i1 %tobool90.not, label %if.end88.if.end104_crit_edge, label %if.then91

if.end88.if.end104_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then91:                                        ; preds = %if.end88
  %add.ptr.i.i151 = getelementptr i8, ptr %57, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i151 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %59)
  %tobool96.not = icmp ult i16 %59, 64
  br i1 %tobool96.not, label %if.then91.if.end104_crit_edge, label %if.then91.cleanup105_crit_edge

if.then91.cleanup105_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup105

if.then91.if.end104_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.end104:                                        ; preds = %if.then91.if.end104_crit_edge, %if.end88.if.end104_crit_edge, %if.then63.if.end104_crit_edge, %if.then60.if.end104_crit_edge, %if.end43.if.end104_crit_edge
  br label %cleanup105

cleanup105:                                       ; preds = %if.end104, %if.then91.cleanup105_crit_edge, %if.then76.cleanup105_crit_edge, %if.then63.cleanup105_crit_edge, %if.then46.cleanup105_crit_edge, %land.lhs.true37.cleanup105_crit_edge, %land.lhs.true29.cleanup105_crit_edge, %if.end20.cleanup105_crit_edge, %if.end16.i.i.cleanup105_crit_edge, %if.then14.i.cleanup105_crit_edge, %is_valid_ether_addr.exit.i.cleanup105_crit_edge, %if.end.i.cleanup105_crit_edge, %if.then.i.cleanup105_crit_edge, %entry.cleanup105_crit_edge
  %retval.4 = phi i32 [ 0, %if.end104 ], [ -22, %if.then63.cleanup105_crit_edge ], [ -22, %if.then91.cleanup105_crit_edge ], [ -22, %if.then76.cleanup105_crit_edge ], [ 0, %entry.cleanup105_crit_edge ], [ -22, %if.end20.cleanup105_crit_edge ], [ -22, %land.lhs.true29.cleanup105_crit_edge ], [ -22, %land.lhs.true37.cleanup105_crit_edge ], [ -22, %if.then46.cleanup105_crit_edge ], [ -99, %if.end.i.cleanup105_crit_edge ], [ -22, %if.end16.i.i.cleanup105_crit_edge ], [ -22, %if.then14.i.cleanup105_crit_edge ], [ -99, %is_valid_ether_addr.exit.i.cleanup105_crit_edge ], [ -22, %if.then.i.cleanup105_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6erspan_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %parms = getelementptr i8, ptr %dev, i32 2320
  tail call fastcc void @ip6gre_netlink_parms(ptr noundef %data, ptr noundef %parms)
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.ip6erspan_set_version.exit_crit_edge, label %if.end.i

entry.ip6erspan_set_version.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.end.i:                                         ; preds = %entry
  %erspan_ver.i = getelementptr i8, ptr %dev, i32 2404
  %2 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %erspan_ver.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %data, i32 22
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i.if.then8.i_crit_edge, label %if.end5.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i.i.i, align 1
  %7 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %erspan_ver.i, align 4
  %8 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %6, label %if.end5.i.ip6erspan_set_version.exit_crit_edge [
    i8 1, label %if.end5.i.if.then8.i_crit_edge
    i8 2, label %if.then19.i
  ]

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

if.end5.i.ip6erspan_set_version.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.then8.i:                                       ; preds = %if.end5.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %arrayidx9.i = getelementptr ptr, ptr %data, i32 21
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %10, null
  br i1 %tobool10.not.i, label %if.then8.i.ip6erspan_set_version.exit_crit_edge, label %if.then11.i

if.then8.i.ip6erspan_set_version.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i51.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i51.i, align 4
  %index.i = getelementptr i8, ptr %dev, i32 2400
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %index.i, align 4
  br label %ip6erspan_set_version.exit

if.then19.i:                                      ; preds = %if.end5.i
  %arrayidx20.i = getelementptr ptr, ptr %data, i32 23
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx20.i, align 4
  %tobool21.not.i = icmp eq ptr %15, null
  br i1 %tobool21.not.i, label %if.then19.i.if.end25.i_crit_edge, label %if.then22.i

if.then19.i.if.end25.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i52.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i52.i, align 1
  %dir.i = getelementptr i8, ptr %dev, i32 2405
  %18 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %dir.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.then19.i.if.end25.i_crit_edge
  %arrayidx26.i = getelementptr ptr, ptr %data, i32 24
  %19 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %20, null
  br i1 %tobool27.not.i, label %if.end25.i.ip6erspan_set_version.exit_crit_edge, label %if.then28.i

if.end25.i.ip6erspan_set_version.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i53.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i53.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i53.i, align 2
  %hwid.i = getelementptr i8, ptr %dev, i32 2406
  %23 = ptrtoint ptr %hwid.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %hwid.i, align 2
  br label %ip6erspan_set_version.exit

ip6erspan_set_version.exit:                       ; preds = %if.then28.i, %if.end25.i.ip6erspan_set_version.exit_crit_edge, %if.then11.i, %if.then8.i.ip6erspan_set_version.exit_crit_edge, %if.end5.i.ip6erspan_set_version.exit_crit_edge, %entry.ip6erspan_set_version.exit_crit_edge
  %24 = load i32, ptr @ip6gre_net_id, align 4
  %call3 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %24)
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %25 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %ip6erspan_set_version.exit
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call5, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @ip6erspan_newlink.__warned, align 1
  br i1 %.b45, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6erspan_newlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2245, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %collect_md_tun_erspan = getelementptr inbounds %struct.ip6gre_net, ptr %call3, i32 0, i32 2
  %27 = ptrtoint ptr %collect_md_tun_erspan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %collect_md_tun_erspan, align 4
  %tobool11.not = icmp eq ptr %28, null
  br i1 %tobool11.not, label %do.end.if.end19_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.else:                                          ; preds = %ip6erspan_set_version.exit
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type, align 16
  %conv = zext i16 %30 to i32
  %call15 = tail call fastcc ptr @ip6gre_tunnel_find(ptr noundef %1, ptr noundef %parms, i32 noundef %conv)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %call20 = tail call fastcc i32 @ip6gre_newlink_common(ptr noundef %dev, ptr noundef %tb, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %32, null
  %lnot.ext = zext i1 %tobool23.not to i32
  tail call fastcc void @ip6gre_tnl_link_config_common(ptr noundef %add.ptr.i) #15
  %tun_hlen.i.i = getelementptr i8, ptr %dev, i32 2528
  %33 = ptrtoint ptr %tun_hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %tun_hlen.i.i, align 8
  %encap_hlen.i.i = getelementptr i8, ptr %dev, i32 2532
  %34 = ptrtoint ptr %encap_hlen.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %encap_hlen.i.i, align 4
  %add.i.i = add i32 %35, 8
  %erspan_ver.i.i = getelementptr i8, ptr %dev, i32 2404
  %36 = ptrtoint ptr %erspan_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %erspan_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.i.i.i = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp1.i.i.i = icmp eq i8 %37, 1
  %add.i.i.i = select i1 %cmp1.i.i.i, i32 8, i32 12
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %add2.i.i = add i32 %add.i.i, %retval.0.i.i.i
  %hlen.i.i = getelementptr i8, ptr %dev, i32 2524
  %38 = ptrtoint ptr %hlen.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add2.i.i, ptr %hlen.i.i, align 4
  %add4.i.i = add i32 %add2.i.i, 40
  %39 = trunc i32 %add2.i.i to i16
  %conv6.i.i = add i16 %39, 168
  %dev.i.i = getelementptr i8, ptr %dev, i32 2308
  %40 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i, align 4
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv6.i.i, ptr %needed_headroom.i.i, align 8
  tail call fastcc void @ip6gre_tnl_link_config_route(ptr noundef %add.ptr.i, i32 noundef %lnot.ext, i32 noundef %add4.i.i) #15
  %43 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i46 = icmp eq i8 %44, 0
  br i1 %tobool.not.i46, label %if.then22.ip6erspan_tunnel_link_md.exit_crit_edge, label %do.body.i

if.then22.ip6erspan_tunnel_link_md.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_tunnel_link_md.exit

do.body.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !172
  %collect_md_tun_erspan22.i = getelementptr inbounds %struct.ip6gre_net, ptr %call3, i32 0, i32 2
  %45 = ptrtoint ptr %collect_md_tun_erspan22.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %add.ptr.i, ptr %collect_md_tun_erspan22.i, align 4
  br label %ip6erspan_tunnel_link_md.exit

ip6erspan_tunnel_link_md.exit:                    ; preds = %do.body.i, %if.then22.ip6erspan_tunnel_link_md.exit_crit_edge
  %46 = load i32, ptr @ip6gre_net_id, align 4
  %call24 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %46)
  tail call fastcc void @ip6gre_tunnel_link(ptr noundef %call24, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %ip6erspan_tunnel_link_md.exit, %if.end19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %do.end.cleanup_crit_edge ], [ -17, %if.else.cleanup_crit_edge ], [ 0, %ip6erspan_tunnel_link_md.exit ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6erspan_changelink(ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %p = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %p) #15
  %3 = call ptr @memset(ptr %p, i32 255, i32 88)
  %call2 = call fastcc ptr @ip6gre_changelink_common(ptr noundef %dev, ptr noundef %data, ptr noundef nonnull %p)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end.ip6erspan_set_version.exit_crit_edge, label %if.end.i

if.end.ip6erspan_set_version.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.end.i:                                         ; preds = %if.end
  %erspan_ver.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 16
  %5 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %erspan_ver.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %data, i32 22
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.then8.i_crit_edge, label %if.end5.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i.i, align 1
  %10 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %erspan_ver.i, align 4
  %11 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %9, label %if.end5.i.ip6erspan_set_version.exit_crit_edge [
    i8 1, label %if.end5.i.if.then8.i_crit_edge
    i8 2, label %if.then19.i
  ]

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

if.end5.i.ip6erspan_set_version.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.then8.i:                                       ; preds = %if.end5.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %arrayidx9.i = getelementptr ptr, ptr %data, i32 21
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %if.then8.i.ip6erspan_set_version.exit_crit_edge, label %if.then11.i

if.then8.i.ip6erspan_set_version.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i51.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i51.i, align 4
  %index.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 15
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %index.i, align 4
  br label %ip6erspan_set_version.exit

if.then19.i:                                      ; preds = %if.end5.i
  %arrayidx20.i = getelementptr ptr, ptr %data, i32 23
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx20.i, align 4
  %tobool21.not.i = icmp eq ptr %18, null
  br i1 %tobool21.not.i, label %if.then19.i.if.end25.i_crit_edge, label %if.then22.i

if.then19.i.if.end25.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i52.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i.i52.i, align 1
  %dir.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 17
  %21 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %dir.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.then19.i.if.end25.i_crit_edge
  %arrayidx26.i = getelementptr ptr, ptr %data, i32 24
  %22 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %23, null
  br i1 %tobool27.not.i, label %if.end25.i.ip6erspan_set_version.exit_crit_edge, label %if.then28.i

if.end25.i.ip6erspan_set_version.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_set_version.exit

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i53.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i53.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i53.i, align 2
  %hwid.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 18
  %26 = ptrtoint ptr %hwid.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %hwid.i, align 2
  br label %ip6erspan_set_version.exit

ip6erspan_set_version.exit:                       ; preds = %if.then28.i, %if.end25.i.ip6erspan_set_version.exit_crit_edge, %if.then11.i, %if.then8.i.ip6erspan_set_version.exit_crit_edge, %if.end5.i.ip6erspan_set_version.exit_crit_edge, %if.end.ip6erspan_set_version.exit_crit_edge
  %collect_md.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i20 = icmp eq i8 %28, 0
  br i1 %tobool.not.i20, label %ip6erspan_set_version.exit.ip6gre_tunnel_unlink_md.exit_crit_edge, label %do.body4.i

ip6erspan_set_version.exit.ip6gre_tunnel_unlink_md.exit_crit_edge: ; preds = %ip6erspan_set_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6gre_tunnel_unlink_md.exit

do.body4.i:                                       ; preds = %ip6erspan_set_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %collect_md_tun.i = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 1
  %29 = ptrtoint ptr %collect_md_tun.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr null, ptr %collect_md_tun.i, align 4
  br label %ip6gre_tunnel_unlink_md.exit

ip6gre_tunnel_unlink_md.exit:                     ; preds = %do.body4.i, %ip6erspan_set_version.exit.ip6gre_tunnel_unlink_md.exit_crit_edge
  tail call fastcc void @ip6gre_tunnel_unlink(ptr noundef %call1, ptr noundef %call2)
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %31, null
  %lnot.ext = zext i1 %tobool.not to i32
  %laddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 8
  %laddr1.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  %32 = call ptr @memcpy(ptr %laddr.i.i, ptr %laddr1.i.i, i32 16)
  %raddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 9
  %raddr3.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  %33 = call ptr @memcpy(ptr %raddr.i.i, ptr %raddr3.i.i, i32 16)
  %flags.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 7
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %flags5.i.i, align 4
  %hop_limit.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 4
  %37 = ptrtoint ptr %hop_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hop_limit.i.i, align 2
  %hop_limit7.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %hop_limit7.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %hop_limit7.i.i, align 2
  %encap_limit.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 3
  %40 = ptrtoint ptr %encap_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %encap_limit.i.i, align 1
  %encap_limit9.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %encap_limit9.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %encap_limit9.i.i, align 1
  %flowinfo.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 6
  %43 = ptrtoint ptr %flowinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flowinfo.i.i, align 4
  %flowinfo11.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 6
  %45 = ptrtoint ptr %flowinfo11.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %flowinfo11.i.i, align 8
  %link.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 1
  %46 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link.i.i, align 4
  %link13.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %link13.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %link13.i.i, align 8
  %proto.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 2
  %49 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %proto.i.i, align 4
  %proto15.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %proto15.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %proto15.i.i, align 4
  %i_key.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 12
  %52 = ptrtoint ptr %i_key.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_key.i.i, align 4
  %i_key17.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 12
  %54 = ptrtoint ptr %i_key17.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %i_key17.i.i, align 4
  %o_key.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 13
  %55 = ptrtoint ptr %o_key.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %o_key.i.i, align 4
  %o_key19.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 13
  %57 = ptrtoint ptr %o_key19.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %o_key19.i.i, align 8
  %i_flags.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 10
  %58 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %i_flags.i.i, align 4
  %i_flags21.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 10
  %60 = ptrtoint ptr %i_flags21.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %i_flags21.i.i, align 8
  %o_flags.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 11
  %61 = ptrtoint ptr %o_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %o_flags.i.i, align 2
  %o_flags23.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 11
  %63 = ptrtoint ptr %o_flags23.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %o_flags23.i.i, align 2
  %fwmark.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 14
  %64 = ptrtoint ptr %fwmark.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fwmark.i.i, align 4
  %fwmark25.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 14
  %66 = ptrtoint ptr %fwmark25.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %fwmark25.i.i, align 4
  %erspan_ver.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 16
  %67 = ptrtoint ptr %erspan_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %erspan_ver.i.i, align 4
  %erspan_ver27.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 16
  %69 = ptrtoint ptr %erspan_ver27.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %erspan_ver27.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 15
  %70 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index.i.i, align 4
  %index29.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 15
  %72 = ptrtoint ptr %index29.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %index29.i.i, align 8
  %dir.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 17
  %73 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dir.i.i, align 1
  %dir31.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 17
  %75 = ptrtoint ptr %dir31.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %dir31.i.i, align 1
  %hwid.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 18
  %76 = ptrtoint ptr %hwid.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hwid.i.i, align 2
  %hwid33.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 18
  %78 = ptrtoint ptr %hwid33.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %hwid33.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %reset_ts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %reset_ts.i.i.i, align 4
  tail call fastcc void @ip6gre_tnl_link_config_common(ptr noundef %call2) #15
  %tun_hlen.i.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 13
  %81 = ptrtoint ptr %tun_hlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8, ptr %tun_hlen.i.i.i, align 8
  %encap_hlen.i.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 14
  %82 = ptrtoint ptr %encap_hlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %encap_hlen.i.i.i, align 4
  %add.i.i.i = add i32 %83, 8
  %84 = ptrtoint ptr %erspan_ver27.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %erspan_ver27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp.i.i.i.i = icmp eq i8 %85, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp1.i.i.i.i = icmp eq i8 %85, 1
  %add.i.i.i.i = select i1 %cmp1.i.i.i.i, i32 8, i32 12
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %add2.i.i.i = add i32 %add.i.i.i, %retval.0.i.i.i.i
  %hlen.i.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 12
  %86 = ptrtoint ptr %hlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add2.i.i.i, ptr %hlen.i.i.i, align 4
  %add4.i.i.i = add i32 %add2.i.i.i, 40
  %87 = trunc i32 %add2.i.i.i to i16
  %conv6.i.i.i = add i16 %87, 168
  %dev.i.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 1
  %88 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i.i, align 4
  %needed_headroom.i.i.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 21
  %90 = ptrtoint ptr %needed_headroom.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv6.i.i.i, ptr %needed_headroom.i.i.i, align 8
  tail call fastcc void @ip6gre_tnl_link_config_route(ptr noundef %call2, i32 noundef %lnot.ext, i32 noundef %add4.i.i.i) #15
  %91 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i22 = icmp eq i8 %92, 0
  br i1 %tobool.not.i22, label %ip6gre_tunnel_unlink_md.exit.ip6erspan_tunnel_link_md.exit_crit_edge, label %do.body.i

ip6gre_tunnel_unlink_md.exit.ip6erspan_tunnel_link_md.exit_crit_edge: ; preds = %ip6gre_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_tunnel_link_md.exit

do.body.i:                                        ; preds = %ip6gre_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !172
  %collect_md_tun_erspan22.i = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 2
  %93 = ptrtoint ptr %collect_md_tun_erspan22.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call2, ptr %collect_md_tun_erspan22.i, align 4
  br label %ip6erspan_tunnel_link_md.exit

ip6erspan_tunnel_link_md.exit:                    ; preds = %do.body.i, %ip6gre_tunnel_unlink_md.exit.ip6erspan_tunnel_link_md.exit_crit_edge
  tail call fastcc void @ip6gre_tunnel_link(ptr noundef %call1, ptr noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %ip6erspan_tunnel_link_md.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %ip6erspan_tunnel_link_md.exit ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %p) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6erspan_tap_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %net = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %net, align 4
  %parms = getelementptr i8, ptr %dev, i32 2320
  %call5 = tail call ptr @strcpy(ptr noundef %parms, ptr noundef %dev) #19
  %call6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call771 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call771, i32 %4)
  %cmp72 = icmp ult i32 %call771, %4
  br i1 %cmp72, label %for.body.lr.ph, label %for.cond.preheader.if.end15_crit_edge

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %call6 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call773 = phi i32 [ %call771, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call773
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %5
  %10 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ip6erspan_tap_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %11 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %syncp, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %call773, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %for.cond.preheader.if.end15_crit_edge
  %13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6, ptr %13, align 64
  %dst_cache = getelementptr i8, ptr %dev, i32 2496
  %call16 = tail call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_alloc_pcpu_stats_crit_edge

if.end15.cleanup_alloc_pcpu_stats_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup_alloc_pcpu_stats

if.end19:                                         ; preds = %if.end15
  %gro_cells = getelementptr i8, ptr %dev, i32 2504
  %call20 = tail call i32 @gro_cells_init(ptr noundef %gro_cells, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup_dst_cache_init

if.end23:                                         ; preds = %if.end19
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2528
  %15 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %tun_hlen.i, align 8
  %encap_hlen.i = getelementptr i8, ptr %dev, i32 2532
  %16 = ptrtoint ptr %encap_hlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %encap_hlen.i, align 4
  %add.i = add i32 %17, 8
  %erspan_ver.i = getelementptr i8, ptr %dev, i32 2404
  %18 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %erspan_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp1.i.i = icmp eq i8 %19, 1
  %add.i.i = select i1 %cmp1.i.i, i32 8, i32 12
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %add2.i = add i32 %add.i, %retval.0.i.i
  %hlen.i = getelementptr i8, ptr %dev, i32 2524
  %20 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add2.i, ptr %hlen.i, align 4
  %21 = trunc i32 %add2.i to i16
  %conv6.i = add i16 %21, 168
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv6.i, ptr %needed_headroom.i, align 8
  %sub = sub i32 1460, %add2.i
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp25 = icmp eq i16 %27, 1
  br i1 %cmp25, label %if.then27, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %sub29 = sub i32 1446, %add2.i
  %28 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub29, ptr %mtu, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 2348
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu, align 4
  %sub35 = add i32 %32, -8
  store i32 %sub35, ptr %mtu, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %33 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %priv_flags, align 16
  %or = or i64 %34, 32768
  store i64 %or, ptr %priv_flags, align 16
  tail call fastcc void @ip6gre_tnl_link_config_common(ptr noundef %add.ptr.i) #15
  %35 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %tun_hlen.i, align 8
  %36 = ptrtoint ptr %encap_hlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %encap_hlen.i, align 4
  %add.i.i69 = add i32 %37, 8
  %38 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %erspan_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i.i.i = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp1.i.i.i = icmp eq i8 %39, 1
  %add.i.i.i = select i1 %cmp1.i.i.i, i32 8, i32 12
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %add2.i.i = add i32 %add.i.i69, %retval.0.i.i.i
  %40 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add2.i.i, ptr %hlen.i, align 4
  %add4.i.i = add i32 %add2.i.i, 40
  %41 = trunc i32 %add2.i.i to i16
  %conv6.i.i = add i16 %41, 168
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 4
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv6.i.i, ptr %needed_headroom.i.i, align 8
  tail call fastcc void @ip6gre_tnl_link_config_route(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %add4.i.i) #15
  %dev_tracker = getelementptr i8, ptr %dev, i32 2312
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end36.cleanup_crit_edge, label %do.body1.i.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end36
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !155
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %46 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !143) #15
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i70 = add i32 %54, %48
  %55 = inttoptr i32 %add.i.i70 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i.i = add i32 %57, 1
  store i32 %add13.i.i, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !156
  %and.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !157

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #15, !srcloc !158
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #15
  br label %cleanup

cleanup_dst_cache_init:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #15
  br label %cleanup_alloc_pcpu_stats

cleanup_alloc_pcpu_stats:                         ; preds = %cleanup_dst_cache_init, %if.end15.cleanup_alloc_pcpu_stats_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.cleanup_alloc_pcpu_stats_crit_edge ], [ %call20, %cleanup_dst_cache_init ]
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %13, align 64
  tail call void @free_percpu(ptr noundef %60) #15
  %61 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %13, align 64
  br label %cleanup

cleanup:                                          ; preds = %cleanup_alloc_pcpu_stats, %dev_hold.exit.i, %if.end36.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %ret.0, %cleanup_alloc_pcpu_stats ], [ -12, %if.end.thread ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %dev_hold.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6erspan_tunnel_uninit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %net = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @ip6gre_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %collect_md.i = getelementptr i8, ptr %dev, i32 2343
  %3 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.ip6erspan_tunnel_unlink_md.exit_crit_edge, label %do.body4.i

entry.ip6erspan_tunnel_unlink_md.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip6erspan_tunnel_unlink_md.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %collect_md_tun_erspan.i = getelementptr inbounds %struct.ip6gre_net, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %collect_md_tun_erspan.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %collect_md_tun_erspan.i, align 4
  br label %ip6erspan_tunnel_unlink_md.exit

ip6erspan_tunnel_unlink_md.exit:                  ; preds = %do.body4.i, %entry.ip6erspan_tunnel_unlink_md.exit_crit_edge
  tail call fastcc void @ip6gre_tunnel_unlink(ptr noundef %call1, ptr noundef %add.ptr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr i8, ptr %dev, i32 2500
  %7 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reset_ts.i, align 4
  %tobool.not.i8 = icmp eq ptr %dev, null
  br i1 %tobool.not.i8, label %ip6erspan_tunnel_unlink_md.exit.dev_put_track.exit_crit_edge, label %do.body1.i.i

ip6erspan_tunnel_unlink_md.exit.dev_put_track.exit_crit_edge: ; preds = %ip6erspan_tunnel_unlink_md.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %ip6erspan_tunnel_unlink_md.exit
  %dev_tracker = getelementptr i8, ptr %dev, i32 2312
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #15
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !155
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !143) #15
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
  %add13.i.i = add i32 %20, -1
  store i32 %add13.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !156
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !157

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #15, !srcloc !158
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %ip6erspan_tunnel_unlink_md.exit.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6erspan_tunnel_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %encap_limit = alloca i32, align 4
  %dsfield = alloca i8, align 1
  %fl6 = alloca %struct.flowi6, align 8
  %mtu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !157

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %encap_limit) #15
  %6 = ptrtoint ptr %encap_limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %encap_limit, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dsfield) #15
  %7 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dsfield, align 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #15
  %8 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu) #15
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mtu, align 4, !annotation !159
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %11)
  %switch.selectcmp.i = icmp eq i16 %11, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %11)
  %switch.selectcmp3.i = icmp eq i16 %11, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_dst.exit.if.end_crit_edge, !prof !157

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i.i:                                     ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %19, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_err.thread_crit_edge, label %pskb_inet_may_pull.exit, !prof !157

if.end.i.i.i.tx_err.thread_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #15
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_err.thread_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

pskb_inet_may_pull.exit.tx_err.thread_crit_edge:  ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %skb_dst.exit.if.end_crit_edge
  %laddr = getelementptr i8, ptr %dev, i32 2352
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %call4 = tail call i32 @ip6_tnl_xmit_ctl(ptr noundef %add.ptr.i, ptr noundef %laddr, ptr noundef %raddr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.tx_err.thread_crit_edge, label %if.end6

if.end.tx_err.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

if.end6:                                          ; preds = %if.end
  %call.i308 = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool8.not = icmp eq i32 %call.i308, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.tx_err.thread_crit_edge

if.end6.tx_err.thread_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

if.end10:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i.i.i, align 4
  %mtu11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %24 = ptrtoint ptr %mtu11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu11, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %27 to i32
  %add = add i32 %25, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add)
  %cmp = icmp ugt i32 %23, %add
  br i1 %cmp, label %cond.true.i, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

cond.true.i:                                      ; preds = %if.end10
  %28 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %__skb_trim.exit.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add) #15
  br label %if.end19

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %len.i.i.i.i, align 4
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %32, i32 %add
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %__skb_trim.exit.i.i, %if.then.i.i, %if.end10.if.end19_crit_edge
  %34 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i.i, align 8
  %36 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i = zext i16 %37 to i32
  %add.ptr.i309 = getelementptr i8, ptr %35, i32 %conv.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %38 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mac_header.i, align 2
  %conv.i311 = zext i16 %39 to i32
  %add.ptr.i312 = getelementptr i8, ptr %35, i32 %conv.i311
  %40 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %41)
  %cmp23 = icmp eq i16 %41, 2048
  br i1 %cmp23, label %if.end31.thread, label %if.end31

if.end31.thread:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i309 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i312 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i309, i32 0, i32 2
  %42 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tot_len, align 2
  %conv26 = zext i16 %43 to i32
  %44 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i.i.i, align 4
  %sub = add i32 %sub.ptr.sub.neg, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv26)
  %cmp28 = icmp ult i32 %sub, %conv26
  %spec.select = select i1 %cmp28, i1 true, i1 %cmp
  %transport_header.i353 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  br label %if.end49

if.end31:                                         ; preds = %if.end19
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %41)
  %cmp39 = icmp eq i16 %41, -31011
  br i1 %cmp39, label %land.lhs.true41, label %if.end31.if.end49_crit_edge

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

land.lhs.true41:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i, align 2
  %conv.i314 = zext i16 %47 to i32
  %add.ptr.i315 = getelementptr i8, ptr %35, i32 %conv.i314
  %sub.ptr.lhs.cast34 = ptrtoint ptr %add.ptr.i315 to i32
  %sub.ptr.rhs.cast35 = ptrtoint ptr %add.ptr.i312 to i32
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i309, i32 0, i32 2
  %48 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %payload_len, align 4
  %conv43 = zext i16 %49 to i32
  %50 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.i.i.i, align 4
  %sub.ptr.sub36.neg = add i32 %51, %sub.ptr.rhs.cast35
  %sub45 = sub i32 %sub.ptr.sub36.neg, %sub.ptr.lhs.cast34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub45, i32 %conv43)
  %cmp46 = icmp ult i32 %sub45, %conv43
  %spec.select306 = select i1 %cmp46, i1 true, i1 %cmp
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true41, %if.end31.if.end49_crit_edge, %if.end31.thread
  %transport_header.i357 = phi ptr [ %transport_header.i, %if.end31.if.end49_crit_edge ], [ %transport_header.i, %land.lhs.true41 ], [ %transport_header.i353, %if.end31.thread ]
  %truncate.2.off0 = phi i1 [ %cmp, %if.end31.if.end49_crit_edge ], [ %spec.select306, %land.lhs.true41 ], [ %spec.select, %if.end31.thread ]
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %52 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %needed_headroom, align 8
  %conv50 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool51.not = icmp eq i16 %53, 0
  br i1 %tobool51.not, label %cond.false, label %if.end49.cond.end_crit_edge

if.end49.cond.end_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %hlen = getelementptr i8, ptr %dev, i32 2524
  %54 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hlen, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end49.cond.end_crit_edge
  %cond = phi i32 [ %55, %cond.false ], [ %conv50, %if.end49.cond.end_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %56 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i324 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i324, label %cond.end.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

cond.end.skb_header_cloned.exit.i_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %57 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #15
  %59 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %60, 65535
  %shr.i.i = ashr i32 %60, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %cond.end.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %cond.end.skb_header_cloned.exit.i_crit_edge ]
  %61 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i.i, align 4
  %63 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i326 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i327 = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i328 = sub i32 %sub.ptr.lhs.cast.i.i.i326, %sub.ptr.rhs.cast.i.i.i327
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i328, i32 %cond)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i328, %cond
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end55_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end55_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %65 = tail call i32 @llvm.usub.sat.i32(i32 %cond, i32 %sub.ptr.sub.i.i.i328) #15
  %add.i.i329 = add i32 %65, 127
  %and.i4.i = and i32 %add.i.i329, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool53.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool53.not, label %skb_cow_head.exit.if.end55_crit_edge, label %skb_cow_head.exit.tx_err.thread_crit_edge

skb_cow_head.exit.tx_err.thread_crit_edge:        ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

skb_cow_head.exit.if.end55_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.end55:                                         ; preds = %skb_cow_head.exit.if.end55_crit_edge, %skb_header_cloned.exit.i.if.end55_crit_edge
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %66 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %o_flags, align 2
  %68 = and i16 %67, -5
  store i16 %68, ptr %o_flags, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags, align 4
  %collect_md = getelementptr i8, ptr %dev, i32 2343
  %70 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool60.not = icmp eq i8 %71, 0
  br i1 %tobool60.not, label %if.else113, label %if.then61

if.then61:                                        ; preds = %if.end55
  %call62 = tail call fastcc ptr @skb_tunnel_info_txcheck(ptr noundef %skb)
  %cmp.i330 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330, label %if.then61.tx_err_crit_edge, label %lor.lhs.false

if.then61.tx_err_crit_edge:                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

lor.lhs.false:                                    ; preds = %if.then61
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call62, i32 0, i32 3
  %72 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mode.i, align 1
  %74 = and i8 %73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i331.not = icmp eq i8 %74, 0
  br i1 %tobool.not.i331.not, label %lor.lhs.false.tx_err_crit_edge, label %if.end72, !prof !157

lor.lhs.false.tx_err_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.end72:                                         ; preds = %lor.lhs.false
  %75 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %76 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 47, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %dst74 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call62, i32 0, i32 1, i32 0, i32 1
  %77 = call ptr @memcpy(ptr %daddr, ptr %dst74, i32 16)
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %call62, i32 0, i32 5
  %78 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %label, align 4
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %80 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %flowlabel, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %81 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %nd_net.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %user_ns.i, align 4
  %call.i332 = tail call i32 @make_kuid(ptr noundef %84, i32 noundef 0) #15
  %85 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call.i332, ptr %flowic_uid, align 4
  %86 = ptrtoint ptr %call62 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %call62, align 8
  %conv.i333 = trunc i64 %87 to i32
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %88 = ptrtoint ptr %uli to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i333, ptr %uli, align 4
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %call62, i32 0, i32 3
  %89 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tos, align 2
  %91 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %dsfield, align 1
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %call62, i32 0, i32 2
  %92 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tun_flags, align 8
  %94 = and i16 %93, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool83.not = icmp eq i16 %94, 0
  br i1 %tobool83.not, label %if.end72.tx_err_crit_edge, label %if.end85

if.end72.tx_err_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.end85:                                         ; preds = %if.end72
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %call62, i32 0, i32 2
  %95 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %options_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %96)
  %cmp87 = icmp ult i8 %96, 12
  br i1 %cmp87, label %if.end85.tx_err_crit_edge, label %if.end90

if.end85.tx_err_crit_edge:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.end90:                                         ; preds = %if.end85
  %add.ptr.i334 = getelementptr %struct.ip_tunnel_info, ptr %call62, i32 1
  %97 = ptrtoint ptr %call62 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %call62, align 8
  %conv.i335 = trunc i64 %98 to i32
  %99 = ptrtoint ptr %add.ptr.i334 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i334, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %100, label %if.end90.tx_err_crit_edge [
    i32 1, label %if.then96
    i32 2, label %if.then102
  ]

if.end90.tx_err_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.then96:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %u97 = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i334, i32 0, i32 1
  %102 = ptrtoint ptr %u97 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %u97, align 4
  tail call fastcc void @erspan_build_header(ptr noundef %skb, i32 noundef %conv.i335, i32 noundef %103, i1 noundef zeroext %truncate.2.off0)
  br label %if.end157

if.then102:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %dir = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i334, i32 0, i32 1, i32 0, i32 2
  %104 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load = load i16, ptr %dir, align 2
  %105 = trunc i16 %bf.load to i8
  %106 = lshr i8 %105, 3
  %bf.cast = and i8 %106, 1
  %107 = lshr i16 %bf.load, 4
  %conv106 = and i16 %107, 63
  tail call fastcc void @erspan_build_header_v2(ptr noundef %skb, i32 noundef %conv.i335, i8 noundef zeroext %bf.cast, i16 noundef zeroext %conv106, i1 noundef zeroext %truncate.2.off0)
  br label %if.end157

if.else113:                                       ; preds = %if.end55
  %108 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %protocol.i, align 8
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %109, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb118
  ]

sw.bb:                                            ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #17
  %opt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %111 = call ptr @memset(ptr %opt, i32 0, i32 16)
  call fastcc void @prepare_ip6gre_xmit_ipv4(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %fl6, ptr noundef nonnull %dsfield, ptr noundef nonnull %encap_limit)
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.else113
  %112 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %head.i.i.i.i, align 8
  %114 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i338 = zext i16 %115 to i32
  %add.ptr.i.i339 = getelementptr i8, ptr %113, i32 %conv.i.i338
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i339, i32 0, i32 5
  %116 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %raddr, align 4
  %118 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %saddr, align 4
  %xor.i = xor i32 %119, %117
  %arrayidx4.i = getelementptr i8, ptr %dev, i32 2372
  %120 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %123, %121
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %dev, i32 2376
  %124 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %126 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %127, %125
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr i8, ptr %dev, i32 2380
  %128 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %130 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %131, %129
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i340 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i340, label %sw.bb118.tx_err.thread_crit_edge, label %if.end124

sw.bb118.tx_err.thread_crit_edge:                 ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

if.end124:                                        ; preds = %sw.bb118
  %call125 = call fastcc i32 @prepare_ip6gre_xmit_ipv6(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %fl6, ptr noundef nonnull %dsfield, ptr noundef nonnull %encap_limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end124.sw.epilog_crit_edge, label %if.end124.tx_err.thread_crit_edge

if.end124.tx_err.thread_crit_edge:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

if.end124.sw.epilog_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #17
  %fl = getelementptr i8, ptr %dev, i32 2408
  %132 = call ptr @memcpy(ptr %fl6, ptr %fl, i32 88)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end124.sw.epilog_crit_edge, %sw.bb
  %erspan_ver = getelementptr i8, ptr %dev, i32 2404
  %133 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %erspan_ver, align 4
  %135 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %134, label %sw.epilog.tx_err.thread_crit_edge [
    i8 1, label %if.then134
    i8 2, label %if.then144
  ]

sw.epilog.tx_err.thread_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err.thread

if.then134:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %136 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %o_key, align 8
  %index = getelementptr i8, ptr %dev, i32 2400
  %138 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %index, align 8
  tail call fastcc void @erspan_build_header(ptr noundef %skb, i32 noundef %137, i32 noundef %139, i1 noundef zeroext %truncate.2.off0)
  br label %if.end153

if.then144:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %o_key146 = getelementptr i8, ptr %dev, i32 2392
  %140 = ptrtoint ptr %o_key146 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %o_key146, align 8
  %dir148 = getelementptr i8, ptr %dev, i32 2405
  %142 = ptrtoint ptr %dir148 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dir148, align 1
  %hwid = getelementptr i8, ptr %dev, i32 2406
  %144 = ptrtoint ptr %hwid to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %hwid, align 2
  tail call fastcc void @erspan_build_header_v2(ptr noundef %skb, i32 noundef %141, i8 noundef zeroext %143, i16 noundef zeroext %145, i1 noundef zeroext %truncate.2.off0)
  br label %if.end153

if.end153:                                        ; preds = %if.then144, %if.then134
  %daddr154 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %146 = call ptr @memcpy(ptr %daddr154, ptr %raddr, i32 16)
  br label %if.end157

if.end157:                                        ; preds = %if.end153, %if.then102, %if.then96
  %tun_info.0 = phi ptr [ null, %if.end153 ], [ %call62, %if.then96 ], [ %call62, %if.then102 ]
  %erspan_ver159 = getelementptr i8, ptr %dev, i32 2404
  %147 = ptrtoint ptr %erspan_ver159 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %erspan_ver159, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %148)
  %cmp161 = icmp eq i8 %148, 1
  %conv164 = select i1 %cmp161, i16 -30530, i16 8939
  %o_seqno = getelementptr i8, ptr %dev, i32 2520
  %149 = ptrtoint ptr %o_seqno to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %o_seqno, align 8
  %inc = add i32 %150, 1
  store i32 %inc, ptr %o_seqno, align 8
  %call.i341 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #15
  %151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv164, ptr %151, align 8
  %inner_protocol_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %153 = ptrtoint ptr %inner_protocol_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %bf.load.i.i342 = load i32, ptr %inner_protocol_type.i.i, align 2
  %bf.clear.i.i = and i32 %bf.load.i.i342, -4194305
  store i32 %bf.clear.i.i, ptr %inner_protocol_type.i.i, align 2
  %154 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i.i.i, align 4
  %156 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %155 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %157 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i344 = trunc i32 %sub.ptr.sub.i.i to i16
  %158 = ptrtoint ptr %transport_header.i357 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv.i.i344, ptr %transport_header.i357, align 2
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 4096, ptr %155, align 1
  %protocol.i345 = getelementptr inbounds %struct.gre_base_hdr, ptr %155, i32 0, i32 1
  %160 = ptrtoint ptr %protocol.i345 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 %conv164, ptr %protocol.i345, align 1
  %add.ptr3.i = getelementptr i8, ptr %155, i32 4
  %161 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %150, ptr %add.ptr3.i, align 4
  %162 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %collect_md, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool167.not = icmp ne i8 %163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool169.not = icmp eq i32 %and25.i, 0
  %or.cond = select i1 %tobool167.not, i1 true, i1 %tobool169.not
  br i1 %or.cond, label %if.end157.if.end179_crit_edge, label %land.lhs.true170

if.end157.if.end179_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end179

land.lhs.true170:                                 ; preds = %if.end157
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %164 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mtu.i, align 4
  %call.i347 = tail call i32 %167(ptr noundef nonnull %5) #15
  %168 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %5, align 4
  %mtu173 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 20
  %170 = ptrtoint ptr %mtu173 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mtu173, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i347, i32 %171)
  %cmp174 = icmp ugt i32 %call.i347, %171
  br i1 %cmp174, label %if.then176, label %land.lhs.true170.if.end179_crit_edge

land.lhs.true170.if.end179_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end179

if.then176:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #17
  %172 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ops.i, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %173, i32 0, i32 11
  %174 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %update_pmtu, align 4
  tail call void %175(ptr noundef nonnull %5, ptr noundef null, ptr noundef %skb, i32 noundef %171, i1 noundef zeroext false) #15
  br label %if.end179

if.end179:                                        ; preds = %if.then176, %land.lhs.true170.if.end179_crit_edge, %if.end157.if.end179_crit_edge
  %176 = ptrtoint ptr %dsfield to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %dsfield, align 1
  %178 = ptrtoint ptr %encap_limit to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %encap_limit, align 4
  %call180 = call i32 @ip6_tnl_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext %177, ptr noundef nonnull %fl6, i32 noundef %179, ptr noundef nonnull %mtu, i8 noundef zeroext 47) #15
  %180 = zext i32 %call180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call180, label %if.end179.tx_err_crit_edge [
    i32 0, label %if.end179.cleanup203_crit_edge
    i32 -90, label %if.then186
  ]

if.end179.cleanup203_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup203

if.end179.tx_err_crit_edge:                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

if.then186:                                       ; preds = %if.end179
  %181 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %182)
  %cmp189 = icmp eq i16 %182, 2048
  %183 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mtu, align 4
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #17
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %184) #15
  br label %tx_err

if.else192:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #17
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %184) #15
  br label %tx_err

tx_err.thread:                                    ; preds = %sw.epilog.tx_err.thread_crit_edge, %if.end124.tx_err.thread_crit_edge, %sw.bb118.tx_err.thread_crit_edge, %skb_cow_head.exit.tx_err.thread_crit_edge, %if.end6.tx_err.thread_crit_edge, %if.end.tx_err.thread_crit_edge, %pskb_inet_may_pull.exit.tx_err.thread_crit_edge, %if.end.i.i.i.tx_err.thread_crit_edge
  %dev196363 = getelementptr i8, ptr %dev, i32 2308
  %185 = ptrtoint ptr %dev196363 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev196363, align 4
  br label %if.then199

tx_err:                                           ; preds = %if.else192, %if.then191, %if.end179.tx_err_crit_edge, %if.end90.tx_err_crit_edge, %if.end85.tx_err_crit_edge, %if.end72.tx_err_crit_edge, %lor.lhs.false.tx_err_crit_edge, %if.then61.tx_err_crit_edge
  %tun_info.1 = phi ptr [ %tun_info.0, %if.then191 ], [ %tun_info.0, %if.else192 ], [ %tun_info.0, %if.end179.tx_err_crit_edge ], [ %call62, %lor.lhs.false.tx_err_crit_edge ], [ %call62, %if.then61.tx_err_crit_edge ], [ %call62, %if.end72.tx_err_crit_edge ], [ %call62, %if.end85.tx_err_crit_edge ], [ %call62, %if.end90.tx_err_crit_edge ]
  %dev196 = getelementptr i8, ptr %dev, i32 2308
  %187 = ptrtoint ptr %dev196 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev196, align 4
  %cmp.i348 = icmp ugt ptr %tun_info.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %tx_err.if.end201_crit_edge, label %tx_err.if.then199_crit_edge

tx_err.if.then199_crit_edge:                      ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then199

tx_err.if.end201_crit_edge:                       ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.then199:                                       ; preds = %tx_err.if.then199_crit_edge, %tx_err.thread
  %189 = phi ptr [ %186, %tx_err.thread ], [ %188, %tx_err.if.then199_crit_edge ]
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %189, i32 0, i32 36, i32 5
  %190 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tx_errors, align 4
  %inc200 = add i32 %191, 1
  store i32 %inc200, ptr %tx_errors, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %tx_err.if.end201_crit_edge
  %192 = phi ptr [ %189, %if.then199 ], [ %188, %tx_err.if.end201_crit_edge ]
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %192, i32 0, i32 36, i32 7
  %193 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tx_dropped, align 4
  %inc202 = add i32 %194, 1
  store i32 %inc202, ptr %tx_dropped, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup203

cleanup203:                                       ; preds = %if.end201, %if.end179.cleanup203_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dsfield) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %encap_limit) #15
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erspan_build_header(ptr noundef %skb, i32 noundef %id, i32 noundef %index, i1 noundef zeroext %truncate) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %8)
  %cmp = icmp eq i16 %8, -32512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tci = getelementptr i8, ptr %1, i32 14
  %9 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tci, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enc_type.0 = phi i32 [ 6144, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %vlan_tci.0 = phi i16 [ %10, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #15
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = lshr i8 %bf.load, 1
  %bf.value = zext i8 %13 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 13
  %bf.shl30 = select i1 %truncate, i32 1024, i32 0
  %14 = and i16 %vlan_tci.0, 255
  %bf.value.i = zext i16 %14 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 16
  %bf.shl.masked = and i32 %bf.shl, 57344
  %15 = lshr i16 %vlan_tci.0, 8
  %16 = and i16 %15, 15
  %bf.value6.i = zext i16 %16 to i32
  %bf.shl7.i = shl nuw nsw i32 %bf.value6.i, 24
  %bf.set12.i = and i32 %id, 1023
  %bf.set18.masked = or i32 %bf.shl30, %bf.set12.i
  %bf.set32 = or i32 %bf.set18.masked, %bf.shl.masked
  %bf.clear.i = or i32 %bf.set32, %enc_type.0
  %bf.set9.i = or i32 %bf.clear.i, %bf.shl.i
  %bf.clear.i7 = or i32 %bf.set9.i, %bf.shl7.i
  %bf.set8.i = or i32 %bf.clear.i7, 268435456
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %bf.set8.i, ptr %12, align 1
  %add.ptr35 = getelementptr %struct.erspan_base_hdr, ptr %12, i32 1
  %and = and i32 %index, 1048575
  %18 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %add.ptr35, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erspan_build_header_v2(ptr noundef %skb, i32 noundef %id, i8 noundef zeroext %direction, i16 noundef zeroext %hwid, i1 noundef zeroext %truncate) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %8)
  %cmp = icmp eq i16 %8, -32512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tci = getelementptr i8, ptr %1, i32 14
  %9 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tci, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vlan_tci.0 = phi i16 [ %10, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %12)
  %cmp.i = icmp ult i32 %12, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %12)
  %cmp2.i = icmp ugt i32 %12, 1514
  %call12 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #15
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %15, align 1
  %17 = lshr i8 %bf.load, 1
  %18 = and i8 %17, 7
  %bf.value = zext i8 %18 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 13
  %19 = select i1 %cmp2.i, i32 4096, i32 0
  %bf.value21 = select i1 %cmp.i, i32 2048, i32 %19
  %bf.set19 = or i32 %bf.value21, %bf.shl
  %bf.shl30 = select i1 %truncate, i32 1024, i32 0
  %20 = and i16 %vlan_tci.0, 255
  %bf.value.i = zext i16 %20 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 16
  %bf.set32 = or i32 %bf.set19, %bf.shl30
  %bf.clear.i = or i32 %bf.set32, %bf.shl.i
  %21 = lshr i16 %vlan_tci.0, 8
  %22 = and i16 %21, 15
  %bf.value6.i = zext i16 %22 to i32
  %bf.shl7.i = shl nuw nsw i32 %bf.value6.i, 24
  %bf.set9.i = or i32 %bf.clear.i, %bf.shl7.i
  %bf.set12.i = and i32 %id, 1023
  %bf.clear.i7 = or i32 %bf.set9.i, %bf.set12.i
  %bf.set8.i = or i32 %bf.clear.i7, 536870912
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %bf.set8.i, ptr %14, align 1
  %add.ptr35 = getelementptr %struct.erspan_base_hdr, ptr %14, i32 1
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp8.i.i = icmp slt i64 %call.i.i, 0
  %24 = tail call i64 @llvm.abs.i64(i64 %call.i.i, i1 false) #15
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %24, i32 0) #22, !srcloc !173
  %asmresult.i.i.i = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %24, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #22, !srcloc !174
  %asmresult10.i.i.i = extractvalue { i64, i32 } %26, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 16
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv.i = trunc i64 %cond213.i.i to i32
  %27 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %add.ptr35, align 4
  %sgt38 = getelementptr %struct.erspan_base_hdr, ptr %14, i32 2
  %28 = ptrtoint ptr %sgt38 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %sgt38, align 4
  %p = getelementptr inbounds %struct.erspan_md2, ptr %add.ptr35, i32 0, i32 2
  %29 = shl i8 %direction, 3
  %conv61 = trunc i16 %hwid to i8
  %30 = shl i8 %conv61, 4
  %31 = and i8 %29, 8
  %bf.clear.i1113 = or i8 %30, %31
  %bf.clear.i11 = zext i8 %bf.clear.i1113 to i16
  %32 = lshr i8 %conv61, 4
  %33 = and i8 %32, 3
  %bf.value7.i = zext i8 %33 to i16
  %bf.shl8.i = shl nuw nsw i16 %bf.value7.i, 8
  %bf.set.i12 = or i16 %bf.shl8.i, %bf.clear.i11
  %bf.set10.i = or i16 %bf.set.i12, -32768
  %34 = ptrtoint ptr %p to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.set10.i, ptr %p, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_rcv(ptr noundef %skb) #2 align 64 {
entry:
  %tpi = alloca %struct.tnl_ptk_info, align 4
  %csum_err = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tpi) #15
  %0 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 2
  %2 = call ptr @memset(ptr %tpi, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %csum_err) #15
  %3 = ptrtoint ptr %csum_err to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %csum_err, align 1
  %call = call i32 @gre_parse_header(ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef nonnull %csum_err, i16 noundef zeroext -31011, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.drop_crit_edge, label %if.end

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %0, align 2
  %call.i = call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %call, i16 noundef zeroext %5, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %7, label %if.end19 [
    i16 -30530, label %if.end3.if.then13_crit_edge
    i16 8939, label %if.end3.if.then13_crit_edge73
  ]

if.end3.if.then13_crit_edge73:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.end3.if.then13_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %if.end3.if.then13_crit_edge, %if.end3.if.then13_crit_edge73
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i = load i32, ptr %14, align 1
  %16 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %call1.i = call fastcc ptr @ip6gre_tunnel_lookup(ptr noundef %18, ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %20, i16 noundef zeroext %7) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then13.out_crit_edge, label %if.then.i

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i:                                        ; preds = %if.then13
  %bf.lshr.i = lshr i32 %bf.load.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load.i)
  %cmp.i.i = icmp ult i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.lshr.i)
  %cmp1.i.i = icmp eq i32 %bf.lshr.i, 1
  %add.i.i = select i1 %cmp1.i.i, i32 8, i32 12
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %retval.0.i.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i_crit_edge, !prof !157

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %retval.0.i.i)
  %cmp3.i.i = icmp ult i32 %22, %retval.0.i.i
  br i1 %cmp3.i.i, label %if.end.i.i.out_crit_edge, label %pskb_may_pull.exit.i, !prof !157

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %retval.0.i.i, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #15
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.out_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !157

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

pskb_may_pull.exit.i.out_crit_edge:               ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call8.i = call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %retval.0.i.i, i16 noundef zeroext 25944, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %if.end.i.out_crit_edge, label %if.end11.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end11.i:                                       ; preds = %if.end.i
  %collect_md.i = getelementptr inbounds %struct.ip6_tnl, ptr %call1.i, i32 0, i32 4, i32 5
  %25 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %collect_md.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not.i = icmp eq i8 %26, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  %27 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tpi, align 4
  %29 = or i16 %28, 4
  store i16 %29, ptr %tpi, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i.i
  %36 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %hop_limit.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %hop_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hop_limit.i.i, align 1
  %40 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @metadata_dst_alloc(i8 noundef zeroext 12, i32 noundef 0, i32 noundef 2592) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then13.i.out_crit_edge, label %if.end23.i

if.then13.i.out_crit_edge:                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end23.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i = zext i32 %31 to i64
  %and.i.i.i = and i32 %40, 1048575
  %41 = lshr i16 %37, 4
  %conv1.i.i.i = trunc i16 %41 to i8
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %options_len.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %42 = ptrtoint ptr %options_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %options_len.i.i.i.i, align 8
  %u.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2
  %mode.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 3
  %43 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %mode.i.i.i, align 1
  %tun_flags.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %tun_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %29, ptr %tun_flags.i.i.i, align 8
  %45 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv.i.i, ptr %u.i.i.i, align 8
  %tp_src.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %46 = ptrtoint ptr %tp_src.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %tp_src.i.i.i, align 8
  %tp_dst4.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 7
  %47 = ptrtoint ptr %tp_dst4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %tp_dst4.i.i.i, align 2
  %u6.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %48 = call ptr @memcpy(ptr %u6.i.i.i, ptr %saddr.i.i, i32 16)
  %dst.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %49 = call ptr @memcpy(ptr %dst.i.i.i, ptr %daddr.i.i, i32 16)
  %tos10.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %tos10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv1.i.i.i, ptr %tos10.i.i.i, align 2
  %ttl12.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %51 = ptrtoint ptr %ttl12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %39, ptr %ttl12.i.i.i, align 1
  %label14.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %52 = ptrtoint ptr %label14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i.i.i, ptr %label14.i.i.i, align 4
  %53 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i.i, align 2
  %conv.i86.i = zext i16 %56 to i32
  %add.ptr.i = getelementptr i8, ptr %54, i32 %conv.i86.i
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %add.ptr27.i = getelementptr i8, ptr %add.ptr26.i, i32 4
  %add.ptr.i89.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i.i, i32 1
  %57 = ptrtoint ptr %add.ptr.i89.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bf.lshr.i, ptr %add.ptr.i89.i, align 4
  %u30.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i.i, i32 1, i32 0, i32 1
  %cond.i = select i1 %cmp1.i.i, i32 4, i32 8
  %58 = call ptr @memcpy(ptr %u30.i, ptr %add.ptr27.i, i32 %cond.i)
  %59 = or i16 %28, 16388
  store i16 %59, ptr %tun_flags.i.i.i, align 8
  store i8 12, ptr %options_len.i.i.i.i, align 8
  %60 = load i8, ptr @log_ecn_error, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool38.i = icmp ne i8 %60, 0
  %call39.i = call i32 @ip6_tnl_rcv(ptr noundef nonnull %call1.i, ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext %tobool38.i) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = load i8, ptr @log_ecn_error, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool46.i = icmp ne i8 %61, 0
  %call47.i = call i32 @ip6_tnl_rcv(ptr noundef nonnull %call1.i, ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef null, i1 noundef zeroext %tobool46.i) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end3
  %head.i.i.i34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i34, align 8
  %network_header.i.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i.i35 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i.i35, align 4
  %conv.i.i.i36 = zext i16 %65 to i32
  %add.ptr.i.i.i37 = getelementptr i8, ptr %63, i32 %conv.i.i.i36
  %66 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %saddr.i38 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i37, i32 0, i32 5
  %daddr.i39 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i37, i32 0, i32 6
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %call1.i42 = call fastcc ptr @ip6gre_tunnel_lookup(ptr noundef %68, ptr noundef %saddr.i38, ptr noundef %daddr.i39, i32 noundef %70, i16 noundef zeroext %7) #15
  %tobool.not.i43 = icmp eq ptr %call1.i42, null
  br i1 %tobool.not.i43, label %if.end19.out_crit_edge, label %if.then.i45

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i45:                                      ; preds = %if.end19
  %collect_md.i44 = getelementptr inbounds %struct.ip6_tnl, ptr %call1.i42, i32 0, i32 4, i32 5
  %71 = ptrtoint ptr %collect_md.i44 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %collect_md.i44, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool2.not.i = icmp eq i8 %72, 0
  br i1 %tobool2.not.i, label %if.else.i68, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i45
  %73 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %tpi, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %1, align 4
  %77 = ptrtoint ptr %head.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i.i34, align 8
  %79 = ptrtoint ptr %network_header.i.i.i35 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i.i35, align 4
  %conv.i.i.i.i46 = zext i16 %80 to i32
  %add.ptr.i.i.i.i47 = getelementptr i8, ptr %78, i32 %conv.i.i.i.i46
  %81 = ptrtoint ptr %add.ptr.i.i.i.i47 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i.i.i47, align 2
  %hop_limit.i.i48 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i47, i32 0, i32 4
  %83 = ptrtoint ptr %hop_limit.i.i48 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hop_limit.i.i48, align 1
  %85 = load i32, ptr %add.ptr.i.i.i.i47, align 4
  %call.i.i.i.i49 = call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #15
  %tobool.not.i.i.i.i50 = icmp eq ptr %call.i.i.i.i49, null
  br i1 %tobool.not.i.i.i.i50, label %if.then3.i.out_crit_edge, label %if.end.i67

if.then3.i.out_crit_edge:                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i67:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i51 = zext i32 %76 to i64
  %and.i.i.i52 = and i32 %85, 1048575
  %86 = lshr i16 %82, 4
  %conv1.i.i.i53 = trunc i16 %86 to i8
  %daddr.i.i54 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i47, i32 0, i32 6
  %saddr.i.i55 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i47, i32 0, i32 5
  %options_len.i.i.i.i56 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 2
  %87 = ptrtoint ptr %options_len.i.i.i.i56 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %options_len.i.i.i.i56, align 8
  %u.i.i.i57 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2
  %mode.i.i.i58 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 3
  %88 = ptrtoint ptr %mode.i.i.i58 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %mode.i.i.i58, align 1
  %tun_flags.i.i.i59 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 2
  %89 = ptrtoint ptr %tun_flags.i.i.i59 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %74, ptr %tun_flags.i.i.i59, align 8
  %90 = ptrtoint ptr %u.i.i.i57 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv.i.i51, ptr %u.i.i.i57, align 8
  %tp_src.i.i.i60 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 6
  %91 = ptrtoint ptr %tp_src.i.i.i60 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %tp_src.i.i.i60, align 8
  %tp_dst4.i.i.i61 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 7
  %92 = ptrtoint ptr %tp_dst4.i.i.i61 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %tp_dst4.i.i.i61, align 2
  %u6.i.i.i62 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 1
  %93 = call ptr @memcpy(ptr %u6.i.i.i62, ptr %saddr.i.i55, i32 16)
  %dst.i.i.i63 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %94 = call ptr @memcpy(ptr %dst.i.i.i63, ptr %daddr.i.i54, i32 16)
  %tos10.i.i.i64 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 3
  %95 = ptrtoint ptr %tos10.i.i.i64 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv1.i.i.i53, ptr %tos10.i.i.i64, align 2
  %ttl12.i.i.i65 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 4
  %96 = ptrtoint ptr %ttl12.i.i.i65 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %84, ptr %ttl12.i.i.i65, align 1
  %label14.i.i.i66 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i49, i32 0, i32 2, i32 0, i32 0, i32 5
  %97 = ptrtoint ptr %label14.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and.i.i.i52, ptr %label14.i.i.i66, align 4
  %98 = load i8, ptr @log_ecn_error, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool10.i = icmp ne i8 %98, 0
  %call11.i = call i32 @ip6_tnl_rcv(ptr noundef nonnull %call1.i42, ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef nonnull %call.i.i.i.i49, i1 noundef zeroext %tobool10.i) #15
  br label %cleanup

if.else.i68:                                      ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #17
  %99 = load i8, ptr @log_ecn_error, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool14.i = icmp ne i8 %99, 0
  %call15.i = call i32 @ip6_tnl_rcv(ptr noundef nonnull %call1.i42, ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef null, i1 noundef zeroext %tobool14.i) #15
  br label %cleanup

out:                                              ; preds = %if.then3.i.out_crit_edge, %if.end19.out_crit_edge, %if.then13.i.out_crit_edge, %if.end.i.out_crit_edge, %pskb_may_pull.exit.i.out_crit_edge, %if.end.i.i.out_crit_edge, %if.then13.out_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #15
  br label %drop

drop:                                             ; preds = %out, %if.end.drop_crit_edge, %entry.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.else.i68, %if.end.i67, %if.else.i, %if.end23.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %csum_err) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tpi) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #2 align 64 {
entry:
  %tpi = alloca %struct.tnl_ptk_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tpi) #15
  %5 = call ptr @memset(ptr %tpi, i32 255, i32 16)
  %call1 = call i32 @gre_parse_header(ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef null, i16 noundef zeroext -31011, i32 noundef %offset) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 8
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %7, align 2
  %call2 = call fastcc ptr @ip6gre_tunnel_lookup(ptr noundef %11, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %13, i16 noundef zeroext %15)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %type, label %if.end4.sw.epilog_crit_edge [
    i8 1, label %do.body
    i8 3, label %sw.bb18
    i8 4, label %sw.bb46
    i8 2, label %sw.bb111
    i8 -119, label %sw.bb114
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6gre_err.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6gre_err, %land.lhs.true)) #15
          to label %do.end [label %land.lhs.true], !srcloc !175

land.lhs.true:                                    ; preds = %do.body
  %call9 = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %if.then11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %parms = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6gre_err.descriptor, ptr noundef nonnull @.str.28, ptr noundef %parms) #15
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true.do.end_crit_edge, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %code)
  %cmp14.not = icmp eq i8 %code, 4
  br i1 %cmp14.not, label %do.end.cleanup_crit_edge, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb18:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %code)
  %cmp20 = icmp eq i8 %code, 0
  br i1 %cmp20, label %do.body23, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body23:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6gre_err.descriptor.29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6gre_err, %land.lhs.true35)) #15
          to label %sw.epilog [label %land.lhs.true35], !srcloc !175

land.lhs.true35:                                  ; preds = %do.body23
  %call36 = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true35.sw.epilog_crit_edge, label %if.then38

land.lhs.true35.sw.epilog_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  %parms39 = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6gre_err.descriptor.29, ptr noundef nonnull @.str.31, ptr noundef %parms39) #15
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %code)
  %cmp48 = icmp eq i8 %code, 0
  br i1 %cmp48, label %if.end54, label %sw.bb46.do.body88_crit_edge

sw.bb46.do.body88_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body88

if.end54:                                         ; preds = %sw.bb46
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %call52 = call zeroext i16 @ip6_tnl_parse_tlv_enc_lim(ptr noundef %skb, ptr noundef %18) #15
  %conv53 = zext i16 %call52 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call52)
  %tobool55.not = icmp ne i16 %call52, 0
  %sub = add i32 %info, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv53)
  %cmp57 = icmp eq i32 %sub, %conv53
  %or.cond = and i1 %tobool55.not, %cmp57
  br i1 %or.cond, label %if.then59, label %if.end54.do.body88_crit_edge

if.end54.do.body88_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body88

if.then59:                                        ; preds = %if.end54
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 %conv53
  %encap_limit = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %encap_limit to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %encap_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp62 = icmp eq i8 %22, 0
  br i1 %cmp62, label %do.body65, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6gre_err.descriptor.32, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6gre_err, %land.lhs.true77)) #15
          to label %cleanup [label %land.lhs.true77], !srcloc !175

land.lhs.true77:                                  ; preds = %do.body65
  %call78 = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.cleanup_crit_edge, label %if.then80

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #17
  %parms81 = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6gre_err.descriptor.32, ptr noundef nonnull @.str.34, ptr noundef %parms81) #15
  br label %cleanup

do.body88:                                        ; preds = %if.end54.do.body88_crit_edge, %sw.bb46.do.body88_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6gre_err.descriptor.35, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6gre_err, %land.lhs.true100)) #15
          to label %cleanup [label %land.lhs.true100], !srcloc !175

land.lhs.true100:                                 ; preds = %do.body88
  %call101 = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true100.cleanup_crit_edge, label %if.then103

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then103:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #17
  %parms104 = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6gre_err.descriptor.35, ptr noundef nonnull @.str.37, ptr noundef %parms104) #15
  br label %cleanup

sw.bb111:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %user_ns.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %23 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns.i, align 4
  %call.i = call i32 @make_kuid(ptr noundef %24, i32 noundef 0) #15
  %.fca.0.insert130 = insertvalue [1 x i32] poison, i32 %call.i, 0
  call void @ip6_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i32 noundef 0, [1 x i32] %.fca.0.insert130) #15
  br label %cleanup

sw.bb114:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifindex, align 4
  %user_ns.i166 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %29 = ptrtoint ptr %user_ns.i166 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns.i166, align 4
  %call.i167 = call i32 @make_kuid(ptr noundef %30, i32 noundef 0) #15
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call.i167, 0
  call void @ip6_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef %28, i32 noundef 0, [1 x i32] %.fca.0.insert) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.then38, %land.lhs.true35.sw.epilog_crit_edge, %do.body23, %do.end.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %err_time = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 9
  %32 = ptrtoint ptr %err_time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err_time, align 8
  %add.neg = add i32 %31, -3000
  %sub119 = sub i32 %add.neg, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub119)
  %cmp120 = icmp slt i32 %sub119, 0
  %err_count = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 8
  br i1 %cmp120, label %if.then122, label %sw.epilog.if.end125_crit_edge

sw.epilog.if.end125_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then122:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %err_count, align 4
  %inc = add i32 %35, 1
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %sw.epilog.if.end125_crit_edge
  %.sink = phi i32 [ %inc, %if.then122 ], [ 1, %sw.epilog.if.end125_crit_edge ]
  %36 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %err_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %err_time to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %err_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %sw.bb114, %sw.bb111, %if.then103, %land.lhs.true100.cleanup_crit_edge, %do.body88, %if.then80, %land.lhs.true77.cleanup_crit_edge, %do.body65, %if.then59.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end125 ], [ 0, %sw.bb114 ], [ 0, %sw.bb111 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %sw.bb18.cleanup_crit_edge ], [ 0, %land.lhs.true100.cleanup_crit_edge ], [ 0, %if.then103 ], [ 0, %if.then59.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %land.lhs.true77.cleanup_crit_edge ], [ 0, %do.body65 ], [ 0, %do.body88 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tpi) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gre_parse_header(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6gre_tunnel_lookup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %remote, ptr nocapture noundef readonly %local, i32 noundef %key, i16 noundef zeroext %gre_proto) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %remote, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %remote, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %7, %5
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %remote, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor.i.i, %9
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %remote, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i.i, align 4
  %xor8.i.i = xor i32 %xor5.i.i, %11
  %mul.i.i.i = mul i32 %xor8.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 27
  %shr = lshr i32 %key, 4
  %xor = xor i32 %shr, %key
  %and = and i32 %xor, 31
  %12 = load i32, ptr @ip6gre_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %12)
  %13 = zext i16 %gre_proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %gre_proto, label %entry.lor.end_crit_edge [
    i16 25944, label %entry._crit_edge
    i16 -30530, label %entry._crit_edge719
    i16 8939, label %entry._crit_edge720
  ]

entry._crit_edge720:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %14

entry._crit_edge719:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %14

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %14

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

14:                                               ; preds = %entry._crit_edge, %entry._crit_edge719, %entry._crit_edge720
  br label %lor.end

lor.end:                                          ; preds = %14, %entry.lor.end_crit_edge
  %15 = phi i32 [ 1, %14 ], [ 823, %entry.lor.end_crit_edge ]
  %xor10 = xor i32 %shr.i.i, %and
  %arrayidx11 = getelementptr [4 x [32 x ptr]], ptr %call2, i32 0, i32 3, i32 %xor10
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx11, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.end.do.end19_crit_edge

lor.end.do.end19_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19

land.lhs.true:                                    ; preds = %lor.end
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true16

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b573 = load i1, ptr @ip6gre_tunnel_lookup.__warned, align 1
  br i1 %.b573, label %land.lhs.true16.do.end19_crit_edge, label %if.then

land.lhs.true16.do.end19_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19

if.then:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 132, ptr noundef nonnull @.str.3) #15
  br label %do.end19

do.end19:                                         ; preds = %if.then, %land.lhs.true16.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %lor.end.do.end19_crit_edge
  %tobool21.not661 = icmp eq ptr %17, null
  br i1 %tobool21.not661, label %do.end19.for.end_crit_edge, label %for.body.lr.ph

do.end19.for.end_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end19
  %arrayidx4.i = getelementptr [4 x i32], ptr %local, i32 0, i32 1
  %arrayidx9.i = getelementptr [4 x i32], ptr %local, i32 0, i32 2
  %arrayidx15.i = getelementptr [4 x i32], ptr %local, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end85.for.body_crit_edge, %for.body.lr.ph
  %t.0664 = phi ptr [ %17, %for.body.lr.ph ], [ %62, %do.end85.for.body_crit_edge ]
  %cand.0663 = phi ptr [ null, %for.body.lr.ph ], [ %cand.1, %do.end85.for.body_crit_edge ]
  %cand_score.0662 = phi i32 [ 4, %for.body.lr.ph ], [ %cand_score.1, %do.end85.for.body_crit_edge ]
  %laddr = getelementptr inbounds %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %local, align 4
  %20 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %laddr, align 4
  %xor.i = xor i32 %21, %19
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %25, %23
  %or.i = or i32 %xor7.i, %xor.i
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %29, %27
  %or13.i = or i32 %or.i, %xor12.i
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %33, %31
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %lor.lhs.false23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false23:                                  ; preds = %for.body
  %raddr = getelementptr inbounds %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 9
  %34 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %remote, align 4
  %36 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %raddr, align 4
  %xor.i588 = xor i32 %37, %35
  %38 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx6.i590 = getelementptr %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx6.i590 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx6.i590, align 4
  %xor7.i591 = xor i32 %41, %39
  %or.i592 = or i32 %xor7.i591, %xor.i588
  %42 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx11.i594 = getelementptr %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx11.i594 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.i594, align 4
  %xor12.i595 = xor i32 %45, %43
  %or13.i596 = or i32 %or.i592, %xor12.i595
  %46 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx17.i598 = getelementptr %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx17.i598 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx17.i598, align 4
  %xor18.i599 = xor i32 %49, %47
  %or19.i600 = or i32 %or13.i596, %xor18.i599
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i600)
  %cmp.i601 = icmp eq i32 %or19.i600, 0
  br i1 %cmp.i601, label %lor.lhs.false26, label %lor.lhs.false23.for.inc_crit_edge

lor.lhs.false23.for.inc_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %i_key = getelementptr inbounds %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 12
  %50 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %key)
  %cmp28.not = icmp eq i32 %51, %key
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false26.for.inc_crit_edge

lor.lhs.false26.for.inc_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %dev31 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0664, i32 0, i32 1
  %52 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev31, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 8
  %and32 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %lor.lhs.false30.for.inc_crit_edge, label %if.end35

lor.lhs.false30.for.inc_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end35:                                         ; preds = %lor.lhs.false30
  %type = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 32
  %56 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 823, i16 %57)
  %cmp38.not = icmp eq i16 %57, 823
  %conv37 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv37)
  %cmp44.not = icmp eq i32 %15, %conv37
  %or.cond = or i1 %cmp38.not, %cmp44.not
  br i1 %or.cond, label %if.end47, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end47:                                         ; preds = %if.end35
  %link49 = getelementptr inbounds %struct.ip6_tnl, ptr %t.0664, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %link49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %link49, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %3)
  %cmp50.not = icmp ne i32 %59, %3
  %spec.select = zext i1 %cmp50.not to i32
  %or60 = or i32 %spec.select, 2
  %score.1 = select i1 %cmp44.not, i32 %spec.select, i32 %or60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %score.1)
  %cmp62 = icmp eq i32 %score.1, 0
  br i1 %cmp62, label %if.end47.cleanup_crit_edge, label %if.end65

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end65:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %score.1, i32 %cand_score.0662)
  %cmp66 = icmp slt i32 %score.1, %cand_score.0662
  %60 = tail call i32 @llvm.smin.i32(i32 %score.1, i32 %cand_score.0662)
  %spec.select575 = select i1 %cmp66, ptr %t.0664, ptr %cand.0663
  br label %for.inc

for.inc:                                          ; preds = %if.end65, %if.end35.for.inc_crit_edge, %lor.lhs.false30.for.inc_crit_edge, %lor.lhs.false26.for.inc_crit_edge, %lor.lhs.false23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cand_score.1 = phi i32 [ %cand_score.0662, %lor.lhs.false26.for.inc_crit_edge ], [ %cand_score.0662, %lor.lhs.false30.for.inc_crit_edge ], [ %cand_score.0662, %lor.lhs.false23.for.inc_crit_edge ], [ %cand_score.0662, %for.body.for.inc_crit_edge ], [ %cand_score.0662, %if.end35.for.inc_crit_edge ], [ %60, %if.end65 ]
  %cand.1 = phi ptr [ %cand.0663, %lor.lhs.false26.for.inc_crit_edge ], [ %cand.0663, %lor.lhs.false30.for.inc_crit_edge ], [ %cand.0663, %lor.lhs.false23.for.inc_crit_edge ], [ %cand.0663, %for.body.for.inc_crit_edge ], [ %cand.0663, %if.end35.for.inc_crit_edge ], [ %spec.select575, %if.end65 ]
  %61 = ptrtoint ptr %t.0664 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %t.0664, align 8
  %call75 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %for.inc.do.end85_crit_edge

for.inc.do.end85_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

land.lhs.true77:                                  ; preds = %for.inc
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b555572 = load i1, ptr @ip6gre_tunnel_lookup.__warned.16, align 1
  br i1 %.b555572, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 132, ptr noundef nonnull @.str.3) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %for.inc.do.end85_crit_edge
  %tobool21.not = icmp eq ptr %62, null
  br i1 %tobool21.not, label %do.end85.for.end_crit_edge, label %do.end85.for.body_crit_edge

do.end85.for.body_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.end85.for.end_crit_edge:                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %do.end85.for.end_crit_edge, %do.end19.for.end_crit_edge
  %cand_score.0.lcssa = phi i32 [ 4, %do.end19.for.end_crit_edge ], [ %cand_score.1, %do.end85.for.end_crit_edge ]
  %cand.0.lcssa = phi ptr [ null, %do.end19.for.end_crit_edge ], [ %cand.1, %do.end85.for.end_crit_edge ]
  %arrayidx94 = getelementptr [4 x [32 x ptr]], ptr %call2, i32 0, i32 2, i32 %xor10
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %arrayidx94, align 4
  %call96 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %for.end.do.end106_crit_edge

for.end.do.end106_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end106

land.lhs.true98:                                  ; preds = %for.end
  %call99 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true98.do.end106_crit_edge, label %land.lhs.true101

land.lhs.true98.do.end106_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end106

land.lhs.true101:                                 ; preds = %land.lhs.true98
  %.b556571 = load i1, ptr @ip6gre_tunnel_lookup.__warned.17, align 1
  br i1 %.b556571, label %land.lhs.true101.do.end106_crit_edge, label %if.then103

land.lhs.true101.do.end106_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end106

if.then103:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 157, ptr noundef nonnull @.str.3) #15
  br label %do.end106

do.end106:                                        ; preds = %if.then103, %land.lhs.true101.do.end106_crit_edge, %land.lhs.true98.do.end106_crit_edge, %for.end.do.end106_crit_edge
  %tobool109.not667 = icmp eq ptr %64, null
  br i1 %tobool109.not667, label %do.end106.for.end181_crit_edge, label %do.end106.for.body110_crit_edge

do.end106.for.body110_crit_edge:                  ; preds = %do.end106
  br label %for.body110

do.end106.for.end181_crit_edge:                   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end181

for.body110:                                      ; preds = %do.end179.for.body110_crit_edge, %do.end106.for.body110_crit_edge
  %t.1670 = phi ptr [ %93, %do.end179.for.body110_crit_edge ], [ %64, %do.end106.for.body110_crit_edge ]
  %cand.2669 = phi ptr [ %cand.3, %do.end179.for.body110_crit_edge ], [ %cand.0.lcssa, %do.end106.for.body110_crit_edge ]
  %cand_score.2668 = phi i32 [ %cand_score.3, %do.end179.for.body110_crit_edge ], [ %cand_score.0.lcssa, %do.end106.for.body110_crit_edge ]
  %raddr112 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1670, i32 0, i32 4, i32 9
  %65 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %remote, align 4
  %67 = ptrtoint ptr %raddr112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %raddr112, align 4
  %xor.i602 = xor i32 %68, %66
  %69 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx6.i604 = getelementptr %struct.ip6_tnl, ptr %t.1670, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx6.i604 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx6.i604, align 4
  %xor7.i605 = xor i32 %72, %70
  %or.i606 = or i32 %xor7.i605, %xor.i602
  %73 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx11.i608 = getelementptr %struct.ip6_tnl, ptr %t.1670, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx11.i608 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx11.i608, align 4
  %xor12.i609 = xor i32 %76, %74
  %or13.i610 = or i32 %or.i606, %xor12.i609
  %77 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx17.i612 = getelementptr %struct.ip6_tnl, ptr %t.1670, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx17.i612 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx17.i612, align 4
  %xor18.i613 = xor i32 %80, %78
  %or19.i614 = or i32 %or13.i610, %xor18.i613
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i614)
  %cmp.i615 = icmp eq i32 %or19.i614, 0
  br i1 %cmp.i615, label %lor.lhs.false114, label %for.body110.for.inc162_crit_edge

for.body110.for.inc162_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc162

lor.lhs.false114:                                 ; preds = %for.body110
  %i_key116 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1670, i32 0, i32 4, i32 12
  %81 = ptrtoint ptr %i_key116 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_key116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %key)
  %cmp117.not = icmp eq i32 %82, %key
  br i1 %cmp117.not, label %lor.lhs.false119, label %lor.lhs.false114.for.inc162_crit_edge

lor.lhs.false114.for.inc162_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc162

lor.lhs.false119:                                 ; preds = %lor.lhs.false114
  %dev120 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1670, i32 0, i32 1
  %83 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev120, align 4
  %flags121 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 14
  %85 = ptrtoint ptr %flags121 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags121, align 8
  %and122 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %lor.lhs.false119.for.inc162_crit_edge, label %if.end125

lor.lhs.false119.for.inc162_crit_edge:            ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc162

if.end125:                                        ; preds = %lor.lhs.false119
  %type127 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 32
  %87 = ptrtoint ptr %type127 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %type127, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 823, i16 %88)
  %cmp129.not = icmp eq i16 %88, 823
  %conv128 = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv128)
  %cmp135.not = icmp eq i32 %15, %conv128
  %or.cond576 = or i1 %cmp129.not, %cmp135.not
  br i1 %or.cond576, label %if.end138, label %if.end125.for.inc162_crit_edge

if.end125.for.inc162_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc162

if.end138:                                        ; preds = %if.end125
  %link140 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1670, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %link140 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %link140, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %3)
  %cmp141.not = icmp ne i32 %90, %3
  %spec.select577 = zext i1 %cmp141.not to i32
  %or152 = or i32 %spec.select577, 2
  %score.3 = select i1 %cmp135.not, i32 %spec.select577, i32 %or152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %score.3)
  %cmp154 = icmp eq i32 %score.3, 0
  br i1 %cmp154, label %if.end138.cleanup_crit_edge, label %if.end157

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end157:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %score.3, i32 %cand_score.2668)
  %cmp158 = icmp slt i32 %score.3, %cand_score.2668
  %91 = tail call i32 @llvm.smin.i32(i32 %score.3, i32 %cand_score.2668)
  %spec.select579 = select i1 %cmp158, ptr %t.1670, ptr %cand.2669
  br label %for.inc162

for.inc162:                                       ; preds = %if.end157, %if.end125.for.inc162_crit_edge, %lor.lhs.false119.for.inc162_crit_edge, %lor.lhs.false114.for.inc162_crit_edge, %for.body110.for.inc162_crit_edge
  %cand_score.3 = phi i32 [ %cand_score.2668, %lor.lhs.false114.for.inc162_crit_edge ], [ %cand_score.2668, %lor.lhs.false119.for.inc162_crit_edge ], [ %cand_score.2668, %for.body110.for.inc162_crit_edge ], [ %cand_score.2668, %if.end125.for.inc162_crit_edge ], [ %91, %if.end157 ]
  %cand.3 = phi ptr [ %cand.2669, %lor.lhs.false114.for.inc162_crit_edge ], [ %cand.2669, %lor.lhs.false119.for.inc162_crit_edge ], [ %cand.2669, %for.body110.for.inc162_crit_edge ], [ %cand.2669, %if.end125.for.inc162_crit_edge ], [ %spec.select579, %if.end157 ]
  %92 = ptrtoint ptr %t.1670 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %t.1670, align 8
  %call169 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %land.lhs.true171, label %for.inc162.do.end179_crit_edge

for.inc162.do.end179_crit_edge:                   ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end179

land.lhs.true171:                                 ; preds = %for.inc162
  %call172 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %land.lhs.true171.do.end179_crit_edge, label %land.lhs.true174

land.lhs.true171.do.end179_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end179

land.lhs.true174:                                 ; preds = %land.lhs.true171
  %.b557570 = load i1, ptr @ip6gre_tunnel_lookup.__warned.18, align 1
  br i1 %.b557570, label %land.lhs.true174.do.end179_crit_edge, label %if.then176

land.lhs.true174.do.end179_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end179

if.then176:                                       ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 157, ptr noundef nonnull @.str.3) #15
  br label %do.end179

do.end179:                                        ; preds = %if.then176, %land.lhs.true174.do.end179_crit_edge, %land.lhs.true171.do.end179_crit_edge, %for.inc162.do.end179_crit_edge
  %tobool109.not = icmp eq ptr %93, null
  br i1 %tobool109.not, label %do.end179.for.end181_crit_edge, label %do.end179.for.body110_crit_edge

do.end179.for.body110_crit_edge:                  ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body110

do.end179.for.end181_crit_edge:                   ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end181

for.end181:                                       ; preds = %do.end179.for.end181_crit_edge, %do.end106.for.end181_crit_edge
  %cand_score.2.lcssa = phi i32 [ %cand_score.0.lcssa, %do.end106.for.end181_crit_edge ], [ %cand_score.3, %do.end179.for.end181_crit_edge ]
  %cand.2.lcssa = phi ptr [ %cand.0.lcssa, %do.end106.for.end181_crit_edge ], [ %cand.3, %do.end179.for.end181_crit_edge ]
  %arrayidx188 = getelementptr [4 x [32 x ptr]], ptr %call2, i32 0, i32 1, i32 %and
  %94 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %arrayidx188, align 4
  %call190 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %land.lhs.true192, label %for.end181.do.end200_crit_edge

for.end181.do.end200_crit_edge:                   ; preds = %for.end181
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end200

land.lhs.true192:                                 ; preds = %for.end181
  %call193 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %land.lhs.true192.do.end200_crit_edge, label %land.lhs.true195

land.lhs.true192.do.end200_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end200

land.lhs.true195:                                 ; preds = %land.lhs.true192
  %.b558569 = load i1, ptr @ip6gre_tunnel_lookup.__warned.19, align 1
  br i1 %.b558569, label %land.lhs.true195.do.end200_crit_edge, label %if.then197

land.lhs.true195.do.end200_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end200

if.then197:                                       ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 181, ptr noundef nonnull @.str.3) #15
  br label %do.end200

do.end200:                                        ; preds = %if.then197, %land.lhs.true195.do.end200_crit_edge, %land.lhs.true192.do.end200_crit_edge, %for.end181.do.end200_crit_edge
  %tobool203.not674 = icmp eq ptr %95, null
  br i1 %tobool203.not674, label %do.end200.for.end281_crit_edge, label %for.body204.lr.ph

do.end200.for.end281_crit_edge:                   ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end281

for.body204.lr.ph:                                ; preds = %do.end200
  %arrayidx4.i617 = getelementptr [4 x i32], ptr %local, i32 0, i32 1
  %arrayidx9.i621 = getelementptr [4 x i32], ptr %local, i32 0, i32 2
  %arrayidx15.i625 = getelementptr [4 x i32], ptr %local, i32 0, i32 3
  br label %for.body204

for.body204:                                      ; preds = %do.end279.for.body204_crit_edge, %for.body204.lr.ph
  %t.2677 = phi ptr [ %95, %for.body204.lr.ph ], [ %132, %do.end279.for.body204_crit_edge ]
  %cand.4676 = phi ptr [ %cand.2.lcssa, %for.body204.lr.ph ], [ %cand.5, %do.end279.for.body204_crit_edge ]
  %cand_score.4675 = phi i32 [ %cand_score.2.lcssa, %for.body204.lr.ph ], [ %cand_score.5, %do.end279.for.body204_crit_edge ]
  %laddr206 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 8
  %96 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %local, align 4
  %98 = ptrtoint ptr %laddr206 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %laddr206, align 4
  %xor.i616 = xor i32 %99, %97
  %100 = ptrtoint ptr %arrayidx4.i617 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx4.i617, align 4
  %arrayidx6.i618 = getelementptr %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx6.i618 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx6.i618, align 4
  %xor7.i619 = xor i32 %103, %101
  %or.i620 = or i32 %xor7.i619, %xor.i616
  %104 = ptrtoint ptr %arrayidx9.i621 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx9.i621, align 4
  %arrayidx11.i622 = getelementptr %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx11.i622 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx11.i622, align 4
  %xor12.i623 = xor i32 %107, %105
  %or13.i624 = or i32 %or.i620, %xor12.i623
  %108 = ptrtoint ptr %arrayidx15.i625 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx15.i625, align 4
  %arrayidx17.i626 = getelementptr %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %110 = ptrtoint ptr %arrayidx17.i626 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx17.i626, align 4
  %xor18.i627 = xor i32 %111, %109
  %or19.i628 = or i32 %or13.i624, %xor18.i627
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i628)
  %cmp.i629 = icmp eq i32 %or19.i628, 0
  br i1 %cmp.i629, label %for.body204.lor.lhs.false214_crit_edge, label %land.lhs.true208

for.body204.lor.lhs.false214_crit_edge:           ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false214

land.lhs.true208:                                 ; preds = %for.body204
  %raddr210 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 9
  %112 = ptrtoint ptr %raddr210 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %raddr210, align 4
  %xor.i630 = xor i32 %113, %97
  %arrayidx6.i632 = getelementptr %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %114 = ptrtoint ptr %arrayidx6.i632 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx6.i632, align 4
  %xor7.i633 = xor i32 %115, %101
  %or.i634 = or i32 %xor7.i633, %xor.i630
  %arrayidx11.i636 = getelementptr %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %116 = ptrtoint ptr %arrayidx11.i636 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx11.i636, align 4
  %xor12.i637 = xor i32 %117, %105
  %or13.i638 = or i32 %or.i634, %xor12.i637
  %arrayidx17.i640 = getelementptr %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %118 = ptrtoint ptr %arrayidx17.i640 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx17.i640, align 4
  %xor18.i641 = xor i32 %119, %109
  %or19.i642 = or i32 %or13.i638, %xor18.i641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i642)
  %cmp.i643 = icmp eq i32 %or19.i642, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %97)
  %cmp.i644 = icmp ugt i32 %97, -16777217
  %or.cond645 = select i1 %cmp.i643, i1 %cmp.i644, i1 false
  br i1 %or.cond645, label %land.lhs.true208.lor.lhs.false214_crit_edge, label %land.lhs.true208.for.inc262_crit_edge

land.lhs.true208.for.inc262_crit_edge:            ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc262

land.lhs.true208.lor.lhs.false214_crit_edge:      ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %land.lhs.true208.lor.lhs.false214_crit_edge, %for.body204.lor.lhs.false214_crit_edge
  %i_key216 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 12
  %120 = ptrtoint ptr %i_key216 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_key216, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %key)
  %cmp217.not = icmp eq i32 %121, %key
  br i1 %cmp217.not, label %lor.lhs.false219, label %lor.lhs.false214.for.inc262_crit_edge

lor.lhs.false214.for.inc262_crit_edge:            ; preds = %lor.lhs.false214
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc262

lor.lhs.false219:                                 ; preds = %lor.lhs.false214
  %dev220 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2677, i32 0, i32 1
  %122 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev220, align 4
  %flags221 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 14
  %124 = ptrtoint ptr %flags221 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags221, align 8
  %and222 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %lor.lhs.false219.for.inc262_crit_edge, label %if.end225

lor.lhs.false219.for.inc262_crit_edge:            ; preds = %lor.lhs.false219
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc262

if.end225:                                        ; preds = %lor.lhs.false219
  %type227 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 32
  %126 = ptrtoint ptr %type227 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %type227, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 823, i16 %127)
  %cmp229.not = icmp eq i16 %127, 823
  %conv228 = zext i16 %127 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv228)
  %cmp235.not = icmp eq i32 %15, %conv228
  %or.cond580 = or i1 %cmp229.not, %cmp235.not
  br i1 %or.cond580, label %if.end238, label %if.end225.for.inc262_crit_edge

if.end225.for.inc262_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc262

if.end238:                                        ; preds = %if.end225
  %link240 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2677, i32 0, i32 4, i32 1
  %128 = ptrtoint ptr %link240 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %link240, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %3)
  %cmp241.not = icmp ne i32 %129, %3
  %spec.select581 = zext i1 %cmp241.not to i32
  %or252 = or i32 %spec.select581, 2
  %score.5 = select i1 %cmp235.not, i32 %spec.select581, i32 %or252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %score.5)
  %cmp254 = icmp eq i32 %score.5, 0
  br i1 %cmp254, label %if.end238.cleanup_crit_edge, label %if.end257

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end257:                                        ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %score.5, i32 %cand_score.4675)
  %cmp258 = icmp slt i32 %score.5, %cand_score.4675
  %130 = tail call i32 @llvm.smin.i32(i32 %score.5, i32 %cand_score.4675)
  %spec.select583 = select i1 %cmp258, ptr %t.2677, ptr %cand.4676
  br label %for.inc262

for.inc262:                                       ; preds = %if.end257, %if.end225.for.inc262_crit_edge, %lor.lhs.false219.for.inc262_crit_edge, %lor.lhs.false214.for.inc262_crit_edge, %land.lhs.true208.for.inc262_crit_edge
  %cand_score.5 = phi i32 [ %cand_score.4675, %lor.lhs.false214.for.inc262_crit_edge ], [ %cand_score.4675, %lor.lhs.false219.for.inc262_crit_edge ], [ %cand_score.4675, %land.lhs.true208.for.inc262_crit_edge ], [ %cand_score.4675, %if.end225.for.inc262_crit_edge ], [ %130, %if.end257 ]
  %cand.5 = phi ptr [ %cand.4676, %lor.lhs.false214.for.inc262_crit_edge ], [ %cand.4676, %lor.lhs.false219.for.inc262_crit_edge ], [ %cand.4676, %land.lhs.true208.for.inc262_crit_edge ], [ %cand.4676, %if.end225.for.inc262_crit_edge ], [ %spec.select583, %if.end257 ]
  %131 = ptrtoint ptr %t.2677 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %t.2677, align 8
  %call269 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %land.lhs.true271, label %for.inc262.do.end279_crit_edge

for.inc262.do.end279_crit_edge:                   ; preds = %for.inc262
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end279

land.lhs.true271:                                 ; preds = %for.inc262
  %call272 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %land.lhs.true271.do.end279_crit_edge, label %land.lhs.true274

land.lhs.true271.do.end279_crit_edge:             ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end279

land.lhs.true274:                                 ; preds = %land.lhs.true271
  %.b559568 = load i1, ptr @ip6gre_tunnel_lookup.__warned.20, align 1
  br i1 %.b559568, label %land.lhs.true274.do.end279_crit_edge, label %if.then276

land.lhs.true274.do.end279_crit_edge:             ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end279

if.then276:                                       ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 181, ptr noundef nonnull @.str.3) #15
  br label %do.end279

do.end279:                                        ; preds = %if.then276, %land.lhs.true274.do.end279_crit_edge, %land.lhs.true271.do.end279_crit_edge, %for.inc262.do.end279_crit_edge
  %tobool203.not = icmp eq ptr %132, null
  br i1 %tobool203.not, label %do.end279.for.end281_crit_edge, label %do.end279.for.body204_crit_edge

do.end279.for.body204_crit_edge:                  ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body204

do.end279.for.end281_crit_edge:                   ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end281

for.end281:                                       ; preds = %do.end279.for.end281_crit_edge, %do.end200.for.end281_crit_edge
  %cand_score.4.lcssa = phi i32 [ %cand_score.2.lcssa, %do.end200.for.end281_crit_edge ], [ %cand_score.5, %do.end279.for.end281_crit_edge ]
  %cand.4.lcssa = phi ptr [ %cand.2.lcssa, %do.end200.for.end281_crit_edge ], [ %cand.5, %do.end279.for.end281_crit_edge ]
  %arrayidx288 = getelementptr [32 x ptr], ptr %call2, i32 0, i32 %and
  %133 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %arrayidx288, align 4
  %call290 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %land.lhs.true292, label %for.end281.do.end300_crit_edge

for.end281.do.end300_crit_edge:                   ; preds = %for.end281
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end300

land.lhs.true292:                                 ; preds = %for.end281
  %call293 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %land.lhs.true292.do.end300_crit_edge, label %land.lhs.true295

land.lhs.true292.do.end300_crit_edge:             ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end300

land.lhs.true295:                                 ; preds = %land.lhs.true292
  %.b560567 = load i1, ptr @ip6gre_tunnel_lookup.__warned.21, align 1
  br i1 %.b560567, label %land.lhs.true295.do.end300_crit_edge, label %if.then297

land.lhs.true295.do.end300_crit_edge:             ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end300

if.then297:                                       ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 207, ptr noundef nonnull @.str.3) #15
  br label %do.end300

do.end300:                                        ; preds = %if.then297, %land.lhs.true295.do.end300_crit_edge, %land.lhs.true292.do.end300_crit_edge, %for.end281.do.end300_crit_edge
  %tobool303.not681 = icmp eq ptr %134, null
  br i1 %tobool303.not681, label %do.end300.for.end371_crit_edge, label %do.end300.for.body304_crit_edge

do.end300.for.body304_crit_edge:                  ; preds = %do.end300
  br label %for.body304

do.end300.for.end371_crit_edge:                   ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end371

for.body304:                                      ; preds = %do.end369.for.body304_crit_edge, %do.end300.for.body304_crit_edge
  %t.3684 = phi ptr [ %147, %do.end369.for.body304_crit_edge ], [ %134, %do.end300.for.body304_crit_edge ]
  %cand.6683 = phi ptr [ %cand.7, %do.end369.for.body304_crit_edge ], [ %cand.4.lcssa, %do.end300.for.body304_crit_edge ]
  %cand_score.6682 = phi i32 [ %cand_score.7, %do.end369.for.body304_crit_edge ], [ %cand_score.4.lcssa, %do.end300.for.body304_crit_edge ]
  %i_key306 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3684, i32 0, i32 4, i32 12
  %135 = ptrtoint ptr %i_key306 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %i_key306, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %key)
  %cmp307.not = icmp eq i32 %136, %key
  br i1 %cmp307.not, label %lor.lhs.false309, label %for.body304.for.inc352_crit_edge

for.body304.for.inc352_crit_edge:                 ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc352

lor.lhs.false309:                                 ; preds = %for.body304
  %dev310 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3684, i32 0, i32 1
  %137 = ptrtoint ptr %dev310 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev310, align 4
  %flags311 = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 14
  %139 = ptrtoint ptr %flags311 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags311, align 8
  %and312 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %lor.lhs.false309.for.inc352_crit_edge, label %if.end315

lor.lhs.false309.for.inc352_crit_edge:            ; preds = %lor.lhs.false309
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc352

if.end315:                                        ; preds = %lor.lhs.false309
  %type317 = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 32
  %141 = ptrtoint ptr %type317 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %type317, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 823, i16 %142)
  %cmp319.not = icmp eq i16 %142, 823
  %conv318 = zext i16 %142 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv318)
  %cmp325.not = icmp eq i32 %15, %conv318
  %or.cond584 = or i1 %cmp319.not, %cmp325.not
  br i1 %or.cond584, label %if.end328, label %if.end315.for.inc352_crit_edge

if.end315.for.inc352_crit_edge:                   ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc352

if.end328:                                        ; preds = %if.end315
  %link330 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3684, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %link330 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %link330, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %3)
  %cmp331.not = icmp ne i32 %144, %3
  %spec.select585 = zext i1 %cmp331.not to i32
  %or342 = or i32 %spec.select585, 2
  %score.7 = select i1 %cmp325.not, i32 %spec.select585, i32 %or342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %score.7)
  %cmp344 = icmp eq i32 %score.7, 0
  br i1 %cmp344, label %if.end328.cleanup_crit_edge, label %if.end347

if.end328.cleanup_crit_edge:                      ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end347:                                        ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %score.7, i32 %cand_score.6682)
  %cmp348 = icmp slt i32 %score.7, %cand_score.6682
  %145 = tail call i32 @llvm.smin.i32(i32 %score.7, i32 %cand_score.6682)
  %spec.select587 = select i1 %cmp348, ptr %t.3684, ptr %cand.6683
  br label %for.inc352

for.inc352:                                       ; preds = %if.end347, %if.end315.for.inc352_crit_edge, %lor.lhs.false309.for.inc352_crit_edge, %for.body304.for.inc352_crit_edge
  %cand_score.7 = phi i32 [ %cand_score.6682, %for.body304.for.inc352_crit_edge ], [ %cand_score.6682, %lor.lhs.false309.for.inc352_crit_edge ], [ %cand_score.6682, %if.end315.for.inc352_crit_edge ], [ %145, %if.end347 ]
  %cand.7 = phi ptr [ %cand.6683, %for.body304.for.inc352_crit_edge ], [ %cand.6683, %lor.lhs.false309.for.inc352_crit_edge ], [ %cand.6683, %if.end315.for.inc352_crit_edge ], [ %spec.select587, %if.end347 ]
  %146 = ptrtoint ptr %t.3684 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %t.3684, align 8
  %call359 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %land.lhs.true361, label %for.inc352.do.end369_crit_edge

for.inc352.do.end369_crit_edge:                   ; preds = %for.inc352
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end369

land.lhs.true361:                                 ; preds = %for.inc352
  %call362 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %land.lhs.true361.do.end369_crit_edge, label %land.lhs.true364

land.lhs.true361.do.end369_crit_edge:             ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end369

land.lhs.true364:                                 ; preds = %land.lhs.true361
  %.b561566 = load i1, ptr @ip6gre_tunnel_lookup.__warned.22, align 1
  br i1 %.b561566, label %land.lhs.true364.do.end369_crit_edge, label %if.then366

land.lhs.true364.do.end369_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end369

if.then366:                                       ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_tunnel_lookup.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 207, ptr noundef nonnull @.str.3) #15
  br label %do.end369

do.end369:                                        ; preds = %if.then366, %land.lhs.true364.do.end369_crit_edge, %land.lhs.true361.do.end369_crit_edge, %for.inc352.do.end369_crit_edge
  %tobool303.not = icmp eq ptr %147, null
  br i1 %tobool303.not, label %do.end369.for.end371_crit_edge, label %do.end369.for.body304_crit_edge

do.end369.for.body304_crit_edge:                  ; preds = %do.end369
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body304

do.end369.for.end371_crit_edge:                   ; preds = %do.end369
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end371

for.end371:                                       ; preds = %do.end369.for.end371_crit_edge, %do.end300.for.end371_crit_edge
  %cand.6.lcssa = phi ptr [ %cand.4.lcssa, %do.end300.for.end371_crit_edge ], [ %cand.7, %do.end369.for.end371_crit_edge ]
  %tobool372.not = icmp eq ptr %cand.6.lcssa, null
  br i1 %tobool372.not, label %if.end374, label %for.end371.cleanup_crit_edge

for.end371.cleanup_crit_edge:                     ; preds = %for.end371
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end374:                                        ; preds = %for.end371
  %148 = zext i16 %gre_proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %gre_proto, label %if.else [
    i16 -30530, label %if.end374.if.then382_crit_edge
    i16 8939, label %if.end374.if.then382_crit_edge721
  ]

if.end374.if.then382_crit_edge721:                ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then382

if.end374.if.then382_crit_edge:                   ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then382

if.then382:                                       ; preds = %if.end374.if.then382_crit_edge, %if.end374.if.then382_crit_edge721
  %collect_md_tun_erspan = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 2
  %149 = ptrtoint ptr %collect_md_tun_erspan to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %collect_md_tun_erspan, align 4
  %call388 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %land.lhs.true390, label %if.then382.if.end417_crit_edge

if.then382.if.end417_crit_edge:                   ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

land.lhs.true390:                                 ; preds = %if.then382
  %call391 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %land.lhs.true390.if.end417_crit_edge, label %land.lhs.true393

land.lhs.true390.if.end417_crit_edge:             ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

land.lhs.true393:                                 ; preds = %land.lhs.true390
  %.b562565 = load i1, ptr @ip6gre_tunnel_lookup.__warned.23, align 1
  br i1 %.b562565, label %land.lhs.true393.if.end417_crit_edge, label %land.lhs.true393.if.end417.sink.split_crit_edge

land.lhs.true393.if.end417.sink.split_crit_edge:  ; preds = %land.lhs.true393
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417.sink.split

land.lhs.true393.if.end417_crit_edge:             ; preds = %land.lhs.true393
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

if.else:                                          ; preds = %if.end374
  %collect_md_tun = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 1
  %151 = ptrtoint ptr %collect_md_tun to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %collect_md_tun, align 4
  %call405 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call405)
  %tobool406.not = icmp eq i32 %call405, 0
  br i1 %tobool406.not, label %land.lhs.true407, label %if.else.if.end417_crit_edge

if.else.if.end417_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

land.lhs.true407:                                 ; preds = %if.else
  %call408 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %land.lhs.true407.if.end417_crit_edge, label %land.lhs.true410

land.lhs.true407.if.end417_crit_edge:             ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

land.lhs.true410:                                 ; preds = %land.lhs.true407
  %.b563564 = load i1, ptr @ip6gre_tunnel_lookup.__warned.24, align 1
  br i1 %.b563564, label %land.lhs.true410.if.end417_crit_edge, label %land.lhs.true410.if.end417.sink.split_crit_edge

land.lhs.true410.if.end417.sink.split_crit_edge:  ; preds = %land.lhs.true410
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417.sink.split

land.lhs.true410.if.end417_crit_edge:             ; preds = %land.lhs.true410
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

if.end417.sink.split:                             ; preds = %land.lhs.true410.if.end417.sink.split_crit_edge, %land.lhs.true393.if.end417.sink.split_crit_edge
  %ip6gre_tunnel_lookup.__warned.24.sink = phi ptr [ @ip6gre_tunnel_lookup.__warned.23, %land.lhs.true393.if.end417.sink.split_crit_edge ], [ @ip6gre_tunnel_lookup.__warned.24, %land.lhs.true410.if.end417.sink.split_crit_edge ]
  %.sink = phi i32 [ 235, %land.lhs.true393.if.end417.sink.split_crit_edge ], [ 237, %land.lhs.true410.if.end417.sink.split_crit_edge ]
  %t.4.ph = phi ptr [ %150, %land.lhs.true393.if.end417.sink.split_crit_edge ], [ %152, %land.lhs.true410.if.end417.sink.split_crit_edge ]
  %153 = ptrtoint ptr %ip6gre_tunnel_lookup.__warned.24.sink to i32
  call void @__asan_store1_noabort(i32 %153)
  store i1 true, ptr %ip6gre_tunnel_lookup.__warned.24.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef %.sink, ptr noundef nonnull @.str.3) #15
  br label %if.end417

if.end417:                                        ; preds = %if.end417.sink.split, %land.lhs.true410.if.end417_crit_edge, %land.lhs.true407.if.end417_crit_edge, %if.else.if.end417_crit_edge, %land.lhs.true393.if.end417_crit_edge, %land.lhs.true390.if.end417_crit_edge, %if.then382.if.end417_crit_edge
  %t.4 = phi ptr [ %150, %land.lhs.true393.if.end417_crit_edge ], [ %150, %land.lhs.true390.if.end417_crit_edge ], [ %150, %if.then382.if.end417_crit_edge ], [ %152, %land.lhs.true410.if.end417_crit_edge ], [ %152, %land.lhs.true407.if.end417_crit_edge ], [ %152, %if.else.if.end417_crit_edge ], [ %t.4.ph, %if.end417.sink.split ]
  %tobool418.not = icmp eq ptr %t.4, null
  br i1 %tobool418.not, label %if.end417.do.end428_crit_edge, label %land.lhs.true419

if.end417.do.end428_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end428

land.lhs.true419:                                 ; preds = %if.end417
  %dev420 = getelementptr inbounds %struct.ip6_tnl, ptr %t.4, i32 0, i32 1
  %154 = ptrtoint ptr %dev420 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev420, align 4
  %flags421 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 14
  %156 = ptrtoint ptr %flags421 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags421, align 8
  %and422 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and422)
  %tobool423.not = icmp eq i32 %and422, 0
  br i1 %tobool423.not, label %land.lhs.true419.do.end428_crit_edge, label %land.lhs.true419.cleanup_crit_edge

land.lhs.true419.cleanup_crit_edge:               ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true419.do.end428_crit_edge:             ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end428

do.end428:                                        ; preds = %land.lhs.true419.do.end428_crit_edge, %if.end417.do.end428_crit_edge
  %fb_tunnel_dev = getelementptr inbounds %struct.ip6gre_net, ptr %call2, i32 0, i32 3
  %158 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile ptr, ptr %fb_tunnel_dev, align 4
  %tobool430.not = icmp eq ptr %159, null
  br i1 %tobool430.not, label %do.end428.cleanup_crit_edge, label %land.lhs.true431

do.end428.cleanup_crit_edge:                      ; preds = %do.end428
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true431:                                 ; preds = %do.end428
  call void @__sanitizer_cov_trace_pc() #17
  %flags432 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 14
  %160 = ptrtoint ptr %flags432 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags432, align 8
  %and433 = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433)
  %tobool434.not = icmp eq i32 %and433, 0
  %add.ptr.i = getelementptr i8, ptr %159, i32 2304
  %spec.select646 = select i1 %tobool434.not, ptr null, ptr %add.ptr.i
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true431, %do.end428.cleanup_crit_edge, %land.lhs.true419.cleanup_crit_edge, %for.end371.cleanup_crit_edge, %if.end328.cleanup_crit_edge, %if.end238.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %if.end47.cleanup_crit_edge
  %retval.0 = phi ptr [ %cand.6.lcssa, %for.end371.cleanup_crit_edge ], [ %t.4, %land.lhs.true419.cleanup_crit_edge ], [ null, %do.end428.cleanup_crit_edge ], [ %spec.select646, %land.lhs.true431 ], [ %t.3684, %if.end328.cleanup_crit_edge ], [ %t.2677, %if.end238.cleanup_crit_edge ], [ %t.1670, %if.end138.cleanup_crit_edge ], [ %t.0664, %if.end47.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6gre_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ip6gre_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_fb_tunnels_only_for_init_net to i32))
  %1 = load i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %net_has_fallback_tunnels.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

net_has_fallback_tunnels.exit:                    ; preds = %entry
  %cmp.i = icmp eq ptr %net, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp eq i32 %1, 1
  %spec.select.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %spec.select.i, label %net_has_fallback_tunnels.exit.if.end_crit_edge, label %net_has_fallback_tunnels.exit.cleanup_crit_edge

net_has_fallback_tunnels.exit.cleanup_crit_edge:  ; preds = %net_has_fallback_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

net_has_fallback_tunnels.exit.if.end_crit_edge:   ; preds = %net_has_fallback_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %net_has_fallback_tunnels.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @alloc_netdev_mqs(i32 noundef 248, ptr noundef nonnull @.str.38, i8 noundef zeroext 0, ptr noundef nonnull @ip6gre_tunnel_setup, i32 noundef 1, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fb_tunnel_dev = getelementptr inbounds %struct.ip6gre_net, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %fb_tunnel_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %net, ptr %nd_net.i, align 4
  %4 = load ptr, ptr %fb_tunnel_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %or = or i64 %6, 8192
  store i64 %or, ptr %features, align 16
  %7 = load ptr, ptr %fb_tunnel_dev, align 4
  %dev1.i = getelementptr i8, ptr %7, i32 2308
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev1.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i.i, align 4
  %net.i = getelementptr i8, ptr %7, i32 2316
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %net.i, align 4
  %parms.i = getelementptr i8, ptr %7, i32 2320
  %call5.i = tail call ptr @strcpy(ptr noundef %parms.i, ptr noundef %7) #23
  %hlen.i = getelementptr i8, ptr %7, i32 2524
  %12 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 44, ptr %hlen.i, align 4
  %13 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb_tunnel_dev, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 136
  %15 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ip6gre_link_ops, ptr %rtnl_link_ops, align 4
  %16 = load ptr, ptr %fb_tunnel_dev, align 4
  %call10 = tail call i32 @register_netdev(ptr noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %err_reg_dev

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_tunnel_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !176
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %add.ptr.i, ptr %call, align 4
  br label %cleanup

err_reg_dev:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_netdev(ptr noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %err_reg_dev, %do.body, %if.end.cleanup_crit_edge, %net_has_fallback_tunnels.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %net_has_fallback_tunnels.exit.cleanup_crit_edge ], [ %call10, %err_reg_dev ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6gre_exit_batch_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #15
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @rtnl_lock() #15
  %3 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn10 = load ptr, ptr %net_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %net_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.loopexit:                                ; preds = %for.end54.i
  %4 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn12, i32 -116
  %5 = load i32, ptr @ip6gre_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %5) #15
  %dev_base_head.i = getelementptr i8, ptr %.pn12, i32 168
  %6 = ptrtoint ptr %dev_base_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_base_head.i, align 4
  %cmp.not82.i = icmp eq ptr %7, %dev_base_head.i
  br i1 %cmp.not82.i, label %for.body.for.cond21.preheader.i.preheader_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.cond21.preheader.i.preheader_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond21.preheader.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn.in83.i = phi ptr [ %.pn85.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %for.body.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in83.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn85.i = load ptr, ptr %.pn.in83.i, align 8
  %rtnl_link_ops.i = getelementptr i8, ptr %.pn.in83.i, i32 2012
  %9 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtnl_link_ops.i, align 4
  %cmp7.i = icmp eq ptr %10, @ip6gre_link_ops
  %cmp9.i = icmp eq ptr %10, @ip6gre_tap_ops
  %or.cond.i = or i1 %cmp7.i, %cmp9.i
  %cmp12.i = icmp eq ptr %10, @ip6erspan_tap_ops
  %or.cond79.i = or i1 %cmp12.i, %or.cond.i
  br i1 %or.cond79.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.084.i = getelementptr i8, ptr %.pn.in83.i, i32 -40
  call void @unregister_netdevice_queue(ptr noundef %dev.084.i, ptr noundef nonnull %list) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn85.i, %dev_base_head.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond21.preheader.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.cond21.preheader.i.preheader_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond21.preheader.i.preheader

for.cond21.preheader.i.preheader:                 ; preds = %for.inc.i.for.cond21.preheader.i.preheader_crit_edge, %for.body.for.cond21.preheader.i.preheader_crit_edge
  br label %for.cond21.preheader.i

for.cond21.preheader.i:                           ; preds = %for.end54.i.for.cond21.preheader.i_crit_edge, %for.cond21.preheader.i.preheader
  %prio.090.i = phi i32 [ %inc56.i, %for.end54.i.for.cond21.preheader.i_crit_edge ], [ 0, %for.cond21.preheader.i.preheader ]
  br label %for.body23.i

for.body23.i:                                     ; preds = %while.end.i.for.body23.i_crit_edge, %for.cond21.preheader.i
  %h.089.i = phi i32 [ 0, %for.cond21.preheader.i ], [ %inc.i, %while.end.i.for.body23.i_crit_edge ]
  %call24.i = call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call24.i, label %for.body23.i.do.end.i_crit_edge, label %land.lhs.true.i

for.body23.i.do.end.i_crit_edge:                  ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body23.i
  %call25.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true26.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true26.i:                                ; preds = %land.lhs.true.i
  %.b77.i = load i1, ptr @ip6gre_destroy_tunnels.__warned, align 1
  br i1 %.b77.i, label %land.lhs.true26.i.do.end.i_crit_edge, label %if.then28.i

land.lhs.true26.i.do.end.i_crit_edge:             ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_destroy_tunnels.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1570, ptr noundef nonnull @.str.8) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then28.i, %land.lhs.true26.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body23.i.do.end.i_crit_edge
  %arrayidx31.i = getelementptr [4 x [32 x ptr]], ptr %call.i, i32 0, i32 %prio.090.i, i32 %h.089.i
  %11 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %t.086.i = load ptr, ptr %arrayidx31.i, align 4
  %tobool32.not87.i = icmp eq ptr %t.086.i, null
  br i1 %tobool32.not87.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %do.end50.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %t.088.i = phi ptr [ %t.0.i, %do.end50.i.while.body.i_crit_edge ], [ %t.086.i, %do.end.i.while.body.i_crit_edge ]
  %dev33.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.088.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev33.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 127
  %14 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %net.0
  br i1 %cmp.i.not.i, label %while.body.i.do.body40.i_crit_edge, label %if.then37.i

while.body.i.do.body40.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body40.i

if.then37.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @unregister_netdevice_queue(ptr noundef %13, ptr noundef nonnull %list) #15
  br label %do.body40.i

do.body40.i:                                      ; preds = %if.then37.i, %while.body.i.do.body40.i_crit_edge
  %call41.i = call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call41.i, label %do.body40.i.do.end50.i_crit_edge, label %land.lhs.true42.i

do.body40.i.do.end50.i_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50.i

land.lhs.true42.i:                                ; preds = %do.body40.i
  %call43.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true42.i.do.end50.i_crit_edge, label %land.lhs.true45.i

land.lhs.true42.i.do.end50.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50.i

land.lhs.true45.i:                                ; preds = %land.lhs.true42.i
  %.b7576.i = load i1, ptr @ip6gre_destroy_tunnels.__warned.39, align 1
  br i1 %.b7576.i, label %land.lhs.true45.i.do.end50.i_crit_edge, label %if.then47.i

land.lhs.true45.i.do.end50.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50.i

if.then47.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ip6gre_destroy_tunnels.__warned.39, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1579, ptr noundef nonnull @.str.8) #15
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then47.i, %land.lhs.true45.i.do.end50.i_crit_edge, %land.lhs.true42.i.do.end50.i_crit_edge, %do.body40.i.do.end50.i_crit_edge
  %16 = ptrtoint ptr %t.088.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %t.0.i = load ptr, ptr %t.088.i, align 4
  %tobool32.not.i = icmp eq ptr %t.0.i, null
  br i1 %tobool32.not.i, label %do.end50.i.while.end.i_crit_edge, label %do.end50.i.while.body.i_crit_edge

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %do.end50.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge
  %inc.i = add nuw nsw i32 %h.089.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end54.i, label %while.end.i.for.body23.i_crit_edge

while.end.i.for.body23.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i

for.end54.i:                                      ; preds = %while.end.i
  %inc56.i = add nuw nsw i32 %prio.090.i, 1
  %exitcond91.not.i = icmp eq i32 %inc56.i, 4
  br i1 %exitcond91.not.i, label %for.cond.loopexit, label %for.end54.i.for.cond21.preheader.i_crit_edge

for.end54.i.for.cond21.preheader.i_crit_edge:     ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond21.preheader.i

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #15
  call void @rtnl_unlock() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__param_log_ecn_error, !1, !"__param_log_ecn_error", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_gre.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_log_ecn_errortype599, !1, !"__UNIQUE_ID_log_ecn_errortype599", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log_ecn_error600, !4, !"__UNIQUE_ID_log_ecn_error600", i1 false, i1 false}
!4 = !{!"../net/ipv6/ip6_gre.c", i32 59, i32 1}
!5 = !{ptr @__initcall__kmod_ip6_gre__647_2394_ip6gre_init6, !6, !"__initcall__kmod_ip6_gre__647_2394_ip6gre_init6", i1 false, i1 false}
!6 = !{!"../net/ipv6/ip6_gre.c", i32 2394, i32 1}
!7 = !{ptr @__exitcall_ip6gre_fini, !8, !"__exitcall_ip6gre_fini", i1 false, i1 false}
!8 = !{!"../net/ipv6/ip6_gre.c", i32 2395, i32 1}
!9 = !{ptr @__UNIQUE_ID_file648, !10, !"__UNIQUE_ID_file648", i1 false, i1 false}
!10 = !{!"../net/ipv6/ip6_gre.c", i32 2396, i32 1}
!11 = !{ptr @__UNIQUE_ID_license649, !10, !"__UNIQUE_ID_license649", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author650, !13, !"__UNIQUE_ID_author650", i1 false, i1 false}
!13 = !{!"../net/ipv6/ip6_gre.c", i32 2397, i32 1}
!14 = !{ptr @__UNIQUE_ID_description651, !15, !"__UNIQUE_ID_description651", i1 false, i1 false}
!15 = !{!"../net/ipv6/ip6_gre.c", i32 2398, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias652, !17, !"__UNIQUE_ID_alias652", i1 false, i1 false}
!17 = !{!"../net/ipv6/ip6_gre.c", i32 2399, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias653, !19, !"__UNIQUE_ID_alias653", i1 false, i1 false}
!19 = !{!"../net/ipv6/ip6_gre.c", i32 2400, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias654, !21, !"__UNIQUE_ID_alias654", i1 false, i1 false}
!21 = !{!"../net/ipv6/ip6_gre.c", i32 2401, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias655, !23, !"__UNIQUE_ID_alias655", i1 false, i1 false}
!23 = !{!"../net/ipv6/ip6_gre.c", i32 2402, i32 1}
!24 = !{ptr @__param_str_log_ecn_error, !1, !"__param_str_log_ecn_error", i1 false, i1 false}
!25 = !{ptr @log_ecn_error, !26, !"log_ecn_error", i1 false, i1 false}
!26 = !{!"../net/ipv6/ip6_gre.c", i32 57, i32 13}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ipv6/ip6_gre.c", i32 2312, i32 11}
!29 = !{ptr @ip6gre_tap_ops, !30, !"ip6gre_tap_ops", i1 false, i1 false}
!30 = !{!"../net/ipv6/ip6_gre.c", i32 2311, i32 29}
!31 = !{ptr @ip6gre_tap_netdev_ops, !32, !"ip6gre_tap_netdev_ops", i1 false, i1 false}
!32 = !{!"../net/ipv6/ip6_gre.c", i32 1836, i32 36}
!33 = !{ptr @ip6gre_tunnel_init_common.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../net/ipv6/ip6_gre.c", i32 1478, i32 16}
!35 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ip6gre_net_id, !48, !"ip6gre_net_id", i1 false, i1 false}
!48 = !{!"../net/ipv6/ip6_gre.c", i32 64, i32 21}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/ipv6/ip6_gre.c", i32 312, i32 15}
!51 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!55 = !{ptr @ip6gre_policy, !56, !"ip6gre_policy", i1 false, i1 false}
!56 = !{!"../net/ipv6/ip6_gre.c", i32 2193, i32 32}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/ipv6/ip6_gre.c", i32 2011, i32 7}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/ipv6/ip6_gre.c", i32 334, i32 12}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/ipv6/ip6_gre.c", i32 302, i32 2}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv6/ip6_gre.c", i32 365, i32 16}
!65 = !{ptr @ip6gre_netdev_ops, !66, !"ip6gre_netdev_ops", i1 false, i1 false}
!66 = !{!"../net/ipv6/ip6_gre.c", i32 1401, i32 36}
!67 = !{ptr @ip6gre_header_ops, !68, !"ip6gre_header_ops", i1 false, i1 false}
!68 = !{!"../net/ipv6/ip6_gre.c", i32 1397, i32 32}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!71 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ipv6/ip6_gre.c", i32 2297, i32 11}
!78 = !{ptr @ip6gre_link_ops, !79, !"ip6gre_link_ops", i1 false, i1 false}
!79 = !{!"../net/ipv6/ip6_gre.c", i32 2296, i32 29}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ipv6/ip6_gre.c", i32 2326, i32 11}
!82 = !{ptr @ip6erspan_tap_ops, !83, !"ip6erspan_tap_ops", i1 false, i1 false}
!83 = !{!"../net/ipv6/ip6_gre.c", i32 2325, i32 29}
!84 = !{ptr @ip6erspan_netdev_ops, !85, !"ip6erspan_netdev_ops", i1 false, i1 false}
!85 = !{!"../net/ipv6/ip6_gre.c", i32 1905, i32 36}
!86 = !{ptr @ip6erspan_tap_init.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../net/ipv6/ip6_gre.c", i32 1872, i32 16}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/ipv6/ip6_gre.c", i32 2245, i32 7}
!90 = !{ptr @ip6gre_protocol, !91, !"ip6gre_protocol", i1 false, i1 false}
!91 = !{!"../net/ipv6/ip6_gre.c", i32 1547, i32 30}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/ipv6/ip6_gre.c", i32 132, i32 2}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/ipv6/ip6_gre.c", i32 157, i32 2}
!97 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/ipv6/ip6_gre.c", i32 181, i32 2}
!100 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../net/ipv6/ip6_gre.c", i32 207, i32 2}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../net/ipv6/ip6_gre.c", i32 235, i32 7}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/ipv6/ip6_gre.c", i32 237, i32 7}
!108 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/ipv6/ip6_gre.c", i32 443, i32 3}
!110 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ip6gre_err.descriptor, !109, !"descriptor", i1 false, i1 false}
!113 = !{ptr @.str.28, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/ipv6/ip6_gre.c", i32 450, i32 4}
!116 = !{ptr @ip6gre_err.descriptor.29, !115, !"descriptor", i1 false, i1 false}
!117 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/ipv6/ip6_gre.c", i32 466, i32 5}
!120 = !{ptr @ip6gre_err.descriptor.32, !119, !"descriptor", i1 false, i1 false}
!121 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/ipv6/ip6_gre.c", i32 470, i32 4}
!124 = !{ptr @ip6gre_err.descriptor.35, !123, !"descriptor", i1 false, i1 false}
!125 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ip6gre_net_ops, !127, !"ip6gre_net_ops", i1 false, i1 false}
!127 = !{!"../net/ipv6/ip6_gre.c", i32 1636, i32 33}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/ipv6/ip6_gre.c", i32 1593, i32 9}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../net/ipv6/ip6_gre.c", i32 1570, i32 8}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../net/ipv6/ip6_gre.c", i32 1579, i32 9}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/ipv6/ip6_gre.c", i32 2347, i32 2}
!136 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ip6gre_init._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ip6gre_init._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/ipv6/ip6_gre.c", i32 2355, i32 3}
!141 = !{ptr @ip6gre_init._entry.42, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ip6gre_init._entry_ptr.44, !140, !"_entry_ptr", i1 false, i1 false}
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
!153 = !{i8 0, i8 2}
!154 = !{i64 2158394904}
!155 = !{i64 839989, i64 840050}
!156 = !{i64 842721}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 843006}
!159 = !{!"auto-init"}
!160 = !{i64 2149442377}
!161 = !{i64 2149442643}
!162 = !{i64 2158447932}
!163 = !{i64 6629721}
!164 = !{i64 2158433667}
!165 = !{i64 2158440474}
!166 = !{i64 2152548863, i64 2152548888}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 5044418}
!169 = !{i64 5044615}
!170 = !{i64 2152529848}
!171 = !{i64 2152549544, i64 2152549569}
!172 = !{i64 2158403393}
!173 = !{i64 797169, i64 797196, i64 797218, i64 797246}
!174 = !{i64 797577, i64 797604, i64 797637, i64 797658, i64 797685, i64 797711}
!175 = !{i64 2149039595, i64 2149039600, i64 2149039613, i64 2149039657, i64 2149039691, i64 2149039712}
!176 = !{i64 2158486036}
