; ModuleID = '/llk/IR_all_yes/net/batman-adv/multicast.c_pt.bc'
source_filename = "../net/batman-adv/multicast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.kref = type { %struct.refcount_struct }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_tt_global_entry = type { %struct.batadv_tt_common_entry, %struct.hlist_head, %struct.atomic_t, %struct.spinlock, i32 }
%struct.batadv_tt_common_entry = type { [6 x i8], i16, %struct.hlist_node, i16, i32, %struct.kref, %struct.callback_head }
%struct.batadv_tt_orig_list_entry = type { ptr, i8, i8, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_tvlv_mcast_data = type { i8, [3 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.141 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.54, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ip_mc_list = type { ptr, i32, i32, ptr, ptr, [2 x i32], %union.anon.140, ptr, %struct.timer_list, i32, %struct.refcount_struct, %struct.spinlock, i8, i8, i8, i8, i8, i8, %struct.callback_head }
%union.anon.140 = type { ptr }
%struct.batadv_hw_addr = type { %struct.hlist_node, [6 x i8] }
%struct.ifmcaddr6 = type { %struct.in6_addr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], %struct.delayed_work, i32, i32, %struct.refcount_struct, i32, i32, %struct.callback_head }
%struct.br_ip_list = type { %struct.list_head, %struct.br_ip }
%struct.br_ip = type { %union.anon.148, %union.anon.149, i16, i16 }
%union.anon.148 = type { %struct.in6_addr }
%union.anon.149 = type { %struct.in6_addr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.101, [0 x i32], %union.anon.102, i16, i16, %union.anon.103, %struct.refcount_struct, [0 x i32], %union.anon.104 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.130 }
%union.anon.130 = type { [6 x i32], [24 x i8] }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@batadv_mcast_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&bat_priv->mcast.work)->work)\00", [46 x i8] zeroinitializer }, align 32
@batadv_mcast_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&bat_priv->mcast.work)->timer\00", [32 x i8] zeroinitializer }, align 32
@batadv_mcast_forw_ipv4_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/batman-adv/multicast.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_mcast_forw_ipv6_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_unsnoop_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_rtr4_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_rtr6_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_tt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_want_all_ipv4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_want_all_ipv6.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_want_all_rtr4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_forw_want_all_rtr6.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@batadv_mcast_mla_softif_get_ipv4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_mla_softif_get_ipv4.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_mcast_mla_softif_get_ipv6.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_mcast_mla_softif_get_ipv6.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Bridge added: Setting Unsnoopables(U)-flag\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bridge removed: Unsetting Unsnoopables(U)-flag\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IGMP\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MLD\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Querier appeared\0A\00", [43 x i8] zeroinitializer }, align 32
@batadv_mcast_querier_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016batman_adv: %s: %s Querier appeared\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"batadv_mcast_querier_log\00", [39 x i8] zeroinitializer }, align 32
@batadv_mcast_querier_log._entry_ptr = internal global ptr @batadv_mcast_querier_log._entry, section ".printk_index", align 4
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s Querier disappeared - multicast optimizations disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@batadv_mcast_querier_log._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016batman_adv: %s: %s Querier disappeared - multicast optimizations disabled\0A\00", [51 x i8] zeroinitializer }, align 32
@batadv_mcast_querier_log._entry_ptr.23 = internal global ptr @batadv_mcast_querier_log._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"No %s Querier present - multicast optimizations disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@batadv_mcast_querier_log._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016batman_adv: %s: No %s Querier present - multicast optimizations disabled\0A\00", [52 x i8] zeroinitializer }, align 32
@batadv_mcast_querier_log._entry_ptr.27 = internal global ptr @batadv_mcast_querier_log._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s Querier is behind our bridged segment: Might shadow listeners\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Querier is not behind our bridged segment\0A\00", [50 x i8] zeroinitializer }, align 32
@__const.batadv_mcast_flags_log.str_old_flags = private unnamed_addr constant [10 x i8] c"[.... . ]\00", align 1
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%c%c%c%s%s]\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R4\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c". \00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R6\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Changing multicast flags from '%s' to '[%c%c%c%s%s]'\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<undefined>\00", [20 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcast TT outdated\00", [46 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 18, i64 22, i64 34]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 131, i64 143]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 2044, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1167, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 232, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 313, i32 9 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 781, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 784, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 788, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 791, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 734, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 737, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 741, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 748, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 752, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 811, i32 25 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 815, i32 46 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 815, i32 53 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 816, i32 46 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 818, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 110, i32 15 }
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 991, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [30 x i8] c"../net/batman-adv/multicast.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 667, i32 12 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @batadv_mcast_querier_log._entry, ptr @batadv_mcast_querier_log._entry.21, ptr @batadv_mcast_querier_log._entry.25, ptr @batadv_mcast_querier_log._entry_ptr, ptr @batadv_mcast_querier_log._entry_ptr.23, ptr @batadv_mcast_querier_log._entry_ptr.27, ptr @batadv_mcast_init.__key, ptr @.str, ptr @batadv_mcast_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mcast_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mcast_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mcast_querier_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mcast_querier_log._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mcast_querier_log._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_mcast_forw_mode(ptr noundef %bat_priv, ptr noundef %skb, ptr nocapture noundef %orig, ptr nocapture noundef %is_routable) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i4.i = alloca i32, align 4
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i.i, align 2
  %multicast_mode.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %multicast_mode.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %multicast_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %multicast_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %h_proto.i, align 1
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.end.i.cleanup_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb3.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.i.i.i.i, 34
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.if.end.i.i_crit_edge, !prof !105

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %10)
  %cmp3.i.i.i = icmp ult i32 %10, 34
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.i, !prof !105

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub nuw nsw i32 34, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #10
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i.i_crit_edge:      ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

pskb_may_pull.exit.i.i.cleanup_crit_edge:         ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge, %sw.bb.i.if.end.i.i_crit_edge
  %call.i.i11.i = tail call i32 @ip_mc_check_igmp(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i11.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.end.i1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end.i1.i.i:                                    ; preds = %if.end.i.i
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i.i.i
  %17 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i.i.i.i, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %18, label %if.end.i1.i.i.if.end3.i.i_crit_edge [
    i8 18, label %if.end.i1.i.i.cleanup_crit_edge
    i8 22, label %if.end.i1.i.i.cleanup_crit_edge104
    i8 34, label %if.end.i1.i.i.cleanup_crit_edge105
  ]

if.end.i1.i.i.cleanup_crit_edge105:               ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i1.i.i.cleanup_crit_edge104:               ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i1.i.i.cleanup_crit_edge:                  ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i1.i.i.if.end3.i.i_crit_edge:              ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i1.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i.i
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %daddr.i.i, align 4
  %and.i.i.i = and i32 %25, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i)
  %cmp.i3.i.i = icmp eq i32 %and.i.i.i, -536870912
  br i1 %cmp.i3.i.i, label %if.end3.i.i.if.end3_crit_edge, label %if.end3.i.i.if.end3.sink.split_crit_edge

if.end3.i.i.if.end3.sink.split_crit_edge:         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.sink.split

if.end3.i.i.if.end3_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

sw.bb3.i:                                         ; preds = %if.end.i
  %len.i.i.i12.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i.i12.i, align 4
  %data_len.i.i.i13.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i13.i, align 8
  %sub.i.i.i14.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %sub.i.i.i14.i)
  %cmp.not.i.i15.i = icmp ult i32 %sub.i.i.i14.i, 54
  br i1 %cmp.not.i.i15.i, label %if.end.i.i17.i, label %sw.bb3.i.if.end.i24.i_crit_edge, !prof !105

sw.bb3.i.if.end.i24.i_crit_edge:                  ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i24.i

if.end.i.i17.i:                                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %27)
  %cmp3.i.i16.i = icmp ult i32 %27, 54
  br i1 %cmp3.i.i16.i, label %if.end.i.i17.i.cleanup_crit_edge, label %pskb_may_pull.exit.i21.i, !prof !105

if.end.i.i17.i.cleanup_crit_edge:                 ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit.i21.i:                         ; preds = %if.end.i.i17.i
  %sub.i.i18.i = sub nuw nsw i32 54, %sub.i.i.i14.i
  %call13.i.i19.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i18.i) #10
  %cmp14.i.not.i20.i = icmp eq ptr %call13.i.i19.i, null
  br i1 %cmp14.i.not.i20.i, label %pskb_may_pull.exit.i21.i.cleanup_crit_edge, label %pskb_may_pull.exit.i21.i.if.end.i24.i_crit_edge

pskb_may_pull.exit.i21.i.if.end.i24.i_crit_edge:  ; preds = %pskb_may_pull.exit.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i24.i

pskb_may_pull.exit.i21.i.cleanup_crit_edge:       ; preds = %pskb_may_pull.exit.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i24.i:                                     ; preds = %pskb_may_pull.exit.i21.i.if.end.i24.i_crit_edge, %sw.bb3.i.if.end.i24.i_crit_edge
  %call.i.i22.i = tail call i32 @ipv6_mc_check_mld(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i)
  %cmp.i.i23.i = icmp slt i32 %call.i.i22.i, 0
  br i1 %cmp.i.i23.i, label %if.end.i24.i.if.end3.i34.i_crit_edge, label %batadv_mcast_is_report_ipv6.exit.i.i

if.end.i24.i.if.end3.i34.i_crit_edge:             ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i34.i

batadv_mcast_is_report_ipv6.exit.i.i:             ; preds = %if.end.i24.i
  %30 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i.i26.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %32 = ptrtoint ptr %transport_header.i.i.i.i26.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %transport_header.i.i.i.i26.i, align 2
  %conv.i.i.i.i27.i = zext i16 %33 to i32
  %add.ptr.i.i.i.i28.i = getelementptr i8, ptr %31, i32 %conv.i.i.i.i27.i
  %34 = ptrtoint ptr %add.ptr.i.i.i.i28.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i.i.i28.i, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %35, label %batadv_mcast_is_report_ipv6.exit.i.i.if.end3.i34.i_crit_edge [
    i8 -113, label %batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge
    i8 -125, label %batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge106
  ]

batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge106: ; preds = %batadv_mcast_is_report_ipv6.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge: ; preds = %batadv_mcast_is_report_ipv6.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

batadv_mcast_is_report_ipv6.exit.i.i.if.end3.i34.i_crit_edge: ; preds = %batadv_mcast_is_report_ipv6.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i34.i

if.end3.i34.i:                                    ; preds = %batadv_mcast_is_report_ipv6.exit.i.i.if.end3.i34.i_crit_edge, %if.end.i24.i.if.end3.i34.i_crit_edge
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i.i.i30.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i.i30.i, align 4
  %conv.i.i.i31.i = zext i16 %40 to i32
  %add.ptr.i.i.i32.i = getelementptr i8, ptr %38, i32 %conv.i.i.i31.i
  %daddr.i33.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i32.i, i32 0, i32 6
  %arrayidx.i.i = getelementptr [16 x i8], ptr %daddr.i33.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i, align 1
  %43 = and i8 %42, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp.i.i = icmp eq i8 %43, 0
  br i1 %cmp.i.i, label %if.end3.i34.i.cleanup_crit_edge, label %if.end7.i.i

if.end3.i34.i.cleanup_crit_edge:                  ; preds = %if.end3.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end3.i34.i
  %44 = ptrtoint ptr %daddr.i33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %daddr.i33.i, align 4
  %xor.i.i.i = xor i32 %45, -16646144
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %daddr.i33.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %xor.i.i.i, %47
  %arrayidx4.i.i.i = getelementptr [4 x i32], ptr %daddr.i33.i, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %49
  %arrayidx7.i.i.i = getelementptr [4 x i32], ptr %daddr.i33.i, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor8.i.i.i = xor i32 %51, 1
  %or9.i.i.i = or i32 %or5.i.i.i, %xor8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i.i)
  %cmp.i3.i35.i = icmp eq i32 %or9.i.i.i, 0
  br i1 %cmp.i3.i35.i, label %if.end7.i.i.if.end3_crit_edge, label %if.else.i36.i

if.end7.i.i.if.end3_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.else.i36.i:                                    ; preds = %if.end7.i.i
  %52 = and i8 %42, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp16.i.i = icmp ugt i8 %52, 2
  br i1 %cmp16.i.i, label %if.else.i36.i.if.end3.sink.split_crit_edge, label %if.else.i36.i.if.end3_crit_edge

if.else.i36.i.if.end3_crit_edge:                  ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.else.i36.i.if.end3.sink.split_crit_edge:       ; preds = %if.else.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.else.i36.i.if.end3.sink.split_crit_edge, %if.end3.i.i.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 2048, %if.end3.i.i.if.end3.sink.split_crit_edge ], [ 34525, %if.else.i36.i.if.end3.sink.split_crit_edge ]
  %53 = ptrtoint ptr %is_routable to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %is_routable, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.else.i36.i.if.end3_crit_edge, %if.end7.i.i.if.end3_crit_edge, %if.end3.i.i.if.end3_crit_edge
  %tobool.not = phi i1 [ false, %if.end7.i.i.if.end3_crit_edge ], [ false, %if.end3.i.i.if.end3_crit_edge ], [ true, %if.else.i36.i.if.end3_crit_edge ], [ true, %if.end3.sink.split ]
  %54 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i.i, align 8
  %56 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i = zext i16 %57 to i32
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %conv.i.i
  %call5 = tail call i32 @batadv_tt_global_hash_count(ptr noundef %bat_priv, ptr noundef %add.ptr.i.i, i16 noundef zeroext 0) #10
  %h_proto.i74 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %h_proto.i74 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %h_proto.i74, align 1
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %59, label %if.end3.batadv_mcast_forw_want_all_ip_count.exit_crit_edge [
    i16 2048, label %sw.bb.i75
    i16 -31011, label %sw.bb1.i
  ]

if.end3.batadv_mcast_forw_want_all_ip_count.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ip_count.exit

sw.bb.i75:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %num_want_all_ipv4.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 9
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %num_want_all_ipv6.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i75
  %num_want_all_ipv6.sink6.i = phi ptr [ %num_want_all_ipv6.i, %sw.bb1.i ], [ %num_want_all_ipv4.i, %sw.bb.i75 ]
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_want_all_ipv6.sink6.i, i32 noundef 4) #10
  %61 = ptrtoint ptr %num_want_all_ipv6.sink6.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %num_want_all_ipv6.sink6.i, align 4
  br label %batadv_mcast_forw_want_all_ip_count.exit

batadv_mcast_forw_want_all_ip_count.exit:         ; preds = %return.sink.split.i, %if.end3.batadv_mcast_forw_want_all_ip_count.exit_crit_edge
  %retval.0.i76 = phi i32 [ 0, %if.end3.batadv_mcast_forw_want_all_ip_count.exit_crit_edge ], [ %62, %return.sink.split.i ]
  br i1 %tobool.not, label %batadv_mcast_forw_want_all_ip_count.exit.cond.end_crit_edge, label %cond.false

batadv_mcast_forw_want_all_ip_count.exit.cond.end_crit_edge: ; preds = %batadv_mcast_forw_want_all_ip_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %batadv_mcast_forw_want_all_ip_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  %num_want_all_unsnoopables = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_want_all_unsnoopables, i32 noundef 4) #10
  %63 = ptrtoint ptr %num_want_all_unsnoopables to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %num_want_all_unsnoopables, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %batadv_mcast_forw_want_all_ip_count.exit.cond.end_crit_edge
  %cond = phi i32 [ %64, %cond.false ], [ 0, %batadv_mcast_forw_want_all_ip_count.exit.cond.end_crit_edge ]
  %65 = ptrtoint ptr %is_routable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %is_routable, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %66, label %cond.end.batadv_mcast_forw_rtr_count.exit_crit_edge [
    i32 2048, label %sw.bb.i77
    i32 34525, label %sw.bb1.i78
  ]

cond.end.batadv_mcast_forw_rtr_count.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr_count.exit

sw.bb.i77:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_want_all_rtr4.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 11
  br label %return.sink.split.i80

sw.bb1.i78:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_want_all_rtr6.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 12
  br label %return.sink.split.i80

return.sink.split.i80:                            ; preds = %sw.bb1.i78, %sw.bb.i77
  %num_want_all_rtr6.sink6.i = phi ptr [ %num_want_all_rtr6.i, %sw.bb1.i78 ], [ %num_want_all_rtr4.i, %sw.bb.i77 ]
  %call.i.i5.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_want_all_rtr6.sink6.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %num_want_all_rtr6.sink6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %num_want_all_rtr6.sink6.i, align 4
  br label %batadv_mcast_forw_rtr_count.exit

batadv_mcast_forw_rtr_count.exit:                 ; preds = %return.sink.split.i80, %cond.end.batadv_mcast_forw_rtr_count.exit_crit_edge
  %retval.0.i81 = phi i32 [ 0, %cond.end.batadv_mcast_forw_rtr_count.exit_crit_edge ], [ %69, %return.sink.split.i80 ]
  %add = add i32 %retval.0.i76, %call5
  %add9 = add i32 %add, %cond
  %add10 = add i32 %add9, %retval.0.i81
  %70 = zext i32 %add10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %add10, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %batadv_mcast_forw_rtr_count.exit.sw.bb33_crit_edge
  ]

batadv_mcast_forw_rtr_count.exit.sw.bb33_crit_edge: ; preds = %batadv_mcast_forw_rtr_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

sw.bb:                                            ; preds = %batadv_mcast_forw_rtr_count.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool11.not = icmp eq i32 %call5, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @batadv_transtable_search(ptr noundef %bat_priv, ptr noundef null, ptr noundef %add.ptr.i.i, i16 noundef zeroext 0) #10
  %71 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %orig, align 4
  br label %if.end29

if.else14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i76)
  %tobool15.not = icmp eq i32 %retval.0.i76, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else14
  %72 = ptrtoint ptr %h_proto.i74 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %h_proto.i74, align 1
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %73, label %if.then16.batadv_mcast_forw_ip_node_get.exit_crit_edge [
    i16 2048, label %sw.bb.i84
    i16 -31011, label %sw.bb1.i87
  ]

if.then16.batadv_mcast_forw_ip_node_get.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ip_node_get.exit

sw.bb.i84:                                        ; preds = %if.then16
  %75 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %78, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i83 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i83, label %sw.bb.i84.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.i84.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %sw.bb.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb.i84
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sw.bb.i84.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i85 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %tobool.not.i.i = icmp eq i32 %call.i.i85, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b38.i.i = load i1, ptr @batadv_mcast_forw_ipv4_node_get.__warned, align 1
  br i1 %.b38.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_ipv4_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1169, ptr noundef nonnull @.str.4) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %want_all_ipv4_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 2
  %79 = ptrtoint ptr %want_all_ipv4_list.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %want_all_ipv4_list.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %80, null
  %add.ptr.i.i86 = getelementptr i8, ptr %80, i32 -84
  %tobool12.not5154.i.i = icmp eq ptr %add.ptr.i.i86, null
  %tobool12.not51.i.i = or i1 %tobool10.not.i.i, %tobool12.not5154.i.i
  br i1 %tobool12.not51.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %tmp_orig_node.052.i.i = phi ptr [ %add.ptr28.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i86, %do.end.i.i.for.body.i.i_crit_edge ]
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i.i, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #10
  %81 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %for.body.i.i
  %83 = phi i32 [ %82, %for.body.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %83, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #10
  %85 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %87 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %86, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %87, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %87, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %86
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %88 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %89, 1
  %90 = or i32 %add5.i.i.i.i.i.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %.not.i.i.i.i.i.i = icmp sgt i32 %90, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !108

if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #10
  %91 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge
  %92 = phi i32 [ %89, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %92, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i.i, label %for.inc.i.i, label %kref_get_unless_zero.exit.i.i.for.end.i.i_crit_edge

kref_get_unless_zero.exit.i.i.for.end.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %kref_get_unless_zero.exit.i.i
  %mcast_want_all_ipv4_node.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i.i, i32 0, i32 9
  %93 = ptrtoint ptr %mcast_want_all_ipv4_node.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %mcast_want_all_ipv4_node.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %94, null
  %add.ptr28.i.i = getelementptr i8, ptr %94, i32 -84
  %tobool12.not55.i.i = icmp eq ptr %add.ptr28.i.i, null
  %tobool12.not.i.i = or i1 %tobool24.not.i.i, %tobool12.not55.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %kref_get_unless_zero.exit.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %tmp_orig_node.0.lcssa.i.i = phi ptr [ null, %do.end.i.i.for.end.i.i_crit_edge ], [ %tmp_orig_node.052.i.i, %kref_get_unless_zero.exit.i.i.for.end.i.i_crit_edge ], [ null, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i40.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40.i.i, label %for.end.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge, label %land.lhs.true.i43.i.i

for.end.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ipv4_node_get.exit.i

land.lhs.true.i43.i.i:                            ; preds = %for.end.i.i
  %call1.i41.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i.i)
  %tobool.not.i42.i.i = icmp eq i32 %call1.i41.i.i, 0
  br i1 %tobool.not.i42.i.i, label %land.lhs.true.i43.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge, label %land.lhs.true2.i45.i.i

land.lhs.true.i43.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge: ; preds = %land.lhs.true.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ipv4_node_get.exit.i

land.lhs.true2.i45.i.i:                           ; preds = %land.lhs.true.i43.i.i
  %.b4.i44.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i.i, label %land.lhs.true2.i45.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge, label %if.then.i46.i.i

land.lhs.true2.i45.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge: ; preds = %land.lhs.true2.i45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ipv4_node_get.exit.i

if.then.i46.i.i:                                  ; preds = %land.lhs.true2.i45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_ipv4_node_get.exit.i

batadv_mcast_forw_ipv4_node_get.exit.i:           ; preds = %if.then.i46.i.i, %land.lhs.true2.i45.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge, %land.lhs.true.i43.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge, %for.end.i.i.batadv_mcast_forw_ipv4_node_get.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %return.sink.split.i88

sw.bb1.i87:                                       ; preds = %if.then16
  %95 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i5.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i5.i to ptr
  %preempt_count.i.i.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i.i6.i, align 4
  %add.i.i.i.i7.i = add i32 %98, 1
  store volatile i32 %add.i.i.i.i7.i, ptr %preempt_count.i.i.i.i.i6.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i8.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i8.i, label %sw.bb1.i87.rcu_read_lock.exit.i17.i_crit_edge, label %land.lhs.true.i.i11.i

sw.bb1.i87.rcu_read_lock.exit.i17.i_crit_edge:    ; preds = %sw.bb1.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i17.i

land.lhs.true.i.i11.i:                            ; preds = %sw.bb1.i87
  %call1.i.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9.i)
  %tobool.not.i.i10.i = icmp eq i32 %call1.i.i9.i, 0
  br i1 %tobool.not.i.i10.i, label %land.lhs.true.i.i11.i.rcu_read_lock.exit.i17.i_crit_edge, label %land.lhs.true2.i.i13.i

land.lhs.true.i.i11.i.rcu_read_lock.exit.i17.i_crit_edge: ; preds = %land.lhs.true.i.i11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i17.i

land.lhs.true2.i.i13.i:                           ; preds = %land.lhs.true.i.i11.i
  %.b4.i.i12.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i12.i, label %land.lhs.true2.i.i13.i.rcu_read_lock.exit.i17.i_crit_edge, label %if.then.i.i14.i

land.lhs.true2.i.i13.i.rcu_read_lock.exit.i17.i_crit_edge: ; preds = %land.lhs.true2.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i17.i

if.then.i.i14.i:                                  ; preds = %land.lhs.true2.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i17.i

rcu_read_lock.exit.i17.i:                         ; preds = %if.then.i.i14.i, %land.lhs.true2.i.i13.i.rcu_read_lock.exit.i17.i_crit_edge, %land.lhs.true.i.i11.i.rcu_read_lock.exit.i17.i_crit_edge, %sw.bb1.i87.rcu_read_lock.exit.i17.i_crit_edge
  %call.i15.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i16.i, label %land.lhs.true.i20.i, label %rcu_read_lock.exit.i17.i.do.end.i28.i_crit_edge

rcu_read_lock.exit.i17.i.do.end.i28.i_crit_edge:  ; preds = %rcu_read_lock.exit.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i28.i

land.lhs.true.i20.i:                              ; preds = %rcu_read_lock.exit.i17.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool2.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool2.not.i19.i, label %land.lhs.true.i20.i.do.end.i28.i_crit_edge, label %land.lhs.true3.i22.i

land.lhs.true.i20.i.do.end.i28.i_crit_edge:       ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i28.i

land.lhs.true3.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b38.i21.i = load i1, ptr @batadv_mcast_forw_ipv6_node_get.__warned, align 1
  br i1 %.b38.i21.i, label %land.lhs.true3.i22.i.do.end.i28.i_crit_edge, label %if.then.i23.i

land.lhs.true3.i22.i.do.end.i28.i_crit_edge:      ; preds = %land.lhs.true3.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i28.i

if.then.i23.i:                                    ; preds = %land.lhs.true3.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_ipv6_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1196, ptr noundef nonnull @.str.4) #10
  br label %do.end.i28.i

do.end.i28.i:                                     ; preds = %if.then.i23.i, %land.lhs.true3.i22.i.do.end.i28.i_crit_edge, %land.lhs.true.i20.i.do.end.i28.i_crit_edge, %rcu_read_lock.exit.i17.i.do.end.i28.i_crit_edge
  %want_all_ipv6_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 3
  %99 = ptrtoint ptr %want_all_ipv6_list.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %want_all_ipv6_list.i.i, align 4
  %tobool10.not.i24.i = icmp eq ptr %100, null
  %add.ptr.i25.i = getelementptr i8, ptr %100, i32 -92
  %tobool12.not5154.i26.i = icmp eq ptr %add.ptr.i25.i, null
  %tobool12.not51.i27.i = or i1 %tobool10.not.i24.i, %tobool12.not5154.i26.i
  br i1 %tobool12.not51.i27.i, label %do.end.i28.i.for.end.i59.i_crit_edge, label %do.end.i28.i.for.body.i32.i_crit_edge

do.end.i28.i.for.body.i32.i_crit_edge:            ; preds = %do.end.i28.i
  br label %for.body.i32.i

do.end.i28.i.for.end.i59.i_crit_edge:             ; preds = %do.end.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i59.i

for.body.i32.i:                                   ; preds = %for.inc.i56.i.for.body.i32.i_crit_edge, %do.end.i28.i.for.body.i32.i_crit_edge
  %tmp_orig_node.052.i29.i = phi ptr [ %add.ptr28.i53.i, %for.inc.i56.i.for.body.i32.i_crit_edge ], [ %add.ptr.i25.i, %do.end.i28.i.for.body.i32.i_crit_edge ]
  %refcount.i30.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i29.i, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i4.i) #10
  %call.i.i.i.i.i.i.i.i31.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i30.i, i32 noundef 4) #10
  %101 = ptrtoint ptr %refcount.i30.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %refcount.i30.i, align 4
  br label %do.body.i.i.i.i.i34.i

do.body.i.i.i.i.i34.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.do.body.i.i.i.i.i34.i_crit_edge, %for.body.i32.i
  %103 = phi i32 [ %102, %for.body.i32.i ], [ %asmresult3.i.i.i.i.i.i.i.i42.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.do.body.i.i.i.i.i34.i_crit_edge ]
  %104 = ptrtoint ptr %old.i.i.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %old.i.i.i.i.i4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i.i.i.i33.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i.i.i.i.i33.i, label %do.body.i.i.i.i.i34.i.if.end4.i.i.i.i.i47.i_crit_edge, label %do.cond.i.i.i.i.i38.i

do.body.i.i.i.i.i34.i.if.end4.i.i.i.i.i47.i_crit_edge: ; preds = %do.body.i.i.i.i.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i47.i

do.cond.i.i.i.i.i38.i:                            ; preds = %do.body.i.i.i.i.i34.i
  %add.i.i.i.i.i35.i = add i32 %103, 1
  %call.i.i.i.i.i.i.i36.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i30.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i37.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i4.i, i32 noundef 4) #10
  %105 = ptrtoint ptr %old.i.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %old.i.i.i.i.i4.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i30.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i41.i

do.body.i.i.i.i.i.i.i.i41.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i41.i.do.body.i.i.i.i.i.i.i.i41.i_crit_edge, %do.cond.i.i.i.i.i38.i
  %107 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i30.i, ptr %refcount.i30.i, i32 %106, i32 %add.i.i.i.i.i35.i, ptr elementtype(i32) %refcount.i30.i) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i39.i = extractvalue { i32, i32 } %107, 0
  %tobool.not.i.i.i.i.i.i.i.i40.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i39.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i40.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i, label %do.body.i.i.i.i.i.i.i.i41.i.do.body.i.i.i.i.i.i.i.i41.i_crit_edge

do.body.i.i.i.i.i.i.i.i41.i.do.body.i.i.i.i.i.i.i.i41.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i41.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i: ; preds = %do.body.i.i.i.i.i.i.i.i41.i
  %asmresult3.i.i.i.i.i.i.i.i42.i = extractvalue { i32, i32 } %107, 1
  %cmp.not.i.i.i.i.i.i.i43.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i42.i, %106
  br i1 %cmp.not.i.i.i.i.i.i.i43.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.if.end4.i.i.i.i.i47.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.do.body.i.i.i.i.i34.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.do.body.i.i.i.i.i34.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i34.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.if.end4.i.i.i.i.i47.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i47.i

if.end4.i.i.i.i.i47.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.i.if.end4.i.i.i.i.i47.i_crit_edge, %do.body.i.i.i.i.i34.i.if.end4.i.i.i.i.i47.i_crit_edge
  %108 = ptrtoint ptr %old.i.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %old.i.i.i.i.i4.i, align 4
  %add5.i.i.i.i.i45.i = add i32 %109, 1
  %110 = or i32 %add5.i.i.i.i.i45.i, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %.not.i.i.i.i.i46.i = icmp sgt i32 %110, -1
  br i1 %.not.i.i.i.i.i46.i, label %if.end4.i.i.i.i.i47.i.kref_get_unless_zero.exit.i51.i_crit_edge, label %if.then10.i.i.i.i.i49.i, !prof !108

if.end4.i.i.i.i.i47.i.kref_get_unless_zero.exit.i51.i_crit_edge: ; preds = %if.end4.i.i.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i51.i

if.then10.i.i.i.i.i49.i:                          ; preds = %if.end4.i.i.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i30.i, i32 noundef 0) #10
  %111 = ptrtoint ptr %old.i.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr.i48.i = load i32, ptr %old.i.i.i.i.i4.i, align 4
  br label %kref_get_unless_zero.exit.i51.i

kref_get_unless_zero.exit.i51.i:                  ; preds = %if.then10.i.i.i.i.i49.i, %if.end4.i.i.i.i.i47.i.kref_get_unless_zero.exit.i51.i_crit_edge
  %112 = phi i32 [ %109, %if.end4.i.i.i.i.i47.i.kref_get_unless_zero.exit.i51.i_crit_edge ], [ %.pr.i48.i, %if.then10.i.i.i.i.i49.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool12.i.i.i.i.not.i50.i = icmp eq i32 %112, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i4.i) #10
  br i1 %tobool12.i.i.i.i.not.i50.i, label %for.inc.i56.i, label %kref_get_unless_zero.exit.i51.i.for.end.i59.i_crit_edge

kref_get_unless_zero.exit.i51.i.for.end.i59.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i59.i

for.inc.i56.i:                                    ; preds = %kref_get_unless_zero.exit.i51.i
  %mcast_want_all_ipv6_node.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i29.i, i32 0, i32 10
  %113 = ptrtoint ptr %mcast_want_all_ipv6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %mcast_want_all_ipv6_node.i.i, align 4
  %tobool24.not.i52.i = icmp eq ptr %114, null
  %add.ptr28.i53.i = getelementptr i8, ptr %114, i32 -92
  %tobool12.not55.i54.i = icmp eq ptr %add.ptr28.i53.i, null
  %tobool12.not.i55.i = or i1 %tobool24.not.i52.i, %tobool12.not55.i54.i
  br i1 %tobool12.not.i55.i, label %for.inc.i56.i.for.end.i59.i_crit_edge, label %for.inc.i56.i.for.body.i32.i_crit_edge

for.inc.i56.i.for.body.i32.i_crit_edge:           ; preds = %for.inc.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i32.i

for.inc.i56.i.for.end.i59.i_crit_edge:            ; preds = %for.inc.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i59.i

for.end.i59.i:                                    ; preds = %for.inc.i56.i.for.end.i59.i_crit_edge, %kref_get_unless_zero.exit.i51.i.for.end.i59.i_crit_edge, %do.end.i28.i.for.end.i59.i_crit_edge
  %tmp_orig_node.0.lcssa.i57.i = phi ptr [ null, %do.end.i28.i.for.end.i59.i_crit_edge ], [ %tmp_orig_node.052.i29.i, %kref_get_unless_zero.exit.i51.i.for.end.i59.i_crit_edge ], [ null, %for.inc.i56.i.for.end.i59.i_crit_edge ]
  %call.i40.i58.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40.i58.i, label %for.end.i59.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge, label %land.lhs.true.i43.i62.i

for.end.i59.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge: ; preds = %for.end.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ipv6_node_get.exit.i

land.lhs.true.i43.i62.i:                          ; preds = %for.end.i59.i
  %call1.i41.i60.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i60.i)
  %tobool.not.i42.i61.i = icmp eq i32 %call1.i41.i60.i, 0
  br i1 %tobool.not.i42.i61.i, label %land.lhs.true.i43.i62.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge, label %land.lhs.true2.i45.i64.i

land.lhs.true.i43.i62.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge: ; preds = %land.lhs.true.i43.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ipv6_node_get.exit.i

land.lhs.true2.i45.i64.i:                         ; preds = %land.lhs.true.i43.i62.i
  %.b4.i44.i63.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i63.i, label %land.lhs.true2.i45.i64.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge, label %if.then.i46.i65.i

land.lhs.true2.i45.i64.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge: ; preds = %land.lhs.true2.i45.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_ipv6_node_get.exit.i

if.then.i46.i65.i:                                ; preds = %land.lhs.true2.i45.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_ipv6_node_get.exit.i

batadv_mcast_forw_ipv6_node_get.exit.i:           ; preds = %if.then.i46.i65.i, %land.lhs.true2.i45.i64.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge, %land.lhs.true.i43.i62.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge, %for.end.i59.i.batadv_mcast_forw_ipv6_node_get.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %return.sink.split.i88

return.sink.split.i88:                            ; preds = %batadv_mcast_forw_ipv6_node_get.exit.i, %batadv_mcast_forw_ipv4_node_get.exit.i
  %retval.0.ph.i = phi ptr [ %tmp_orig_node.0.lcssa.i.i, %batadv_mcast_forw_ipv4_node_get.exit.i ], [ %tmp_orig_node.0.lcssa.i57.i, %batadv_mcast_forw_ipv6_node_get.exit.i ]
  %115 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i47.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i47.i.i to ptr
  %preempt_count.i.i.i.i48.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i48.i.i, align 4
  %sub.i.i.i.i68.i = add i32 %118, -1
  store volatile i32 %sub.i.i.i.i68.i, ptr %preempt_count.i.i.i.i48.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %batadv_mcast_forw_ip_node_get.exit

batadv_mcast_forw_ip_node_get.exit:               ; preds = %return.sink.split.i88, %if.then16.batadv_mcast_forw_ip_node_get.exit_crit_edge
  %retval.0.i89 = phi ptr [ null, %if.then16.batadv_mcast_forw_ip_node_get.exit_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i88 ]
  %119 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %retval.0.i89, ptr %orig, align 4
  br label %if.end29

if.else18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool19.not = icmp eq i32 %cond, 0
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call fastcc ptr @batadv_mcast_forw_unsnoop_node_get(ptr noundef %bat_priv)
  %120 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call21, ptr %orig, align 4
  br label %if.end29

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i81)
  %tobool23.not = icmp eq i32 %retval.0.i81, 0
  br i1 %tobool23.not, label %if.end29thread-pre-split, label %if.then24

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call fastcc ptr @batadv_mcast_forw_rtr_node_get(ptr noundef %bat_priv, ptr noundef %add.ptr.i.i)
  %121 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call25, ptr %orig, align 4
  br label %if.end29

if.end29thread-pre-split:                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr = load ptr, ptr %orig, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.then24, %if.then20, %batadv_mcast_forw_ip_node_get.exit, %if.then12
  %123 = phi ptr [ %.pr, %if.end29thread-pre-split ], [ %retval.0.i89, %batadv_mcast_forw_ip_node_get.exit ], [ %call25, %if.then24 ], [ %call21, %if.then20 ], [ %call.i, %if.then12 ]
  %tobool30.not = icmp eq ptr %123, null
  br i1 %tobool30.not, label %if.end29.sw.bb33_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29.sw.bb33_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

sw.bb33:                                          ; preds = %if.end29.sw.bb33_crit_edge, %batadv_mcast_forw_rtr_count.exit.sw.bb33_crit_edge
  br label %cleanup

sw.default:                                       ; preds = %batadv_mcast_forw_rtr_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_fanout = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 11
  %call.i.i73 = tail call zeroext i1 @__kasan_check_read(ptr noundef %multicast_fanout, i32 noundef 4) #10
  %124 = ptrtoint ptr %multicast_fanout to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %multicast_fanout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool35.not = icmp eq i32 %cond, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %125)
  %cmp36.not = icmp ule i32 %add10, %125
  %or.cond = select i1 %tobool35.not, i1 %cmp36.not, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb33, %if.end29.cleanup_crit_edge, %if.end3.i34.i.cleanup_crit_edge, %batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge, %batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge106, %pskb_may_pull.exit.i21.i.cleanup_crit_edge, %if.end.i.i17.i.cleanup_crit_edge, %if.end.i1.i.i.cleanup_crit_edge, %if.end.i1.i.i.cleanup_crit_edge104, %if.end.i1.i.i.cleanup_crit_edge105, %pskb_may_pull.exit.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.bb33 ], [ 2, %if.end29.cleanup_crit_edge ], [ %spec.select, %sw.default ], [ 3, %if.end.i.i.i.cleanup_crit_edge ], [ 3, %pskb_may_pull.exit.i.i.cleanup_crit_edge ], [ 3, %if.end.i.i17.i.cleanup_crit_edge ], [ 3, %pskb_may_pull.exit.i21.i.cleanup_crit_edge ], [ 0, %batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge ], [ 0, %batadv_mcast_is_report_ipv6.exit.i.i.cleanup_crit_edge106 ], [ 0, %if.end3.i34.i.cleanup_crit_edge ], [ 0, %if.end.i1.i.i.cleanup_crit_edge ], [ 0, %if.end.i1.i.i.cleanup_crit_edge104 ], [ 0, %if.end.i1.i.i.cleanup_crit_edge105 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tt_global_hash_count(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_mcast_forw_unsnoop_node_get(ptr noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @batadv_mcast_forw_unsnoop_node_get.__warned, align 1
  br i1 %.b38, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_unsnoop_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1247, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %want_all_unsnoopables_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 1
  %4 = ptrtoint ptr %want_all_unsnoopables_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %want_all_unsnoopables_list, align 4
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -76
  %tobool12.not5154 = icmp eq ptr %add.ptr, null
  %tobool12.not51 = or i1 %tobool10.not, %tobool12.not5154
  br i1 %tobool12.not51, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tmp_orig_node.052 = phi ptr [ %add.ptr28, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body
  %8 = phi i32 [ %7, %for.body ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !108

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %for.inc, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %kref_get_unless_zero.exit
  %mcast_want_all_unsnoopables_node = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052, i32 0, i32 8
  %18 = ptrtoint ptr %mcast_want_all_unsnoopables_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %mcast_want_all_unsnoopables_node, align 4
  %tobool24.not = icmp eq ptr %19, null
  %add.ptr28 = getelementptr i8, ptr %19, i32 -76
  %tobool12.not55 = icmp eq ptr %add.ptr28, null
  %tobool12.not = or i1 %tobool24.not, %tobool12.not55
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp_orig_node.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp_orig_node.052, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i40 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %for.end
  %call1.i41 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %20 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i47 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %tmp_orig_node.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_mcast_forw_rtr_node_get(ptr noundef %bat_priv, ptr nocapture noundef readonly %ethhdr) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i4 = alloca i32, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 2
  %0 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %h_proto, align 1
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %sw.bb.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb.rcu_read_lock.exit.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b38.i = load i1, ptr @batadv_mcast_forw_rtr4_node_get.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_rtr4_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1274, ptr noundef nonnull @.str.4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %want_all_rtr4_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 4
  %7 = ptrtoint ptr %want_all_rtr4_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %want_all_rtr4_list.i, align 4
  %tobool10.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -100
  %tobool12.not5154.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not51.i = or i1 %tobool10.not.i, %tobool12.not5154.i
  br i1 %tobool12.not51.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %tmp_orig_node.052.i = phi ptr [ %add.ptr28.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %for.body.i
  %11 = phi i32 [ %10, %for.body.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %14, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !108

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #10
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %for.inc.i, label %kref_get_unless_zero.exit.i.for.end.i_crit_edge

kref_get_unless_zero.exit.i.for.end.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %kref_get_unless_zero.exit.i
  %mcast_want_all_rtr4_node.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i, i32 0, i32 11
  %21 = ptrtoint ptr %mcast_want_all_rtr4_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %mcast_want_all_rtr4_node.i, align 4
  %tobool24.not.i = icmp eq ptr %22, null
  %add.ptr28.i = getelementptr i8, ptr %22, i32 -100
  %tobool12.not55.i = icmp eq ptr %add.ptr28.i, null
  %tobool12.not.i = or i1 %tobool24.not.i, %tobool12.not55.i
  br i1 %tobool12.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %kref_get_unless_zero.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %tmp_orig_node.0.lcssa.i = phi ptr [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %tmp_orig_node.052.i, %kref_get_unless_zero.exit.i.for.end.i_crit_edge ]
  %call.i40.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40.i, label %for.end.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge, label %land.lhs.true.i43.i

for.end.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr4_node_get.exit

land.lhs.true.i43.i:                              ; preds = %for.end.i
  %call1.i41.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call1.i41.i, 0
  br i1 %tobool.not.i42.i, label %land.lhs.true.i43.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge, label %land.lhs.true2.i45.i

land.lhs.true.i43.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge: ; preds = %land.lhs.true.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr4_node_get.exit

land.lhs.true2.i45.i:                             ; preds = %land.lhs.true.i43.i
  %.b4.i44.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i, label %land.lhs.true2.i45.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge, label %if.then.i46.i

land.lhs.true2.i45.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge: ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr4_node_get.exit

if.then.i46.i:                                    ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_rtr4_node_get.exit

batadv_mcast_forw_rtr4_node_get.exit:             ; preds = %if.then.i46.i, %land.lhs.true2.i45.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge, %land.lhs.true.i43.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge, %for.end.i.batadv_mcast_forw_rtr4_node_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %23 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i5 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i5 to ptr
  %preempt_count.i.i.i.i.i6 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i6, align 4
  %add.i.i.i.i7 = add i32 %26, 1
  store volatile i32 %add.i.i.i.i7, ptr %preempt_count.i.i.i.i.i6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i8 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i8, label %sw.bb1.rcu_read_lock.exit.i17_crit_edge, label %land.lhs.true.i.i11

sw.bb1.rcu_read_lock.exit.i17_crit_edge:          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i17

land.lhs.true.i.i11:                              ; preds = %sw.bb1
  %call1.i.i9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %call1.i.i9, 0
  br i1 %tobool.not.i.i10, label %land.lhs.true.i.i11.rcu_read_lock.exit.i17_crit_edge, label %land.lhs.true2.i.i13

land.lhs.true.i.i11.rcu_read_lock.exit.i17_crit_edge: ; preds = %land.lhs.true.i.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i17

land.lhs.true2.i.i13:                             ; preds = %land.lhs.true.i.i11
  %.b4.i.i12 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i12, label %land.lhs.true2.i.i13.rcu_read_lock.exit.i17_crit_edge, label %if.then.i.i14

land.lhs.true2.i.i13.rcu_read_lock.exit.i17_crit_edge: ; preds = %land.lhs.true2.i.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i17

if.then.i.i14:                                    ; preds = %land.lhs.true2.i.i13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i17

rcu_read_lock.exit.i17:                           ; preds = %if.then.i.i14, %land.lhs.true2.i.i13.rcu_read_lock.exit.i17_crit_edge, %land.lhs.true.i.i11.rcu_read_lock.exit.i17_crit_edge, %sw.bb1.rcu_read_lock.exit.i17_crit_edge
  %call.i15 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i20, label %rcu_read_lock.exit.i17.do.end.i28_crit_edge

rcu_read_lock.exit.i17.do.end.i28_crit_edge:      ; preds = %rcu_read_lock.exit.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i28

land.lhs.true.i20:                                ; preds = %rcu_read_lock.exit.i17
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool2.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool2.not.i19, label %land.lhs.true.i20.do.end.i28_crit_edge, label %land.lhs.true3.i22

land.lhs.true.i20.do.end.i28_crit_edge:           ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i28

land.lhs.true3.i22:                               ; preds = %land.lhs.true.i20
  %.b38.i21 = load i1, ptr @batadv_mcast_forw_rtr6_node_get.__warned, align 1
  br i1 %.b38.i21, label %land.lhs.true3.i22.do.end.i28_crit_edge, label %if.then.i23

land.lhs.true3.i22.do.end.i28_crit_edge:          ; preds = %land.lhs.true3.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i28

if.then.i23:                                      ; preds = %land.lhs.true3.i22
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_rtr6_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1301, ptr noundef nonnull @.str.4) #10
  br label %do.end.i28

do.end.i28:                                       ; preds = %if.then.i23, %land.lhs.true3.i22.do.end.i28_crit_edge, %land.lhs.true.i20.do.end.i28_crit_edge, %rcu_read_lock.exit.i17.do.end.i28_crit_edge
  %want_all_rtr6_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 5
  %27 = ptrtoint ptr %want_all_rtr6_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %want_all_rtr6_list.i, align 4
  %tobool10.not.i24 = icmp eq ptr %28, null
  %add.ptr.i25 = getelementptr i8, ptr %28, i32 -108
  %tobool12.not5154.i26 = icmp eq ptr %add.ptr.i25, null
  %tobool12.not51.i27 = or i1 %tobool10.not.i24, %tobool12.not5154.i26
  br i1 %tobool12.not51.i27, label %do.end.i28.for.end.i59_crit_edge, label %do.end.i28.for.body.i32_crit_edge

do.end.i28.for.body.i32_crit_edge:                ; preds = %do.end.i28
  br label %for.body.i32

do.end.i28.for.end.i59_crit_edge:                 ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i59

for.body.i32:                                     ; preds = %for.inc.i56.for.body.i32_crit_edge, %do.end.i28.for.body.i32_crit_edge
  %tmp_orig_node.052.i29 = phi ptr [ %add.ptr28.i53, %for.inc.i56.for.body.i32_crit_edge ], [ %add.ptr.i25, %do.end.i28.for.body.i32_crit_edge ]
  %refcount.i30 = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i29, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i4) #10
  %call.i.i.i.i.i.i.i.i31 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i30, i32 noundef 4) #10
  %29 = ptrtoint ptr %refcount.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %refcount.i30, align 4
  br label %do.body.i.i.i.i.i34

do.body.i.i.i.i.i34:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.do.body.i.i.i.i.i34_crit_edge, %for.body.i32
  %31 = phi i32 [ %30, %for.body.i32 ], [ %asmresult3.i.i.i.i.i.i.i.i42, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.do.body.i.i.i.i.i34_crit_edge ]
  %32 = ptrtoint ptr %old.i.i.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %old.i.i.i.i.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i.i.i33 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i.i.i33, label %do.body.i.i.i.i.i34.if.end4.i.i.i.i.i47_crit_edge, label %do.cond.i.i.i.i.i38

do.body.i.i.i.i.i34.if.end4.i.i.i.i.i47_crit_edge: ; preds = %do.body.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i47

do.cond.i.i.i.i.i38:                              ; preds = %do.body.i.i.i.i.i34
  %add.i.i.i.i.i35 = add i32 %31, 1
  %call.i.i.i.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i30, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i4, i32 noundef 4) #10
  %33 = ptrtoint ptr %old.i.i.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old.i.i.i.i.i4, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i30, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i41

do.body.i.i.i.i.i.i.i.i41:                        ; preds = %do.body.i.i.i.i.i.i.i.i41.do.body.i.i.i.i.i.i.i.i41_crit_edge, %do.cond.i.i.i.i.i38
  %35 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i30, ptr %refcount.i30, i32 %34, i32 %add.i.i.i.i.i35, ptr elementtype(i32) %refcount.i30) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i39 = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i.i.i.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i39, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i40, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44, label %do.body.i.i.i.i.i.i.i.i41.do.body.i.i.i.i.i.i.i.i41_crit_edge

do.body.i.i.i.i.i.i.i.i41.do.body.i.i.i.i.i.i.i.i41_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i41

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44: ; preds = %do.body.i.i.i.i.i.i.i.i41
  %asmresult3.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32 } %35, 1
  %cmp.not.i.i.i.i.i.i.i43 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i42, %34
  br i1 %cmp.not.i.i.i.i.i.i.i43, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.if.end4.i.i.i.i.i47_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.do.body.i.i.i.i.i34_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.do.body.i.i.i.i.i34_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i34

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.if.end4.i.i.i.i.i47_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i47

if.end4.i.i.i.i.i47:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i44.if.end4.i.i.i.i.i47_crit_edge, %do.body.i.i.i.i.i34.if.end4.i.i.i.i.i47_crit_edge
  %36 = ptrtoint ptr %old.i.i.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %old.i.i.i.i.i4, align 4
  %add5.i.i.i.i.i45 = add i32 %37, 1
  %38 = or i32 %add5.i.i.i.i.i45, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i46 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i46, label %if.end4.i.i.i.i.i47.kref_get_unless_zero.exit.i51_crit_edge, label %if.then10.i.i.i.i.i49, !prof !108

if.end4.i.i.i.i.i47.kref_get_unless_zero.exit.i51_crit_edge: ; preds = %if.end4.i.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i51

if.then10.i.i.i.i.i49:                            ; preds = %if.end4.i.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i30, i32 noundef 0) #10
  %39 = ptrtoint ptr %old.i.i.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr.i48 = load i32, ptr %old.i.i.i.i.i4, align 4
  br label %kref_get_unless_zero.exit.i51

kref_get_unless_zero.exit.i51:                    ; preds = %if.then10.i.i.i.i.i49, %if.end4.i.i.i.i.i47.kref_get_unless_zero.exit.i51_crit_edge
  %40 = phi i32 [ %37, %if.end4.i.i.i.i.i47.kref_get_unless_zero.exit.i51_crit_edge ], [ %.pr.i48, %if.then10.i.i.i.i.i49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.i.i.i.i.not.i50 = icmp eq i32 %40, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i4) #10
  br i1 %tobool12.i.i.i.i.not.i50, label %for.inc.i56, label %kref_get_unless_zero.exit.i51.for.end.i59_crit_edge

kref_get_unless_zero.exit.i51.for.end.i59_crit_edge: ; preds = %kref_get_unless_zero.exit.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i59

for.inc.i56:                                      ; preds = %kref_get_unless_zero.exit.i51
  %mcast_want_all_rtr6_node.i = getelementptr inbounds %struct.batadv_orig_node, ptr %tmp_orig_node.052.i29, i32 0, i32 12
  %41 = ptrtoint ptr %mcast_want_all_rtr6_node.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %mcast_want_all_rtr6_node.i, align 4
  %tobool24.not.i52 = icmp eq ptr %42, null
  %add.ptr28.i53 = getelementptr i8, ptr %42, i32 -108
  %tobool12.not55.i54 = icmp eq ptr %add.ptr28.i53, null
  %tobool12.not.i55 = or i1 %tobool24.not.i52, %tobool12.not55.i54
  br i1 %tobool12.not.i55, label %for.inc.i56.for.end.i59_crit_edge, label %for.inc.i56.for.body.i32_crit_edge

for.inc.i56.for.body.i32_crit_edge:               ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i32

for.inc.i56.for.end.i59_crit_edge:                ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i59

for.end.i59:                                      ; preds = %for.inc.i56.for.end.i59_crit_edge, %kref_get_unless_zero.exit.i51.for.end.i59_crit_edge, %do.end.i28.for.end.i59_crit_edge
  %tmp_orig_node.0.lcssa.i57 = phi ptr [ null, %do.end.i28.for.end.i59_crit_edge ], [ null, %for.inc.i56.for.end.i59_crit_edge ], [ %tmp_orig_node.052.i29, %kref_get_unless_zero.exit.i51.for.end.i59_crit_edge ]
  %call.i40.i58 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40.i58, label %for.end.i59.batadv_mcast_forw_rtr6_node_get.exit_crit_edge, label %land.lhs.true.i43.i62

for.end.i59.batadv_mcast_forw_rtr6_node_get.exit_crit_edge: ; preds = %for.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr6_node_get.exit

land.lhs.true.i43.i62:                            ; preds = %for.end.i59
  %call1.i41.i60 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i60)
  %tobool.not.i42.i61 = icmp eq i32 %call1.i41.i60, 0
  br i1 %tobool.not.i42.i61, label %land.lhs.true.i43.i62.batadv_mcast_forw_rtr6_node_get.exit_crit_edge, label %land.lhs.true2.i45.i64

land.lhs.true.i43.i62.batadv_mcast_forw_rtr6_node_get.exit_crit_edge: ; preds = %land.lhs.true.i43.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr6_node_get.exit

land.lhs.true2.i45.i64:                           ; preds = %land.lhs.true.i43.i62
  %.b4.i44.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i63, label %land.lhs.true2.i45.i64.batadv_mcast_forw_rtr6_node_get.exit_crit_edge, label %if.then.i46.i65

land.lhs.true2.i45.i64.batadv_mcast_forw_rtr6_node_get.exit_crit_edge: ; preds = %land.lhs.true2.i45.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_rtr6_node_get.exit

if.then.i46.i65:                                  ; preds = %land.lhs.true2.i45.i64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_rtr6_node_get.exit

batadv_mcast_forw_rtr6_node_get.exit:             ; preds = %if.then.i46.i65, %land.lhs.true2.i45.i64.batadv_mcast_forw_rtr6_node_get.exit_crit_edge, %land.lhs.true.i43.i62.batadv_mcast_forw_rtr6_node_get.exit_crit_edge, %for.end.i59.batadv_mcast_forw_rtr6_node_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %return.sink.split

return.sink.split:                                ; preds = %batadv_mcast_forw_rtr6_node_get.exit, %batadv_mcast_forw_rtr4_node_get.exit
  %retval.0.ph = phi ptr [ %tmp_orig_node.0.lcssa.i, %batadv_mcast_forw_rtr4_node_get.exit ], [ %tmp_orig_node.0.lcssa.i57, %batadv_mcast_forw_rtr6_node_get.exit ]
  %43 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i47.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i47.i to ptr
  %preempt_count.i.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i48.i, align 4
  %sub.i.i.i.i68 = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i68, ptr %preempt_count.i.i.i.i48.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_mcast_forw_send_orig(ptr noundef %bat_priv, ptr noundef %skb, i16 noundef zeroext %vid, ptr noundef %orig_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef %orig_node, i16 noundef zeroext %vid) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef 64, i32 noundef 0, ptr noundef %orig_node, i16 noundef zeroext %vid) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_mcast_forw_send(ptr noundef %bat_priv, ptr noundef %skb, i16 noundef zeroext %vid, i32 noundef %is_routable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %call1.i = tail call ptr @batadv_tt_global_hash_find(ptr noundef %bat_priv, ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %vid) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call2.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b49.i = load i1, ptr @batadv_mcast_forw_tt.__warned, align 1
  br i1 %.b49.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_tt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1463, ptr noundef nonnull @.str.4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %orig_list.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %orig_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %orig_list.i, align 4
  %tobool15.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -8
  %tobool17.not6770.i = icmp eq ptr %add.ptr.i, null
  %tobool17.not67.i = or i1 %tobool15.not.i, %tobool17.not6770.i
  br i1 %tobool17.not67.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %batadv_mcast_forw_send_orig.exit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %orig_entry.068.i = phi ptr [ %add.ptr34.i, %batadv_mcast_forw_send_orig.exit.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %call18.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #10
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %for.body.i.for.end.i.loopexit_crit_edge, label %if.end21.i

for.body.i.for.end.i.loopexit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.loopexit

if.end21.i:                                       ; preds = %for.body.i
  %10 = ptrtoint ptr %orig_entry.068.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %orig_entry.068.i, align 4
  %call.i51.i = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef %11, i16 noundef zeroext %vid) #10
  br i1 %call.i51.i, label %if.then.i52.i, label %if.end.i.i

if.then.i52.i:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call18.i) #10
  br label %batadv_mcast_forw_send_orig.exit.i

if.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i53.i = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef nonnull %call18.i, i32 noundef 64, i32 noundef 0, ptr noundef %11, i16 noundef zeroext %vid) #10
  br label %batadv_mcast_forw_send_orig.exit.i

batadv_mcast_forw_send_orig.exit.i:               ; preds = %if.end.i.i, %if.then.i52.i
  %list.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.068.i, i32 0, i32 3
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list.i, align 4
  %tobool30.not.i = icmp eq ptr %13, null
  %add.ptr34.i = getelementptr i8, ptr %13, i32 -8
  %tobool17.not71.i = icmp eq ptr %add.ptr34.i, null
  %tobool17.not.i = or i1 %tobool30.not.i, %tobool17.not71.i
  br i1 %tobool17.not.i, label %batadv_mcast_forw_send_orig.exit.i.for.end.i.loopexit_crit_edge, label %batadv_mcast_forw_send_orig.exit.i.for.body.i_crit_edge

batadv_mcast_forw_send_orig.exit.i.for.body.i_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

batadv_mcast_forw_send_orig.exit.i.for.end.i.loopexit_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.loopexit

for.end.i.loopexit:                               ; preds = %batadv_mcast_forw_send_orig.exit.i.for.end.i.loopexit_crit_edge, %for.body.i.for.end.i.loopexit_crit_edge
  %14 = xor i1 %tobool19.not.i, true
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %do.end.i.for.end.i_crit_edge
  %cmp.not = phi i1 [ true, %do.end.i.for.end.i_crit_edge ], [ %14, %for.end.i.loopexit ]
  %call.i54.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i54.i, label %for.end.i.if.end.i64.i_crit_edge, label %land.lhs.true.i57.i

for.end.i.if.end.i64.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i64.i

land.lhs.true.i57.i:                              ; preds = %for.end.i
  %call1.i55.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55.i)
  %tobool.not.i56.i = icmp eq i32 %call1.i55.i, 0
  br i1 %tobool.not.i56.i, label %land.lhs.true.i57.i.if.end.i64.i_crit_edge, label %land.lhs.true2.i59.i

land.lhs.true.i57.i.if.end.i64.i_crit_edge:       ; preds = %land.lhs.true.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i64.i

land.lhs.true2.i59.i:                             ; preds = %land.lhs.true.i57.i
  %.b4.i58.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58.i, label %land.lhs.true2.i59.i.if.end.i64.i_crit_edge, label %if.then.i60.i

land.lhs.true2.i59.i.if.end.i64.i_crit_edge:      ; preds = %land.lhs.true2.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i64.i

if.then.i60.i:                                    ; preds = %land.lhs.true2.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %if.end.i64.i

if.end.i64.i:                                     ; preds = %if.then.i60.i, %land.lhs.true2.i59.i.if.end.i64.i_crit_edge, %land.lhs.true.i57.i.if.end.i64.i_crit_edge, %for.end.i.if.end.i64.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %15 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i61.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i61.i to ptr
  %preempt_count.i.i.i.i62.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i62.i, align 4
  %sub.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i62.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %refcount.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call1.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_mcast_forw_tt.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !108

if.end5.i.i.i.i.i.i.batadv_mcast_forw_tt.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_tt.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %batadv_mcast_forw_tt.exit

if.then.i.i.i:                                    ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !112
  tail call void @batadv_tt_global_entry_release(ptr noundef %refcount.i.i) #10, !callees !113
  br label %batadv_mcast_forw_tt.exit

batadv_mcast_forw_tt.exit:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_mcast_forw_tt.exit_crit_edge
  br i1 %cmp.not, label %batadv_mcast_forw_tt.exit.if.end_crit_edge, label %if.then

batadv_mcast_forw_tt.exit.if.end_crit_edge:       ; preds = %batadv_mcast_forw_tt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %batadv_mcast_forw_tt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %batadv_mcast_forw_tt.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %22 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i29 = zext i16 %23 to i32
  %add.ptr.i.i.i30 = getelementptr i8, ptr %21, i32 %conv.i.i.i29
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i30, i32 0, i32 2
  %24 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %h_proto.i, align 1
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %25, label %if.end.if.then3_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb.i:                                          ; preds = %if.end
  %27 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %sw.bb.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.i.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i31

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i31:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i31, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sw.bb.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i32 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call.i.i32, 0
  br i1 %tobool.not.i.i33, label %land.lhs.true.i.i35, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i35:                              ; preds = %rcu_read_lock.exit.i.i
  %call1.i.i34 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i34)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i34, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i35.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i35.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i35
  %.b40.i.i = load i1, ptr @batadv_mcast_forw_want_all_ipv4.__warned, align 1
  br i1 %.b40.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i36

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i36:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_want_all_ipv4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1505, ptr noundef nonnull @.str.4) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i36, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i35.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %want_all_ipv4_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 2
  %31 = ptrtoint ptr %want_all_ipv4_list.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %want_all_ipv4_list.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %32, null
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 -84
  %tobool12.not5660.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not56.i.i = or i1 %tobool10.not.i.i, %tobool12.not5660.i.i
  br i1 %tobool12.not56.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %batadv_mcast_forw_send_orig.exit.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %orig_node.057.i.i = phi ptr [ %add.ptr29.i.i, %batadv_mcast_forw_send_orig.exit.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %call13.i.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #10
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end16.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end16.i.i:                                     ; preds = %for.body.i.i
  %call.i42.i.i = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef nonnull %orig_node.057.i.i, i16 noundef zeroext %vid) #10
  br i1 %call.i42.i.i, label %if.then.i43.i.i, label %if.end.i.i.i

if.then.i43.i.i:                                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call13.i.i) #10
  br label %batadv_mcast_forw_send_orig.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i44.i.i = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef nonnull %call13.i.i, i32 noundef 64, i32 noundef 0, ptr noundef nonnull %orig_node.057.i.i, i16 noundef zeroext %vid) #10
  br label %batadv_mcast_forw_send_orig.exit.i.i

batadv_mcast_forw_send_orig.exit.i.i:             ; preds = %if.end.i.i.i, %if.then.i43.i.i
  %mcast_want_all_ipv4_node.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.057.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %mcast_want_all_ipv4_node.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %mcast_want_all_ipv4_node.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %34, null
  %add.ptr29.i.i = getelementptr i8, ptr %34, i32 -84
  %tobool12.not61.i.i = icmp eq ptr %add.ptr29.i.i, null
  %tobool12.not.i.i = or i1 %tobool25.not.i.i, %tobool12.not61.i.i
  br i1 %tobool12.not.i.i, label %batadv_mcast_forw_send_orig.exit.i.i.for.end.i.i_crit_edge, label %batadv_mcast_forw_send_orig.exit.i.i.for.body.i.i_crit_edge

batadv_mcast_forw_send_orig.exit.i.i.for.body.i.i_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

batadv_mcast_forw_send_orig.exit.i.i.for.end.i.i_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %batadv_mcast_forw_send_orig.exit.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ 0, %do.end.i.i.for.end.i.i_crit_edge ], [ 1, %for.body.i.i.for.end.i.i_crit_edge ], [ 0, %batadv_mcast_forw_send_orig.exit.i.i.for.end.i.i_crit_edge ]
  %call.i45.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45.i.i, label %for.end.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge, label %land.lhs.true.i48.i.i

for.end.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ipv4.exit.i

land.lhs.true.i48.i.i:                            ; preds = %for.end.i.i
  %call1.i46.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool.not.i47.i.i, label %land.lhs.true.i48.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge, label %land.lhs.true2.i50.i.i

land.lhs.true.i48.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ipv4.exit.i

land.lhs.true2.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b4.i49.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49.i.i, label %land.lhs.true2.i50.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge, label %if.then.i51.i.i

land.lhs.true2.i50.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge: ; preds = %land.lhs.true2.i50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ipv4.exit.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true2.i50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_want_all_ipv4.exit.i

batadv_mcast_forw_want_all_ipv4.exit.i:           ; preds = %if.then.i51.i.i, %land.lhs.true2.i50.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge, %land.lhs.true.i48.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge, %for.end.i.i.batadv_mcast_forw_want_all_ipv4.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_forw_want_all.exit

sw.bb2.i:                                         ; preds = %if.end
  %35 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i8.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i9.i, align 4
  %add.i.i.i.i10.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i10.i, ptr %preempt_count.i.i.i.i.i9.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i11.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i11.i, label %sw.bb2.i.rcu_read_lock.exit.i20.i_crit_edge, label %land.lhs.true.i.i14.i

sw.bb2.i.rcu_read_lock.exit.i20.i_crit_edge:      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i20.i

land.lhs.true.i.i14.i:                            ; preds = %sw.bb2.i
  %call1.i.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %call1.i.i12.i, 0
  br i1 %tobool.not.i.i13.i, label %land.lhs.true.i.i14.i.rcu_read_lock.exit.i20.i_crit_edge, label %land.lhs.true2.i.i16.i

land.lhs.true.i.i14.i.rcu_read_lock.exit.i20.i_crit_edge: ; preds = %land.lhs.true.i.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i20.i

land.lhs.true2.i.i16.i:                           ; preds = %land.lhs.true.i.i14.i
  %.b4.i.i15.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i15.i, label %land.lhs.true2.i.i16.i.rcu_read_lock.exit.i20.i_crit_edge, label %if.then.i.i17.i

land.lhs.true2.i.i16.i.rcu_read_lock.exit.i20.i_crit_edge: ; preds = %land.lhs.true2.i.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i20.i

if.then.i.i17.i:                                  ; preds = %land.lhs.true2.i.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i20.i

rcu_read_lock.exit.i20.i:                         ; preds = %if.then.i.i17.i, %land.lhs.true2.i.i16.i.rcu_read_lock.exit.i20.i_crit_edge, %land.lhs.true.i.i14.i.rcu_read_lock.exit.i20.i_crit_edge, %sw.bb2.i.rcu_read_lock.exit.i20.i_crit_edge
  %call.i18.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i23.i, label %rcu_read_lock.exit.i20.i.do.end.i31.i_crit_edge

rcu_read_lock.exit.i20.i.do.end.i31.i_crit_edge:  ; preds = %rcu_read_lock.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i31.i

land.lhs.true.i23.i:                              ; preds = %rcu_read_lock.exit.i20.i
  %call1.i21.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool2.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool2.not.i22.i, label %land.lhs.true.i23.i.do.end.i31.i_crit_edge, label %land.lhs.true3.i25.i

land.lhs.true.i23.i.do.end.i31.i_crit_edge:       ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i31.i

land.lhs.true3.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b40.i24.i = load i1, ptr @batadv_mcast_forw_want_all_ipv6.__warned, align 1
  br i1 %.b40.i24.i, label %land.lhs.true3.i25.i.do.end.i31.i_crit_edge, label %if.then.i26.i

land.lhs.true3.i25.i.do.end.i31.i_crit_edge:      ; preds = %land.lhs.true3.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i31.i

if.then.i26.i:                                    ; preds = %land.lhs.true3.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_want_all_ipv6.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1542, ptr noundef nonnull @.str.4) #10
  br label %do.end.i31.i

do.end.i31.i:                                     ; preds = %if.then.i26.i, %land.lhs.true3.i25.i.do.end.i31.i_crit_edge, %land.lhs.true.i23.i.do.end.i31.i_crit_edge, %rcu_read_lock.exit.i20.i.do.end.i31.i_crit_edge
  %want_all_ipv6_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 3
  %39 = ptrtoint ptr %want_all_ipv6_list.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %want_all_ipv6_list.i.i, align 4
  %tobool10.not.i27.i = icmp eq ptr %40, null
  %add.ptr.i28.i = getelementptr i8, ptr %40, i32 -92
  %tobool12.not5660.i29.i = icmp eq ptr %add.ptr.i28.i, null
  %tobool12.not56.i30.i = or i1 %tobool10.not.i27.i, %tobool12.not5660.i29.i
  br i1 %tobool12.not56.i30.i, label %do.end.i31.i.for.end.i48.i_crit_edge, label %do.end.i31.i.for.body.i35.i_crit_edge

do.end.i31.i.for.body.i35.i_crit_edge:            ; preds = %do.end.i31.i
  br label %for.body.i35.i

do.end.i31.i.for.end.i48.i_crit_edge:             ; preds = %do.end.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i

for.body.i35.i:                                   ; preds = %batadv_mcast_forw_send_orig.exit.i45.i.for.body.i35.i_crit_edge, %do.end.i31.i.for.body.i35.i_crit_edge
  %orig_node.057.i32.i = phi ptr [ %add.ptr29.i42.i, %batadv_mcast_forw_send_orig.exit.i45.i.for.body.i35.i_crit_edge ], [ %add.ptr.i28.i, %do.end.i31.i.for.body.i35.i_crit_edge ]
  %call13.i33.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #10
  %tobool14.not.i34.i = icmp eq ptr %call13.i33.i, null
  br i1 %tobool14.not.i34.i, label %for.body.i35.i.for.end.i48.i_crit_edge, label %if.end16.i37.i

for.body.i35.i.for.end.i48.i_crit_edge:           ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i

if.end16.i37.i:                                   ; preds = %for.body.i35.i
  %call.i42.i36.i = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef nonnull %orig_node.057.i32.i, i16 noundef zeroext %vid) #10
  br i1 %call.i42.i36.i, label %if.then.i43.i38.i, label %if.end.i.i40.i

if.then.i43.i38.i:                                ; preds = %if.end16.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call13.i33.i) #10
  br label %batadv_mcast_forw_send_orig.exit.i45.i

if.end.i.i40.i:                                   ; preds = %if.end16.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i44.i39.i = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef nonnull %call13.i33.i, i32 noundef 64, i32 noundef 0, ptr noundef nonnull %orig_node.057.i32.i, i16 noundef zeroext %vid) #10
  br label %batadv_mcast_forw_send_orig.exit.i45.i

batadv_mcast_forw_send_orig.exit.i45.i:           ; preds = %if.end.i.i40.i, %if.then.i43.i38.i
  %mcast_want_all_ipv6_node.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.057.i32.i, i32 0, i32 10
  %41 = ptrtoint ptr %mcast_want_all_ipv6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %mcast_want_all_ipv6_node.i.i, align 4
  %tobool25.not.i41.i = icmp eq ptr %42, null
  %add.ptr29.i42.i = getelementptr i8, ptr %42, i32 -92
  %tobool12.not61.i43.i = icmp eq ptr %add.ptr29.i42.i, null
  %tobool12.not.i44.i = or i1 %tobool25.not.i41.i, %tobool12.not61.i43.i
  br i1 %tobool12.not.i44.i, label %batadv_mcast_forw_send_orig.exit.i45.i.for.end.i48.i_crit_edge, label %batadv_mcast_forw_send_orig.exit.i45.i.for.body.i35.i_crit_edge

batadv_mcast_forw_send_orig.exit.i45.i.for.body.i35.i_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i35.i

batadv_mcast_forw_send_orig.exit.i45.i.for.end.i48.i_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i

for.end.i48.i:                                    ; preds = %batadv_mcast_forw_send_orig.exit.i45.i.for.end.i48.i_crit_edge, %for.body.i35.i.for.end.i48.i_crit_edge, %do.end.i31.i.for.end.i48.i_crit_edge
  %ret.0.i46.i = phi i32 [ 0, %do.end.i31.i.for.end.i48.i_crit_edge ], [ 1, %for.body.i35.i.for.end.i48.i_crit_edge ], [ 0, %batadv_mcast_forw_send_orig.exit.i45.i.for.end.i48.i_crit_edge ]
  %call.i45.i47.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45.i47.i, label %for.end.i48.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge, label %land.lhs.true.i48.i51.i

for.end.i48.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge: ; preds = %for.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ipv6.exit.i

land.lhs.true.i48.i51.i:                          ; preds = %for.end.i48.i
  %call1.i46.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i49.i)
  %tobool.not.i47.i50.i = icmp eq i32 %call1.i46.i49.i, 0
  br i1 %tobool.not.i47.i50.i, label %land.lhs.true.i48.i51.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge, label %land.lhs.true2.i50.i53.i

land.lhs.true.i48.i51.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge: ; preds = %land.lhs.true.i48.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ipv6.exit.i

land.lhs.true2.i50.i53.i:                         ; preds = %land.lhs.true.i48.i51.i
  %.b4.i49.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49.i52.i, label %land.lhs.true2.i50.i53.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge, label %if.then.i51.i54.i

land.lhs.true2.i50.i53.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge: ; preds = %land.lhs.true2.i50.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_ipv6.exit.i

if.then.i51.i54.i:                                ; preds = %land.lhs.true2.i50.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_want_all_ipv6.exit.i

batadv_mcast_forw_want_all_ipv6.exit.i:           ; preds = %if.then.i51.i54.i, %land.lhs.true2.i50.i53.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge, %land.lhs.true.i48.i51.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge, %for.end.i48.i.batadv_mcast_forw_want_all_ipv6.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_forw_want_all.exit

batadv_mcast_forw_want_all.exit:                  ; preds = %batadv_mcast_forw_want_all_ipv6.exit.i, %batadv_mcast_forw_want_all_ipv4.exit.i
  %retval.0.ph.i = phi i32 [ %ret.0.i.i, %batadv_mcast_forw_want_all_ipv4.exit.i ], [ %ret.0.i46.i, %batadv_mcast_forw_want_all_ipv6.exit.i ]
  %43 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i52.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i52.i.i to ptr
  %preempt_count.i.i.i.i53.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i53.i.i, align 4
  %sub.i.i.i.i57.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i57.i, ptr %preempt_count.i.i.i.i53.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %cmp2.not = icmp eq i32 %retval.0.ph.i, 0
  br i1 %cmp2.not, label %if.end4, label %batadv_mcast_forw_want_all.exit.if.then3_crit_edge

batadv_mcast_forw_want_all.exit.if.then3_crit_edge: ; preds = %batadv_mcast_forw_want_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %batadv_mcast_forw_want_all.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end4:                                          ; preds = %batadv_mcast_forw_want_all.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_routable)
  %tobool.not = icmp eq i32 %is_routable, 0
  br i1 %tobool.not, label %if.end4.skip_mc_router_crit_edge, label %if.end6

if.end4.skip_mc_router_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_mc_router

if.end6:                                          ; preds = %if.end4
  %47 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i.i, align 8
  %49 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i39 = zext i16 %50 to i32
  %add.ptr.i.i.i40 = getelementptr i8, ptr %48, i32 %conv.i.i.i39
  %h_proto.i41 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i40, i32 0, i32 2
  %51 = ptrtoint ptr %h_proto.i41 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %h_proto.i41, align 1
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %52, label %if.end6.if.then9_crit_edge [
    i16 2048, label %sw.bb.i46
    i16 -31011, label %sw.bb2.i94
  ]

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

sw.bb.i46:                                        ; preds = %if.end6
  %54 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i42 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i43, align 4
  %add.i.i.i.i.i44 = add i32 %57, 1
  store volatile i32 %add.i.i.i.i.i44, ptr %preempt_count.i.i.i.i.i.i43, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i45 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i45, label %sw.bb.i46.rcu_read_lock.exit.i.i55_crit_edge, label %land.lhs.true.i.i.i49

sw.bb.i46.rcu_read_lock.exit.i.i55_crit_edge:     ; preds = %sw.bb.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i55

land.lhs.true.i.i.i49:                            ; preds = %sw.bb.i46
  %call1.i.i.i47 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i47)
  %tobool.not.i.i.i48 = icmp eq i32 %call1.i.i.i47, 0
  br i1 %tobool.not.i.i.i48, label %land.lhs.true.i.i.i49.rcu_read_lock.exit.i.i55_crit_edge, label %land.lhs.true2.i.i.i51

land.lhs.true.i.i.i49.rcu_read_lock.exit.i.i55_crit_edge: ; preds = %land.lhs.true.i.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i55

land.lhs.true2.i.i.i51:                           ; preds = %land.lhs.true.i.i.i49
  %.b4.i.i.i50 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i50, label %land.lhs.true2.i.i.i51.rcu_read_lock.exit.i.i55_crit_edge, label %if.then.i.i.i52

land.lhs.true2.i.i.i51.rcu_read_lock.exit.i.i55_crit_edge: ; preds = %land.lhs.true2.i.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i55

if.then.i.i.i52:                                  ; preds = %land.lhs.true2.i.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i.i55

rcu_read_lock.exit.i.i55:                         ; preds = %if.then.i.i.i52, %land.lhs.true2.i.i.i51.rcu_read_lock.exit.i.i55_crit_edge, %land.lhs.true.i.i.i49.rcu_read_lock.exit.i.i55_crit_edge, %sw.bb.i46.rcu_read_lock.exit.i.i55_crit_edge
  %call.i.i53 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %tobool.not.i.i54 = icmp eq i32 %call.i.i53, 0
  br i1 %tobool.not.i.i54, label %land.lhs.true.i.i58, label %rcu_read_lock.exit.i.i55.do.end.i.i66_crit_edge

rcu_read_lock.exit.i.i55.do.end.i.i66_crit_edge:  ; preds = %rcu_read_lock.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i66

land.lhs.true.i.i58:                              ; preds = %rcu_read_lock.exit.i.i55
  %call1.i.i56 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i56)
  %tobool2.not.i.i57 = icmp eq i32 %call1.i.i56, 0
  br i1 %tobool2.not.i.i57, label %land.lhs.true.i.i58.do.end.i.i66_crit_edge, label %land.lhs.true3.i.i60

land.lhs.true.i.i58.do.end.i.i66_crit_edge:       ; preds = %land.lhs.true.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i66

land.lhs.true3.i.i60:                             ; preds = %land.lhs.true.i.i58
  %.b40.i.i59 = load i1, ptr @batadv_mcast_forw_want_all_rtr4.__warned, align 1
  br i1 %.b40.i.i59, label %land.lhs.true3.i.i60.do.end.i.i66_crit_edge, label %if.then.i.i61

land.lhs.true3.i.i60.do.end.i.i66_crit_edge:      ; preds = %land.lhs.true3.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i66

if.then.i.i61:                                    ; preds = %land.lhs.true3.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_want_all_rtr4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1608, ptr noundef nonnull @.str.4) #10
  br label %do.end.i.i66

do.end.i.i66:                                     ; preds = %if.then.i.i61, %land.lhs.true3.i.i60.do.end.i.i66_crit_edge, %land.lhs.true.i.i58.do.end.i.i66_crit_edge, %rcu_read_lock.exit.i.i55.do.end.i.i66_crit_edge
  %want_all_rtr4_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 4
  %58 = ptrtoint ptr %want_all_rtr4_list.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %want_all_rtr4_list.i.i, align 4
  %tobool10.not.i.i62 = icmp eq ptr %59, null
  %add.ptr.i.i63 = getelementptr i8, ptr %59, i32 -100
  %tobool12.not5660.i.i64 = icmp eq ptr %add.ptr.i.i63, null
  %tobool12.not56.i.i65 = or i1 %tobool10.not.i.i62, %tobool12.not5660.i.i64
  br i1 %tobool12.not56.i.i65, label %do.end.i.i66.for.end.i.i83_crit_edge, label %do.end.i.i66.for.body.i.i70_crit_edge

do.end.i.i66.for.body.i.i70_crit_edge:            ; preds = %do.end.i.i66
  br label %for.body.i.i70

do.end.i.i66.for.end.i.i83_crit_edge:             ; preds = %do.end.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i83

for.body.i.i70:                                   ; preds = %batadv_mcast_forw_send_orig.exit.i.i80.for.body.i.i70_crit_edge, %do.end.i.i66.for.body.i.i70_crit_edge
  %orig_node.057.i.i67 = phi ptr [ %add.ptr29.i.i77, %batadv_mcast_forw_send_orig.exit.i.i80.for.body.i.i70_crit_edge ], [ %add.ptr.i.i63, %do.end.i.i66.for.body.i.i70_crit_edge ]
  %call13.i.i68 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #10
  %tobool14.not.i.i69 = icmp eq ptr %call13.i.i68, null
  br i1 %tobool14.not.i.i69, label %for.body.i.i70.for.end.i.i83_crit_edge, label %if.end16.i.i72

for.body.i.i70.for.end.i.i83_crit_edge:           ; preds = %for.body.i.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i83

if.end16.i.i72:                                   ; preds = %for.body.i.i70
  %call.i42.i.i71 = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef nonnull %orig_node.057.i.i67, i16 noundef zeroext %vid) #10
  br i1 %call.i42.i.i71, label %if.then.i43.i.i73, label %if.end.i.i.i75

if.then.i43.i.i73:                                ; preds = %if.end16.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call13.i.i68) #10
  br label %batadv_mcast_forw_send_orig.exit.i.i80

if.end.i.i.i75:                                   ; preds = %if.end16.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i44.i.i74 = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef nonnull %call13.i.i68, i32 noundef 64, i32 noundef 0, ptr noundef nonnull %orig_node.057.i.i67, i16 noundef zeroext %vid) #10
  br label %batadv_mcast_forw_send_orig.exit.i.i80

batadv_mcast_forw_send_orig.exit.i.i80:           ; preds = %if.end.i.i.i75, %if.then.i43.i.i73
  %mcast_want_all_rtr4_node.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.057.i.i67, i32 0, i32 11
  %60 = ptrtoint ptr %mcast_want_all_rtr4_node.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %mcast_want_all_rtr4_node.i.i, align 4
  %tobool25.not.i.i76 = icmp eq ptr %61, null
  %add.ptr29.i.i77 = getelementptr i8, ptr %61, i32 -100
  %tobool12.not61.i.i78 = icmp eq ptr %add.ptr29.i.i77, null
  %tobool12.not.i.i79 = or i1 %tobool25.not.i.i76, %tobool12.not61.i.i78
  br i1 %tobool12.not.i.i79, label %batadv_mcast_forw_send_orig.exit.i.i80.for.end.i.i83_crit_edge, label %batadv_mcast_forw_send_orig.exit.i.i80.for.body.i.i70_crit_edge

batadv_mcast_forw_send_orig.exit.i.i80.for.body.i.i70_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i70

batadv_mcast_forw_send_orig.exit.i.i80.for.end.i.i83_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i83

for.end.i.i83:                                    ; preds = %batadv_mcast_forw_send_orig.exit.i.i80.for.end.i.i83_crit_edge, %for.body.i.i70.for.end.i.i83_crit_edge, %do.end.i.i66.for.end.i.i83_crit_edge
  %ret.0.i.i81 = phi i32 [ 0, %do.end.i.i66.for.end.i.i83_crit_edge ], [ 1, %for.body.i.i70.for.end.i.i83_crit_edge ], [ 0, %batadv_mcast_forw_send_orig.exit.i.i80.for.end.i.i83_crit_edge ]
  %call.i45.i.i82 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45.i.i82, label %for.end.i.i83.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge, label %land.lhs.true.i48.i.i86

for.end.i.i83.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge: ; preds = %for.end.i.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_rtr4.exit.i

land.lhs.true.i48.i.i86:                          ; preds = %for.end.i.i83
  %call1.i46.i.i84 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i84)
  %tobool.not.i47.i.i85 = icmp eq i32 %call1.i46.i.i84, 0
  br i1 %tobool.not.i47.i.i85, label %land.lhs.true.i48.i.i86.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge, label %land.lhs.true2.i50.i.i88

land.lhs.true.i48.i.i86.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge: ; preds = %land.lhs.true.i48.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_rtr4.exit.i

land.lhs.true2.i50.i.i88:                         ; preds = %land.lhs.true.i48.i.i86
  %.b4.i49.i.i87 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49.i.i87, label %land.lhs.true2.i50.i.i88.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge, label %if.then.i51.i.i89

land.lhs.true2.i50.i.i88.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge: ; preds = %land.lhs.true2.i50.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_rtr4.exit.i

if.then.i51.i.i89:                                ; preds = %land.lhs.true2.i50.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_want_all_rtr4.exit.i

batadv_mcast_forw_want_all_rtr4.exit.i:           ; preds = %if.then.i51.i.i89, %land.lhs.true2.i50.i.i88.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge, %land.lhs.true.i48.i.i86.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge, %for.end.i.i83.batadv_mcast_forw_want_all_rtr4.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_forw_want_rtr.exit

sw.bb2.i94:                                       ; preds = %if.end6
  %62 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i8.i90 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i.i8.i90 to ptr
  %preempt_count.i.i.i.i.i9.i91 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i.i9.i91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i.i9.i91, align 4
  %add.i.i.i.i10.i92 = add i32 %65, 1
  store volatile i32 %add.i.i.i.i10.i92, ptr %preempt_count.i.i.i.i.i9.i91, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i11.i93 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i11.i93, label %sw.bb2.i94.rcu_read_lock.exit.i20.i103_crit_edge, label %land.lhs.true.i.i14.i97

sw.bb2.i94.rcu_read_lock.exit.i20.i103_crit_edge: ; preds = %sw.bb2.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i20.i103

land.lhs.true.i.i14.i97:                          ; preds = %sw.bb2.i94
  %call1.i.i12.i95 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i12.i95)
  %tobool.not.i.i13.i96 = icmp eq i32 %call1.i.i12.i95, 0
  br i1 %tobool.not.i.i13.i96, label %land.lhs.true.i.i14.i97.rcu_read_lock.exit.i20.i103_crit_edge, label %land.lhs.true2.i.i16.i99

land.lhs.true.i.i14.i97.rcu_read_lock.exit.i20.i103_crit_edge: ; preds = %land.lhs.true.i.i14.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i20.i103

land.lhs.true2.i.i16.i99:                         ; preds = %land.lhs.true.i.i14.i97
  %.b4.i.i15.i98 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i15.i98, label %land.lhs.true2.i.i16.i99.rcu_read_lock.exit.i20.i103_crit_edge, label %if.then.i.i17.i100

land.lhs.true2.i.i16.i99.rcu_read_lock.exit.i20.i103_crit_edge: ; preds = %land.lhs.true2.i.i16.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i20.i103

if.then.i.i17.i100:                               ; preds = %land.lhs.true2.i.i16.i99
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i20.i103

rcu_read_lock.exit.i20.i103:                      ; preds = %if.then.i.i17.i100, %land.lhs.true2.i.i16.i99.rcu_read_lock.exit.i20.i103_crit_edge, %land.lhs.true.i.i14.i97.rcu_read_lock.exit.i20.i103_crit_edge, %sw.bb2.i94.rcu_read_lock.exit.i20.i103_crit_edge
  %call.i18.i101 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i101)
  %tobool.not.i19.i102 = icmp eq i32 %call.i18.i101, 0
  br i1 %tobool.not.i19.i102, label %land.lhs.true.i23.i106, label %rcu_read_lock.exit.i20.i103.do.end.i31.i114_crit_edge

rcu_read_lock.exit.i20.i103.do.end.i31.i114_crit_edge: ; preds = %rcu_read_lock.exit.i20.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i31.i114

land.lhs.true.i23.i106:                           ; preds = %rcu_read_lock.exit.i20.i103
  %call1.i21.i104 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i104)
  %tobool2.not.i22.i105 = icmp eq i32 %call1.i21.i104, 0
  br i1 %tobool2.not.i22.i105, label %land.lhs.true.i23.i106.do.end.i31.i114_crit_edge, label %land.lhs.true3.i25.i108

land.lhs.true.i23.i106.do.end.i31.i114_crit_edge: ; preds = %land.lhs.true.i23.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i31.i114

land.lhs.true3.i25.i108:                          ; preds = %land.lhs.true.i23.i106
  %.b40.i24.i107 = load i1, ptr @batadv_mcast_forw_want_all_rtr6.__warned, align 1
  br i1 %.b40.i24.i107, label %land.lhs.true3.i25.i108.do.end.i31.i114_crit_edge, label %if.then.i26.i109

land.lhs.true3.i25.i108.do.end.i31.i114_crit_edge: ; preds = %land.lhs.true3.i25.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i31.i114

if.then.i26.i109:                                 ; preds = %land.lhs.true3.i25.i108
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_forw_want_all_rtr6.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1645, ptr noundef nonnull @.str.4) #10
  br label %do.end.i31.i114

do.end.i31.i114:                                  ; preds = %if.then.i26.i109, %land.lhs.true3.i25.i108.do.end.i31.i114_crit_edge, %land.lhs.true.i23.i106.do.end.i31.i114_crit_edge, %rcu_read_lock.exit.i20.i103.do.end.i31.i114_crit_edge
  %want_all_rtr6_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 5
  %66 = ptrtoint ptr %want_all_rtr6_list.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %want_all_rtr6_list.i.i, align 4
  %tobool10.not.i27.i110 = icmp eq ptr %67, null
  %add.ptr.i28.i111 = getelementptr i8, ptr %67, i32 -108
  %tobool12.not5660.i29.i112 = icmp eq ptr %add.ptr.i28.i111, null
  %tobool12.not56.i30.i113 = or i1 %tobool10.not.i27.i110, %tobool12.not5660.i29.i112
  br i1 %tobool12.not56.i30.i113, label %do.end.i31.i114.for.end.i48.i131_crit_edge, label %do.end.i31.i114.for.body.i35.i118_crit_edge

do.end.i31.i114.for.body.i35.i118_crit_edge:      ; preds = %do.end.i31.i114
  br label %for.body.i35.i118

do.end.i31.i114.for.end.i48.i131_crit_edge:       ; preds = %do.end.i31.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i131

for.body.i35.i118:                                ; preds = %batadv_mcast_forw_send_orig.exit.i45.i128.for.body.i35.i118_crit_edge, %do.end.i31.i114.for.body.i35.i118_crit_edge
  %orig_node.057.i32.i115 = phi ptr [ %add.ptr29.i42.i125, %batadv_mcast_forw_send_orig.exit.i45.i128.for.body.i35.i118_crit_edge ], [ %add.ptr.i28.i111, %do.end.i31.i114.for.body.i35.i118_crit_edge ]
  %call13.i33.i116 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #10
  %tobool14.not.i34.i117 = icmp eq ptr %call13.i33.i116, null
  br i1 %tobool14.not.i34.i117, label %for.body.i35.i118.for.end.i48.i131_crit_edge, label %if.end16.i37.i120

for.body.i35.i118.for.end.i48.i131_crit_edge:     ; preds = %for.body.i35.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i131

if.end16.i37.i120:                                ; preds = %for.body.i35.i118
  %call.i42.i36.i119 = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef nonnull %orig_node.057.i32.i115, i16 noundef zeroext %vid) #10
  br i1 %call.i42.i36.i119, label %if.then.i43.i38.i121, label %if.end.i.i40.i123

if.then.i43.i38.i121:                             ; preds = %if.end16.i37.i120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call13.i33.i116) #10
  br label %batadv_mcast_forw_send_orig.exit.i45.i128

if.end.i.i40.i123:                                ; preds = %if.end16.i37.i120
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i44.i39.i122 = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef nonnull %call13.i33.i116, i32 noundef 64, i32 noundef 0, ptr noundef nonnull %orig_node.057.i32.i115, i16 noundef zeroext %vid) #10
  br label %batadv_mcast_forw_send_orig.exit.i45.i128

batadv_mcast_forw_send_orig.exit.i45.i128:        ; preds = %if.end.i.i40.i123, %if.then.i43.i38.i121
  %mcast_want_all_rtr6_node.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.057.i32.i115, i32 0, i32 12
  %68 = ptrtoint ptr %mcast_want_all_rtr6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %mcast_want_all_rtr6_node.i.i, align 4
  %tobool25.not.i41.i124 = icmp eq ptr %69, null
  %add.ptr29.i42.i125 = getelementptr i8, ptr %69, i32 -108
  %tobool12.not61.i43.i126 = icmp eq ptr %add.ptr29.i42.i125, null
  %tobool12.not.i44.i127 = or i1 %tobool25.not.i41.i124, %tobool12.not61.i43.i126
  br i1 %tobool12.not.i44.i127, label %batadv_mcast_forw_send_orig.exit.i45.i128.for.end.i48.i131_crit_edge, label %batadv_mcast_forw_send_orig.exit.i45.i128.for.body.i35.i118_crit_edge

batadv_mcast_forw_send_orig.exit.i45.i128.for.body.i35.i118_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i45.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i35.i118

batadv_mcast_forw_send_orig.exit.i45.i128.for.end.i48.i131_crit_edge: ; preds = %batadv_mcast_forw_send_orig.exit.i45.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i131

for.end.i48.i131:                                 ; preds = %batadv_mcast_forw_send_orig.exit.i45.i128.for.end.i48.i131_crit_edge, %for.body.i35.i118.for.end.i48.i131_crit_edge, %do.end.i31.i114.for.end.i48.i131_crit_edge
  %ret.0.i46.i129 = phi i32 [ 0, %do.end.i31.i114.for.end.i48.i131_crit_edge ], [ 1, %for.body.i35.i118.for.end.i48.i131_crit_edge ], [ 0, %batadv_mcast_forw_send_orig.exit.i45.i128.for.end.i48.i131_crit_edge ]
  %call.i45.i47.i130 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45.i47.i130, label %for.end.i48.i131.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge, label %land.lhs.true.i48.i51.i134

for.end.i48.i131.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge: ; preds = %for.end.i48.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_rtr6.exit.i

land.lhs.true.i48.i51.i134:                       ; preds = %for.end.i48.i131
  %call1.i46.i49.i132 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i49.i132)
  %tobool.not.i47.i50.i133 = icmp eq i32 %call1.i46.i49.i132, 0
  br i1 %tobool.not.i47.i50.i133, label %land.lhs.true.i48.i51.i134.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge, label %land.lhs.true2.i50.i53.i136

land.lhs.true.i48.i51.i134.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge: ; preds = %land.lhs.true.i48.i51.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_rtr6.exit.i

land.lhs.true2.i50.i53.i136:                      ; preds = %land.lhs.true.i48.i51.i134
  %.b4.i49.i52.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49.i52.i135, label %land.lhs.true2.i50.i53.i136.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge, label %if.then.i51.i54.i137

land.lhs.true2.i50.i53.i136.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge: ; preds = %land.lhs.true2.i50.i53.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_forw_want_all_rtr6.exit.i

if.then.i51.i54.i137:                             ; preds = %land.lhs.true2.i50.i53.i136
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_forw_want_all_rtr6.exit.i

batadv_mcast_forw_want_all_rtr6.exit.i:           ; preds = %if.then.i51.i54.i137, %land.lhs.true2.i50.i53.i136.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge, %land.lhs.true.i48.i51.i134.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge, %for.end.i48.i131.batadv_mcast_forw_want_all_rtr6.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_forw_want_rtr.exit

batadv_mcast_forw_want_rtr.exit:                  ; preds = %batadv_mcast_forw_want_all_rtr6.exit.i, %batadv_mcast_forw_want_all_rtr4.exit.i
  %retval.0.ph.i138 = phi i32 [ %ret.0.i.i81, %batadv_mcast_forw_want_all_rtr4.exit.i ], [ %ret.0.i46.i129, %batadv_mcast_forw_want_all_rtr6.exit.i ]
  %70 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i52.i.i139 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i52.i.i139 to ptr
  %preempt_count.i.i.i.i53.i.i140 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i53.i.i140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i53.i.i140, align 4
  %sub.i.i.i.i57.i141 = add i32 %73, -1
  store volatile i32 %sub.i.i.i.i57.i141, ptr %preempt_count.i.i.i.i53.i.i140, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i138)
  %cmp8.not = icmp eq i32 %retval.0.ph.i138, 0
  br i1 %cmp8.not, label %batadv_mcast_forw_want_rtr.exit.skip_mc_router_crit_edge, label %batadv_mcast_forw_want_rtr.exit.if.then9_crit_edge

batadv_mcast_forw_want_rtr.exit.if.then9_crit_edge: ; preds = %batadv_mcast_forw_want_rtr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

batadv_mcast_forw_want_rtr.exit.skip_mc_router_crit_edge: ; preds = %batadv_mcast_forw_want_rtr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_mc_router

if.then9:                                         ; preds = %batadv_mcast_forw_want_rtr.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

skip_mc_router:                                   ; preds = %batadv_mcast_forw_want_rtr.exit.skip_mc_router_crit_edge, %if.end4.skip_mc_router_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %skip_mc_router, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then3 ], [ 1, %if.then9 ], [ 0, %skip_mc_router ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_mcast_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef nonnull @batadv_mcast_tvlv_ogm_handler, ptr noundef null, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext 2) #10
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @batadv_mcast_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14, i32 0, i32 1
  %1 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @batadv_mcast_mla_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_mcast_init.__key.1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %4 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 50) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_mcast_tvlv_ogm_handler(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %flags, ptr noundef readonly %tvlv_value, i16 noundef zeroext %tvlv_value_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %enabled.not.i = xor i1 %tobool.not, true
  %tobool1.not.i = icmp eq ptr %tvlv_value, null
  %or.cond.i = or i1 %tobool1.not.i, %enabled.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tvlv_value_len)
  %cmp.not.i = icmp eq i16 %tvlv_value_len, 0
  %or.cond35.i = or i1 %or.cond.i, %cmp.not.i
  br i1 %or.cond35.i, label %entry.batadv_mcast_tvlv_flags_get.exit_crit_edge, label %if.then.i

entry.batadv_mcast_tvlv_flags_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_tvlv_flags_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tvlv_value, align 1
  br label %batadv_mcast_tvlv_flags_get.exit

batadv_mcast_tvlv_flags_get.exit:                 ; preds = %if.then.i, %entry.batadv_mcast_tvlv_flags_get.exit_crit_edge
  %mcast_flags.0.i = phi i8 [ %2, %if.then.i ], [ 0, %entry.batadv_mcast_tvlv_flags_get.exit_crit_edge ]
  %3 = or i8 %mcast_flags.0.i, 6
  %mcast_handler_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %mcast_handler_lock) #10
  %capabilities = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 13
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %capabilities, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true8.critedge

land.lhs.true:                                    ; preds = %batadv_mcast_tvlv_flags_get.exit
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %capabilities) #10
  br label %if.end14

land.lhs.true8.critedge:                          ; preds = %batadv_mcast_tvlv_flags_get.exit
  br i1 %tobool5.not, label %land.lhs.true8.critedge.if.end14_crit_edge, label %if.then12

land.lhs.true8.critedge.if.end14_crit_edge:       ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %capabilities) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true8.critedge.if.end14_crit_edge, %if.then, %land.lhs.true.if.end14_crit_edge
  %spec.select.i = phi i8 [ %mcast_flags.0.i, %land.lhs.true.if.end14_crit_edge ], [ %3, %land.lhs.true8.critedge.if.end14_crit_edge ], [ %3, %if.then12 ], [ %mcast_flags.0.i, %if.then ]
  %7 = shl i8 %spec.select.i, 2
  %8 = and i8 %7, 8
  %9 = or i8 %8, %spec.select.i
  %10 = and i8 %7, 16
  %11 = or i8 %9, %10
  %capa_initialized = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %capa_initialized) #10
  tail call fastcc void @batadv_mcast_want_unsnoop_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %11)
  tail call fastcc void @batadv_mcast_want_ipv4_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %11)
  tail call fastcc void @batadv_mcast_want_ipv6_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %11)
  tail call fastcc void @batadv_mcast_want_rtr4_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %11)
  tail call fastcc void @batadv_mcast_want_rtr6_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %11)
  %mcast_flags15 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 7
  %12 = ptrtoint ptr %mcast_flags15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %mcast_flags15, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcast_handler_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_mcast_mla_update(ptr noundef %work) #0 align 64 {
entry:
  %str_old_flags.i.i.i = alloca [10 x i8], align 1
  %mcast_data.i.i = alloca %struct.batadv_tvlv_mcast_data, align 4
  %bridge_mcast_list.i.i = alloca %struct.list_head, align 4
  %mcast_addr.i.i = alloca [6 x i8], align 4
  %mcast_addr.i.i.i = alloca [6 x i8], align 4
  %mcast_list.i = alloca %struct.hlist_head, align 4
  %flags.i = alloca %struct.batadv_mcast_mla_flags, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1616
  %soft_iface1.i = getelementptr i8, ptr %work, i32 -1612
  %0 = ptrtoint ptr %soft_iface1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcast_list.i) #10
  %2 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mcast_list.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #10
  %3 = getelementptr inbounds %struct.batadv_mcast_mla_flags, ptr %flags.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.batadv_mcast_mla_flags, ptr %flags.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.batadv_mcast_mla_flags, ptr %flags.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %flags.i, align 4
  %call.i.i = tail call fastcc ptr @batadv_mcast_get_bridge(ptr noundef %1) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %entry.cond.end.i.i.i.i_crit_edge

entry.cond.end.i.i.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %soft_iface1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soft_iface1.i, align 4
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %entry.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %8, %cond.false.i.i.i.i ], [ %call.i.i, %entry.cond.end.i.i.i.i_crit_edge ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i.i, label %cond.end.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %cond.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %cond.end.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %ip_ptr.i.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %cond.i.i.i.i, i32 0, i32 78
  %13 = ptrtoint ptr %ip_ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip_ptr.i.i.i.i.i.i, align 32
  %call.i.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %rcu_read_lock.exit.i.i.i.i
  %call2.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i.i.i
  %.b9.i.i.i.i.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 232, ptr noundef nonnull @.str.9) #10
  br label %__in_dev_get_rcu.exit.i.i.i.i.i

__in_dev_get_rcu.exit.i.i.i.i.i:                  ; preds = %if.then.i.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.__in_dev_get_rcu.exit.i.i.i.i.i_crit_edge
  %tobool.not.i13.i.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i13.i.i.i.i, label %__in_dev_get_rcu.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i.i

__in_dev_get_rcu.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %__in_dev_get_rcu.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i.i.i

land.lhs.true.i14.i.i.i.i:                        ; preds = %__in_dev_get_rcu.exit.i.i.i.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %nd_net.i.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i.i.i.i.i.i, align 4
  %devconf_all.i.i.i.i.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 35, i32 6
  %19 = ptrtoint ptr %devconf_all.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devconf_all.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.ipv4_devconf, ptr %20, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool3.not.i.i.i.i.i, label %land.lhs.true.i14.i.i.i.i.if.else.i.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i

land.lhs.true.i14.i.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i.i.i

land.lhs.true4.i.i.i.i.i:                         ; preds = %land.lhs.true.i14.i.i.i.i
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.in_device, ptr %14, i32 0, i32 21, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i.i.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i_crit_edge

land.lhs.true4.i.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i

land.lhs.true4.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %land.lhs.true4.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, %land.lhs.true.i14.i.i.i.i.if.else.i.i.i.i.i_crit_edge, %__in_dev_get_rcu.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge
  br label %batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i

batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i: ; preds = %if.else.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i8 [ 8, %if.else.i.i.i.i.i ], [ 0, %land.lhs.true4.i.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i_crit_edge ]
  %ip6_ptr.i.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %cond.i.i.i.i, i32 0, i32 80
  %25 = ptrtoint ptr %ip6_ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %ip6_ptr.i.i.i.i.i.i, align 8
  %call.i.i15.i.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i.i15.i.i.i.i, label %batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge: ; preds = %batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i
  %call2.i.i16.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i16.i.i.i.i)
  %tobool.not.i.i17.i.i.i.i = icmp eq i32 %call2.i.i16.i.i.i.i, 0
  br i1 %tobool.not.i.i17.i.i.i.i, label %land.lhs.true.i.i18.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i.i.i

land.lhs.true.i.i18.i.i.i.i:                      ; preds = %lor.lhs.false.i.i.i.i.i.i
  %call3.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i.i = icmp eq i32 %call3.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i.i, label %land.lhs.true.i.i18.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge, label %land.lhs.true5.i.i.i.i.i.i

land.lhs.true.i.i18.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i.i.i

land.lhs.true5.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i18.i.i.i.i
  %.b10.i.i.i.i.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i.i.i.i.i, label %land.lhs.true5.i.i.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge, label %if.then.i.i19.i.i.i.i

land.lhs.true5.i.i.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i.i.i

if.then.i.i19.i.i.i.i:                            ; preds = %land.lhs.true5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.9) #10
  br label %__in6_dev_get.exit.i.i.i.i.i

__in6_dev_get.exit.i.i.i.i.i:                     ; preds = %if.then.i.i19.i.i.i.i, %land.lhs.true5.i.i.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge, %land.lhs.true.i.i18.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge, %batadv_mcast_mla_rtr_flags_softif_get_ipv4.exit.i.i.i.i.__in6_dev_get.exit.i.i.i.i.i_crit_edge
  %tobool.not.i20.i.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i20.i.i.i.i, label %__in6_dev_get.exit.i.i.i.i.i.if.else.i22.i.i.i.i_crit_edge, label %land.lhs.true.i21.i.i.i.i

__in6_dev_get.exit.i.i.i.i.i.if.else.i22.i.i.i.i_crit_edge: ; preds = %__in6_dev_get.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i22.i.i.i.i

land.lhs.true.i21.i.i.i.i:                        ; preds = %__in6_dev_get.exit.i.i.i.i.i
  %mc_forwarding.i.i.i.i.i = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 32, i32 34
  %27 = ptrtoint ptr %mc_forwarding.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mc_forwarding.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i.i.i.i.i, label %land.lhs.true.i21.i.i.i.i.if.else.i22.i.i.i.i_crit_edge, label %land.lhs.true.i21.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i_crit_edge

land.lhs.true.i21.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i

land.lhs.true.i21.i.i.i.i.if.else.i22.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i22.i.i.i.i

if.else.i22.i.i.i.i:                              ; preds = %land.lhs.true.i21.i.i.i.i.if.else.i22.i.i.i.i_crit_edge, %__in6_dev_get.exit.i.i.i.i.i.if.else.i22.i.i.i.i_crit_edge
  br label %batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i

batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i: ; preds = %if.else.i22.i.i.i.i, %land.lhs.true.i21.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i_crit_edge
  %retval.0.i23.i.i.i.i = phi i8 [ 16, %if.else.i22.i.i.i.i ], [ 0, %land.lhs.true.i21.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i_crit_edge ]
  %call.i24.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i24.i.i.i.i, label %batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge, label %land.lhs.true.i27.i.i.i.i

batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge: ; preds = %batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i

land.lhs.true.i27.i.i.i.i:                        ; preds = %batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i
  %call1.i25.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i.i.i.i)
  %tobool.not.i26.i.i.i.i = icmp eq i32 %call1.i25.i.i.i.i, 0
  br i1 %tobool.not.i26.i.i.i.i, label %land.lhs.true.i27.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge, label %land.lhs.true2.i29.i.i.i.i

land.lhs.true.i27.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i

land.lhs.true2.i29.i.i.i.i:                       ; preds = %land.lhs.true.i27.i.i.i.i
  %.b4.i28.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28.i.i.i.i, label %land.lhs.true2.i29.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge, label %if.then.i30.i.i.i.i

land.lhs.true2.i29.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i

if.then.i30.i.i.i.i:                              ; preds = %land.lhs.true2.i29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i

batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i: ; preds = %if.then.i30.i.i.i.i, %land.lhs.true2.i29.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge, %land.lhs.true.i27.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge, %batadv_mcast_mla_rtr_flags_softif_get_ipv6.exit.i.i.i.i.batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %29 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i31.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i31.i.i.i.i to ptr
  %preempt_count.i.i.i.i32.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i32.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i32.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool.not.i.i.i.i, label %batadv_mcast_mla_rtr_flags_get.exit.thread.i.i, label %do.body1.i.i.i

batadv_mcast_mla_rtr_flags_get.exit.thread.i.i:   ; preds = %batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or612.i.i113.i.i = or i8 %retval.0.i23.i.i.i.i, %retval.0.i.i.i.i.i
  br label %batadv_mcast_mla_flags_get.exit.i

do.body1.i.i.i:                                   ; preds = %batadv_mcast_mla_rtr_flags_softif_get.exit.i.i.i
  %33 = ptrtoint ptr %soft_iface1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soft_iface1.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @br_multicast_has_router_adjacent(ptr noundef %34, i32 noundef 2048) #10
  %spec.select.i.i.i.i = select i1 %call.i.i.i.i, i8 0, i8 8
  %call4.i.i.i.i = tail call zeroext i1 @br_multicast_has_router_adjacent(ptr noundef %34, i32 noundef 34525) #10
  %35 = or i8 %spec.select.i.i.i.i, 16
  %flags.1.i.i.i.i = select i1 %call4.i.i.i.i, i8 %spec.select.i.i.i.i, i8 %35
  %or612.i.i.i.i = or i8 %retval.0.i23.i.i.i.i, %retval.0.i.i.i.i.i
  %and612.i.i.i = and i8 %flags.1.i.i.i.i, %or612.i.i.i.i
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !114
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i, i32 0, i32 118
  %37 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %45, %39
  %46 = inttoptr i32 %add.i.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add13.i.i.i = add i32 %48, -1
  store i32 %add13.i.i.i, ptr %46, align 4
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !115
  %and.i.i.i.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !105

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #10, !srcloc !116
  %call7.i.i = tail call zeroext i1 @br_multicast_has_querier_anywhere(ptr noundef %1, i32 noundef 2048) #10
  %call12.i.i = tail call zeroext i1 @br_multicast_has_querier_adjacent(ptr noundef %1, i32 noundef 2048) #10
  %bf.shl16.i.i = select i1 %call12.i.i, i32 1073741824, i32 0
  %call19.i.i = tail call zeroext i1 @br_multicast_has_querier_anywhere(ptr noundef %1, i32 noundef 34525) #10
  %bf.shl23.i.i = select i1 %call19.i.i, i32 8388608, i32 0
  %call26.i.i = tail call zeroext i1 @br_multicast_has_querier_adjacent(ptr noundef %1, i32 noundef 34525) #10
  %bf.shl30.i.i = select i1 %call26.i.i, i32 4194304, i32 0
  br i1 %call7.i.i, label %lor.lhs.false.i.i, label %dev_put.exit.i.i.if.then44.i.i_crit_edge

dev_put.exit.i.i.if.then44.i.i_crit_edge:         ; preds = %dev_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i.i

lor.lhs.false.i.i:                                ; preds = %dev_put.exit.i.i
  %50 = or i8 %and612.i.i.i, 1
  br i1 %call12.i.i, label %lor.lhs.false.i.i.if.then44.i.i_crit_edge, label %lor.lhs.false.i.i.if.end52.i.i_crit_edge

lor.lhs.false.i.i.if.end52.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i.i

lor.lhs.false.i.i.if.then44.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i.i

if.then44.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then44.i.i_crit_edge, %dev_put.exit.i.i.if.then44.i.i_crit_edge
  %51 = and i8 %and612.i.i.i, 16
  %52 = or i8 %51, 3
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then44.i.i, %lor.lhs.false.i.i.if.end52.i.i_crit_edge
  %retval.sroa.21.0.i.i = phi i8 [ %52, %if.then44.i.i ], [ %50, %lor.lhs.false.i.i.if.end52.i.i_crit_edge ]
  %call19.not.i.i = xor i1 %call19.i.i, true
  %brmerge.i.i = select i1 %call19.not.i.i, i1 true, i1 %call26.i.i
  %53 = and i8 %retval.sroa.21.0.i.i, -21
  %54 = or i8 %53, 4
  %retval.sroa.21.1.i.i = select i1 %brmerge.i.i, i8 %54, i8 %retval.sroa.21.0.i.i
  %bf.set32.i.i = select i1 %call7.i.i, i32 -2147434496, i32 49152
  %bf.set18.i.i = or i32 %bf.shl16.i.i, %bf.set32.i.i
  %55 = or i32 %bf.set18.i.i, %bf.shl23.i.i
  %56 = or i32 %55, %bf.shl30.i.i
  br label %batadv_mcast_mla_flags_get.exit.i

batadv_mcast_mla_flags_get.exit.i:                ; preds = %if.end52.i.i, %batadv_mcast_mla_rtr_flags_get.exit.thread.i.i
  %retval.sroa.21.2.i.i = phi i8 [ %retval.sroa.21.1.i.i, %if.end52.i.i ], [ %or612.i.i113.i.i, %batadv_mcast_mla_rtr_flags_get.exit.thread.i.i ]
  %retval.sroa.0.0.insert.mask.i.i = phi i32 [ %56, %if.end52.i.i ], [ 32768, %batadv_mcast_mla_rtr_flags_get.exit.thread.i.i ]
  %retval.sroa.21.0.insert.ext.i.i = zext i8 %retval.sroa.21.2.i.i to i32
  %retval.sroa.0.0.insert.insert.i.i = or i32 %retval.sroa.0.0.insert.mask.i.i, %retval.sroa.21.0.insert.ext.i.i
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.sroa.0.0.insert.insert.i.i, ptr %flags.i, align 4
  %call.i17.i = tail call fastcc ptr @batadv_mcast_get_bridge(ptr noundef %1) #10
  %tobool.not.i.i = icmp eq ptr %call.i17.i, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %1, ptr %call.i17.i
  %58 = trunc i32 %retval.sroa.0.0.insert.insert.i.i to i8
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %batadv_mcast_mla_flags_get.exit.i.if.end3.i.i_crit_edge

batadv_mcast_mla_flags_get.exit.i.if.end3.i.i_crit_edge: ; preds = %batadv_mcast_mla_flags_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end.i.i.i:                                     ; preds = %batadv_mcast_mla_flags_get.exit.i
  %60 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i18.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i18.i, label %if.end.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i19.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i19.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %ip_ptr.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %spec.select.i.i, i32 0, i32 78
  %64 = ptrtoint ptr %ip_ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %ip_ptr.i.i.i.i, align 32
  %call.i81.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i.i.i)
  %tobool.not.i82.i.i.i = icmp eq i32 %call.i81.i.i.i, 0
  br i1 %tobool.not.i82.i.i.i, label %land.lhs.true.i83.i.i.i, label %rcu_read_lock.exit.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i.i.i

land.lhs.true.i83.i.i.i:                          ; preds = %rcu_read_lock.exit.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i83.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i83.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i83.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i83.i.i.i
  %.b9.i.i.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i.i.i, label %land.lhs.true4.i.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge, label %if.then.i84.i.i.i

land.lhs.true4.i.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i.i.i

if.then.i84.i.i.i:                                ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 232, ptr noundef nonnull @.str.9) #10
  br label %__in_dev_get_rcu.exit.i.i.i

__in_dev_get_rcu.exit.i.i.i:                      ; preds = %if.then.i84.i.i.i, %land.lhs.true4.i.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i83.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.__in_dev_get_rcu.exit.i.i.i_crit_edge
  %tobool1.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool1.not.i.i.i, label %if.then2.i.i.i, label %if.end3.i.i.i

if.then2.i.i.i:                                   ; preds = %__in_dev_get_rcu.exit.i.i.i
  %call.i85.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i85.i.i.i, label %if.then2.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i88.i.i.i

if.then2.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i88.i.i.i:                          ; preds = %if.then2.i.i.i
  %call1.i86.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86.i.i.i)
  %tobool.not.i87.i.i.i = icmp eq i32 %call1.i86.i.i.i, 0
  br i1 %tobool.not.i87.i.i.i, label %land.lhs.true.i88.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i90.i.i.i

land.lhs.true.i88.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i88.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i90.i.i.i:                         ; preds = %land.lhs.true.i88.i.i.i
  %.b4.i89.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89.i.i.i, label %land.lhs.true2.i90.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i91.i.i.i

land.lhs.true2.i90.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

if.then.i91.i.i.i:                                ; preds = %land.lhs.true2.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i91.i.i.i, %land.lhs.true2.i90.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i88.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %if.then2.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_mla_softif_get_ipv4.exit.i.i

if.end3.i.i.i:                                    ; preds = %__in_dev_get_rcu.exit.i.i.i
  %mc_list.i.i.i = getelementptr inbounds %struct.in_device, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %mc_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %mc_list.i.i.i, align 4
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end3.i.i.i.do.end14.i.i.i_crit_edge

if.end3.i.i.i.do.end14.i.i.i_crit_edge:           ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end14.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end14.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b80.i.i.i = load i1, ptr @batadv_mcast_mla_softif_get_ipv4.__warned, align 1
  br i1 %.b80.i.i.i, label %land.lhs.true9.i.i.i.do.end14.i.i.i_crit_edge, label %if.then11.i.i.i

land.lhs.true9.i.i.i.do.end14.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i.i.i

if.then11.i.i.i:                                  ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_mla_softif_get_ipv4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 358, ptr noundef nonnull @.str.9) #10
  br label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %if.then11.i.i.i, %land.lhs.true9.i.i.i.do.end14.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end14.i.i.i_crit_edge, %if.end3.i.i.i.do.end14.i.i.i_crit_edge
  %tobool16.not131.i.i.i = icmp eq ptr %67, null
  br i1 %tobool16.not131.i.i.i, label %do.end14.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.preheader.i

do.end14.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.i.i.preheader.i:                         ; preds = %do.end14.i.i.i
  %68 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool20.not.i.i.i = icmp eq i8 %68, 0
  %69 = and i8 %58, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool29.not.i.i.i = icmp eq i8 %69, 0
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.end61.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.preheader.i
  %pmc.0133.i.i.i = phi ptr [ %93, %do.end61.i.i.i.for.body.i.i.i_crit_edge ], [ %67, %for.body.i.i.preheader.i ]
  %ret.0132.i.i.i = phi i32 [ %ret.1.i.i.i, %do.end61.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.preheader.i ]
  br i1 %tobool20.not.i.i.i, label %for.body.i.i.i.if.end25.i.i.i_crit_edge, label %land.lhs.true21.i.i.i

for.body.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

land.lhs.true21.i.i.i:                            ; preds = %for.body.i.i.i
  %multiaddr.i.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0133.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %multiaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %multiaddr.i.i.i, align 4
  %and.i.i.i20.i = and i32 %71, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i20.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i20.i, -536870912
  br i1 %cmp.i.i.i.i, label %land.lhs.true21.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true21.i.i.i.if.end25.i.i.i_crit_edge

land.lhs.true21.i.i.i.if.end25.i.i.i_crit_edge:   ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

land.lhs.true21.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.end25.i.i.i:                                   ; preds = %land.lhs.true21.i.i.i.if.end25.i.i.i_crit_edge, %for.body.i.i.i.if.end25.i.i.i_crit_edge
  br i1 %tobool29.not.i.i.i, label %land.lhs.true30.i.i.i, label %if.end25.i.i.i.if.end34.i.i.i_crit_edge

if.end25.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i.i

land.lhs.true30.i.i.i:                            ; preds = %if.end25.i.i.i
  %multiaddr31.i.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0133.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %multiaddr31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %multiaddr31.i.i.i, align 4
  %and.i94.i.i.i = and i32 %73, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i94.i.i.i)
  %cmp.i95.i.i.i = icmp eq i32 %and.i94.i.i.i, -536870912
  br i1 %cmp.i95.i.i.i, label %land.lhs.true30.i.i.i.if.end34.i.i.i_crit_edge, label %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true30.i.i.i.if.end34.i.i.i_crit_edge:   ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %land.lhs.true30.i.i.i.if.end34.i.i.i_crit_edge, %if.end25.i.i.i.if.end34.i.i.i_crit_edge
  %multiaddr35.i.i.i = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0133.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %multiaddr35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %multiaddr35.i.i.i, align 4
  %76 = trunc i32 %75 to i16
  %shr7.i.i.i.i = lshr i32 %75, 16
  %conv9.i.i.i.i = and i32 %shr7.i.i.i.i, 127
  %mcast_addr.sroa.0.sroa.0.0.insert.insert.i.i.i = or i32 %conv9.i.i.i.i, 16801280
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end34.i.i.i
  %mcast_entry.0.in.i.i.i.i = phi ptr [ %mcast_list.i, %if.end34.i.i.i ], [ %mcast_entry.0.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %77 = ptrtoint ptr %mcast_entry.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %mcast_entry.0.i.i.i.i = load ptr, ptr %mcast_entry.0.in.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %mcast_entry.0.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %if.end39.i.i.i, label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %addr.i.i.i.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i.i.i.i, align 4
  %xor.i.i.i.i.i.i.i = xor i32 %79, %mcast_addr.sroa.0.sroa.0.0.insert.insert.i.i.i
  %add.ptr.i.i.i.i.i.i.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i.i.i, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i.i.i = xor i16 %81, %76
  %xor3.i.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i.i, %xor3.i.i.i.i.i.i.i
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i_crit_edge, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.end39.i.i.i:                                   ; preds = %for.cond.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 2592, i32 noundef 16) #13
  %tobool41.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool41.not.i.i.i, label %if.end39.i.i.i.for.end.i.i.i_crit_edge, label %if.end43.i.i.i

if.end39.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

if.end43.i.i.i:                                   ; preds = %if.end39.i.i.i
  %addr.i.i.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %call7.i.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mcast_addr.sroa.0.sroa.0.0.insert.insert.i.i.i, ptr %addr.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr %struct.batadv_hw_addr, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %84 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %76, ptr %add.ptr1.i.i.i.i, align 4
  %85 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mcast_list.i, align 4
  %87 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %86, ptr %call7.i.i.i.i, align 8
  %tobool.not.i96.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i96.i.i.i, label %if.end43.i.i.i.hlist_add_head.exit.i.i.i_crit_edge, label %do.body12.i.i.i.i

if.end43.i.i.i.hlist_add_head.exit.i.i.i_crit_edge: ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit.i.i.i

do.body12.i.i.i.i:                                ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %86, i32 0, i32 1
  %88 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %call7.i.i.i.i, ptr %pprev.i.i.i.i, align 4
  br label %hlist_add_head.exit.i.i.i

hlist_add_head.exit.i.i.i:                        ; preds = %do.body12.i.i.i.i, %if.end43.i.i.i.hlist_add_head.exit.i.i.i_crit_edge
  %89 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i.i.i.i, ptr %mcast_list.i, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %mcast_list.i, ptr %pprev34.i.i.i.i, align 4
  %inc.i.i.i = add i32 %ret.0132.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %hlist_add_head.exit.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true21.i.i.i.for.inc.i.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ %ret.0132.i.i.i, %land.lhs.true21.i.i.i.for.inc.i.i.i_crit_edge ], [ %inc.i.i.i, %hlist_add_head.exit.i.i.i ], [ %ret.0132.i.i.i, %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge ], [ %ret.0132.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i_crit_edge ]
  %91 = getelementptr inbounds %struct.ip_mc_list, ptr %pmc.0133.i.i.i, i32 0, i32 6
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %91, align 4
  %call51.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i.i)
  %tobool52.not.i.i.i = icmp eq i32 %call51.i.i.i, 0
  br i1 %tobool52.not.i.i.i, label %land.lhs.true53.i.i.i, label %for.inc.i.i.i.do.end61.i.i.i_crit_edge

for.inc.i.i.i.do.end61.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61.i.i.i

land.lhs.true53.i.i.i:                            ; preds = %for.inc.i.i.i
  %call54.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %call54.i.i.i, 0
  br i1 %tobool55.not.i.i.i, label %land.lhs.true53.i.i.i.do.end61.i.i.i_crit_edge, label %land.lhs.true56.i.i.i

land.lhs.true53.i.i.i.do.end61.i.i.i_crit_edge:   ; preds = %land.lhs.true53.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61.i.i.i

land.lhs.true56.i.i.i:                            ; preds = %land.lhs.true53.i.i.i
  %.b7879.i.i.i = load i1, ptr @batadv_mcast_mla_softif_get_ipv4.__warned.11, align 1
  br i1 %.b7879.i.i.i, label %land.lhs.true56.i.i.i.do.end61.i.i.i_crit_edge, label %if.then58.i.i.i

land.lhs.true56.i.i.i.do.end61.i.i.i_crit_edge:   ; preds = %land.lhs.true56.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61.i.i.i

if.then58.i.i.i:                                  ; preds = %land.lhs.true56.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_mla_softif_get_ipv4.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 359, ptr noundef nonnull @.str.9) #10
  br label %do.end61.i.i.i

do.end61.i.i.i:                                   ; preds = %if.then58.i.i.i, %land.lhs.true56.i.i.i.do.end61.i.i.i_crit_edge, %land.lhs.true53.i.i.i.do.end61.i.i.i_crit_edge, %for.inc.i.i.i.do.end61.i.i.i_crit_edge
  %tobool16.not.i.i.i = icmp eq ptr %93, null
  br i1 %tobool16.not.i.i.i, label %do.end61.i.i.i.for.end.i.i.i_crit_edge, label %do.end61.i.i.i.for.body.i.i.i_crit_edge

do.end61.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

do.end61.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.end61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end61.i.i.i.for.end.i.i.i_crit_edge, %if.end39.i.i.i.for.end.i.i.i_crit_edge, %do.end14.i.i.i.for.end.i.i.i_crit_edge
  %ret.2.i.i.i = phi i32 [ 0, %do.end14.i.i.i.for.end.i.i.i_crit_edge ], [ %ret.1.i.i.i, %do.end61.i.i.i.for.end.i.i.i_crit_edge ], [ -12, %if.end39.i.i.i.for.end.i.i.i_crit_edge ]
  %call.i97.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i97.i.i.i, label %for.end.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge, label %land.lhs.true.i100.i.i.i

for.end.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit107.i.i.i

land.lhs.true.i100.i.i.i:                         ; preds = %for.end.i.i.i
  %call1.i98.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i.i.i)
  %tobool.not.i99.i.i.i = icmp eq i32 %call1.i98.i.i.i, 0
  br i1 %tobool.not.i99.i.i.i, label %land.lhs.true.i100.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge, label %land.lhs.true2.i102.i.i.i

land.lhs.true.i100.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge: ; preds = %land.lhs.true.i100.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit107.i.i.i

land.lhs.true2.i102.i.i.i:                        ; preds = %land.lhs.true.i100.i.i.i
  %.b4.i101.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101.i.i.i, label %land.lhs.true2.i102.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge, label %if.then.i103.i.i.i

land.lhs.true2.i102.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge: ; preds = %land.lhs.true2.i102.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit107.i.i.i

if.then.i103.i.i.i:                               ; preds = %land.lhs.true2.i102.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit107.i.i.i

rcu_read_unlock.exit107.i.i.i:                    ; preds = %if.then.i103.i.i.i, %land.lhs.true2.i102.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge, %land.lhs.true.i100.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge, %for.end.i.i.i.rcu_read_unlock.exit107.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_mla_softif_get_ipv4.exit.i.i

batadv_mcast_mla_softif_get_ipv4.exit.i.i:        ; preds = %rcu_read_unlock.exit107.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.ph.i.i.i = phi i32 [ 0, %rcu_read_unlock.exit.i.i.i ], [ %ret.2.i.i.i, %rcu_read_unlock.exit107.i.i.i ]
  %94 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i92.i.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i92.i.i.i to ptr
  %preempt_count.i.i.i.i93.i.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i93.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i93.i.i.i, align 4
  %sub.i.i.i106.i.i.i = add i32 %97, -1
  store volatile i32 %sub.i.i.i106.i.i.i, ptr %preempt_count.i.i.i.i93.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.ph.i.i.i, 0
  br i1 %cmp.i.i, label %batadv_mcast_mla_softif_get_ipv4.exit.i.i.out.i.i_crit_edge, label %batadv_mcast_mla_softif_get_ipv4.exit.i.i.if.end3.i.i_crit_edge

batadv_mcast_mla_softif_get_ipv4.exit.i.i.if.end3.i.i_crit_edge: ; preds = %batadv_mcast_mla_softif_get_ipv4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

batadv_mcast_mla_softif_get_ipv4.exit.i.i.out.i.i_crit_edge: ; preds = %batadv_mcast_mla_softif_get_ipv4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end3.i.i:                                      ; preds = %batadv_mcast_mla_softif_get_ipv4.exit.i.i.if.end3.i.i_crit_edge, %batadv_mcast_mla_flags_get.exit.i.if.end3.i.i_crit_edge
  %retval.0.i89.i.i = phi i32 [ %retval.0.ph.i.i.i, %batadv_mcast_mla_softif_get_ipv4.exit.i.i.if.end3.i.i_crit_edge ], [ 0, %batadv_mcast_mla_flags_get.exit.i.if.end3.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mcast_addr.i.i.i)
  %98 = call ptr @memset(ptr %mcast_addr.i.i.i, i32 255, i32 6)
  %99 = and i8 %58, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i18.i.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i18.i.i, label %if.end.i23.i.i, label %batadv_mcast_mla_softif_get_ipv6.exit.thread.i.i

batadv_mcast_mla_softif_get_ipv6.exit.thread.i.i: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mcast_addr.i.i.i)
  br label %out.i.i

if.end.i23.i.i:                                   ; preds = %if.end3.i.i
  %100 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i19.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i.i19.i.i to ptr
  %preempt_count.i.i.i.i.i20.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i.i.i20.i.i, align 4
  %add.i.i.i.i21.i.i = add i32 %103, 1
  store volatile i32 %add.i.i.i.i21.i.i, ptr %preempt_count.i.i.i.i.i20.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i22.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i22.i.i, label %if.end.i23.i.i.rcu_read_lock.exit.i30.i.i_crit_edge, label %land.lhs.true.i.i26.i.i

if.end.i23.i.i.rcu_read_lock.exit.i30.i.i_crit_edge: ; preds = %if.end.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i30.i.i

land.lhs.true.i.i26.i.i:                          ; preds = %if.end.i23.i.i
  %call1.i.i24.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i24.i.i)
  %tobool.not.i.i25.i.i = icmp eq i32 %call1.i.i24.i.i, 0
  br i1 %tobool.not.i.i25.i.i, label %land.lhs.true.i.i26.i.i.rcu_read_lock.exit.i30.i.i_crit_edge, label %land.lhs.true2.i.i28.i.i

land.lhs.true.i.i26.i.i.rcu_read_lock.exit.i30.i.i_crit_edge: ; preds = %land.lhs.true.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i30.i.i

land.lhs.true2.i.i28.i.i:                         ; preds = %land.lhs.true.i.i26.i.i
  %.b4.i.i27.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i27.i.i, label %land.lhs.true2.i.i28.i.i.rcu_read_lock.exit.i30.i.i_crit_edge, label %if.then.i.i29.i.i

land.lhs.true2.i.i28.i.i.rcu_read_lock.exit.i30.i.i_crit_edge: ; preds = %land.lhs.true2.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i30.i.i

if.then.i.i29.i.i:                                ; preds = %land.lhs.true2.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i30.i.i

rcu_read_lock.exit.i30.i.i:                       ; preds = %if.then.i.i29.i.i, %land.lhs.true2.i.i28.i.i.rcu_read_lock.exit.i30.i.i_crit_edge, %land.lhs.true.i.i26.i.i.rcu_read_lock.exit.i30.i.i_crit_edge, %if.end.i23.i.i.rcu_read_lock.exit.i30.i.i_crit_edge
  %ip6_ptr.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %spec.select.i.i, i32 0, i32 80
  %104 = ptrtoint ptr %ip6_ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %ip6_ptr.i.i.i.i, align 8
  %call.i93.i.i.i = call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i93.i.i.i, label %rcu_read_lock.exit.i30.i.i.__in6_dev_get.exit.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

rcu_read_lock.exit.i30.i.i.__in6_dev_get.exit.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i30.i.i
  %call2.i.i31.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i31.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call2.i.i31.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i95.i.i.i, label %lor.lhs.false.i.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i

land.lhs.true.i95.i.i.i:                          ; preds = %lor.lhs.false.i.i.i.i
  %call3.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true.i95.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge, label %land.lhs.true5.i.i.i.i

land.lhs.true.i95.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i95.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i

land.lhs.true5.i.i.i.i:                           ; preds = %land.lhs.true.i95.i.i.i
  %.b10.i.i.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i.i.i, label %land.lhs.true5.i.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge, label %if.then.i96.i.i.i

land.lhs.true5.i.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get.exit.i.i.i

if.then.i96.i.i.i:                                ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.9) #10
  br label %__in6_dev_get.exit.i.i.i

__in6_dev_get.exit.i.i.i:                         ; preds = %if.then.i96.i.i.i, %land.lhs.true5.i.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge, %land.lhs.true.i95.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.__in6_dev_get.exit.i.i.i_crit_edge, %rcu_read_lock.exit.i30.i.i.__in6_dev_get.exit.i.i.i_crit_edge
  %tobool1.not.i32.i.i = icmp eq ptr %105, null
  br i1 %tobool1.not.i32.i.i, label %if.then2.i34.i.i, label %if.end3.i45.i.i

if.then2.i34.i.i:                                 ; preds = %__in6_dev_get.exit.i.i.i
  %call.i97.i33.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i97.i33.i.i, label %if.then2.i34.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge, label %land.lhs.true.i100.i37.i.i

if.then2.i34.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge: ; preds = %if.then2.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i41.i.i

land.lhs.true.i100.i37.i.i:                       ; preds = %if.then2.i34.i.i
  %call1.i98.i35.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i35.i.i)
  %tobool.not.i99.i36.i.i = icmp eq i32 %call1.i98.i35.i.i, 0
  br i1 %tobool.not.i99.i36.i.i, label %land.lhs.true.i100.i37.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge, label %land.lhs.true2.i102.i39.i.i

land.lhs.true.i100.i37.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge: ; preds = %land.lhs.true.i100.i37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i41.i.i

land.lhs.true2.i102.i39.i.i:                      ; preds = %land.lhs.true.i100.i37.i.i
  %.b4.i101.i38.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101.i38.i.i, label %land.lhs.true2.i102.i39.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge, label %if.then.i103.i40.i.i

land.lhs.true2.i102.i39.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge: ; preds = %land.lhs.true2.i102.i39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i41.i.i

if.then.i103.i40.i.i:                             ; preds = %land.lhs.true2.i102.i39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit.i41.i.i

rcu_read_unlock.exit.i41.i.i:                     ; preds = %if.then.i103.i40.i.i, %land.lhs.true2.i102.i39.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge, %land.lhs.true.i100.i37.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge, %if.then2.i34.i.i.rcu_read_unlock.exit.i41.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_mla_softif_get_ipv6.exit.i.i

if.end3.i45.i.i:                                  ; preds = %__in6_dev_get.exit.i.i.i
  %mc_list.i42.i.i = getelementptr inbounds %struct.inet6_dev, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %mc_list.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %mc_list.i42.i.i, align 4
  %call5.i43.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i43.i.i)
  %tobool6.not.i44.i.i = icmp eq i32 %call5.i43.i.i, 0
  br i1 %tobool6.not.i44.i.i, label %land.lhs.true.i48.i.i, label %if.end3.i45.i.i.do.end14.i51.i.i_crit_edge

if.end3.i45.i.i.do.end14.i51.i.i_crit_edge:       ; preds = %if.end3.i45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i51.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.end3.i45.i.i
  %call7.i46.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i46.i.i)
  %tobool8.not.i47.i.i = icmp eq i32 %call7.i46.i.i, 0
  br i1 %tobool8.not.i47.i.i, label %land.lhs.true.i48.i.i.do.end14.i51.i.i_crit_edge, label %land.lhs.true9.i49.i.i

land.lhs.true.i48.i.i.do.end14.i51.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i51.i.i

land.lhs.true9.i49.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b92.i.i.i = load i1, ptr @batadv_mcast_mla_softif_get_ipv6.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i49.i.i.do.end14.i51.i.i_crit_edge, label %if.then11.i50.i.i

land.lhs.true9.i49.i.i.do.end14.i51.i.i_crit_edge: ; preds = %land.lhs.true9.i49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i51.i.i

if.then11.i50.i.i:                                ; preds = %land.lhs.true9.i49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_mla_softif_get_ipv6.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 425, ptr noundef nonnull @.str.9) #10
  br label %do.end14.i51.i.i

do.end14.i51.i.i:                                 ; preds = %if.then11.i50.i.i, %land.lhs.true9.i49.i.i.do.end14.i51.i.i_crit_edge, %land.lhs.true.i48.i.i.do.end14.i51.i.i_crit_edge, %if.end3.i45.i.i.do.end14.i51.i.i_crit_edge
  %tobool16.not122.i.i.i = icmp eq ptr %107, null
  br i1 %tobool16.not122.i.i.i, label %do.end14.i51.i.i.for.end.i79.i.i_crit_edge, label %for.body.i52.i.i.preheader

do.end14.i51.i.i.for.end.i79.i.i_crit_edge:       ; preds = %do.end14.i51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i79.i.i

for.body.i52.i.i.preheader:                       ; preds = %do.end14.i51.i.i
  %mcast_addr.i.i.i.1.mcast_addr.i.i.i.1.mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i.i, i32 1
  %mcast_addr.i.i.i.2.mcast_addr.i.i.i.2.mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i.i, i32 2
  %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i.i, i32 4
  %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx11 = getelementptr inbounds i8, ptr %mcast_addr.i.i.i, i32 4
  br label %for.body.i52.i.i

for.body.i52.i.i:                                 ; preds = %do.end72.i.i.i.for.body.i52.i.i_crit_edge, %for.body.i52.i.i.preheader
  %pmc6.0124.i.i.i = phi ptr [ %148, %do.end72.i.i.i.for.body.i52.i.i_crit_edge ], [ %107, %for.body.i52.i.i.preheader ]
  %ret.0123.i.i.i = phi i32 [ %ret.1.i75.i.i, %do.end72.i.i.i.for.body.i52.i.i_crit_edge ], [ 0, %for.body.i52.i.i.preheader ]
  %arrayidx.i.i21.i = getelementptr [16 x i8], ptr %pmc6.0124.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i21.i, align 1
  %110 = and i8 %109, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp.i.i.i = icmp eq i8 %110, 0
  br i1 %cmp.i.i.i, label %for.body.i52.i.i.for.inc.i76.i.i_crit_edge, label %if.end21.i.i.i

for.body.i52.i.i.for.inc.i76.i.i_crit_edge:       ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76.i.i

if.end21.i.i.i:                                   ; preds = %for.body.i52.i.i
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %5, align 1
  %113 = and i8 %112, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool25.not.i.i.i = icmp eq i8 %113, 0
  br i1 %tobool25.not.i.i.i, label %if.end21.i.i.i.if.end31.i.i.i_crit_edge, label %land.lhs.true26.i.i.i

if.end21.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i.i

land.lhs.true26.i.i.i:                            ; preds = %if.end21.i.i.i
  %114 = ptrtoint ptr %pmc6.0124.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pmc6.0124.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %115, -16646144
  %arrayidx2.i.i.i.i = getelementptr [4 x i32], ptr %pmc6.0124.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %117
  %arrayidx4.i.i.i.i = getelementptr [4 x i32], ptr %pmc6.0124.i.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %119
  %arrayidx7.i.i.i.i = getelementptr [4 x i32], ptr %pmc6.0124.i.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx7.i.i.i.i, align 4
  %xor8.i.i.i.i = xor i32 %121, 1
  %or9.i.i.i.i = or i32 %or5.i.i.i.i, %xor8.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i.i.i)
  %cmp.i.i53.i.i = icmp eq i32 %or9.i.i.i.i, 0
  br i1 %cmp.i.i53.i.i, label %land.lhs.true26.i.i.i.for.inc.i76.i.i_crit_edge, label %land.lhs.true26.i.i.i.if.end31.i.i.i_crit_edge

land.lhs.true26.i.i.i.if.end31.i.i.i_crit_edge:   ; preds = %land.lhs.true26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i.i

land.lhs.true26.i.i.i.for.inc.i76.i.i_crit_edge:  ; preds = %land.lhs.true26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76.i.i

if.end31.i.i.i:                                   ; preds = %land.lhs.true26.i.i.i.if.end31.i.i.i_crit_edge, %if.end21.i.i.i.if.end31.i.i.i_crit_edge
  %122 = and i8 %112, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool35.not.i.i.i = icmp eq i8 %122, 0
  %123 = and i8 %109, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp42.i.i.i = icmp ugt i8 %123, 2
  %or.cond.i.i.i = select i1 %tobool35.not.i.i.i, i1 %cmp42.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end31.i.i.i.for.inc.i76.i.i_crit_edge, label %if.end45.i.i.i

if.end31.i.i.i.for.inc.i76.i.i_crit_edge:         ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76.i.i

if.end45.i.i.i:                                   ; preds = %if.end31.i.i.i
  %124 = ptrtoint ptr %mcast_addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 51, ptr %mcast_addr.i.i.i, align 4
  %125 = ptrtoint ptr %mcast_addr.i.i.i.1.mcast_addr.i.i.i.1.mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 51, ptr %mcast_addr.i.i.i.1.mcast_addr.i.i.i.1.mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx, align 1
  %arrayidx2.i106.i.i.i = getelementptr [4 x i32], ptr %pmc6.0124.i.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %arrayidx2.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx2.i106.i.i.i, align 4
  %128 = ptrtoint ptr %mcast_addr.i.i.i.2.mcast_addr.i.i.i.2.mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %127, ptr %mcast_addr.i.i.i.2.mcast_addr.i.i.i.2.mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx, align 2
  br label %for.cond.i.i57.i.i

for.cond.i.i57.i.i:                               ; preds = %for.body.i.i65.i.i.for.cond.i.i57.i.i_crit_edge, %if.end45.i.i.i
  %mcast_entry.0.in.i.i54.i.i = phi ptr [ %mcast_list.i, %if.end45.i.i.i ], [ %mcast_entry.0.i.i55.i.i, %for.body.i.i65.i.i.for.cond.i.i57.i.i_crit_edge ]
  %129 = ptrtoint ptr %mcast_entry.0.in.i.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %mcast_entry.0.i.i55.i.i = load ptr, ptr %mcast_entry.0.in.i.i54.i.i, align 4
  %tobool2.not.i.i56.i.i = icmp eq ptr %mcast_entry.0.i.i55.i.i, null
  br i1 %tobool2.not.i.i56.i.i, label %if.end50.i.i.i, label %for.body.i.i65.i.i

for.body.i.i65.i.i:                               ; preds = %for.cond.i.i57.i.i
  %addr.i.i58.i.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i55.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %addr.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %addr.i.i58.i.i, align 4
  %132 = ptrtoint ptr %mcast_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %mcast_addr.i.i.i.0.mcast_addr.i.i.i.0.mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0..i.i.i = load i32, ptr %mcast_addr.i.i.i, align 4
  %xor.i.i.i.i.i59.i.i = xor i32 %mcast_addr.i.i.i.0.mcast_addr.i.i.i.0.mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0..i.i.i, %131
  %add.ptr.i.i.i.i.i60.i.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i55.i.i, i32 0, i32 1, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i.i.i.i60.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr.i.i.i.i.i60.i.i, align 2
  %135 = ptrtoint ptr %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %135)
  %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..i.i.i = load i16, ptr %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx, align 4
  %xor37.i.i.i.i.i61.i.i = xor i16 %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..i.i.i, %134
  %xor3.i.i.i.i.i62.i.i = zext i16 %xor37.i.i.i.i.i61.i.i to i32
  %or.i.i.i.i.i63.i.i = or i32 %xor.i.i.i.i.i59.i.i, %xor3.i.i.i.i.i62.i.i
  %cmp.i.i.i.i.i64.i.i = icmp eq i32 %or.i.i.i.i.i63.i.i, 0
  br i1 %cmp.i.i.i.i.i64.i.i, label %for.body.i.i65.i.i.for.inc.i76.i.i_crit_edge, label %for.body.i.i65.i.i.for.cond.i.i57.i.i_crit_edge

for.body.i.i65.i.i.for.cond.i.i57.i.i_crit_edge:  ; preds = %for.body.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i57.i.i

for.body.i.i65.i.i.for.inc.i76.i.i_crit_edge:     ; preds = %for.body.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76.i.i

if.end50.i.i.i:                                   ; preds = %for.cond.i.i57.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %136 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %136, i32 noundef 2592, i32 noundef 16) #13
  %tobool52.not.i67.i.i = icmp eq ptr %call7.i.i66.i.i, null
  br i1 %tobool52.not.i67.i.i, label %if.end50.i.i.i.for.end.i79.i.i_crit_edge, label %if.end54.i.i.i

if.end50.i.i.i.for.end.i79.i.i_crit_edge:         ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i79.i.i

if.end54.i.i.i:                                   ; preds = %if.end50.i.i.i
  %addr.i68.i.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %call7.i.i66.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %mcast_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %mcast_addr.i.i.i.0.mcast_addr.i.i.i.0.mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0.120.i.i.i = load i32, ptr %mcast_addr.i.i.i, align 4
  %138 = ptrtoint ptr %addr.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %mcast_addr.i.i.i.0.mcast_addr.i.i.i.0.mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0.120.i.i.i, ptr %addr.i68.i.i, align 8
  %139 = ptrtoint ptr %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx11 to i32
  call void @__asan_load2_noabort(i32 %139)
  %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4.121.i.i.i = load i16, ptr %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx11, align 4
  %add.ptr1.i.i69.i.i = getelementptr %struct.batadv_hw_addr, ptr %call7.i.i66.i.i, i32 0, i32 1, i32 4
  %140 = ptrtoint ptr %add.ptr1.i.i69.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %mcast_addr.i.i.i.4.mcast_addr.i.i.i.4.mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4.121.i.i.i, ptr %add.ptr1.i.i69.i.i, align 4
  %141 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mcast_list.i, align 4
  %143 = ptrtoint ptr %call7.i.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %142, ptr %call7.i.i66.i.i, align 8
  %tobool.not.i108.i.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i108.i.i.i, label %if.end54.i.i.i.hlist_add_head.exit.i74.i.i_crit_edge, label %do.body12.i.i71.i.i

if.end54.i.i.i.hlist_add_head.exit.i74.i.i_crit_edge: ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit.i74.i.i

do.body12.i.i71.i.i:                              ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i70.i.i = getelementptr inbounds %struct.hlist_node, ptr %142, i32 0, i32 1
  %144 = ptrtoint ptr %pprev.i.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %call7.i.i66.i.i, ptr %pprev.i.i70.i.i, align 4
  br label %hlist_add_head.exit.i74.i.i

hlist_add_head.exit.i74.i.i:                      ; preds = %do.body12.i.i71.i.i, %if.end54.i.i.i.hlist_add_head.exit.i74.i.i_crit_edge
  %145 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %call7.i.i66.i.i, ptr %mcast_list.i, align 4
  %pprev34.i.i72.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i66.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %pprev34.i.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %mcast_list.i, ptr %pprev34.i.i72.i.i, align 4
  %inc.i73.i.i = add i32 %ret.0123.i.i.i, 1
  br label %for.inc.i76.i.i

for.inc.i76.i.i:                                  ; preds = %hlist_add_head.exit.i74.i.i, %for.body.i.i65.i.i.for.inc.i76.i.i_crit_edge, %if.end31.i.i.i.for.inc.i76.i.i_crit_edge, %land.lhs.true26.i.i.i.for.inc.i76.i.i_crit_edge, %for.body.i52.i.i.for.inc.i76.i.i_crit_edge
  %ret.1.i75.i.i = phi i32 [ %ret.0123.i.i.i, %for.body.i52.i.i.for.inc.i76.i.i_crit_edge ], [ %ret.0123.i.i.i, %land.lhs.true26.i.i.i.for.inc.i76.i.i_crit_edge ], [ %inc.i73.i.i, %hlist_add_head.exit.i74.i.i ], [ %ret.0123.i.i.i, %if.end31.i.i.i.for.inc.i76.i.i_crit_edge ], [ %ret.0123.i.i.i, %for.body.i.i65.i.i.for.inc.i76.i.i_crit_edge ]
  %next.i.i.i = getelementptr inbounds %struct.ifmcaddr6, ptr %pmc6.0124.i.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %next.i.i.i, align 4
  %call62.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i.i)
  %tobool63.not.i.i.i = icmp eq i32 %call62.i.i.i, 0
  br i1 %tobool63.not.i.i.i, label %land.lhs.true64.i.i.i, label %for.inc.i76.i.i.do.end72.i.i.i_crit_edge

for.inc.i76.i.i.do.end72.i.i.i_crit_edge:         ; preds = %for.inc.i76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72.i.i.i

land.lhs.true64.i.i.i:                            ; preds = %for.inc.i76.i.i
  %call65.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i.i)
  %tobool66.not.i.i.i = icmp eq i32 %call65.i.i.i, 0
  br i1 %tobool66.not.i.i.i, label %land.lhs.true64.i.i.i.do.end72.i.i.i_crit_edge, label %land.lhs.true67.i.i.i

land.lhs.true64.i.i.i.do.end72.i.i.i_crit_edge:   ; preds = %land.lhs.true64.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72.i.i.i

land.lhs.true67.i.i.i:                            ; preds = %land.lhs.true64.i.i.i
  %.b9091.i.i.i = load i1, ptr @batadv_mcast_mla_softif_get_ipv6.__warned.12, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true67.i.i.i.do.end72.i.i.i_crit_edge, label %if.then69.i.i.i

land.lhs.true67.i.i.i.do.end72.i.i.i_crit_edge:   ; preds = %land.lhs.true67.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72.i.i.i

if.then69.i.i.i:                                  ; preds = %land.lhs.true67.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_mcast_mla_softif_get_ipv6.__warned.12, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 427, ptr noundef nonnull @.str.9) #10
  br label %do.end72.i.i.i

do.end72.i.i.i:                                   ; preds = %if.then69.i.i.i, %land.lhs.true67.i.i.i.do.end72.i.i.i_crit_edge, %land.lhs.true64.i.i.i.do.end72.i.i.i_crit_edge, %for.inc.i76.i.i.do.end72.i.i.i_crit_edge
  %tobool16.not.i77.i.i = icmp eq ptr %148, null
  br i1 %tobool16.not.i77.i.i, label %do.end72.i.i.i.for.end.i79.i.i_crit_edge, label %do.end72.i.i.i.for.body.i52.i.i_crit_edge

do.end72.i.i.i.for.body.i52.i.i_crit_edge:        ; preds = %do.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i52.i.i

do.end72.i.i.i.for.end.i79.i.i_crit_edge:         ; preds = %do.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i79.i.i

for.end.i79.i.i:                                  ; preds = %do.end72.i.i.i.for.end.i79.i.i_crit_edge, %if.end50.i.i.i.for.end.i79.i.i_crit_edge, %do.end14.i51.i.i.for.end.i79.i.i_crit_edge
  %ret.2.i78.i.i = phi i32 [ 0, %do.end14.i51.i.i.for.end.i79.i.i_crit_edge ], [ %ret.1.i75.i.i, %do.end72.i.i.i.for.end.i79.i.i_crit_edge ], [ -12, %if.end50.i.i.i.for.end.i79.i.i_crit_edge ]
  %call.i109.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i109.i.i.i, label %for.end.i79.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge, label %land.lhs.true.i112.i.i.i

for.end.i79.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge: ; preds = %for.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit119.i.i.i

land.lhs.true.i112.i.i.i:                         ; preds = %for.end.i79.i.i
  %call1.i110.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110.i.i.i)
  %tobool.not.i111.i.i.i = icmp eq i32 %call1.i110.i.i.i, 0
  br i1 %tobool.not.i111.i.i.i, label %land.lhs.true.i112.i.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge, label %land.lhs.true2.i114.i.i.i

land.lhs.true.i112.i.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge: ; preds = %land.lhs.true.i112.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit119.i.i.i

land.lhs.true2.i114.i.i.i:                        ; preds = %land.lhs.true.i112.i.i.i
  %.b4.i113.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i113.i.i.i, label %land.lhs.true2.i114.i.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge, label %if.then.i115.i.i.i

land.lhs.true2.i114.i.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge: ; preds = %land.lhs.true2.i114.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit119.i.i.i

if.then.i115.i.i.i:                               ; preds = %land.lhs.true2.i114.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit119.i.i.i

rcu_read_unlock.exit119.i.i.i:                    ; preds = %if.then.i115.i.i.i, %land.lhs.true2.i114.i.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge, %land.lhs.true.i112.i.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge, %for.end.i79.i.i.rcu_read_unlock.exit119.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  br label %batadv_mcast_mla_softif_get_ipv6.exit.i.i

batadv_mcast_mla_softif_get_ipv6.exit.i.i:        ; preds = %rcu_read_unlock.exit119.i.i.i, %rcu_read_unlock.exit.i41.i.i
  %retval.0.ph.i80.i.i = phi i32 [ 0, %rcu_read_unlock.exit.i41.i.i ], [ %ret.2.i78.i.i, %rcu_read_unlock.exit119.i.i.i ]
  %149 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i104.i.i.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i104.i.i.i to ptr
  %preempt_count.i.i.i.i105.i.i.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i.i.i105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i.i.i105.i.i.i, align 4
  %sub.i.i.i118.i.i.i = add i32 %152, -1
  store volatile i32 %sub.i.i.i118.i.i.i, ptr %preempt_count.i.i.i.i105.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mcast_addr.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i80.i.i)
  %cmp5.i.i = icmp slt i32 %retval.0.ph.i80.i.i, 0
  %spec.select = select i1 %cmp5.i.i, i32 0, i32 %retval.0.i89.i.i
  br label %out.i.i

out.i.i:                                          ; preds = %batadv_mcast_mla_softif_get_ipv6.exit.i.i, %batadv_mcast_mla_softif_get_ipv6.exit.thread.i.i, %batadv_mcast_mla_softif_get_ipv4.exit.i.i.out.i.i_crit_edge
  %ret4.0.i.i = phi i32 [ %retval.0.ph.i.i.i, %batadv_mcast_mla_softif_get_ipv4.exit.i.i.out.i.i_crit_edge ], [ %retval.0.i89.i.i, %batadv_mcast_mla_softif_get_ipv6.exit.thread.i.i ], [ %spec.select, %batadv_mcast_mla_softif_get_ipv6.exit.i.i ]
  %ret6.0.i.i = phi i32 [ 0, %batadv_mcast_mla_softif_get_ipv4.exit.i.i.out.i.i_crit_edge ], [ 0, %batadv_mcast_mla_softif_get_ipv6.exit.thread.i.i ], [ %retval.0.ph.i80.i.i, %batadv_mcast_mla_softif_get_ipv6.exit.i.i ]
  br i1 %tobool.not.i.i, label %out.i.i.batadv_mcast_mla_softif_get.exit.i_crit_edge, label %do.body1.i.i28.i

out.i.i.batadv_mcast_mla_softif_get.exit.i_crit_edge: ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_softif_get.exit.i

do.body1.i.i28.i:                                 ; preds = %out.i.i
  %153 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !114
  %pcpu_refcnt.i.i22.i = getelementptr inbounds %struct.net_device, ptr %call.i17.i, i32 0, i32 118
  %154 = ptrtoint ptr %pcpu_refcnt.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pcpu_refcnt.i.i22.i, align 4
  %156 = ptrtoint ptr %155 to i32
  %157 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i84.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i84.i.i to ptr
  %cpu.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %cpu.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cpu.i.i23.i, align 4
  %arrayidx.i85.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %160
  %161 = ptrtoint ptr %arrayidx.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i85.i.i, align 4
  %add.i.i24.i = add i32 %162, %156
  %163 = inttoptr i32 %add.i.i24.i to ptr
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %add13.i.i25.i = add i32 %165, -1
  store i32 %add13.i.i25.i, ptr %163, align 4
  %166 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !115
  %and.i.i.i.i26.i = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i26.i)
  %tobool24.not.i.i27.i = icmp eq i32 %and.i.i.i.i26.i, 0
  br i1 %tobool24.not.i.i27.i, label %if.then28.i.i29.i, label %do.body1.i.i28.i.do.end30.i.i.i_crit_edge, !prof !105

do.body1.i.i28.i.do.end30.i.i.i_crit_edge:        ; preds = %do.body1.i.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i

if.then28.i.i29.i:                                ; preds = %do.body1.i.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i29.i, %do.body1.i.i28.i.do.end30.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %153) #10, !srcloc !116
  br label %batadv_mcast_mla_softif_get.exit.i

batadv_mcast_mla_softif_get.exit.i:               ; preds = %do.end30.i.i.i, %out.i.i.batadv_mcast_mla_softif_get.exit.i_crit_edge
  %add.i.i = add i32 %ret6.0.i.i, %ret4.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp.i, label %batadv_mcast_mla_softif_get.exit.i.out.i_crit_edge, label %if.end.i

batadv_mcast_mla_softif_get.exit.i.out.i_crit_edge: ; preds = %batadv_mcast_mla_softif_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %batadv_mcast_mla_softif_get.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bridge_mcast_list.i.i) #10
  %167 = getelementptr inbounds %struct.list_head, ptr %bridge_mcast_list.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %bridge_mcast_list.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %bridge_mcast_list.i.i, ptr %bridge_mcast_list.i.i, align 4
  %169 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %bridge_mcast_list.i.i, ptr %167, align 4
  %170 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mcast_addr.i.i)
  %172 = call ptr @memset(ptr %mcast_addr.i.i, i32 255, i32 6)
  %call.i31.i = call i32 @br_multicast_list_adjacent(ptr noundef %1, ptr noundef nonnull %bridge_mcast_list.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i32.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp.i32.i, label %if.end.i.out.i41.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.out.i41.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i41.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %173 = ptrtoint ptr %bridge_mcast_list.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %br_ip_entry.0132.i.i = load ptr, ptr %bridge_mcast_list.i.i, align 4
  %cmp4.not133.i.i = icmp eq ptr %br_ip_entry.0132.i.i, %bridge_mcast_list.i.i
  br i1 %cmp4.not133.i.i, label %for.cond.preheader.i.i.out.i41.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.out.i41.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i41.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %conv35.i.i = zext i8 %171 to i32
  %and36.i.i = and i32 %conv35.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  %and41.i.i = and i32 %conv35.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  %and51.i.i = and i32 %conv35.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i)
  %tobool52.not.i.i = icmp eq i32 %and51.i.i, 0
  %and.i.i = and i32 %conv35.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i33.i = icmp eq i32 %and.i.i, 0
  %and20.i.i = and i32 %conv35.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  %mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 1
  %mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 2
  %mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx12 = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 1
  %mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx13 = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 2
  %mcast_addr.i.i.5.mcast_addr.i.i.5.mcast_addr.i.5.mcast_addr.i.5.mcast_addr.5.mcast_addr.5..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 5
  %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx15 = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 4
  %mcast_addr.i.i.3.mcast_addr.i.i.3.mcast_addr.i.3.mcast_addr.i.3.mcast_addr.3.mcast_addr.3..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 3
  %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 4
  %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx14 = getelementptr inbounds i8, ptr %mcast_addr.i.i, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %br_ip_entry.0134.i.i = phi ptr [ %br_ip_entry.0132.i.i, %for.body.lr.ph.i.i ], [ %br_ip_entry.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %proto.i.i = getelementptr inbounds %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 2
  %174 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %proto.i.i, align 4
  %176 = zext i16 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %175, label %if.else9.i.i.i [
    i16 2048, label %if.then7.i.i
    i16 -31011, label %if.then34.i.i
  ]

if.then7.i.i:                                     ; preds = %for.body.i.i
  br i1 %tobool.not.i33.i, label %if.end10.i.i, label %if.then7.i.i.for.inc.i.i_crit_edge

if.then7.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i
  br i1 %tobool42.not.i.i, label %if.end10.i.i.if.end18.i.i_crit_edge, label %land.lhs.true.i.i

if.end10.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %dst.i.i = getelementptr inbounds %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1
  %177 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dst.i.i, align 4
  %and.i.i.i = and i32 %178, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i)
  %cmp.i.i34.i = icmp eq i32 %and.i.i.i, -536870912
  br i1 %cmp.i.i34.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end18.i.i_crit_edge

land.lhs.true.i.i.if.end18.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end18.i.i:                                     ; preds = %land.lhs.true.i.i.if.end18.i.i_crit_edge, %if.end10.i.i.if.end18.i.i_crit_edge
  br i1 %tobool21.not.i.i, label %land.lhs.true22.i.i, label %if.end18.i.i.if.then.i.i.i_crit_edge

if.end18.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

land.lhs.true22.i.i:                              ; preds = %if.end18.i.i
  %dst24.i.i = getelementptr inbounds %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1
  %179 = ptrtoint ptr %dst24.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dst24.i.i, align 4
  %and.i126.i.i = and i32 %180, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i126.i.i)
  %cmp.i127.i.i = icmp eq i32 %and.i126.i.i, -536870912
  br i1 %cmp.i127.i.i, label %land.lhs.true22.i.i.if.then.i.i.i_crit_edge, label %land.lhs.true22.i.i.for.inc.i.i_crit_edge

land.lhs.true22.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true22.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then34.i.i:                                    ; preds = %for.body.i.i
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.then34.i.i.for.inc.i.i_crit_edge

if.then34.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end39.i.i:                                     ; preds = %if.then34.i.i
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end49.i.i_crit_edge, label %land.lhs.true43.i.i

if.end39.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

land.lhs.true43.i.i:                              ; preds = %if.end39.i.i
  %dst45.i.i = getelementptr inbounds %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1
  %181 = ptrtoint ptr %dst45.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dst45.i.i, align 4
  %xor.i.i.i = xor i32 %182, -16646144
  %arrayidx2.i.i.i = getelementptr %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %183 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %xor.i.i.i, %184
  %arrayidx4.i.i.i = getelementptr %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2
  %185 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %186
  %arrayidx7.i.i.i = getelementptr %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  %187 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor8.i.i.i = xor i32 %188, 1
  %or9.i.i.i = or i32 %or5.i.i.i, %xor8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i.i)
  %cmp.i128.i.i = icmp eq i32 %or9.i.i.i, 0
  br i1 %cmp.i128.i.i, label %land.lhs.true43.i.i.for.inc.i.i_crit_edge, label %land.lhs.true43.i.i.if.end49.i.i_crit_edge

land.lhs.true43.i.i.if.end49.i.i_crit_edge:       ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

land.lhs.true43.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end49.i.i:                                     ; preds = %land.lhs.true43.i.i.if.end49.i.i_crit_edge, %if.end39.i.i.if.end49.i.i_crit_edge
  br i1 %tobool52.not.i.i, label %land.lhs.true53.i.i, label %if.end49.i.i.if.then7.i.i.i_crit_edge

if.end49.i.i.if.then7.i.i.i_crit_edge:            ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i.i

land.lhs.true53.i.i:                              ; preds = %if.end49.i.i
  %dst55.i.i = getelementptr inbounds %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1
  %arrayidx.i.i = getelementptr [16 x i8], ptr %dst55.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i.i, align 1
  %191 = and i8 %190, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %191)
  %cmp58.i.i = icmp ugt i8 %191, 2
  br i1 %cmp58.i.i, label %land.lhs.true53.i.i.for.inc.i.i_crit_edge, label %land.lhs.true53.i.i.if.then7.i.i.i_crit_edge

land.lhs.true53.i.i.if.then7.i.i.i_crit_edge:     ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i.i

land.lhs.true53.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true22.i.i.if.then.i.i.i_crit_edge, %if.end18.i.i.if.then.i.i.i_crit_edge
  %dst2.i.i.i = getelementptr inbounds %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1
  %192 = ptrtoint ptr %dst2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dst2.i.i.i, align 4
  %194 = ptrtoint ptr %mcast_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %mcast_addr.i.i, align 4
  %195 = ptrtoint ptr %mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx12 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx12, align 1
  %196 = ptrtoint ptr %mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx13 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 94, ptr %mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx13, align 2
  %conv.i.i.i.i = trunc i32 %193 to i8
  %197 = ptrtoint ptr %mcast_addr.i.i.5.mcast_addr.i.i.5.mcast_addr.i.5.mcast_addr.i.5.mcast_addr.5.mcast_addr.5..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv.i.i.i.i, ptr %mcast_addr.i.i.5.mcast_addr.i.i.5.mcast_addr.i.5.mcast_addr.i.5.mcast_addr.5.mcast_addr.5..sroa_idx, align 1
  %shr.i.i.i.i = lshr i32 %193, 8
  %conv5.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %198 = ptrtoint ptr %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx15 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv5.i.i.i.i, ptr %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx15, align 4
  %shr7.i.i.i35.i = lshr i32 %193, 16
  %199 = trunc i32 %shr7.i.i.i35.i to i8
  %conv9.i.i.i36.i = and i8 %199, 127
  %200 = ptrtoint ptr %mcast_addr.i.i.3.mcast_addr.i.i.3.mcast_addr.i.3.mcast_addr.i.3.mcast_addr.3.mcast_addr.3..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv9.i.i.i36.i, ptr %mcast_addr.i.i.3.mcast_addr.i.i.3.mcast_addr.i.3.mcast_addr.i.3.mcast_addr.3.mcast_addr.3..sroa_idx, align 1
  br label %for.cond.i.i.i.preheader

if.then7.i.i.i:                                   ; preds = %land.lhs.true53.i.i.if.then7.i.i.i_crit_edge, %if.end49.i.i.if.then7.i.i.i_crit_edge
  %201 = ptrtoint ptr %mcast_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 51, ptr %mcast_addr.i.i, align 4
  %202 = ptrtoint ptr %mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 51, ptr %mcast_addr.i.i.1.mcast_addr.i.i.1.mcast_addr.i.1.mcast_addr.i.1.mcast_addr.1.mcast_addr.1..sroa_idx, align 1
  %arrayidx2.i17.i.i.i = getelementptr %struct.br_ip_list, ptr %br_ip_entry.0134.i.i, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  %203 = ptrtoint ptr %arrayidx2.i17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx2.i17.i.i.i, align 4
  %205 = ptrtoint ptr %mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 %204, ptr %mcast_addr.i.i.2.mcast_addr.i.i.2.mcast_addr.i.2.mcast_addr.i.2.mcast_addr.2.mcast_addr.2..sroa_idx, align 2
  br label %for.cond.i.i.i.preheader

if.else9.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = call ptr @memset(ptr %mcast_addr.i.i, i32 0, i32 6)
  br label %for.cond.i.i.i.preheader

for.cond.i.i.i.preheader:                         ; preds = %if.else9.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i38.i.for.cond.i.i.i_crit_edge, %for.cond.i.i.i.preheader
  %mcast_entry.0.in.i.i.i = phi ptr [ %mcast_entry.0.i.i.i, %for.body.i.i38.i.for.cond.i.i.i_crit_edge ], [ %mcast_list.i, %for.cond.i.i.i.preheader ]
  %207 = ptrtoint ptr %mcast_entry.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %mcast_entry.0.i.i.i = load ptr, ptr %mcast_entry.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %mcast_entry.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end67.i.i, label %for.body.i.i38.i

for.body.i.i38.i:                                 ; preds = %for.cond.i.i.i
  %addr.i.i37.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i.i, i32 0, i32 1
  %208 = ptrtoint ptr %addr.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %addr.i.i37.i, align 4
  %210 = ptrtoint ptr %mcast_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0..i.i = load i32, ptr %mcast_addr.i.i, align 4
  %xor.i.i.i.i.i.i = xor i32 %mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0..i.i, %209
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i.i, i32 0, i32 1, i32 4
  %211 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %add.ptr.i.i.i.i.i.i, align 2
  %213 = ptrtoint ptr %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %213)
  %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..i.i = load i16, ptr %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx, align 4
  %xor37.i.i.i.i.i.i = xor i16 %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..i.i, %212
  %xor3.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i, %xor3.i.i.i.i.i.i
  %cmp.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %for.body.i.i38.i.for.inc.i.i_crit_edge, label %for.body.i.i38.i.for.cond.i.i.i_crit_edge

for.body.i.i38.i.for.cond.i.i.i_crit_edge:        ; preds = %for.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

for.body.i.i38.i.for.inc.i.i_crit_edge:           ; preds = %for.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end67.i.i:                                     ; preds = %for.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %214 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i39.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %214, i32 noundef 2592, i32 noundef 16) #13
  %tobool69.not.i.i = icmp eq ptr %call7.i.i39.i, null
  br i1 %tobool69.not.i.i, label %if.end67.i.i.out.i41.i_crit_edge, label %if.end71.i.i

if.end67.i.i.out.i41.i_crit_edge:                 ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i41.i

if.end71.i.i:                                     ; preds = %if.end67.i.i
  %addr72.i.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %call7.i.i39.i, i32 0, i32 1
  %215 = ptrtoint ptr %mcast_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0.129.i.i = load i32, ptr %mcast_addr.i.i, align 4
  %216 = ptrtoint ptr %addr72.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %mcast_addr.i.i.0.mcast_addr.i.i.0.mcast_addr.i.0.mcast_addr.i.0.mcast_addr.0.mcast_addr.0.129.i.i, ptr %addr72.i.i, align 8
  %217 = ptrtoint ptr %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx14 to i32
  call void @__asan_load2_noabort(i32 %217)
  %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4.130.i.i = load i16, ptr %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4..sroa_idx14, align 4
  %add.ptr1.i.i.i = getelementptr %struct.batadv_hw_addr, ptr %call7.i.i39.i, i32 0, i32 1, i32 4
  %218 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %mcast_addr.i.i.4.mcast_addr.i.i.4.mcast_addr.i.4.mcast_addr.i.4.mcast_addr.4.mcast_addr.4.130.i.i, ptr %add.ptr1.i.i.i, align 4
  %219 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mcast_list.i, align 4
  %221 = ptrtoint ptr %call7.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %220, ptr %call7.i.i39.i, align 8
  %tobool.not.i.i40.i = icmp eq ptr %220, null
  br i1 %tobool.not.i.i40.i, label %if.end71.i.i.hlist_add_head.exit.i.i_crit_edge, label %do.body12.i.i.i

if.end71.i.i.hlist_add_head.exit.i.i_crit_edge:   ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit.i.i

do.body12.i.i.i:                                  ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %220, i32 0, i32 1
  %222 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %call7.i.i39.i, ptr %pprev.i.i.i, align 4
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %do.body12.i.i.i, %if.end71.i.i.hlist_add_head.exit.i.i_crit_edge
  %223 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %call7.i.i39.i, ptr %mcast_list.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i39.i, i32 0, i32 1
  %224 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %mcast_list.i, ptr %pprev34.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %hlist_add_head.exit.i.i, %for.body.i.i38.i.for.inc.i.i_crit_edge, %land.lhs.true53.i.i.for.inc.i.i_crit_edge, %land.lhs.true43.i.i.for.inc.i.i_crit_edge, %if.then34.i.i.for.inc.i.i_crit_edge, %land.lhs.true22.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.then7.i.i.for.inc.i.i_crit_edge
  %225 = ptrtoint ptr %br_ip_entry.0134.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %br_ip_entry.0.i.i = load ptr, ptr %br_ip_entry.0134.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %br_ip_entry.0.i.i, %bridge_mcast_list.i.i
  br i1 %cmp4.not.i.i, label %for.inc.i.i.out.i41.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.out.i41.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i41.i

out.i41.i:                                        ; preds = %for.inc.i.i.out.i41.i_crit_edge, %if.end67.i.i.out.i41.i_crit_edge, %for.cond.preheader.i.i.out.i41.i_crit_edge, %if.end.i.out.i41.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i31.i, %if.end.i.out.i41.i_crit_edge ], [ %call.i31.i, %for.cond.preheader.i.i.out.i41.i_crit_edge ], [ %call.i31.i, %for.inc.i.i.out.i41.i_crit_edge ], [ -12, %if.end67.i.i.out.i41.i_crit_edge ]
  %226 = ptrtoint ptr %bridge_mcast_list.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %bridge_mcast_list.i.i, align 4
  %cmp92.not138.i.i = icmp eq ptr %227, %bridge_mcast_list.i.i
  br i1 %cmp92.not138.i.i, label %out.i41.i.batadv_mcast_mla_bridge_get.exit.i_crit_edge, label %out.i41.i.for.body95.i.i_crit_edge

out.i41.i.for.body95.i.i_crit_edge:               ; preds = %out.i41.i
  br label %for.body95.i.i

out.i41.i.batadv_mcast_mla_bridge_get.exit.i_crit_edge: ; preds = %out.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_bridge_get.exit.i

for.body95.i.i:                                   ; preds = %list_del.exit.i.i.for.body95.i.i_crit_edge, %out.i41.i.for.body95.i.i_crit_edge
  %br_ip_entry.1139.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body95.i.i_crit_edge ], [ %227, %out.i41.i.for.body95.i.i_crit_edge ]
  %228 = ptrtoint ptr %br_ip_entry.1139.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %tmp.0.i.i = load ptr, ptr %br_ip_entry.1139.i.i, align 4
  %call.i.i.i42.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %br_ip_entry.1139.i.i) #10
  br i1 %call.i.i.i42.i, label %if.end.i.i.i.i, label %for.body95.i.i.list_del.exit.i.i_crit_edge

for.body95.i.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %br_ip_entry.1139.i.i, i32 0, i32 1
  %229 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %prev.i.i.i.i, align 4
  %231 = ptrtoint ptr %br_ip_entry.1139.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %br_ip_entry.1139.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %230, ptr %prev1.i.i.i.i.i, align 4
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile ptr %232, ptr %230, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body95.i.i.list_del.exit.i.i_crit_edge
  %235 = ptrtoint ptr %br_ip_entry.1139.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr inttoptr (i32 256 to ptr), ptr %br_ip_entry.1139.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %br_ip_entry.1139.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %br_ip_entry.1139.i.i) #10
  %cmp92.not.i.i = icmp eq ptr %tmp.0.i.i, %bridge_mcast_list.i.i
  br i1 %cmp92.not.i.i, label %list_del.exit.i.i.batadv_mcast_mla_bridge_get.exit.i_crit_edge, label %list_del.exit.i.i.for.body95.i.i_crit_edge

list_del.exit.i.i.for.body95.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body95.i.i

list_del.exit.i.i.batadv_mcast_mla_bridge_get.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_bridge_get.exit.i

batadv_mcast_mla_bridge_get.exit.i:               ; preds = %list_del.exit.i.i.batadv_mcast_mla_bridge_get.exit.i_crit_edge, %out.i41.i.batadv_mcast_mla_bridge_get.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mcast_addr.i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bridge_mcast_list.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp4.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp4.i, label %batadv_mcast_mla_bridge_get.exit.i.out.i_crit_edge, label %if.end6.i

batadv_mcast_mla_bridge_get.exit.i.out.i_crit_edge: ; preds = %batadv_mcast_mla_bridge_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end6.i:                                        ; preds = %batadv_mcast_mla_bridge_get.exit.i
  %mla_lock.i = getelementptr i8, ptr %work, i32 -108
  call void @_raw_spin_lock(ptr noundef %mla_lock.i) #10
  %mcast.i.i = getelementptr i8, ptr %work, i32 -136
  %237 = ptrtoint ptr %mcast.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mcast.i.i, align 4
  %tobool3.not32.i.i = icmp eq ptr %238, null
  br i1 %tobool3.not32.i.i, label %if.end6.i.batadv_mcast_mla_tt_retract.exit.i_crit_edge, label %if.end6.i.land.rhs.i.i_crit_edge

if.end6.i.land.rhs.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %land.rhs.i.i

if.end6.i.batadv_mcast_mla_tt_retract.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_tt_retract.exit.i

land.rhs.i.i:                                     ; preds = %for.inc.i57.i.land.rhs.i.i_crit_edge, %if.end6.i.land.rhs.i.i_crit_edge
  %mcast_entry.033.i.i = phi ptr [ %240, %for.inc.i57.i.land.rhs.i.i_crit_edge ], [ %238, %if.end6.i.land.rhs.i.i_crit_edge ]
  %239 = ptrtoint ptr %mcast_entry.033.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mcast_entry.033.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.033.i.i, i32 0, i32 1
  %add.ptr1.i.i.i.i.i.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.033.i.i, i32 0, i32 1, i32 4
  br label %for.cond.i.i47.i

for.cond.i.i47.i:                                 ; preds = %for.body.i.i55.i.for.cond.i.i47.i_crit_edge, %land.rhs.i.i
  %mcast_entry.0.in.i.i44.i = phi ptr [ %mcast_list.i, %land.rhs.i.i ], [ %mcast_entry.0.i.i45.i, %for.body.i.i55.i.for.cond.i.i47.i_crit_edge ]
  %241 = ptrtoint ptr %mcast_entry.0.in.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %mcast_entry.0.i.i45.i = load ptr, ptr %mcast_entry.0.in.i.i44.i, align 4
  %tobool2.not.i.i46.i = icmp eq ptr %mcast_entry.0.i.i45.i, null
  br i1 %tobool2.not.i.i46.i, label %if.end.i.i, label %for.body.i.i55.i

for.body.i.i55.i:                                 ; preds = %for.cond.i.i47.i
  %addr.i.i48.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i45.i, i32 0, i32 1
  %242 = ptrtoint ptr %addr.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %addr.i.i48.i, align 4
  %244 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %addr.i.i, align 4
  %xor.i.i.i.i.i49.i = xor i32 %245, %243
  %add.ptr.i.i.i.i.i50.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i45.i, i32 0, i32 1, i32 4
  %246 = ptrtoint ptr %add.ptr.i.i.i.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %add.ptr.i.i.i.i.i50.i, align 2
  %248 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %add.ptr1.i.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i51.i = xor i16 %249, %247
  %xor3.i.i.i.i.i52.i = zext i16 %xor37.i.i.i.i.i51.i to i32
  %or.i.i.i.i.i53.i = or i32 %xor.i.i.i.i.i49.i, %xor3.i.i.i.i.i52.i
  %cmp.i.i.i.i.i54.i = icmp eq i32 %or.i.i.i.i.i53.i, 0
  br i1 %cmp.i.i.i.i.i54.i, label %for.body.i.i55.i.for.inc.i57.i_crit_edge, label %for.body.i.i55.i.for.cond.i.i47.i_crit_edge

for.body.i.i55.i.for.cond.i.i47.i_crit_edge:      ; preds = %for.body.i.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i47.i

for.body.i.i55.i.for.inc.i57.i_crit_edge:         ; preds = %for.body.i.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i57.i

if.end.i.i:                                       ; preds = %for.cond.i.i47.i
  %call9.i.i = call zeroext i16 @batadv_tt_local_remove(ptr noundef %add.ptr3, ptr noundef %addr.i.i, i16 noundef zeroext 0, ptr noundef nonnull @.str.38, i1 noundef zeroext false) #10
  %250 = ptrtoint ptr %mcast_entry.033.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mcast_entry.033.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mcast_entry.033.i.i, i32 0, i32 1
  %252 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %251, ptr %253, align 4
  %tobool.not.i.i.i56.i = icmp eq ptr %251, null
  br i1 %tobool.not.i.i.i56.i, label %if.end.i.i.hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.end.i.i.hlist_del.exit.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %251, i32 0, i32 1
  %255 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile ptr %253, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del.exit.i.i

hlist_del.exit.i.i:                               ; preds = %do.body13.i.i.i.i, %if.end.i.i.hlist_del.exit.i.i_crit_edge
  %256 = ptrtoint ptr %mcast_entry.033.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast_entry.033.i.i, align 4
  %257 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %mcast_entry.033.i.i) #10
  br label %for.inc.i57.i

for.inc.i57.i:                                    ; preds = %hlist_del.exit.i.i, %for.body.i.i55.i.for.inc.i57.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %240, null
  br i1 %tobool3.not.i.i, label %for.inc.i57.i.batadv_mcast_mla_tt_retract.exit.i_crit_edge, label %for.inc.i57.i.land.rhs.i.i_crit_edge

for.inc.i57.i.land.rhs.i.i_crit_edge:             ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

for.inc.i57.i.batadv_mcast_mla_tt_retract.exit.i_crit_edge: ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_tt_retract.exit.i

batadv_mcast_mla_tt_retract.exit.i:               ; preds = %for.inc.i57.i.batadv_mcast_mla_tt_retract.exit.i_crit_edge, %if.end6.i.batadv_mcast_mla_tt_retract.exit.i_crit_edge
  %258 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mcast_list.i, align 4
  %tobool4.not41.i.i = icmp eq ptr %259, null
  br i1 %tobool4.not41.i.i, label %batadv_mcast_mla_tt_retract.exit.i.batadv_mcast_mla_tt_add.exit.i_crit_edge, label %batadv_mcast_mla_tt_retract.exit.i.land.rhs.i64.i_crit_edge

batadv_mcast_mla_tt_retract.exit.i.land.rhs.i64.i_crit_edge: ; preds = %batadv_mcast_mla_tt_retract.exit.i
  br label %land.rhs.i64.i

batadv_mcast_mla_tt_retract.exit.i.batadv_mcast_mla_tt_add.exit.i_crit_edge: ; preds = %batadv_mcast_mla_tt_retract.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_tt_add.exit.i

land.rhs.i64.i:                                   ; preds = %for.inc.i86.i.land.rhs.i64.i_crit_edge, %batadv_mcast_mla_tt_retract.exit.i.land.rhs.i64.i_crit_edge
  %mcast_entry.042.i.i = phi ptr [ %261, %for.inc.i86.i.land.rhs.i64.i_crit_edge ], [ %259, %batadv_mcast_mla_tt_retract.exit.i.land.rhs.i64.i_crit_edge ]
  %260 = ptrtoint ptr %mcast_entry.042.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mcast_entry.042.i.i, align 4
  %addr.i62.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.042.i.i, i32 0, i32 1
  %add.ptr1.i.i.i.i.i63.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.042.i.i, i32 0, i32 1, i32 4
  br label %for.cond.i.i68.i

for.cond.i.i68.i:                                 ; preds = %for.body.i.i76.i.for.cond.i.i68.i_crit_edge, %land.rhs.i64.i
  %mcast_entry.0.in.i.i65.i = phi ptr [ %mcast.i.i, %land.rhs.i64.i ], [ %mcast_entry.0.i.i66.i, %for.body.i.i76.i.for.cond.i.i68.i_crit_edge ]
  %262 = ptrtoint ptr %mcast_entry.0.in.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %mcast_entry.0.i.i66.i = load ptr, ptr %mcast_entry.0.in.i.i65.i, align 4
  %tobool2.not.i.i67.i = icmp eq ptr %mcast_entry.0.i.i66.i, null
  br i1 %tobool2.not.i.i67.i, label %if.end8.i.i, label %for.body.i.i76.i

for.body.i.i76.i:                                 ; preds = %for.cond.i.i68.i
  %addr.i.i69.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i66.i, i32 0, i32 1
  %263 = ptrtoint ptr %addr.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %addr.i.i69.i, align 4
  %265 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %addr.i62.i, align 4
  %xor.i.i.i.i.i70.i = xor i32 %266, %264
  %add.ptr.i.i.i.i.i71.i = getelementptr %struct.batadv_hw_addr, ptr %mcast_entry.0.i.i66.i, i32 0, i32 1, i32 4
  %267 = ptrtoint ptr %add.ptr.i.i.i.i.i71.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %add.ptr.i.i.i.i.i71.i, align 2
  %269 = ptrtoint ptr %add.ptr1.i.i.i.i.i63.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %add.ptr1.i.i.i.i.i63.i, align 2
  %xor37.i.i.i.i.i72.i = xor i16 %270, %268
  %xor3.i.i.i.i.i73.i = zext i16 %xor37.i.i.i.i.i72.i to i32
  %or.i.i.i.i.i74.i = or i32 %xor.i.i.i.i.i70.i, %xor3.i.i.i.i.i73.i
  %cmp.i.i.i.i.i75.i = icmp eq i32 %or.i.i.i.i.i74.i, 0
  br i1 %cmp.i.i.i.i.i75.i, label %for.body.i.i76.i.for.inc.i86.i_crit_edge, label %for.body.i.i76.i.for.cond.i.i68.i_crit_edge

for.body.i.i76.i.for.cond.i.i68.i_crit_edge:      ; preds = %for.body.i.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i68.i

for.body.i.i76.i.for.inc.i86.i_crit_edge:         ; preds = %for.body.i.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i86.i

if.end8.i.i:                                      ; preds = %for.cond.i.i68.i
  %271 = ptrtoint ptr %soft_iface1.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %soft_iface1.i, align 4
  %call11.i.i = call zeroext i1 @batadv_tt_local_add(ptr noundef %272, ptr noundef %addr.i62.i, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0) #10
  br i1 %call11.i.i, label %if.end13.i.i, label %if.end8.i.i.for.inc.i86.i_crit_edge

if.end8.i.i.for.inc.i86.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i86.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %273 = ptrtoint ptr %mcast_entry.042.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %mcast_entry.042.i.i, align 4
  %pprev2.i.i.i77.i = getelementptr inbounds %struct.hlist_node, ptr %mcast_entry.042.i.i, i32 0, i32 1
  %275 = ptrtoint ptr %pprev2.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pprev2.i.i.i77.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile ptr %274, ptr %276, align 4
  %tobool.not.i.i.i78.i = icmp eq ptr %274, null
  br i1 %tobool.not.i.i.i78.i, label %if.end13.i.i.hlist_del.exit.i82.i_crit_edge, label %do.body13.i.i.i80.i

if.end13.i.i.hlist_del.exit.i82.i_crit_edge:      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit.i82.i

do.body13.i.i.i80.i:                              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i79.i = getelementptr inbounds %struct.hlist_node, ptr %274, i32 0, i32 1
  %278 = ptrtoint ptr %pprev14.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store volatile ptr %276, ptr %pprev14.i.i.i79.i, align 4
  br label %hlist_del.exit.i82.i

hlist_del.exit.i82.i:                             ; preds = %do.body13.i.i.i80.i, %if.end13.i.i.hlist_del.exit.i82.i_crit_edge
  %279 = ptrtoint ptr %mcast_entry.042.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast_entry.042.i.i, align 4
  %280 = ptrtoint ptr %pprev2.i.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i77.i, align 4
  %281 = ptrtoint ptr %mcast.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mcast.i.i, align 4
  store volatile ptr %282, ptr %mcast_entry.042.i.i, align 4
  %tobool.not.i.i81.i = icmp eq ptr %282, null
  br i1 %tobool.not.i.i81.i, label %hlist_del.exit.i82.i.hlist_add_head.exit.i85.i_crit_edge, label %do.body12.i.i84.i

hlist_del.exit.i82.i.hlist_add_head.exit.i85.i_crit_edge: ; preds = %hlist_del.exit.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit.i85.i

do.body12.i.i84.i:                                ; preds = %hlist_del.exit.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i83.i = getelementptr inbounds %struct.hlist_node, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %pprev.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile ptr %mcast_entry.042.i.i, ptr %pprev.i.i83.i, align 4
  br label %hlist_add_head.exit.i85.i

hlist_add_head.exit.i85.i:                        ; preds = %do.body12.i.i84.i, %hlist_del.exit.i82.i.hlist_add_head.exit.i85.i_crit_edge
  %284 = ptrtoint ptr %mcast.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store volatile ptr %mcast_entry.042.i.i, ptr %mcast.i.i, align 4
  %285 = ptrtoint ptr %pprev2.i.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store volatile ptr %mcast.i.i, ptr %pprev2.i.i.i77.i, align 4
  br label %for.inc.i86.i

for.inc.i86.i:                                    ; preds = %hlist_add_head.exit.i85.i, %if.end8.i.i.for.inc.i86.i_crit_edge, %for.body.i.i76.i.for.inc.i86.i_crit_edge
  %tobool4.not.i.i = icmp eq ptr %261, null
  br i1 %tobool4.not.i.i, label %for.inc.i86.i.batadv_mcast_mla_tt_add.exit.i_crit_edge, label %for.inc.i86.i.land.rhs.i64.i_crit_edge

for.inc.i86.i.land.rhs.i64.i_crit_edge:           ; preds = %for.inc.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i64.i

for.inc.i86.i.batadv_mcast_mla_tt_add.exit.i_crit_edge: ; preds = %for.inc.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_tt_add.exit.i

batadv_mcast_mla_tt_add.exit.i:                   ; preds = %for.inc.i86.i.batadv_mcast_mla_tt_add.exit.i_crit_edge, %batadv_mcast_mla_tt_retract.exit.i.batadv_mcast_mla_tt_add.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcast_data.i.i) #10
  %286 = getelementptr inbounds %struct.batadv_tvlv_mcast_data, ptr %mcast_data.i.i, i32 0, i32 1
  %mla_flags.i.i = getelementptr i8, ptr %work, i32 -112
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %flags.i, ptr noundef dereferenceable(4) %mla_flags.i.i, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i87.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i87.i, label %batadv_mcast_mla_tt_add.exit.i.batadv_mcast_mla_flags_update.exit.i_crit_edge, label %if.end.i89.i

batadv_mcast_mla_tt_add.exit.i.batadv_mcast_mla_flags_update.exit.i_crit_edge: ; preds = %batadv_mcast_mla_tt_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_flags_update.exit.i

if.end.i89.i:                                     ; preds = %batadv_mcast_mla_tt_add.exit.i
  %bridged.i.i.i = getelementptr i8, ptr %work, i32 -110
  %287 = ptrtoint ptr %bridged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load.i.i.i = load i8, ptr %bridged.i.i.i, align 1
  %288 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool.not.i.i88.i = icmp eq i8 %288, 0
  %289 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %289)
  %bf.load2.i.i.i = load i8, ptr %4, align 2
  %290 = and i8 %bf.load2.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool5.not.i.i.i = icmp eq i8 %290, 0
  br i1 %tobool.not.i.i88.i, label %land.lhs.true.i.i90.i, label %land.lhs.true15.i.i.i

land.lhs.true.i.i90.i:                            ; preds = %if.end.i89.i
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i90.i.batadv_mcast_bridge_log.exit.i.i_crit_edge, label %do.body.i.i.i

land.lhs.true.i.i90.i.batadv_mcast_bridge_log.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_bridge_log.exit.i.i

do.body.i.i.i:                                    ; preds = %land.lhs.true.i.i90.i
  %log_level.i.i.i = getelementptr i8, ptr %work, i32 -1560
  %call.i.i.i.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i.i, i32 noundef 4) #10
  %291 = ptrtoint ptr %log_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %log_level.i.i.i, align 4
  %and.i.i92.i = and i32 %292, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92.i)
  %tobool6.not.i.i93.i = icmp eq i32 %and.i.i92.i, 0
  br i1 %tobool6.not.i.i93.i, label %do.body.i.i.i.if.then40.i.i.i_crit_edge, label %if.end34.i.i94.i

do.body.i.i.i.if.then40.i.i.i_crit_edge:          ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i.i.i

land.lhs.true15.i.i.i:                            ; preds = %if.end.i89.i
  br i1 %tobool5.not.i.i.i, label %do.body22.i.i.i, label %land.lhs.true15.i.i.i.if.then40.i.i.i_crit_edge

land.lhs.true15.i.i.i.if.then40.i.i.i_crit_edge:  ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i.i.i

do.body22.i.i.i:                                  ; preds = %land.lhs.true15.i.i.i
  %log_level24.i.i.i = getelementptr i8, ptr %work, i32 -1560
  %call.i.i57.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level24.i.i.i, i32 noundef 4) #10
  %293 = ptrtoint ptr %log_level24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %log_level24.i.i.i, align 4
  %and26.i.i.i = and i32 %294, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %and26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %do.body22.i.i.i.batadv_mcast_bridge_log.exit.i.i_crit_edge, label %if.end34.i.i94.thread112.i

do.body22.i.i.i.batadv_mcast_bridge_log.exit.i.i_crit_edge: ; preds = %do.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_bridge_log.exit.i.i

if.end34.i.i94.thread112.i:                       ; preds = %do.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call29.i.i114.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.14) #10
  br label %batadv_mcast_bridge_log.exit.i.i

if.end34.i.i94.i:                                 ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call29.i.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.13) #10
  br label %if.then40.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end34.i.i94.i, %land.lhs.true15.i.i.i.if.then40.i.i.i_crit_edge, %do.body.i.i.i.if.then40.i.i.i_crit_edge
  call fastcc void @batadv_mcast_querier_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.15, ptr noundef %mla_flags.i.i, ptr noundef nonnull %flags.i) #10
  %querier_ipv6.i.i.i = getelementptr i8, ptr %work, i32 -111
  call fastcc void @batadv_mcast_querier_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.16, ptr noundef %querier_ipv6.i.i.i, ptr noundef %3) #10
  br label %batadv_mcast_bridge_log.exit.i.i

batadv_mcast_bridge_log.exit.i.i:                 ; preds = %if.then40.i.i.i, %if.end34.i.i94.thread112.i, %do.body22.i.i.i.batadv_mcast_bridge_log.exit.i.i_crit_edge, %land.lhs.true.i.i90.i.batadv_mcast_bridge_log.exit.i.i_crit_edge
  %295 = ptrtoint ptr %bridged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %bf.load.i13.i.i = load i8, ptr %bridged.i.i.i, align 2
  %tvlv_flags.i.i95.i = getelementptr i8, ptr %work, i32 -109
  %296 = ptrtoint ptr %tvlv_flags.i.i95.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %tvlv_flags.i.i95.i, align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %str_old_flags.i.i.i) #10
  %298 = call ptr @memcpy(ptr %str_old_flags.i.i.i, ptr @__const.batadv_mcast_flags_log.str_old_flags, i32 10)
  %conv.i.i.i = zext i8 %297 to i32
  %and.i14.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i14.i.i, 0
  %cond.i.i.i = select i1 %tobool3.not.i.i.i, i32 46, i32 85
  %and5.i.i.i = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i15.i.i = icmp eq i32 %and5.i.i.i, 0
  %cond7.i.i.i = select i1 %tobool6.not.i15.i.i, i32 46, i32 52
  %and9.i.i.i = and i32 %conv.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  %cond11.i.i.i = select i1 %tobool10.not.i.i.i, i32 46, i32 54
  %and13.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %and13.i.i.i, 0
  %cond15.i.i.i = select i1 %tobool14.not.i.i.i, ptr @.str.31, ptr @.str.32
  %and17.i.i.i = and i32 %conv.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and17.i.i.i, 0
  %cond20.i.i.i = select i1 %tobool18.not.i.i.i, ptr @.str.33, ptr @.str.32
  %call.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str_old_flags.i.i.i, ptr noundef nonnull @.str.30, i32 noundef %cond.i.i.i, i32 noundef %cond7.i.i.i, i32 noundef %cond11.i.i.i, ptr noundef nonnull %cond15.i.i.i, ptr noundef nonnull %cond20.i.i.i) #10
  %log_level.i16.i.i = getelementptr i8, ptr %work, i32 -1560
  %call.i.i.i17.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i16.i.i, i32 noundef 4) #10
  %299 = ptrtoint ptr %log_level.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %log_level.i16.i.i, align 4
  %and22.i.i.i = and i32 %300, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %and22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %batadv_mcast_bridge_log.exit.i.i.batadv_mcast_flags_log.exit.i.i_crit_edge, label %if.then.i.i97.i

batadv_mcast_bridge_log.exit.i.i.batadv_mcast_flags_log.exit.i.i_crit_edge: ; preds = %batadv_mcast_bridge_log.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_flags_log.exit.i.i

if.then.i.i97.i:                                  ; preds = %batadv_mcast_bridge_log.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i.i)
  %tobool.not.i18.i96.i = icmp sgt i8 %bf.load.i13.i.i, -1
  %cond27.i.i.i = select i1 %tobool.not.i18.i96.i, ptr @.str.35, ptr %str_old_flags.i.i.i
  %conv28.i.i.i = zext i8 %171 to i32
  %and29.i.i.i = and i32 %conv28.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and29.i.i.i, 0
  %cond31.i.i.i = select i1 %tobool30.not.i.i.i, i32 46, i32 85
  %and33.i.i.i = and i32 %conv28.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %and33.i.i.i, 0
  %cond35.i.i.i = select i1 %tobool34.not.i.i.i, i32 46, i32 52
  %and37.i.i.i = and i32 %conv28.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %and37.i.i.i, 0
  %cond39.i.i.i = select i1 %tobool38.not.i.i.i, i32 46, i32 54
  %and41.i.i.i = and i32 %conv28.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i.i)
  %tobool42.not.i.i.i = icmp eq i32 %and41.i.i.i, 0
  %cond44.i.i.i = select i1 %tobool42.not.i.i.i, ptr @.str.31, ptr @.str.32
  %and46.i.i.i = and i32 %conv28.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i.i)
  %tobool47.not.i.i.i = icmp eq i32 %and46.i.i.i, 0
  %cond49.i.i.i = select i1 %tobool47.not.i.i.i, ptr @.str.33, ptr @.str.32
  %call50.i.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond27.i.i.i, i32 noundef %cond31.i.i.i, i32 noundef %cond35.i.i.i, i32 noundef %cond39.i.i.i, ptr noundef nonnull %cond44.i.i.i, ptr noundef nonnull %cond49.i.i.i) #10
  br label %batadv_mcast_flags_log.exit.i.i

batadv_mcast_flags_log.exit.i.i:                  ; preds = %if.then.i.i97.i, %batadv_mcast_bridge_log.exit.i.i.batadv_mcast_flags_log.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %str_old_flags.i.i.i) #10
  %301 = ptrtoint ptr %mcast_data.i.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %171, ptr %mcast_data.i.i, align 4
  %302 = call ptr @memset(ptr %286, i32 0, i32 3)
  call void @batadv_tvlv_container_register(ptr noundef %add.ptr3, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %mcast_data.i.i, i16 noundef zeroext 4) #10
  %303 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flags.i, align 4
  %305 = ptrtoint ptr %mla_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %mla_flags.i.i, align 4
  br label %batadv_mcast_mla_flags_update.exit.i

batadv_mcast_mla_flags_update.exit.i:             ; preds = %batadv_mcast_flags_log.exit.i.i, %batadv_mcast_mla_tt_add.exit.i.batadv_mcast_mla_flags_update.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcast_data.i.i) #10
  call void @_raw_spin_unlock(ptr noundef %mla_lock.i) #10
  br label %out.i

out.i:                                            ; preds = %batadv_mcast_mla_flags_update.exit.i, %batadv_mcast_mla_bridge_get.exit.i.out.i_crit_edge, %batadv_mcast_mla_softif_get.exit.i.out.i_crit_edge
  %306 = ptrtoint ptr %mcast_list.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %mcast_list.i, align 4
  %tobool3.not23.i.i = icmp eq ptr %307, null
  br i1 %tobool3.not23.i.i, label %out.i.__batadv_mcast_mla_update.exit_crit_edge, label %land.rhs.i100.preheader.i

out.i.__batadv_mcast_mla_update.exit_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__batadv_mcast_mla_update.exit

land.rhs.i100.preheader.i:                        ; preds = %out.i
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %307, align 4
  %pprev2.i.i.i98115.i = getelementptr inbounds %struct.hlist_node, ptr %307, i32 0, i32 1
  %310 = ptrtoint ptr %pprev2.i.i.i98115.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %pprev2.i.i.i98115.i, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile ptr %309, ptr %311, align 4
  %tobool.not.i.i.i99116.i = icmp eq ptr %309, null
  br i1 %tobool.not.i.i.i99116.i, label %land.rhs.i100.preheader.i.for.end.loopexit.i.i_crit_edge, label %land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge

land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge: ; preds = %land.rhs.i100.preheader.i
  br label %hlist_del.exit.i102.i

land.rhs.i100.preheader.i.for.end.loopexit.i.i_crit_edge: ; preds = %land.rhs.i100.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.loopexit.i.i

hlist_del.exit.i102.i:                            ; preds = %hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge, %land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge
  %313 = phi ptr [ %321, %hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge ], [ %311, %land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge ]
  %pprev2.i.i.i98118.i = phi ptr [ %pprev14.i.i.i101.i, %hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge ], [ %pprev2.i.i.i98115.i, %land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge ]
  %314 = phi ptr [ %319, %hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge ], [ %309, %land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge ]
  %mcast_entry.024.i117.i = phi ptr [ %314, %hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge ], [ %307, %land.rhs.i100.preheader.i.hlist_del.exit.i102.i_crit_edge ]
  %pprev14.i.i.i101.i = getelementptr inbounds %struct.hlist_node, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %pprev14.i.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store volatile ptr %313, ptr %pprev14.i.i.i101.i, align 4
  %316 = ptrtoint ptr %mcast_entry.024.i117.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast_entry.024.i117.i, align 4
  %317 = ptrtoint ptr %pprev2.i.i.i98118.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i98118.i, align 4
  call void @kfree(ptr noundef nonnull %mcast_entry.024.i117.i) #10
  %318 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %314, align 4
  %320 = ptrtoint ptr %pprev14.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %pprev14.i.i.i101.i, align 4
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_store4_noabort(i32 %322)
  store volatile ptr %319, ptr %321, align 4
  %tobool.not.i.i.i99.i = icmp eq ptr %319, null
  br i1 %tobool.not.i.i.i99.i, label %hlist_del.exit.i102.i.for.end.loopexit.i.i_crit_edge, label %hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge

hlist_del.exit.i102.i.hlist_del.exit.i102.i_crit_edge: ; preds = %hlist_del.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit.i102.i

hlist_del.exit.i102.i.for.end.loopexit.i.i_crit_edge: ; preds = %hlist_del.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.loopexit.i.i

for.end.loopexit.i.i:                             ; preds = %hlist_del.exit.i102.i.for.end.loopexit.i.i_crit_edge, %land.rhs.i100.preheader.i.for.end.loopexit.i.i_crit_edge
  %mcast_entry.024.i.lcssa.i = phi ptr [ %307, %land.rhs.i100.preheader.i.for.end.loopexit.i.i_crit_edge ], [ %314, %hlist_del.exit.i102.i.for.end.loopexit.i.i_crit_edge ]
  %pprev2.i.i.i98.lcssa.i = phi ptr [ %pprev2.i.i.i98115.i, %land.rhs.i100.preheader.i.for.end.loopexit.i.i_crit_edge ], [ %pprev14.i.i.i101.i, %hlist_del.exit.i102.i.for.end.loopexit.i.i_crit_edge ]
  %323 = ptrtoint ptr %mcast_entry.024.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast_entry.024.i.lcssa.i, align 4
  %324 = ptrtoint ptr %pprev2.i.i.i98.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i98.lcssa.i, align 4
  call void @kfree(ptr noundef nonnull %mcast_entry.024.i.lcssa.i) #10
  br label %__batadv_mcast_mla_update.exit

__batadv_mcast_mla_update.exit:                   ; preds = %for.end.loopexit.i.i, %out.i.__batadv_mcast_mla_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcast_list.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %325 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i.i5 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %325, ptr noundef %work, i32 noundef 50) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_mcast_mesh_info_put(ptr noundef %msg, ptr nocapture noundef readonly %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i58 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tvlv_flags = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 6, i32 3
  %0 = ptrtoint ptr %tvlv_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tvlv_flags, align 1
  %conv = zext i8 %1 to i32
  %bridged = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 6, i32 2
  %2 = ptrtoint ptr %bridged to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %bridged, align 2
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mla_flags = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 6
  %4 = ptrtoint ptr %mla_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %mla_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5)
  %tobool7.not = icmp sgt i8 %bf.load5, -1
  %spec.select = select i1 %tobool7.not, i32 1, i32 3
  %querier_ipv6 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 6, i32 1
  %5 = ptrtoint ptr %querier_ipv6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load12 = load i8, ptr %querier_ipv6, align 1
  %or16 = or i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load12)
  %tobool14.not60 = icmp slt i8 %bf.load12, 0
  %flags_priv.1 = select i1 %tobool14.not60, i32 %or16, i32 %spec.select
  %6 = lshr i8 %bf.load5, 3
  %7 = and i8 %6, 8
  %8 = zext i8 %7 to i32
  %9 = or i32 %flags_priv.1, %8
  %10 = lshr i8 %bf.load12, 2
  %11 = and i8 %10, 16
  %12 = zext i8 %11 to i32
  %13 = or i32 %9, %12
  br label %if.end38

if.end38:                                         ; preds = %if.then, %entry.if.end38_crit_edge
  %flags_priv.3 = phi i32 [ 0, %entry.if.end38_crit_edge ], [ %13, %if.then ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 38, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i58) #10
  %15 = ptrtoint ptr %tmp.i58 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags_priv.3, ptr %tmp.i58, align 4
  %call.i59 = call i32 @nla_put(ptr noundef %msg, i32 noundef 39, i32 noundef 4, ptr noundef nonnull %tmp.i58) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool41.not = icmp eq i32 %call.i59, 0
  %spec.select56 = select i1 %tobool41.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %if.end38.cleanup_crit_edge ], [ %spec.select56, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_mcast_flags_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i.i.i = alloca i32, align 4
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %9 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nlh.i, align 4
  %call1.i = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %10, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @dev_get_by_index(ptr noundef %8, i32 noundef %call1.i) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call2.i) #10
  br i1 %call4.i, label %if.end6.i, label %lor.lhs.false.i.do.body1.i.i_crit_edge

lor.lhs.false.i.do.body1.i.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.end6.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end6.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end6.i.rcu_read_lock.exit.i.i_crit_edge
  %primary_if.i.i = getelementptr i8, ptr %call2.i, i32 2636
  %15 = ptrtoint ptr %primary_if.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %primary_if.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b18.i.i = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 110, ptr noundef nonnull @.str.9) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %16, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.out.i.i_crit_edge, label %if.end11.i.i

do.end7.i.i.out.i.i_crit_edge:                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end11.i.i:                                     ; preds = %do.end7.i.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %16, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end11.i.i
  %19 = phi i32 [ %18, %if.end11.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %19, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %23 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %22, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %22
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %24 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %25, 1
  %26 = or i32 %add5.i.i.i.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !108

if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge
  %27 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #10
  %spec.select.i.i = select i1 %tobool12.i.i.i.i.not.i.i, ptr null, ptr %16
  br label %out.i.i

out.i.i:                                          ; preds = %kref_get_unless_zero.exit.i.i, %do.end7.i.i.out.i.i_crit_edge
  %hard_iface.0.i.i = phi ptr [ null, %do.end7.i.i.out.i.i_crit_edge ], [ %spec.select.i.i, %kref_get_unless_zero.exit.i.i ]
  %call.i19.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i19.i.i, label %out.i.i.batadv_primary_if_get_selected.exit.i_crit_edge, label %land.lhs.true.i22.i.i

out.i.i.batadv_primary_if_get_selected.exit.i_crit_edge: ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_primary_if_get_selected.exit.i

land.lhs.true.i22.i.i:                            ; preds = %out.i.i
  %call1.i20.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call1.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i22.i.i.batadv_primary_if_get_selected.exit.i_crit_edge, label %land.lhs.true2.i24.i.i

land.lhs.true.i22.i.i.batadv_primary_if_get_selected.exit.i_crit_edge: ; preds = %land.lhs.true.i22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_primary_if_get_selected.exit.i

land.lhs.true2.i24.i.i:                           ; preds = %land.lhs.true.i22.i.i
  %.b4.i23.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i.i, label %land.lhs.true2.i24.i.i.batadv_primary_if_get_selected.exit.i_crit_edge, label %if.then.i25.i.i

land.lhs.true2.i24.i.i.batadv_primary_if_get_selected.exit.i_crit_edge: ; preds = %land.lhs.true2.i24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_primary_if_get_selected.exit.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true2.i24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %batadv_primary_if_get_selected.exit.i

batadv_primary_if_get_selected.exit.i:            ; preds = %if.then.i25.i.i, %land.lhs.true2.i24.i.i.batadv_primary_if_get_selected.exit.i_crit_edge, %land.lhs.true.i22.i.i.batadv_primary_if_get_selected.exit.i_crit_edge, %out.i.i.batadv_primary_if_get_selected.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %29 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i26.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i26.i.i to ptr
  %preempt_count.i.i.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i27.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i27.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool9.not.i = icmp eq ptr %hard_iface.0.i.i, null
  br i1 %tobool9.not.i, label %batadv_primary_if_get_selected.exit.i.if.then12.i_crit_edge, label %lor.lhs.false10.i

batadv_primary_if_get_selected.exit.i.if.then12.i_crit_edge: ; preds = %batadv_primary_if_get_selected.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

lor.lhs.false10.i:                                ; preds = %batadv_primary_if_get_selected.exit.i
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %if_status.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %if_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp.not.i = icmp eq i8 %34, 3
  br i1 %cmp.not.i, label %lor.lhs.false10.i.do.body1.i.i_crit_edge, label %lor.lhs.false10.i.if.then12.i_crit_edge

lor.lhs.false10.i.if.then12.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

lor.lhs.false10.i.do.body1.i.i_crit_edge:         ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i.i

if.then12.i:                                      ; preds = %lor.lhs.false10.i.if.then12.i_crit_edge, %batadv_primary_if_get_selected.exit.i.if.then12.i_crit_edge
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.then12.i, %lor.lhs.false10.i.do.body1.i.i_crit_edge, %lor.lhs.false.i.do.body1.i.i_crit_edge
  %tobool.not = phi i1 [ false, %if.then12.i ], [ true, %lor.lhs.false10.i.do.body1.i.i_crit_edge ], [ false, %lor.lhs.false.i.do.body1.i.i_crit_edge ]
  %ret.053.i = phi i32 [ -2, %if.then12.i ], [ 0, %lor.lhs.false10.i.do.body1.i.i_crit_edge ], [ -19, %lor.lhs.false.i.do.body1.i.i_crit_edge ]
  %hard_iface.051.i = phi ptr [ %hard_iface.0.i.i, %if.then12.i ], [ %hard_iface.0.i.i, %lor.lhs.false10.i.do.body1.i.i_crit_edge ], [ null, %lor.lhs.false.i.do.body1.i.i_crit_edge ]
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !114
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call2.i, i32 0, i32 118
  %36 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add13.i.i = add i32 %47, -1
  store i32 %add13.i.i, ptr %45, align 4
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !115
  %and.i.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !105

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #10, !srcloc !116
  br i1 %tobool.not, label %if.end, label %if.else.i

if.else.i:                                        ; preds = %dev_put.exit.i
  %tobool.not.i34.i = icmp eq ptr %hard_iface.051.i, null
  br i1 %tobool.not.i34.i, label %if.else.i.cleanup_crit_edge, label %if.end.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  %refcount.i35.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.051.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i36.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i35.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  call void @llvm.prefetch.p0(ptr %refcount.i35.i, i32 1, i32 3, i32 1) #10
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i35.i, ptr %refcount.i35.i, i32 1, ptr elementtype(i32) %refcount.i35.i) #10, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i37.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i37.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i37.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i40.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i37.i)
  %.not.i.i.i.i.i38.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i37.i, 0
  br i1 %.not.i.i.i.i.i38.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i39.i, !prof !108

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i39.i:                          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i35.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i40.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !112
  call void @batadv_hardif_release(ptr noundef %refcount.i35.i) #10, !callees !113
  br label %cleanup

if.end:                                           ; preds = %dev_put.exit.i
  %50 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx3 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.051.i, i32 0, i32 7
  %51 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %soft_iface, align 4
  %orig_hash.i = getelementptr i8, ptr %52, i32 2396
  %53 = ptrtoint ptr %orig_hash.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %orig_hash.i, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 4
  %57 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx3, align 4
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %54, i32 0, i32 2
  %59 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %60)
  %cmp35.i = icmp ult i32 %56, %60
  br i1 %cmp35.i, label %while.body.lr.ph.i, label %if.end.__batadv_mcast_flags_dump.exit_crit_edge

if.end.__batadv_mcast_flags_dump.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__batadv_mcast_flags_dump.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %list_locks.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %54, i32 0, i32 1
  %generation.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %54, i32 0, i32 3
  %seq.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %prev_seq.i.i.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i26.while.body.i_crit_edge, %while.body.lr.ph.i
  %bucket_tmp.037.i = phi i32 [ %56, %while.body.lr.ph.i ], [ %inc.i, %if.end.i26.while.body.i_crit_edge ]
  %storemerge36.i = phi i32 [ %58, %while.body.lr.ph.i ], [ 0, %if.end.i26.while.body.i_crit_edge ]
  %61 = ptrtoint ptr %list_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %list_locks.i.i, align 4
  %arrayidx.i.i17 = getelementptr %struct.spinlock, ptr %62, i32 %bucket_tmp.037.i
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i.i17) #10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %generation.i.i, i32 noundef 4) #10
  %63 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %generation.i.i, align 4
  %shl.i.i = shl i32 %64, 1
  %or.i.i = or i32 %shl.i.i, 1
  %65 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i.i, ptr %seq.i.i, align 4
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %54, align 4
  %arrayidx1.i.i = getelementptr %struct.hlist_head, ptr %67, i32 %bucket_tmp.037.i
  %68 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i.i18 = icmp eq ptr %69, null
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 -284
  %tobool3.not5664.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not56.i.i = or i1 %tobool.not.i.i18, %tobool3.not5664.i.i
  br i1 %tobool3.not56.i.i, label %while.body.i.if.end.i26_crit_edge, label %while.body.i.for.body.i.i_crit_edge

while.body.i.for.body.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.body.i.i

while.body.i.if.end.i26_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i26

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body.i.for.body.i.i_crit_edge
  %orig_node.060.i.i = phi ptr [ %add.ptr20.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %while.body.i.for.body.i.i_crit_edge ]
  %idx.057.i.i = phi i32 [ %idx.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.i.for.body.i.i_crit_edge ]
  %capa_initialized.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.060.i.i, i32 0, i32 14
  %70 = ptrtoint ptr %capa_initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %capa_initialized.i.i, align 4
  %72 = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool5.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool5.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i19

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i19:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.057.i.i, i32 %storemerge36.i)
  %cmp.i.i = icmp slt i32 %idx.057.i.i, %storemerge36.i
  br i1 %cmp.i.i, label %if.end.i.i19.skip.i.i_crit_edge, label %if.end7.i.i

if.end.i.i19.skip.i.i_crit_edge:                  ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i19
  %73 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %nlmsg_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nlmsg_seq.i.i.i, align 4
  %call.i.i.i20 = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %76, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 14) #10
  %tobool.not.i.i.i21 = icmp eq ptr %call.i.i.i20, null
  br i1 %tobool.not.i.i.i21, label %if.end7.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge, label %if.end.i.i.i

if.end7.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_flags_dump_bucket.exit.i

if.end.i.i.i:                                     ; preds = %if.end7.i.i
  %77 = ptrtoint ptr %prev_seq.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %prev_seq.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.genl_dump_check_consistent.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end.i.i.i.genl_dump_check_consistent.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %genl_dump_check_consistent.exit.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i
  %79 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %seq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %78)
  %cmp.not.i.i.i.i.i = icmp eq i32 %80, %78
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.genl_dump_check_consistent.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true.i.i.i.i.i.genl_dump_check_consistent.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %genl_dump_check_consistent.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nlmsg_flags.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i20, i32 -14
  %81 = ptrtoint ptr %nlmsg_flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nlmsg_flags.i.i.i.i.i, align 2
  %83 = or i16 %82, 16
  store i16 %83, ptr %nlmsg_flags.i.i.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i.i.i

genl_dump_check_consistent.exit.i.i.i:            ; preds = %if.then.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.genl_dump_check_consistent.exit.i.i.i_crit_edge, %if.end.i.i.i.genl_dump_check_consistent.exit.i.i.i_crit_edge
  %84 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %seq.i.i, align 4
  %86 = ptrtoint ptr %prev_seq.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %prev_seq.i.i.i.i.i, align 4
  %call1.i.i.i22 = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 6, ptr noundef nonnull %orig_node.060.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i22)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i22, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %genl_dump_check_consistent.exit.i.i.i
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call.i.i.i20, i32 -20
  %tobool.not.i.i.i.i.i.i23 = icmp eq ptr %add.ptr1.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i23, label %if.then.i.i.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_flags_dump_bucket.exit.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %87 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i24 = icmp ugt ptr %88, %add.ptr1.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i24, label %if.then.i.i.i.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge, label %if.then.i.i.i.i.i.i.if.then10.sink.split.i.i_crit_edge, !prof !105

if.then.i.i.i.i.i.i.if.then10.sink.split.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.sink.split.i.i

if.then.i.i.i.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.sink.split.sink.split.i.i

if.end4.i.i.i:                                    ; preds = %genl_dump_check_consistent.exit.i.i.i
  %capabilities.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.060.i.i, i32 0, i32 13
  %89 = ptrtoint ptr %capabilities.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %capabilities.i.i.i, align 4
  %91 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool6.not.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.batadv_mcast_flags_dump_entry.exit.i.i_crit_edge, label %if.then7.i.i.i

if.end4.i.i.i.batadv_mcast_flags_dump_entry.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_flags_dump_entry.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  %mcast_flags.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.060.i.i, i32 0, i32 7
  %92 = ptrtoint ptr %mcast_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %mcast_flags.i.i.i, align 4
  %conv.i.i.i = zext i8 %93 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #10
  %94 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i.i.i, ptr %tmp.i.i.i.i, align 4
  %call.i.i45.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 38, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call.i.i45.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.then7.i.i.i.batadv_mcast_flags_dump_entry.exit.i.i_crit_edge, label %if.then.i28.i.i.i

if.then7.i.i.i.batadv_mcast_flags_dump_entry.exit.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_flags_dump_entry.exit.i.i

if.then.i28.i.i.i:                                ; preds = %if.then7.i.i.i
  %add.ptr1.i26.i.i.i = getelementptr i8, ptr %call.i.i.i20, i32 -20
  %tobool.not.i.i.i27.i.i.i = icmp eq ptr %add.ptr1.i26.i.i.i, null
  br i1 %tobool.not.i.i.i27.i.i.i, label %if.then.i28.i.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge, label %if.then.i.i.i31.i.i.i

if.then.i28.i.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge: ; preds = %if.then.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_flags_dump_bucket.exit.i

if.then.i.i.i31.i.i.i:                            ; preds = %if.then.i28.i.i.i
  %data.i.i.i29.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %95 = ptrtoint ptr %data.i.i.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i.i29.i.i.i, align 4
  %cmp.i.i.i30.i.i.i = icmp ugt ptr %96, %add.ptr1.i26.i.i.i
  br i1 %cmp.i.i.i30.i.i.i, label %if.then.i.i.i31.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge, label %if.then.i.i.i31.i.i.i.if.then10.sink.split.i.i_crit_edge, !prof !105

if.then.i.i.i31.i.i.i.if.then10.sink.split.i.i_crit_edge: ; preds = %if.then.i.i.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.sink.split.i.i

if.then.i.i.i31.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then.i.i.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.sink.split.sink.split.i.i

batadv_mcast_flags_dump_entry.exit.i.i:           ; preds = %if.then7.i.i.i.batadv_mcast_flags_dump_entry.exit.i.i_crit_edge, %if.end4.i.i.i.batadv_mcast_flags_dump_entry.exit.i.i_crit_edge
  %add.ptr1.i38.i.i.i = getelementptr i8, ptr %call.i.i.i20, i32 -20
  %97 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i38.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %99 = ptrtoint ptr %add.ptr1.i38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub.ptr.sub.i.i.i.i.i, ptr %add.ptr1.i38.i.i.i, align 4
  br label %skip.i.i

if.then10.sink.split.sink.split.i.i:              ; preds = %if.then.i.i.i31.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge
  %data.i.i.i.i.sink.ph.i.i = phi ptr [ %data.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge ], [ %data.i.i.i29.i.i.i, %if.then.i.i.i31.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge ]
  %add.ptr1.i.i.sink.ph.i.i = phi ptr [ %add.ptr1.i.i.i.i, %if.then.i.i.i.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge ], [ %add.ptr1.i26.i.i.i, %if.then.i.i.i31.i.i.i.if.then10.sink.split.sink.split.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.then10.sink.split.i.i

if.then10.sink.split.i.i:                         ; preds = %if.then10.sink.split.sink.split.i.i, %if.then.i.i.i31.i.i.i.if.then10.sink.split.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.then10.sink.split.i.i_crit_edge
  %data.i.i.i.i.sink.i.i = phi ptr [ %data.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.then10.sink.split.i.i_crit_edge ], [ %data.i.i.i29.i.i.i, %if.then.i.i.i31.i.i.i.if.then10.sink.split.i.i_crit_edge ], [ %data.i.i.i.i.sink.ph.i.i, %if.then10.sink.split.sink.split.i.i ]
  %add.ptr1.i.i.sink.i.i = phi ptr [ %add.ptr1.i.i.i.i, %if.then.i.i.i.i.i.i.if.then10.sink.split.i.i_crit_edge ], [ %add.ptr1.i26.i.i.i, %if.then.i.i.i31.i.i.i.if.then10.sink.split.i.i_crit_edge ], [ %add.ptr1.i.i.sink.ph.i.i, %if.then10.sink.split.sink.split.i.i ]
  %100 = ptrtoint ptr %data.i.i.i.i.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i.i.sink.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.sink.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %101 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i.i.i) #10
  br label %batadv_mcast_flags_dump_bucket.exit.i

skip.i.i:                                         ; preds = %batadv_mcast_flags_dump_entry.exit.i.i, %if.end.i.i19.skip.i.i_crit_edge
  %inc.i.i = add i32 %idx.057.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %skip.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %idx.1.i.i = phi i32 [ %inc.i.i, %skip.i.i ], [ %idx.057.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %hash_entry.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.060.i.i, i32 0, i32 24
  %102 = ptrtoint ptr %hash_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hash_entry.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %103, null
  %add.ptr20.i.i = getelementptr i8, ptr %103, i32 -284
  %tobool3.not77.i.i = icmp eq ptr %add.ptr20.i.i, null
  %tobool3.not.i.i25 = or i1 %tobool16.not.i.i, %tobool3.not77.i.i
  br i1 %tobool3.not.i.i25, label %for.inc.i.i.if.end.i26_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end.i26_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i26

batadv_mcast_flags_dump_bucket.exit.i:            ; preds = %if.then10.sink.split.i.i, %if.then.i28.i.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge, %if.then.i.i.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge, %if.end7.i.i.batadv_mcast_flags_dump_bucket.exit.i_crit_edge
  %104 = ptrtoint ptr %list_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %list_locks.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.spinlock, ptr %105, i32 %bucket_tmp.037.i
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx12.i.i) #10
  br label %__batadv_mcast_flags_dump.exit

if.end.i26:                                       ; preds = %for.inc.i.i.if.end.i26_crit_edge, %while.body.i.if.end.i26_crit_edge
  %106 = ptrtoint ptr %list_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %list_locks.i.i, align 4
  %arrayidx25.i.i = getelementptr %struct.spinlock, ptr %107, i32 %bucket_tmp.037.i
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx25.i.i) #10
  %inc.i = add nuw i32 %bucket_tmp.037.i, 1
  %108 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %109
  br i1 %cmp.i, label %if.end.i26.while.body.i_crit_edge, label %if.end.i26.__batadv_mcast_flags_dump.exit_crit_edge

if.end.i26.__batadv_mcast_flags_dump.exit_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %__batadv_mcast_flags_dump.exit

if.end.i26.while.body.i_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

__batadv_mcast_flags_dump.exit:                   ; preds = %if.end.i26.__batadv_mcast_flags_dump.exit_crit_edge, %batadv_mcast_flags_dump_bucket.exit.i, %if.end.__batadv_mcast_flags_dump.exit_crit_edge
  %bucket_tmp.026.i = phi i32 [ %bucket_tmp.037.i, %batadv_mcast_flags_dump_bucket.exit.i ], [ %56, %if.end.__batadv_mcast_flags_dump.exit_crit_edge ], [ %inc.i, %if.end.i26.__batadv_mcast_flags_dump.exit_crit_edge ]
  %idx_tmp.1.i = phi i32 [ %idx.057.i.i, %batadv_mcast_flags_dump_bucket.exit.i ], [ %58, %if.end.__batadv_mcast_flags_dump.exit_crit_edge ], [ 0, %if.end.i26.__batadv_mcast_flags_dump.exit_crit_edge ]
  %110 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %bucket_tmp.026.i, ptr %50, align 4
  %111 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %idx_tmp.1.i, ptr %arrayidx3, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %112 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i, align 4
  %tobool.not.i27 = icmp eq ptr %hard_iface.051.i, null
  br i1 %tobool.not.i27, label %__batadv_mcast_flags_dump.exit.cleanup_crit_edge, label %if.end.i28

__batadv_mcast_flags_dump.exit.cleanup_crit_edge: ; preds = %__batadv_mcast_flags_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i28:                                       ; preds = %__batadv_mcast_flags_dump.exit
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.051.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %114 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i29, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !108

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i29:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !112
  call void @batadv_hardif_release(ptr noundef %refcount.i) #10, !callees !113
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i29, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %__batadv_mcast_flags_dump.exit.cleanup_crit_edge, %if.then.i.i40.i, %if.then10.i.i.i.i.i39.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %113, %__batadv_mcast_flags_dump.exit.cleanup_crit_edge ], [ %113, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %113, %if.then10.i.i.i.i.i ], [ %113, %if.then.i.i29 ], [ -19, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.053.i, %if.else.i.cleanup_crit_edge ], [ %ret.053.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.053.i, %if.then10.i.i.i.i.i39.i ], [ %ret.053.i, %if.then.i.i40.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_mcast_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 6, i8 noundef zeroext 2) #10
  tail call void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext 6, i8 noundef zeroext 2) #10
  %mcast.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39
  %0 = ptrtoint ptr %mcast.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcast.i, align 4
  %tobool3.not32.i = icmp eq ptr %1, null
  br i1 %tobool3.not32.i, label %entry.batadv_mcast_mla_tt_retract.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.batadv_mcast_mla_tt_retract.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_tt_retract.exit

land.rhs.i:                                       ; preds = %hlist_del.exit.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %mcast_entry.033.i = phi ptr [ %3, %hlist_del.exit.i.land.rhs.i_crit_edge ], [ %1, %entry.land.rhs.i_crit_edge ]
  %2 = ptrtoint ptr %mcast_entry.033.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcast_entry.033.i, align 4
  %addr7.i = getelementptr inbounds %struct.batadv_hw_addr, ptr %mcast_entry.033.i, i32 0, i32 1
  %call9.i = tail call zeroext i16 @batadv_tt_local_remove(ptr noundef %bat_priv, ptr noundef %addr7.i, i16 noundef zeroext 0, ptr noundef nonnull @.str.38, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %mcast_entry.033.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcast_entry.033.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mcast_entry.033.i, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

land.rhs.i.hlist_del.exit.i_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %land.rhs.i.hlist_del.exit.i_crit_edge
  %10 = ptrtoint ptr %mcast_entry.033.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast_entry.033.i, align 4
  %11 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %mcast_entry.033.i) #10
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %hlist_del.exit.i.batadv_mcast_mla_tt_retract.exit_crit_edge, label %hlist_del.exit.i.land.rhs.i_crit_edge

hlist_del.exit.i.land.rhs.i_crit_edge:            ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

hlist_del.exit.i.batadv_mcast_mla_tt_retract.exit_crit_edge: ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_mcast_mla_tt_retract.exit

batadv_mcast_mla_tt_retract.exit:                 ; preds = %hlist_del.exit.i.batadv_mcast_mla_tt_retract.exit_crit_edge, %entry.batadv_mcast_mla_tt_retract.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_mcast_purge_orig(ptr noundef %orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_priv1 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 25
  %0 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv1, align 4
  %mcast_handler_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %mcast_handler_lock) #10
  tail call fastcc void @batadv_mcast_want_unsnoop_update(ptr noundef %1, ptr noundef %orig, i8 noundef zeroext 0)
  tail call fastcc void @batadv_mcast_want_ipv4_update(ptr noundef %1, ptr noundef %orig, i8 noundef zeroext 0)
  tail call fastcc void @batadv_mcast_want_ipv6_update(ptr noundef %1, ptr noundef %orig, i8 noundef zeroext 0)
  tail call fastcc void @batadv_mcast_want_rtr4_update(ptr noundef %1, ptr noundef %orig, i8 noundef zeroext 8)
  tail call fastcc void @batadv_mcast_want_rtr6_update(ptr noundef %1, ptr noundef %orig, i8 noundef zeroext 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcast_handler_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_mcast_want_unsnoop_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %mcast_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_want_all_unsnoopables_node = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 8
  %want_all_unsnoopables_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1754, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = and i8 %mcast_flags, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool24.not = icmp eq i8 %1, 0
  %mcast_flags72 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 7
  %2 = ptrtoint ptr %mcast_flags72 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcast_flags72, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool75.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %land.lhs.true71.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool75.not, label %if.then29, label %land.lhs.true.if.end116_crit_edge

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then29:                                        ; preds = %land.lhs.true
  %num_want_all_unsnoopables = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_unsnoopables, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_unsnoopables, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_unsnoopables, ptr %num_want_all_unsnoopables, i32 1, ptr elementtype(i32) %num_want_all_unsnoopables) #10, !srcloc !117
  %want_lists_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock) #10
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %if.then29.if.end58_crit_edge, label %do.end52, !prof !108

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end52:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1763, i32 noundef 9, ptr noundef null) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.then29.if.end58_crit_edge
  %8 = ptrtoint ptr %want_all_unsnoopables_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %want_all_unsnoopables_list, align 4
  %10 = ptrtoint ptr %mcast_want_all_unsnoopables_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mcast_want_all_unsnoopables_node, align 4
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %want_all_unsnoopables_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %12 = ptrtoint ptr %want_all_unsnoopables_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mcast_want_all_unsnoopables_node, ptr %want_all_unsnoopables_list, align 4
  %tobool.not.i135 = icmp eq ptr %9, null
  br i1 %tobool.not.i135, label %if.end58.if.end116.sink.split_crit_edge, label %do.body49.i

if.end58.if.end116.sink.split_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

do.body49.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mcast_want_all_unsnoopables_node, ptr %pprev51.i, align 4
  br label %if.end116.sink.split

land.lhs.true71.critedge:                         ; preds = %if.end
  br i1 %tobool75.not, label %land.lhs.true71.critedge.if.end116_crit_edge, label %if.then76

land.lhs.true71.critedge.if.end116_crit_edge:     ; preds = %land.lhs.true71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then76:                                        ; preds = %land.lhs.true71.critedge
  %num_want_all_unsnoopables78 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 8
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_unsnoopables78, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_unsnoopables78, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_unsnoopables78, ptr %num_want_all_unsnoopables78, i32 1, ptr elementtype(i32) %num_want_all_unsnoopables78) #10, !srcloc !119
  %want_lists_lock80 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock80) #10
  %pprev.i136 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i137.not = icmp eq ptr %16, null
  br i1 %tobool.not.i137.not, label %if.end105, label %if.then76.if.then.i_crit_edge, !prof !105

if.then76.if.then.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105:                                        ; preds = %if.then76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1774, i32 noundef 9, ptr noundef null) #10
  %17 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i, label %if.end105.if.end116.sink.split_crit_edge, label %if.end105.if.then.i_crit_edge

if.end105.if.then.i_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105.if.end116.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

if.then.i:                                        ; preds = %if.end105.if.then.i_crit_edge, %if.then76.if.then.i_crit_edge
  %18 = phi ptr [ %.pr, %if.end105.if.then.i_crit_edge ], [ %16, %if.then76.if.then.i_crit_edge ]
  %19 = ptrtoint ptr %mcast_want_all_unsnoopables_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcast_want_all_unsnoopables_node, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %18, align 4
  %tobool.not.i7.i = icmp eq ptr %20, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %23 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %pprev.i136, align 4
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %__hlist_del.exit.i, %if.end105.if.end116.sink.split_crit_edge, %do.body49.i, %if.end58.if.end116.sink.split_crit_edge
  %want_lists_lock80.sink = phi ptr [ %want_lists_lock, %if.end58.if.end116.sink.split_crit_edge ], [ %want_lists_lock, %do.body49.i ], [ %want_lists_lock80, %if.end105.if.end116.sink.split_crit_edge ], [ %want_lists_lock80, %__hlist_del.exit.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %want_lists_lock80.sink) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %land.lhs.true71.critedge.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_mcast_want_ipv4_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %mcast_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_want_all_ipv4_node = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 9
  %want_all_ipv4_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1799, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = and i8 %mcast_flags, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool24.not = icmp eq i8 %1, 0
  %mcast_flags72 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 7
  %2 = ptrtoint ptr %mcast_flags72 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcast_flags72, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool75.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %land.lhs.true71.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool75.not, label %if.then29, label %land.lhs.true.if.end116_crit_edge

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then29:                                        ; preds = %land.lhs.true
  %num_want_all_ipv4 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_ipv4, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_ipv4, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_ipv4, ptr %num_want_all_ipv4, i32 1, ptr elementtype(i32) %num_want_all_ipv4) #10, !srcloc !117
  %want_lists_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock) #10
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %if.then29.if.end58_crit_edge, label %do.end52, !prof !108

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end52:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1808, i32 noundef 9, ptr noundef null) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.then29.if.end58_crit_edge
  %8 = ptrtoint ptr %want_all_ipv4_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %want_all_ipv4_list, align 4
  %10 = ptrtoint ptr %mcast_want_all_ipv4_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mcast_want_all_ipv4_node, align 4
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %want_all_ipv4_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %12 = ptrtoint ptr %want_all_ipv4_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mcast_want_all_ipv4_node, ptr %want_all_ipv4_list, align 4
  %tobool.not.i135 = icmp eq ptr %9, null
  br i1 %tobool.not.i135, label %if.end58.if.end116.sink.split_crit_edge, label %do.body49.i

if.end58.if.end116.sink.split_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

do.body49.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mcast_want_all_ipv4_node, ptr %pprev51.i, align 4
  br label %if.end116.sink.split

land.lhs.true71.critedge:                         ; preds = %if.end
  br i1 %tobool75.not, label %land.lhs.true71.critedge.if.end116_crit_edge, label %if.then76

land.lhs.true71.critedge.if.end116_crit_edge:     ; preds = %land.lhs.true71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then76:                                        ; preds = %land.lhs.true71.critedge
  %num_want_all_ipv478 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 9
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_ipv478, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_ipv478, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_ipv478, ptr %num_want_all_ipv478, i32 1, ptr elementtype(i32) %num_want_all_ipv478) #10, !srcloc !119
  %want_lists_lock80 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock80) #10
  %pprev.i136 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i137.not = icmp eq ptr %16, null
  br i1 %tobool.not.i137.not, label %if.end105, label %if.then76.if.then.i_crit_edge, !prof !105

if.then76.if.then.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105:                                        ; preds = %if.then76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1819, i32 noundef 9, ptr noundef null) #10
  %17 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i, label %if.end105.if.end116.sink.split_crit_edge, label %if.end105.if.then.i_crit_edge

if.end105.if.then.i_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105.if.end116.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

if.then.i:                                        ; preds = %if.end105.if.then.i_crit_edge, %if.then76.if.then.i_crit_edge
  %18 = phi ptr [ %.pr, %if.end105.if.then.i_crit_edge ], [ %16, %if.then76.if.then.i_crit_edge ]
  %19 = ptrtoint ptr %mcast_want_all_ipv4_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcast_want_all_ipv4_node, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %18, align 4
  %tobool.not.i7.i = icmp eq ptr %20, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %23 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %pprev.i136, align 4
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %__hlist_del.exit.i, %if.end105.if.end116.sink.split_crit_edge, %do.body49.i, %if.end58.if.end116.sink.split_crit_edge
  %want_lists_lock80.sink = phi ptr [ %want_lists_lock, %if.end58.if.end116.sink.split_crit_edge ], [ %want_lists_lock, %do.body49.i ], [ %want_lists_lock80, %if.end105.if.end116.sink.split_crit_edge ], [ %want_lists_lock80, %__hlist_del.exit.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %want_lists_lock80.sink) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %land.lhs.true71.critedge.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_mcast_want_ipv6_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %mcast_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_want_all_ipv6_node = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 10
  %want_all_ipv6_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1844, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = and i8 %mcast_flags, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool24.not = icmp eq i8 %1, 0
  %mcast_flags72 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 7
  %2 = ptrtoint ptr %mcast_flags72 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcast_flags72, align 4
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool75.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %land.lhs.true71.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool75.not, label %if.then29, label %land.lhs.true.if.end116_crit_edge

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then29:                                        ; preds = %land.lhs.true
  %num_want_all_ipv6 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_ipv6, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_ipv6, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_ipv6, ptr %num_want_all_ipv6, i32 1, ptr elementtype(i32) %num_want_all_ipv6) #10, !srcloc !117
  %want_lists_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock) #10
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %if.then29.if.end58_crit_edge, label %do.end52, !prof !108

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end52:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1853, i32 noundef 9, ptr noundef null) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.then29.if.end58_crit_edge
  %8 = ptrtoint ptr %want_all_ipv6_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %want_all_ipv6_list, align 4
  %10 = ptrtoint ptr %mcast_want_all_ipv6_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mcast_want_all_ipv6_node, align 4
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %want_all_ipv6_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %12 = ptrtoint ptr %want_all_ipv6_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mcast_want_all_ipv6_node, ptr %want_all_ipv6_list, align 4
  %tobool.not.i135 = icmp eq ptr %9, null
  br i1 %tobool.not.i135, label %if.end58.if.end116.sink.split_crit_edge, label %do.body49.i

if.end58.if.end116.sink.split_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

do.body49.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mcast_want_all_ipv6_node, ptr %pprev51.i, align 4
  br label %if.end116.sink.split

land.lhs.true71.critedge:                         ; preds = %if.end
  br i1 %tobool75.not, label %land.lhs.true71.critedge.if.end116_crit_edge, label %if.then76

land.lhs.true71.critedge.if.end116_crit_edge:     ; preds = %land.lhs.true71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then76:                                        ; preds = %land.lhs.true71.critedge
  %num_want_all_ipv678 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 10
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_ipv678, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_ipv678, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_ipv678, ptr %num_want_all_ipv678, i32 1, ptr elementtype(i32) %num_want_all_ipv678) #10, !srcloc !119
  %want_lists_lock80 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock80) #10
  %pprev.i136 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i137.not = icmp eq ptr %16, null
  br i1 %tobool.not.i137.not, label %if.end105, label %if.then76.if.then.i_crit_edge, !prof !105

if.then76.if.then.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105:                                        ; preds = %if.then76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1864, i32 noundef 9, ptr noundef null) #10
  %17 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i, label %if.end105.if.end116.sink.split_crit_edge, label %if.end105.if.then.i_crit_edge

if.end105.if.then.i_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105.if.end116.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

if.then.i:                                        ; preds = %if.end105.if.then.i_crit_edge, %if.then76.if.then.i_crit_edge
  %18 = phi ptr [ %.pr, %if.end105.if.then.i_crit_edge ], [ %16, %if.then76.if.then.i_crit_edge ]
  %19 = ptrtoint ptr %mcast_want_all_ipv6_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcast_want_all_ipv6_node, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %18, align 4
  %tobool.not.i7.i = icmp eq ptr %20, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %23 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %pprev.i136, align 4
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %__hlist_del.exit.i, %if.end105.if.end116.sink.split_crit_edge, %do.body49.i, %if.end58.if.end116.sink.split_crit_edge
  %want_lists_lock80.sink = phi ptr [ %want_lists_lock, %if.end58.if.end116.sink.split_crit_edge ], [ %want_lists_lock, %do.body49.i ], [ %want_lists_lock80, %if.end105.if.end116.sink.split_crit_edge ], [ %want_lists_lock80, %__hlist_del.exit.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %want_lists_lock80.sink) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %land.lhs.true71.critedge.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_mcast_want_rtr4_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %mcast_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_want_all_rtr4_node = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 11
  %want_all_rtr4_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1889, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = and i8 %mcast_flags, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool24.not = icmp eq i8 %1, 0
  %mcast_flags25 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 7
  %2 = ptrtoint ptr %mcast_flags25 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcast_flags25, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool28.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %land.lhs.true, label %land.lhs.true71.critedge

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool28.not, label %land.lhs.true.if.end116_crit_edge, label %if.then29

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then29:                                        ; preds = %land.lhs.true
  %num_want_all_rtr4 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_rtr4, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_rtr4, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_rtr4, ptr %num_want_all_rtr4, i32 1, ptr elementtype(i32) %num_want_all_rtr4) #10, !srcloc !117
  %want_lists_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock) #10
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %if.then29.if.end58_crit_edge, label %do.end52, !prof !108

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end52:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1898, i32 noundef 9, ptr noundef null) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.then29.if.end58_crit_edge
  %8 = ptrtoint ptr %want_all_rtr4_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %want_all_rtr4_list, align 4
  %10 = ptrtoint ptr %mcast_want_all_rtr4_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mcast_want_all_rtr4_node, align 4
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %want_all_rtr4_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %12 = ptrtoint ptr %want_all_rtr4_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mcast_want_all_rtr4_node, ptr %want_all_rtr4_list, align 4
  %tobool.not.i135 = icmp eq ptr %9, null
  br i1 %tobool.not.i135, label %if.end58.if.end116.sink.split_crit_edge, label %do.body49.i

if.end58.if.end116.sink.split_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

do.body49.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mcast_want_all_rtr4_node, ptr %pprev51.i, align 4
  br label %if.end116.sink.split

land.lhs.true71.critedge:                         ; preds = %if.end
  br i1 %tobool28.not, label %if.then76, label %land.lhs.true71.critedge.if.end116_crit_edge

land.lhs.true71.critedge.if.end116_crit_edge:     ; preds = %land.lhs.true71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then76:                                        ; preds = %land.lhs.true71.critedge
  %num_want_all_rtr478 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 11
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_rtr478, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_rtr478, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_rtr478, ptr %num_want_all_rtr478, i32 1, ptr elementtype(i32) %num_want_all_rtr478) #10, !srcloc !119
  %want_lists_lock80 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock80) #10
  %pprev.i136 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i137.not = icmp eq ptr %16, null
  br i1 %tobool.not.i137.not, label %if.end105, label %if.then76.if.then.i_crit_edge, !prof !105

if.then76.if.then.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105:                                        ; preds = %if.then76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1909, i32 noundef 9, ptr noundef null) #10
  %17 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i, label %if.end105.if.end116.sink.split_crit_edge, label %if.end105.if.then.i_crit_edge

if.end105.if.then.i_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105.if.end116.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

if.then.i:                                        ; preds = %if.end105.if.then.i_crit_edge, %if.then76.if.then.i_crit_edge
  %18 = phi ptr [ %.pr, %if.end105.if.then.i_crit_edge ], [ %16, %if.then76.if.then.i_crit_edge ]
  %19 = ptrtoint ptr %mcast_want_all_rtr4_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcast_want_all_rtr4_node, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %18, align 4
  %tobool.not.i7.i = icmp eq ptr %20, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %23 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %pprev.i136, align 4
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %__hlist_del.exit.i, %if.end105.if.end116.sink.split_crit_edge, %do.body49.i, %if.end58.if.end116.sink.split_crit_edge
  %want_lists_lock80.sink = phi ptr [ %want_lists_lock, %if.end58.if.end116.sink.split_crit_edge ], [ %want_lists_lock, %do.body49.i ], [ %want_lists_lock80, %if.end105.if.end116.sink.split_crit_edge ], [ %want_lists_lock80, %__hlist_del.exit.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %want_lists_lock80.sink) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %land.lhs.true71.critedge.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_mcast_want_rtr6_update(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %mcast_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_want_all_rtr6_node = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 12
  %want_all_rtr6_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1934, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = and i8 %mcast_flags, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool24.not = icmp eq i8 %1, 0
  %mcast_flags25 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 7
  %2 = ptrtoint ptr %mcast_flags25 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcast_flags25, align 4
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool28.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %land.lhs.true, label %land.lhs.true71.critedge

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool28.not, label %land.lhs.true.if.end116_crit_edge, label %if.then29

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then29:                                        ; preds = %land.lhs.true
  %num_want_all_rtr6 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_rtr6, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_rtr6, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_rtr6, ptr %num_want_all_rtr6, i32 1, ptr elementtype(i32) %num_want_all_rtr6) #10, !srcloc !117
  %want_lists_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock) #10
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %if.then29.if.end58_crit_edge, label %do.end52, !prof !108

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end52:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1943, i32 noundef 9, ptr noundef null) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.then29.if.end58_crit_edge
  %8 = ptrtoint ptr %want_all_rtr6_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %want_all_rtr6_list, align 4
  %10 = ptrtoint ptr %mcast_want_all_rtr6_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mcast_want_all_rtr6_node, align 4
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %want_all_rtr6_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %12 = ptrtoint ptr %want_all_rtr6_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mcast_want_all_rtr6_node, ptr %want_all_rtr6_list, align 4
  %tobool.not.i135 = icmp eq ptr %9, null
  br i1 %tobool.not.i135, label %if.end58.if.end116.sink.split_crit_edge, label %do.body49.i

if.end58.if.end116.sink.split_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

do.body49.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mcast_want_all_rtr6_node, ptr %pprev51.i, align 4
  br label %if.end116.sink.split

land.lhs.true71.critedge:                         ; preds = %if.end
  br i1 %tobool28.not, label %if.then76, label %land.lhs.true71.critedge.if.end116_crit_edge

land.lhs.true71.critedge.if.end116_crit_edge:     ; preds = %land.lhs.true71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then76:                                        ; preds = %land.lhs.true71.critedge
  %num_want_all_rtr678 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 12
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_rtr678, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %num_want_all_rtr678, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_want_all_rtr678, ptr %num_want_all_rtr678, i32 1, ptr elementtype(i32) %num_want_all_rtr678) #10, !srcloc !119
  %want_lists_lock80 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %want_lists_lock80) #10
  %pprev.i136 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i137.not = icmp eq ptr %16, null
  br i1 %tobool.not.i137.not, label %if.end105, label %if.then76.if.then.i_crit_edge, !prof !105

if.then76.if.then.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105:                                        ; preds = %if.then76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1954, i32 noundef 9, ptr noundef null) #10
  %17 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %pprev.i136, align 4
  %tobool.not.i.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i, label %if.end105.if.end116.sink.split_crit_edge, label %if.end105.if.then.i_crit_edge

if.end105.if.then.i_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end105.if.end116.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.sink.split

if.then.i:                                        ; preds = %if.end105.if.then.i_crit_edge, %if.then76.if.then.i_crit_edge
  %18 = phi ptr [ %.pr, %if.end105.if.then.i_crit_edge ], [ %16, %if.then76.if.then.i_crit_edge ]
  %19 = ptrtoint ptr %mcast_want_all_rtr6_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcast_want_all_rtr6_node, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %18, align 4
  %tobool.not.i7.i = icmp eq ptr %20, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %23 = ptrtoint ptr %pprev.i136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %pprev.i136, align 4
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %__hlist_del.exit.i, %if.end105.if.end116.sink.split_crit_edge, %do.body49.i, %if.end58.if.end116.sink.split_crit_edge
  %want_lists_lock80.sink = phi ptr [ %want_lists_lock, %if.end58.if.end116.sink.split_crit_edge ], [ %want_lists_lock, %do.body49.i ], [ %want_lists_lock80, %if.end105.if.end116.sink.split_crit_edge ], [ %want_lists_lock80, %__hlist_del.exit.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %want_lists_lock80.sink) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %land.lhs.true71.critedge.if.end116_crit_edge, %land.lhs.true.if.end116_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_check_igmp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_mc_check_mld(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_transtable_search(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_tt_global_hash_find(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_global_entry_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_mcast_get_bridge(ptr noundef %soft_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %upper.0 = phi ptr [ %call, %land.rhs.do.body_crit_edge ], [ %soft_iface, %do.body.preheader ]
  %call = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %upper.0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.dev_hold.exit_crit_edge, label %land.rhs

do.body.dev_hold.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

land.rhs:                                         ; preds = %do.body
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 2
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.rhs.do.body_crit_edge, label %do.body1.i

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body1.i:                                       ; preds = %land.rhs
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !114
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !115
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !105

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #10, !srcloc !116
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %do.body.dev_hold.exit_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i7, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %dev_hold.exit
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %20 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i14 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_multicast_has_querier_anywhere(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_multicast_has_querier_adjacent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_multicast_has_router_adjacent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_list_adjacent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_tt_local_add(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_register(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_mcast_querier_log(ptr noundef %bat_priv, ptr noundef %str_proto, ptr nocapture noundef readonly %old_state, ptr nocapture noundef readonly %new_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %old_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = ptrtoint ptr %new_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load1 = load i8, ptr %new_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool3.not = icmp sgt i8 %bf.load1, -1
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true19

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool3.not, label %land.lhs.true.if.else49_crit_edge, label %do.body

land.lhs.true.if.else49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else49

do.body:                                          ; preds = %land.lhs.true
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %2 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface, align 4
  %log_level = getelementptr i8, ptr %3, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %4 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.if.end_crit_edge, label %if.then7

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %call8 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.17, ptr noundef %str_proto) #10
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.body.if.end_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %3, ptr noundef %str_proto) #15
  br label %if.end85

land.lhs.true19:                                  ; preds = %entry
  br i1 %tobool3.not, label %do.body24, label %land.lhs.true19.if.else49_crit_edge

land.lhs.true19.if.else49_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else49

do.body24:                                        ; preds = %land.lhs.true19
  %soft_iface26 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %6 = ptrtoint ptr %soft_iface26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_iface26, align 4
  %log_level31 = getelementptr i8, ptr %7, i32 2360
  %call.i.i177 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level31, i32 noundef 4) #10
  %8 = ptrtoint ptr %log_level31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level31, align 4
  %and33 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body24.if.end37_crit_edge, label %if.then35

do.body24.if.end37_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i181 = getelementptr i8, ptr %7, i32 2304
  %call36 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i181, ptr noundef nonnull @.str.20, ptr noundef %str_proto) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.body24.if.end37_crit_edge
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %7, ptr noundef %str_proto) #15
  br label %if.end85

if.else49:                                        ; preds = %land.lhs.true19.if.else49_crit_edge, %land.lhs.true.if.else49_crit_edge
  %bridged = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 39, i32 6, i32 2
  %10 = ptrtoint ptr %bridged to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load50 = load i8, ptr %bridged, align 2
  %11 = and i8 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool52.not = icmp eq i8 %11, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.else49.if.end85_crit_edge

if.else49.if.end85_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true53:                                  ; preds = %if.else49
  %12 = ptrtoint ptr %new_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load54 = load i8, ptr %new_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load54)
  %tobool56.not = icmp sgt i8 %bf.load54, -1
  br i1 %tobool56.not, label %do.body58, label %land.lhs.true53.if.then89_crit_edge

land.lhs.true53.if.then89_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

do.body58:                                        ; preds = %land.lhs.true53
  %soft_iface60 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %13 = ptrtoint ptr %soft_iface60 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soft_iface60, align 4
  %log_level65 = getelementptr i8, ptr %14, i32 2360
  %call.i.i178 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level65, i32 noundef 4) #10
  %15 = ptrtoint ptr %log_level65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %log_level65, align 4
  %and67 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body58.if.end71_crit_edge, label %if.then69

do.body58.if.end71_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then69:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i182 = getelementptr i8, ptr %14, i32 2304
  %call70 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i182, ptr noundef nonnull @.str.24, ptr noundef %str_proto) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %do.body58.if.end71_crit_edge
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %14, ptr noundef %str_proto) #15
  br label %if.end85

if.end85:                                         ; preds = %if.end71, %if.else49.if.end85_crit_edge, %if.end37, %if.end
  %17 = ptrtoint ptr %new_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load86.pr = load i8, ptr %new_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load86.pr)
  %tobool88.not = icmp sgt i8 %bf.load86.pr, -1
  br i1 %tobool88.not, label %if.end85.if.end146_crit_edge, label %if.end85.if.then89_crit_edge

if.end85.if.then89_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

if.end85.if.end146_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then89:                                        ; preds = %if.end85.if.then89_crit_edge, %land.lhs.true53.if.then89_crit_edge
  %bf.load86185 = phi i8 [ %bf.load86.pr, %if.end85.if.then89_crit_edge ], [ %bf.load54, %land.lhs.true53.if.then89_crit_edge ]
  %18 = ptrtoint ptr %old_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load90 = load i8, ptr %old_state, align 1
  %19 = and i8 %bf.load90, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool93.not = icmp ne i8 %19, 0
  %20 = and i8 %bf.load86185, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool99.not = icmp eq i8 %20, 0
  %or.cond = select i1 %tobool93.not, i1 true, i1 %tobool99.not
  br i1 %or.cond, label %lor.lhs.false, label %if.then89.do.body110_crit_edge

if.then89.do.body110_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body110

lor.lhs.false:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load90)
  %tobool102.not = icmp sgt i8 %bf.load90, -1
  br i1 %tobool102.not, label %land.lhs.true103, label %if.else121

land.lhs.true103:                                 ; preds = %lor.lhs.false
  br i1 %tobool99.not, label %if.else121.thread, label %land.lhs.true103.do.body110_crit_edge

land.lhs.true103.do.body110_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body110

do.body110:                                       ; preds = %land.lhs.true103.do.body110_crit_edge, %if.then89.do.body110_crit_edge
  %log_level112 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i179 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level112, i32 noundef 4) #10
  %21 = ptrtoint ptr %log_level112 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %log_level112, align 4
  %and114 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body110.if.end146_crit_edge, label %do.body110.if.end146.sink.split_crit_edge

do.body110.if.end146.sink.split_crit_edge:        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146.sink.split

do.body110.if.end146_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.else121:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool126.not = icmp eq i8 %19, 0
  %tobool99.not.not = xor i1 %tobool99.not, true
  %brmerge = select i1 %tobool126.not, i1 true, i1 %tobool99.not.not
  br i1 %brmerge, label %if.else121.if.end146_crit_edge, label %if.else121.do.body133_crit_edge

if.else121.do.body133_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body133

if.else121.if.end146_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.else121.thread:                                ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool126.not186 = icmp eq i8 %19, 0
  br i1 %tobool126.not186, label %if.else121.thread.if.end146_crit_edge, label %if.else121.thread.do.body133_crit_edge

if.else121.thread.do.body133_crit_edge:           ; preds = %if.else121.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body133

if.else121.thread.if.end146_crit_edge:            ; preds = %if.else121.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

do.body133:                                       ; preds = %if.else121.thread.do.body133_crit_edge, %if.else121.do.body133_crit_edge
  %log_level135 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i180 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level135, i32 noundef 4) #10
  %23 = ptrtoint ptr %log_level135 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level135, align 4
  %and137 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %do.body133.if.end146_crit_edge, label %do.body133.if.end146.sink.split_crit_edge

do.body133.if.end146.sink.split_crit_edge:        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146.sink.split

do.body133.if.end146_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.end146.sink.split:                             ; preds = %do.body133.if.end146.sink.split_crit_edge, %do.body110.if.end146.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.28, %do.body110.if.end146.sink.split_crit_edge ], [ @.str.29, %do.body133.if.end146.sink.split_crit_edge ]
  %call140 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull %.str.29.sink, ptr noundef %str_proto) #10
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %do.body133.if.end146_crit_edge, %if.else121.thread.if.end146_crit_edge, %if.else121.if.end146_crit_edge, %do.body110.if.end146_crit_edge, %if.end85.if.end146_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_get_ifindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_tt_local_remove(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93}
!llvm.named.register.sp = !{!95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @batadv_mcast_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/batman-adv/multicast.c", i32 2044, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @batadv_mcast_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/batman-adv/multicast.c", i32 1167, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/batman-adv/multicast.c", i32 1194, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/batman-adv/multicast.c", i32 1245, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/batman-adv/multicast.c", i32 1272, i32 2}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/batman-adv/multicast.c", i32 1299, i32 2}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/batman-adv/multicast.c", i32 1463, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/batman-adv/multicast.c", i32 1503, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/batman-adv/multicast.c", i32 1540, i32 2}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/batman-adv/multicast.c", i32 1606, i32 2}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/batman-adv/multicast.c", i32 1643, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/batman-adv/multicast.c", i32 358, i32 13}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/batman-adv/multicast.c", i32 359, i32 13}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/batman-adv/multicast.c", i32 425, i32 14}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/batman-adv/multicast.c", i32 427, i32 14}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/batman-adv/multicast.c", i32 781, i32 3}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/batman-adv/multicast.c", i32 784, i32 3}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/batman-adv/multicast.c", i32 788, i32 38}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/batman-adv/multicast.c", i32 791, i32 38}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/batman-adv/multicast.c", i32 734, i32 3}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @batadv_mcast_querier_log._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @batadv_mcast_querier_log._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/batman-adv/multicast.c", i32 737, i32 3}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @batadv_mcast_querier_log._entry.21, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @batadv_mcast_querier_log._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/batman-adv/multicast.c", i32 741, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @batadv_mcast_querier_log._entry.25, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @batadv_mcast_querier_log._entry_ptr.27, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/batman-adv/multicast.c", i32 748, i32 4}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/batman-adv/multicast.c", i32 752, i32 4}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/batman-adv/multicast.c", i32 811, i32 25}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/batman-adv/multicast.c", i32 815, i32 46}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/batman-adv/multicast.c", i32 815, i32 53}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/batman-adv/multicast.c", i32 816, i32 46}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/batman-adv/multicast.c", i32 818, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/net/netlink.h", i32 991, i32 3}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/batman-adv/multicast.c", i32 667, i32 12}
!95 = !{!"sp"}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2149748055}
!107 = !{i64 576894, i64 576918, i64 576939, i64 576956, i64 576973}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2149748321}
!110 = !{i64 2148291591}
!111 = !{i64 2148206055, i64 2148206087, i64 2148206116, i64 2148206150, i64 2148206181, i64 2148206204}
!112 = !{i64 2150622602}
!113 = !{ptr @batadv_hardif_release, ptr @batadv_tt_global_entry_release}
!114 = !{i64 655387, i64 655448}
!115 = !{i64 658119}
!116 = !{i64 658404}
!117 = !{i64 2148202060, i64 2148202086, i64 2148202115, i64 2148202149, i64 2148202180, i64 2148202203}
!118 = !{i64 2149849666}
!119 = !{i64 2148204525, i64 2148204551, i64 2148204580, i64 2148204614, i64 2148204645, i64 2148204668}
