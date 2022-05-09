; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_xmit.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ip_vs_dest_dst = type { ptr, i32, %union.nf_inet_addr, %struct.callback_head }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.102, i32, %struct.list_head, ptr }
%union.anon.102 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.177 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.215 = type { i8, i8, i16 }
%struct.guehdr = type { %union.anon.214 }
%union.anon.214 = type { i32 }
%struct.anon.185 = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sock_common = type { %union.anon.147, %union.anon.149, %union.anon.150, i16, i8, i8, i32, %union.anon.152, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon.147 = type { i64 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i32 }
%union.anon.152 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.98, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.98 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.101, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.101 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }

@ip_vs_bypass_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: Enter: %s, %s line %i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_bypass_xmit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/ipvs/ip_vs_xmit.c\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_bypass_xmit._entry_ptr = internal global ptr @ip_vs_bypass_xmit._entry, section ".printk_index", align 4
@ip_vs_bypass_xmit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: Leave: %s, %s line %i\0A\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_bypass_xmit._entry_ptr.5 = internal global ptr @ip_vs_bypass_xmit._entry.3, section ".printk_index", align 4
@ip_vs_bypass_xmit._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_bypass_xmit._entry_ptr.7 = internal global ptr @ip_vs_bypass_xmit._entry.6, section ".printk_index", align 4
@ip_vs_bypass_xmit_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_bypass_xmit_v6\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_bypass_xmit_v6._entry_ptr = internal global ptr @ip_vs_bypass_xmit_v6._entry, section ".printk_index", align 4
@ip_vs_bypass_xmit_v6._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_bypass_xmit_v6._entry_ptr.10 = internal global ptr @ip_vs_bypass_xmit_v6._entry.9, section ".printk_index", align 4
@ip_vs_bypass_xmit_v6._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_bypass_xmit_v6._entry_ptr.12 = internal global ptr @ip_vs_bypass_xmit_v6._entry.11, section ".printk_index", align 4
@ip_vs_nat_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_vs_nat_xmit\00", [17 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit._entry_ptr = internal global ptr @ip_vs_nat_xmit._entry, section ".printk_index", align 4
@ip_vs_nat_xmit._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017IPVS: filled cport=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit._entry_ptr.16 = internal global ptr @ip_vs_nat_xmit._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ip_vs_nat_xmit(): stopping DNAT to local address\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ip_vs_nat_xmit(): stopping DNAT to loopback address\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"After DNAT\00", [21 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.13, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit._entry_ptr.21 = internal global ptr @ip_vs_nat_xmit._entry.20, section ".printk_index", align 4
@ip_vs_nat_xmit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.13, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit._entry_ptr.23 = internal global ptr @ip_vs_nat_xmit._entry.22, section ".printk_index", align 4
@ip_vs_nat_xmit_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_nat_xmit_v6\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit_v6._entry_ptr = internal global ptr @ip_vs_nat_xmit_v6._entry, section ".printk_index", align 4
@ip_vs_nat_xmit_v6._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.24, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit_v6._entry_ptr.26 = internal global ptr @ip_vs_nat_xmit_v6._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ip_vs_nat_xmit_v6(): stopping DNAT to local address\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ip_vs_nat_xmit_v6(): stopping DNAT to loopback address\00", [41 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit_v6._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.24, ptr @.str.2, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit_v6._entry_ptr.30 = internal global ptr @ip_vs_nat_xmit_v6._entry.29, section ".printk_index", align 4
@ip_vs_nat_xmit_v6._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.24, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_nat_xmit_v6._entry_ptr.32 = internal global ptr @ip_vs_nat_xmit_v6._entry.31, section ".printk_index", align 4
@ip_vs_tunnel_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_tunnel_xmit\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_tunnel_xmit._entry_ptr = internal global ptr @ip_vs_tunnel_xmit._entry, section ".printk_index", align 4
@ip_vs_tunnel_xmit._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.33, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_tunnel_xmit._entry_ptr.35 = internal global ptr @ip_vs_tunnel_xmit._entry.34, section ".printk_index", align 4
@ip_vs_tunnel_xmit._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.33, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_tunnel_xmit._entry_ptr.37 = internal global ptr @ip_vs_tunnel_xmit._entry.36, section ".printk_index", align 4
@ip_vs_tunnel_xmit_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_tunnel_xmit_v6\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_tunnel_xmit_v6._entry_ptr = internal global ptr @ip_vs_tunnel_xmit_v6._entry, section ".printk_index", align 4
@ip_vs_tunnel_xmit_v6._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.38, ptr @.str.2, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_tunnel_xmit_v6._entry_ptr.40 = internal global ptr @ip_vs_tunnel_xmit_v6._entry.39, section ".printk_index", align 4
@ip_vs_tunnel_xmit_v6._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.38, ptr @.str.2, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_tunnel_xmit_v6._entry_ptr.42 = internal global ptr @ip_vs_tunnel_xmit_v6._entry.41, section ".printk_index", align 4
@ip_vs_dr_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.43, ptr @.str.2, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip_vs_dr_xmit\00", [18 x i8] zeroinitializer }, align 32
@ip_vs_dr_xmit._entry_ptr = internal global ptr @ip_vs_dr_xmit._entry, section ".printk_index", align 4
@ip_vs_dr_xmit._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.43, ptr @.str.2, i32 1458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_dr_xmit._entry_ptr.45 = internal global ptr @ip_vs_dr_xmit._entry.44, section ".printk_index", align 4
@ip_vs_dr_xmit._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.43, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_dr_xmit._entry_ptr.47 = internal global ptr @ip_vs_dr_xmit._entry.46, section ".printk_index", align 4
@ip_vs_dr_xmit_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_vs_dr_xmit_v6\00", [47 x i8] zeroinitializer }, align 32
@ip_vs_dr_xmit_v6._entry_ptr = internal global ptr @ip_vs_dr_xmit_v6._entry, section ".printk_index", align 4
@ip_vs_dr_xmit_v6._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.48, ptr @.str.2, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_dr_xmit_v6._entry_ptr.50 = internal global ptr @ip_vs_dr_xmit_v6._entry.49, section ".printk_index", align 4
@ip_vs_dr_xmit_v6._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.48, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_dr_xmit_v6._entry_ptr.52 = internal global ptr @ip_vs_dr_xmit_v6._entry.51, section ".printk_index", align 4
@ip_vs_icmp_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.53, ptr @.str.2, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_icmp_xmit\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit._entry_ptr = internal global ptr @ip_vs_icmp_xmit._entry, section ".printk_index", align 4
@ip_vs_icmp_xmit._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017IPVS: %s(): stopping DNAT to local address %pI4\0A\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit._entry_ptr.56 = internal global ptr @ip_vs_icmp_xmit._entry.54, section ".printk_index", align 4
@ip_vs_icmp_xmit._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 1569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017IPVS: %s(): stopping DNAT to loopback %pI4\0A\00", [50 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit._entry_ptr.59 = internal global ptr @ip_vs_icmp_xmit._entry.57, section ".printk_index", align 4
@ip_vs_icmp_xmit._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.53, ptr @.str.2, i32 1592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit._entry_ptr.61 = internal global ptr @ip_vs_icmp_xmit._entry.60, section ".printk_index", align 4
@ip_vs_icmp_xmit_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.62, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_icmp_xmit_v6\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit_v6._entry_ptr = internal global ptr @ip_vs_icmp_xmit_v6._entry, section ".printk_index", align 4
@ip_vs_icmp_xmit_v6._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017IPVS: %s(): stopping DNAT to local address %pI6\0A\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit_v6._entry_ptr.65 = internal global ptr @ip_vs_icmp_xmit_v6._entry.63, section ".printk_index", align 4
@ip_vs_icmp_xmit_v6._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017IPVS: %s(): stopping DNAT to loopback %pI6\0A\00", [50 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit_v6._entry_ptr.68 = internal global ptr @ip_vs_icmp_xmit_v6._entry.66, section ".printk_index", align 4
@ip_vs_icmp_xmit_v6._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.62, ptr @.str.2, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_icmp_xmit_v6._entry_ptr.70 = internal global ptr @ip_vs_icmp_xmit_v6._entry.69, section ".printk_index", align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.73 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_hook.__warned.75 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done.77 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt._entry = internal constant %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 342, ptr null, ptr null }, align 1
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: new dst %pI4, src %pI4, refcnt=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ip_vs_get_out_rt\00", [45 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt._entry_ptr = internal global ptr @__ip_vs_get_out_rt._entry, section ".printk_index", align 4
@__ip_vs_get_out_rt._entry.83 = internal constant %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 366, ptr null, ptr null }, align 1
@.str.84 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017IPVS: We are crossing local and non-local addresses daddr=%pI4\0A\00", [62 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt._entry_ptr.85 = internal global ptr @__ip_vs_get_out_rt._entry.83, section ".printk_index", align 4
@__ip_vs_get_out_rt._entry.86 = internal constant %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 400, ptr null, ptr null }, align 1
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017IPVS: %s(): mtu less than 68\0A\00", [32 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt._entry_ptr.88 = internal global ptr @__ip_vs_get_out_rt._entry.86, section ".printk_index", align 4
@__ip_vs_dst_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__ip_vs_dst_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@do_output_route4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: ip_route_output error, dest: %pI4\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_output_route4\00", [47 x i8] zeroinitializer }, align 32
@do_output_route4._entry_ptr = internal global ptr @do_output_route4._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__in6_dev_get_safely.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ensure_mtu_is_adequate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: frag needed for %pI6c\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ensure_mtu_is_adequate\00", [41 x i8] zeroinitializer }, align 32
@ensure_mtu_is_adequate._entry_ptr = internal global ptr @ensure_mtu_is_adequate._entry, section ".printk_index", align 4
@ensure_mtu_is_adequate._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017IPVS: frag needed for %pI4\0A\00", [34 x i8] zeroinitializer }, align 32
@ensure_mtu_is_adequate._entry_ptr.98 = internal global ptr @ensure_mtu_is_adequate._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt_v6._entry = internal constant %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 510, ptr null, ptr null }, align 1
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: new dst %pI6, src %pI6, refcnt=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__ip_vs_get_out_rt_v6\00", [42 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt_v6._entry_ptr = internal global ptr @__ip_vs_get_out_rt_v6._entry, section ".printk_index", align 4
@__ip_vs_get_out_rt_v6._entry.102 = internal constant %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 528, ptr null, ptr null }, align 1
@.str.103 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017IPVS: We are crossing local and non-local addresses daddr=%pI6\0A\00", [62 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt_v6._entry_ptr.104 = internal global ptr @__ip_vs_get_out_rt_v6._entry.102, section ".printk_index", align 4
@__ip_vs_get_out_rt_v6._entry.105 = internal constant %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 564, ptr null, ptr null }, align 1
@.str.106 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017IPVS: %s(): mtu less than %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__ip_vs_get_out_rt_v6._entry_ptr.107 = internal global ptr @__ip_vs_get_out_rt_v6._entry.105, section ".printk_index", align 4
@__ip_vs_route_output_v6._entry = internal constant %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 461, ptr null, ptr null }, align 1
@.str.108 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017IPVS: ip6_route_output error, dest: %pI6\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__ip_vs_route_output_v6\00", [40 x i8] zeroinitializer }, align 32
@__ip_vs_route_output_v6._entry_ptr = internal global ptr @__ip_vs_route_output_v6._entry, section ".printk_index", align 4
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 7, i64 10]
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 709, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 722, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 727, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 738, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 750, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 755, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 771, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 781, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 802, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 812, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 831, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 842, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 847, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 859, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 868, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 890, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 901, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 930, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 934, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1152, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1270, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1277, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1301, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1417, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1424, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1440, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1458, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1463, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1474, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1492, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1497, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1517, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1557, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1567, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1592, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1607, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1645, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1656, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1681, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 229, i32 15 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 695, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 723, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 340, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 365, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 400, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 78, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 145, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 341, i32 10 }
@___asan_gen_.329 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 271, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 229, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 247, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1043, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 508, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 527, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 563, i32 4 }
@___asan_gen_.365 = private constant [35 x i8] c"../net/netfilter/ipvs/ip_vs_xmit.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 461, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 306, i32 9 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__ip_vs_get_out_rt._entry, ptr @__ip_vs_get_out_rt._entry.83, ptr @__ip_vs_get_out_rt._entry.86, ptr @__ip_vs_get_out_rt._entry_ptr, ptr @__ip_vs_get_out_rt._entry_ptr.85, ptr @__ip_vs_get_out_rt._entry_ptr.88, ptr @__ip_vs_get_out_rt_v6._entry, ptr @__ip_vs_get_out_rt_v6._entry.102, ptr @__ip_vs_get_out_rt_v6._entry.105, ptr @__ip_vs_get_out_rt_v6._entry_ptr, ptr @__ip_vs_get_out_rt_v6._entry_ptr.104, ptr @__ip_vs_get_out_rt_v6._entry_ptr.107, ptr @__ip_vs_route_output_v6._entry, ptr @__ip_vs_route_output_v6._entry_ptr, ptr @do_output_route4._entry, ptr @do_output_route4._entry_ptr, ptr @ensure_mtu_is_adequate._entry, ptr @ensure_mtu_is_adequate._entry.96, ptr @ensure_mtu_is_adequate._entry_ptr, ptr @ensure_mtu_is_adequate._entry_ptr.98, ptr @ip_vs_bypass_xmit._entry, ptr @ip_vs_bypass_xmit._entry.3, ptr @ip_vs_bypass_xmit._entry.6, ptr @ip_vs_bypass_xmit._entry_ptr, ptr @ip_vs_bypass_xmit._entry_ptr.5, ptr @ip_vs_bypass_xmit._entry_ptr.7, ptr @ip_vs_bypass_xmit_v6._entry, ptr @ip_vs_bypass_xmit_v6._entry.11, ptr @ip_vs_bypass_xmit_v6._entry.9, ptr @ip_vs_bypass_xmit_v6._entry_ptr, ptr @ip_vs_bypass_xmit_v6._entry_ptr.10, ptr @ip_vs_bypass_xmit_v6._entry_ptr.12, ptr @ip_vs_dr_xmit._entry, ptr @ip_vs_dr_xmit._entry.44, ptr @ip_vs_dr_xmit._entry.46, ptr @ip_vs_dr_xmit._entry_ptr, ptr @ip_vs_dr_xmit._entry_ptr.45, ptr @ip_vs_dr_xmit._entry_ptr.47, ptr @ip_vs_dr_xmit_v6._entry, ptr @ip_vs_dr_xmit_v6._entry.49, ptr @ip_vs_dr_xmit_v6._entry.51, ptr @ip_vs_dr_xmit_v6._entry_ptr, ptr @ip_vs_dr_xmit_v6._entry_ptr.50, ptr @ip_vs_dr_xmit_v6._entry_ptr.52, ptr @ip_vs_icmp_xmit._entry, ptr @ip_vs_icmp_xmit._entry.54, ptr @ip_vs_icmp_xmit._entry.57, ptr @ip_vs_icmp_xmit._entry.60, ptr @ip_vs_icmp_xmit._entry_ptr, ptr @ip_vs_icmp_xmit._entry_ptr.56, ptr @ip_vs_icmp_xmit._entry_ptr.59, ptr @ip_vs_icmp_xmit._entry_ptr.61, ptr @ip_vs_icmp_xmit_v6._entry, ptr @ip_vs_icmp_xmit_v6._entry.63, ptr @ip_vs_icmp_xmit_v6._entry.66, ptr @ip_vs_icmp_xmit_v6._entry.69, ptr @ip_vs_icmp_xmit_v6._entry_ptr, ptr @ip_vs_icmp_xmit_v6._entry_ptr.65, ptr @ip_vs_icmp_xmit_v6._entry_ptr.68, ptr @ip_vs_icmp_xmit_v6._entry_ptr.70, ptr @ip_vs_nat_xmit._entry, ptr @ip_vs_nat_xmit._entry.14, ptr @ip_vs_nat_xmit._entry.20, ptr @ip_vs_nat_xmit._entry.22, ptr @ip_vs_nat_xmit._entry_ptr, ptr @ip_vs_nat_xmit._entry_ptr.16, ptr @ip_vs_nat_xmit._entry_ptr.21, ptr @ip_vs_nat_xmit._entry_ptr.23, ptr @ip_vs_nat_xmit_v6._entry, ptr @ip_vs_nat_xmit_v6._entry.25, ptr @ip_vs_nat_xmit_v6._entry.29, ptr @ip_vs_nat_xmit_v6._entry.31, ptr @ip_vs_nat_xmit_v6._entry_ptr, ptr @ip_vs_nat_xmit_v6._entry_ptr.26, ptr @ip_vs_nat_xmit_v6._entry_ptr.30, ptr @ip_vs_nat_xmit_v6._entry_ptr.32, ptr @ip_vs_tunnel_xmit._entry, ptr @ip_vs_tunnel_xmit._entry.34, ptr @ip_vs_tunnel_xmit._entry.36, ptr @ip_vs_tunnel_xmit._entry_ptr, ptr @ip_vs_tunnel_xmit._entry_ptr.35, ptr @ip_vs_tunnel_xmit._entry_ptr.37, ptr @ip_vs_tunnel_xmit_v6._entry, ptr @ip_vs_tunnel_xmit_v6._entry.39, ptr @ip_vs_tunnel_xmit_v6._entry.41, ptr @ip_vs_tunnel_xmit_v6._entry_ptr, ptr @ip_vs_tunnel_xmit_v6._entry_ptr.40, ptr @ip_vs_tunnel_xmit_v6._entry_ptr.42, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.8, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.33, ptr @.str.38, ptr @.str.43, ptr @.str.48, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.71, ptr @.str.72, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bypass_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bypass_xmit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bypass_xmit._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bypass_xmit_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bypass_xmit_v6._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bypass_xmit_v6._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit_v6._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit_v6._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nat_xmit_v6._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_tunnel_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_tunnel_xmit._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_tunnel_xmit._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_tunnel_xmit_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_tunnel_xmit_v6._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_tunnel_xmit_v6._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dr_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dr_xmit._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dr_xmit._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dr_xmit_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dr_xmit_v6._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dr_xmit_v6._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit_v6._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit_v6._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_icmp_xmit_v6._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_output_route4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ensure_mtu_is_adequate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ensure_mtu_is_adequate._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_null_xmit(ptr nocapture noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readnone %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs_property.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i = or i32 %bf.load.i, 8388608
  store i32 %bf.set.i, ptr %ipvs_property.i, align 2
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.ip_vs_send_or_cont.exit_crit_edge, !prof !226

entry.ip_vs_send_or_cont.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_send_or_cont.exit

if.then.i:                                        ; preds = %entry
  %_nfct.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i.i.i, align 8
  %and1.i.i.i = and i32 %4, -8
  %5 = inttoptr i32 %and1.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.ip_vs_send_or_cont.exit_crit_edge, label %land.lhs.true.i.i.i

if.then.i.ip_vs_send_or_cont.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_send_or_cont.exit

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %5) #10
  br label %nf_conntrack_put.exit.i.i

nf_conntrack_put.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge
  %7 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i.i.i.i = or i32 %bf.load.i.i.i.i, 4096
  store i32 %bf.set.i.i.i.i, ptr %ipvs_property.i, align 2
  %8 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %_nfct.i.i.i.i, align 8
  br label %ip_vs_send_or_cont.exit

ip_vs_send_or_cont.exit:                          ; preds = %nf_conntrack_put.exit.i.i, %if.then.i.ip_vs_send_or_cont.exit_crit_edge, %entry.ip_vs_send_or_cont.exit_crit_edge
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_send_or_cont(i32 noundef %pf, ptr noundef %skb, ptr noundef %cp, i32 noundef %local) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ipvs_property = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %ipvs_property to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %ipvs_property, align 2
  %bf.set = or i32 %bf.load, 8388608
  store i32 %bf.set, ptr %ipvs_property, align 2
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !226

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i = and i32 %4, -8
  %5 = inttoptr i32 %and1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %5) #10
  br label %nf_conntrack_put.exit.i

nf_conntrack_put.exit.i:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge
  %7 = ptrtoint ptr %ipvs_property to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load.i.i.i = load i32, ptr %ipvs_property, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %ipvs_property, align 2
  %8 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %_nfct.i.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %nf_conntrack_put.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool4.not = icmp eq i32 %local, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %9 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool.not.i19 = icmp eq ptr %11, null
  br i1 %tobool.not.i19, label %if.then5.ip_vs_drop_early_demux_sk.exit_crit_edge, label %if.then.i

if.then5.ip_vs_drop_early_demux_sk.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_drop_early_demux_sk.exit

if.then.i:                                        ; preds = %if.then5
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %13(ptr noundef %skb) #10
  %14 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %destructor.i.i, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %ip_vs_drop_early_demux_sk.exit

do.body.i.i:                                      ; preds = %if.then.i
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool3.not.i.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge, label %do.body7.i.i, !prof !226

do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_drop_early_demux_sk.exit

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

ip_vs_drop_early_demux_sk.exit:                   ; preds = %do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge, %if.then.i.i20, %if.then5.ip_vs_drop_early_demux_sk.exit_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %21 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %21)
  %cmp.i = icmp eq i16 %21, 1024
  br i1 %cmp.i, label %if.then.i21, label %ip_vs_drop_early_demux_sk.exit.skb_forward_csum.exit_crit_edge

ip_vs_drop_early_demux_sk.exit.skb_forward_csum.exit_crit_edge: ; preds = %ip_vs_drop_early_demux_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_forward_csum.exit

if.then.i21:                                      ; preds = %ip_vs_drop_early_demux_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %22 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bf.clear4.i, ptr %ip_summed.i, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i21, %ip_vs_drop_early_demux_sk.exit.skb_forward_csum.exit_crit_edge
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 8
  %tobool6.not = icmp eq ptr %24, null
  br i1 %tobool6.not, label %skb_forward_csum.exit.if.end8_crit_edge, label %if.then7

skb_forward_csum.exit.if.end8_crit_edge:          ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %25, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %skb_forward_csum.exit.if.end8_crit_edge
  %conv = trunc i32 %pf to i8
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %27 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipvs, align 4
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %28, i32 0, i32 75
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i22, label %if.end8.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end8.skb_dst.exit_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end8.skb_dst.exit_crit_edge
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 8
  %and25.i = and i32 %35, -2
  %36 = inttoptr i32 %and25.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i23 = tail call fastcc i32 @nf_hook(i8 noundef zeroext %conv, ptr noundef %30, ptr noundef %skb, ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23)
  %cmp.i24 = icmp eq i32 %call.i23, 1
  br i1 %cmp.i24, label %if.then.i25, label %skb_dst.exit.if.end10_crit_edge

skb_dst.exit.if.end10_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i25:                                      ; preds = %skb_dst.exit
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %31, align 8
  %and.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i25.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i25.dst_output.exit.i_crit_edge:          ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i25
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !231

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %if.then.i25.dst_output.exit.i_crit_edge
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %31, align 8
  %and25.i.i.i = and i32 %42, -2
  %43 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = tail call i32 %45(ptr noundef %30, ptr noundef null, ptr noundef %skb) #10
  br label %if.end10

if.end10:                                         ; preds = %dst_output.exit.i, %skb_dst.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ 1, %if.end.if.end10_crit_edge ], [ 2, %skb_dst.exit.if.end10_crit_edge ], [ 2, %dst_output.exit.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_bypass_xmit(ptr noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readonly %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call1 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call1)
  %cmp = icmp sgt i32 %call1, 9
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 709) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %4 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %6 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %af, align 2
  %conv = zext i16 %7 to i32
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daddr, align 4
  %call6 = tail call fastcc i32 @__ip_vs_get_out_rt(ptr noundef %5, i32 noundef %conv, ptr noundef %skb, ptr noundef null, i32 noundef %9, i32 noundef 2, ptr noundef null, ptr noundef %ipvsh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %tx_error, label %if.end10

if.end10:                                         ; preds = %do.end5
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i) #10
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call11 = tail call fastcc i32 @ip_vs_send_or_cont(i32 noundef 2, ptr noundef %skb, ptr noundef %cp, i32 noundef 0)
  %call13 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 9
  br i1 %cmp14, label %if.end10.cleanup.sink.split_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

tx_error:                                         ; preds = %do.end5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call26 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 9
  br i1 %cmp27, label %tx_error.cleanup.sink.split_crit_edge, label %tx_error.cleanup_crit_edge

tx_error.cleanup_crit_edge:                       ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tx_error.cleanup.sink.split_crit_edge:            ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %tx_error.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 722, %if.end10.cleanup.sink.split_crit_edge ], [ 727, %tx_error.cleanup.sink.split_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %tx_error.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  ret i32 2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip_vs_get_out_rt(ptr nocapture noundef readonly %ipvs, i32 noundef %skb_af, ptr noundef %skb, ptr noundef %dest, i32 noundef %daddr, i32 noundef %rt_mode, ptr noundef writeonly %ret_saddr, ptr nocapture noundef readonly %ipvsh) unnamed_addr #0 align 64 {
entry:
  %daddr.addr = alloca i32, align 4
  %saddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %daddr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %daddr, ptr %daddr.addr, align 4
  %net1 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %1 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net1, align 8
  %tobool.not = icmp eq ptr %dest, null
  br i1 %tobool.not, label %if.else32, label %if.then

if.then:                                          ; preds = %entry
  %dest_dst1.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 21
  %3 = ptrtoint ptr %dest_dst1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %dest_dst1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end8.i_crit_edge

if.then.do.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %if.then
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @__ip_vs_dst_check.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__ip_vs_dst_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef nonnull @.str.72) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %if.then.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %4, null
  br i1 %tobool10.not.i, label %do.end8.i.if.else_crit_edge, label %if.end12.i

do.end8.i.if.else_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end12.i:                                       ; preds = %do.end8.i
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %obsolete.i = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %obsolete.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %obsolete.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool13.not.i = icmp eq i16 %8, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.then5_crit_edge, label %land.lhs.true14.i

if.end12.i.if.then5_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true14.i:                                ; preds = %if.end12.i
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %check.i = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check.i, align 4
  %dst_cookie.i = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_cookie.i, align 4
  %call15.i = tail call ptr %12(ptr noundef %6, i32 noundef %14) #10
  %cmp.i = icmp eq ptr %call15.i, null
  br i1 %cmp.i, label %land.lhs.true14.i.if.else_crit_edge, label %land.lhs.true14.i.if.then5_crit_edge

land.lhs.true14.i.if.then5_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true14.i.if.else_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true14.i.if.then5_crit_edge, %if.end12.i.if.then5_crit_edge
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true14.i.if.else_crit_edge, %do.end8.i.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2592, i32 noundef 32) #14
  %dst_lock = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %dst_lock) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__ip_vs_dst_set(ptr noundef nonnull %dest, ptr noundef null, ptr noundef null, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dst_lock) #10
  br label %err_unreach

if.end:                                           ; preds = %if.else
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %dst_saddr = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %call7.i.i, i32 0, i32 2
  %call10 = tail call fastcc ptr @do_output_route4(ptr noundef %2, i32 noundef %19, i32 noundef %rt_mode, ptr noundef %dst_saddr)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__ip_vs_dst_set(ptr noundef nonnull %dest, ptr noundef null, ptr noundef null, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dst_lock) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %err_unreach

if.end14:                                         ; preds = %if.end
  tail call fastcc void @__ip_vs_dst_set(ptr noundef nonnull %dest, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call10, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dst_lock) #10
  %call16 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call16)
  %cmp = icmp sgt i32 %call16, 9
  br i1 %cmp, label %do.end, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %call10, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__refcnt, i32 noundef 4) #10
  %20 = ptrtoint ptr %__refcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %__refcnt, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %addr, ptr noundef %dst_saddr, i32 noundef %21) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end14.if.end27_crit_edge, %if.then5
  %dest_dst.0 = phi ptr [ %4, %if.then5 ], [ %call7.i.i, %do.end ], [ %call7.i.i, %if.end14.if.end27_crit_edge ]
  %rt.0 = phi ptr [ %16, %if.then5 ], [ %call10, %do.end ], [ %call10, %if.end14.if.end27_crit_edge ]
  %tobool28.not = icmp eq ptr %ret_saddr, null
  br i1 %tobool28.not, label %if.end27.if.end40_crit_edge, label %if.then29

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %dst_saddr30 = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %dest_dst.0, i32 0, i32 2
  %22 = ptrtoint ptr %dst_saddr30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_saddr30, align 4
  %24 = ptrtoint ptr %ret_saddr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ret_saddr, align 4
  br label %if.end40

if.else32:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saddr) #10
  %25 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %saddr, align 4
  %and = and i32 %rt_mode, -9
  %call33 = call fastcc ptr @do_output_route4(ptr noundef %2, i32 noundef %daddr, i32 noundef %and, ptr noundef nonnull %saddr)
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.else32
  %tobool37.not = icmp eq ptr %ret_saddr, null
  br i1 %tobool37.not, label %if.end36.cleanup.thread_crit_edge, label %if.then38

if.end36.cleanup.thread_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saddr, align 4
  %28 = ptrtoint ptr %ret_saddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ret_saddr, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then38, %if.end36.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #10
  br label %if.end40

cleanup:                                          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #10
  br label %err_unreach

if.end40:                                         ; preds = %cleanup.thread, %if.then29, %if.end27.if.end40_crit_edge
  %rt.1 = phi ptr [ %rt.0, %if.then29 ], [ %rt.0, %if.end27.if.end40_crit_edge ], [ %call33, %cleanup.thread ]
  %rt_mode.addr.0 = phi i32 [ %rt_mode, %if.then29 ], [ %rt_mode, %if.end27.if.end40_crit_edge ], [ %and, %cleanup.thread ]
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %rt.1, i32 0, i32 2
  %29 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rt_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool42 = icmp slt i32 %30, 0
  %.lobit = lshr i32 %30, 31
  %call44 = tail call fastcc zeroext i1 @crosses_local_route_boundary(i32 noundef %skb_af, ptr noundef %skb, i32 noundef %rt_mode.addr.0, i1 noundef zeroext %tobool42)
  br i1 %call44, label %do.body52, label %if.end64, !prof !231

do.body52:                                        ; preds = %if.end40
  %call53 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body52.err_put_crit_edge, label %do.end58

do.body52.err_put_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull %daddr.addr) #13
  br label %err_put

if.end64:                                         ; preds = %if.end40
  br i1 %tobool42, label %if.then72, label %if.end76, !prof !231

if.then72:                                        ; preds = %if.end64
  br i1 %tobool.not, label %if.then74, label %if.then72.cleanup159_crit_edge

if.then72.cleanup159_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup159

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dst_release(ptr noundef %rt.1) #10
  br label %cleanup159

if.end76:                                         ; preds = %if.end64
  %call77 = tail call fastcc zeroext i1 @decrement_ttl(ptr noundef %ipvs, i32 noundef %skb_af, ptr noundef %skb)
  br i1 %call77, label %if.end79, label %if.end76.err_put_crit_edge

if.end76.err_put_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

if.end79:                                         ; preds = %if.end76
  %and80 = and i32 %rt_mode.addr.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %ops.i232 = getelementptr inbounds %struct.dst_entry, ptr %rt.1, i32 0, i32 1
  %31 = ptrtoint ptr %ops.i232 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i232, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mtu.i, align 4
  %call.i233 = tail call i32 %34(ptr noundef %rt.1) #10
  br i1 %tobool81.not, label %if.end79.if.end146_crit_edge, label %if.else93, !prof !226

if.end79.if.end146_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.else93:                                        ; preds = %if.end79
  %sub = add i32 %call.i233, -20
  br i1 %tobool.not, label %if.else93.if.then157_crit_edge, label %if.end98

if.else93.if.then157_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.end98:                                         ; preds = %if.else93
  %tun_type = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 9
  %35 = ptrtoint ptr %tun_type to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tun_type, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i16 %36, label %if.end98.if.end129_crit_edge [
    i16 1, label %if.then101
    i16 2, label %if.then117
  ]

if.end98.if.end129_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then101:                                       ; preds = %if.end98
  %sub102 = add i32 %call.i233, -32
  %tun_flags = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 11
  %38 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tun_flags, align 8
  %40 = and i16 %39, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool105.not = icmp eq i16 %40, 0
  br i1 %tobool105.not, label %if.then101.if.end129_crit_edge, label %land.lhs.true

if.then101.if.end129_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

land.lhs.true:                                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %41 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %ip_summed, align 8
  %42 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %42)
  %cmp107 = icmp eq i16 %42, 1536
  %sub110 = add i32 %call.i233, -40
  %spec.select = select i1 %cmp107, i32 %sub110, i32 %sub102
  br label %if.end129

if.then117:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %tun_flags118 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 11
  %43 = ptrtoint ptr %tun_flags118 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tun_flags118, align 8
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i237 = icmp eq i16 %45, 0
  %spec.select.i.neg = select i1 %tobool.not.i237, i32 -4, i32 -8
  %sub127 = add i32 %spec.select.i.neg, %sub
  br label %if.end129

if.end129:                                        ; preds = %if.then117, %land.lhs.true, %if.then101.if.end129_crit_edge, %if.end98.if.end129_crit_edge
  %mtu.0 = phi i32 [ %sub102, %if.then101.if.end129_crit_edge ], [ %sub127, %if.then117 ], [ %spec.select, %land.lhs.true ], [ %sub, %if.end98.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %mtu.0)
  %cmp130 = icmp slt i32 %mtu.0, 68
  br i1 %cmp130, label %do.body133, label %if.end145

do.body133:                                       ; preds = %if.end129
  %call134 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.body133.cleanup159_crit_edge, label %do.end139

do.body133.cleanup159_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup159

do.end139:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.82) #13
  br label %cleanup159

if.end145:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @maybe_update_pmtu(ptr noundef %skb, i32 noundef %mtu.0)
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end79.if.end146_crit_edge
  %mtu.1 = phi i32 [ %mtu.0, %if.end145 ], [ %call.i233, %if.end79.if.end146_crit_edge ]
  %call147 = tail call fastcc zeroext i1 @ensure_mtu_is_adequate(ptr noundef %ipvs, i32 noundef %skb_af, i32 noundef %rt_mode.addr.0, ptr noundef %ipvsh, ptr noundef %skb, i32 noundef %mtu.1)
  br i1 %call147, label %if.end149, label %if.end146.err_put_crit_edge

if.end146.err_put_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

if.end149:                                        ; preds = %if.end146
  %46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i238 = icmp eq i32 %48, 0
  br i1 %tobool.not.i238, label %if.end149.skb_dst_drop.exit_crit_edge, label %if.then.i239

if.end149.skb_dst_drop.exit_crit_edge:            ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i239:                                     ; preds = %if.end149
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i239.refdst_drop.exit.i_crit_edge

if.then.i239.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %48, -2
  %49 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %49) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i239.refdst_drop.exit.i_crit_edge
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %46, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end149.skb_dst_drop.exit_crit_edge
  br i1 %tobool.not, label %if.else153, label %if.then151

if.then151:                                       ; preds = %skb_dst_drop.exit
  %call.i240 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.not.i241 = icmp eq i32 %call.i240, 0
  br i1 %tobool.not.i241, label %land.rhs.i, label %if.then151.skb_dst_set_noref.exit_crit_edge

if.then151.skb_dst_set_noref.exit_crit_edge:      ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_set_noref.exit

land.rhs.i:                                       ; preds = %if.then151
  %call1.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.skb_dst_set_noref.exit_crit_edge, !prof !231

land.rhs.i.skb_dst_set_noref.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_set_noref.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1043, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i, %land.rhs.i.skb_dst_set_noref.exit_crit_edge, %if.then151.skb_dst_set_noref.exit_crit_edge
  %tobool23.not.i = icmp eq ptr %rt.1, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool23.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear30.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear30.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %52 = ptrtoint ptr %rt.1 to i32
  %or31.i = or i32 %52, 1
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or31.i, ptr %46, align 8
  br label %cleanup159

if.else153:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i242 = icmp eq ptr %rt.1, null
  %slow_gro.i243 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %54 = ptrtoint ptr %slow_gro.i243 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %bf.load.i244 = load i32, ptr %slow_gro.i243, align 2
  %bf.load.mask.i245 = and i32 %bf.load.i244, 4096
  %bf.shl.i246 = select i1 %tobool.not.i242, i32 %bf.load.mask.i245, i32 4096
  %bf.clear4.i = and i32 %bf.load.i244, -4097
  %bf.set.i247 = or i32 %bf.shl.i246, %bf.clear4.i
  store i32 %bf.set.i247, ptr %slow_gro.i243, align 2
  %55 = ptrtoint ptr %rt.1 to i32
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %46, align 8
  br label %cleanup159

err_put:                                          ; preds = %if.end146.err_put_crit_edge, %if.end76.err_put_crit_edge, %do.end58, %do.body52.err_put_crit_edge
  br i1 %tobool.not, label %err_put.if.then157_crit_edge, label %err_put.cleanup159_crit_edge

err_put.cleanup159_crit_edge:                     ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup159

err_put.if.then157_crit_edge:                     ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.then157:                                       ; preds = %err_put.if.then157_crit_edge, %if.else93.if.then157_crit_edge
  call void @dst_release(ptr noundef %rt.1) #10
  br label %cleanup159

err_unreach:                                      ; preds = %cleanup, %if.then12, %if.then8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %and.i.i248 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i248)
  %tobool.not.i.i249 = icmp eq i32 %and.i.i248, 0
  br i1 %tobool.not.i.i249, label %err_unreach.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

err_unreach.skb_dst.exit.i_crit_edge:             ; preds = %err_unreach
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %err_unreach
  %call.i.i250 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250)
  %tobool1.not.i.i = icmp eq i32 %call.i.i250, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !231

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %err_unreach.skb_dst.exit.i_crit_edge
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %57, align 8
  %and25.i.i = and i32 %61, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i251 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i251, label %skb_dst.exit.i.cleanup159_crit_edge, label %land.lhs.true.i253

skb_dst.exit.i.cleanup159_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup159

land.lhs.true.i253:                               ; preds = %skb_dst.exit.i
  %62 = inttoptr i32 %and25.i.i to ptr
  %ops.i252 = getelementptr inbounds %struct.dst_entry, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ops.i252 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i252, align 4
  %tobool1.not.i = icmp eq ptr %64, null
  br i1 %tobool1.not.i, label %land.lhs.true.i253.cleanup159_crit_edge, label %land.lhs.true2.i

land.lhs.true.i253.cleanup159_crit_edge:          ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup159

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i253
  %link_failure.i = getelementptr inbounds %struct.dst_ops, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %link_failure.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %link_failure.i, align 8
  %tobool4.not.i254 = icmp eq ptr %66, null
  br i1 %tobool4.not.i254, label %land.lhs.true2.i.cleanup159_crit_edge, label %if.then.i255

land.lhs.true2.i.cleanup159_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup159

if.then.i255:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %66(ptr noundef %skb) #10
  br label %cleanup159

cleanup159:                                       ; preds = %if.then.i255, %land.lhs.true2.i.cleanup159_crit_edge, %land.lhs.true.i253.cleanup159_crit_edge, %skb_dst.exit.i.cleanup159_crit_edge, %if.then157, %err_put.cleanup159_crit_edge, %if.else153, %skb_dst_set_noref.exit, %do.end139, %do.body133.cleanup159_crit_edge, %if.then74, %if.then72.cleanup159_crit_edge
  %retval.0 = phi i32 [ %.lobit, %if.then74 ], [ %.lobit, %if.then72.cleanup159_crit_edge ], [ %.lobit, %if.else153 ], [ %.lobit, %skb_dst_set_noref.exit ], [ -1, %if.then157 ], [ -1, %err_put.cleanup159_crit_edge ], [ -1, %skb_dst.exit.i.cleanup159_crit_edge ], [ -1, %land.lhs.true.i253.cleanup159_crit_edge ], [ -1, %land.lhs.true2.i.cleanup159_crit_edge ], [ -1, %if.then.i255 ], [ -1, %do.body133.cleanup159_crit_edge ], [ -1, %do.end139 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_bypass_xmit_v6(ptr noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readonly %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call1 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call1)
  %cmp = icmp sgt i32 %call1, 9
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 738) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %4 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %6 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %af, align 2
  %conv = zext i16 %7 to i32
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call6 = tail call fastcc i32 @__ip_vs_get_out_rt_v6(ptr noundef %5, i32 noundef %conv, ptr noundef %skb, ptr noundef null, ptr noundef %daddr, ptr noundef null, ptr noundef %ipvsh, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %tx_error, label %if.end10

if.end10:                                         ; preds = %do.end5
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %8 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call11 = tail call fastcc i32 @ip_vs_send_or_cont(i32 noundef 10, ptr noundef %skb, ptr noundef %cp, i32 noundef 0)
  %call13 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 9
  br i1 %cmp14, label %if.end10.cleanup.sink.split_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

tx_error:                                         ; preds = %do.end5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call26 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 9
  br i1 %cmp27, label %tx_error.cleanup.sink.split_crit_edge, label %tx_error.cleanup_crit_edge

tx_error.cleanup_crit_edge:                       ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tx_error.cleanup.sink.split_crit_edge:            ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %tx_error.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 750, %if.end10.cleanup.sink.split_crit_edge ], [ 755, %tx_error.cleanup.sink.split_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %tx_error.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip_vs_get_out_rt_v6(ptr nocapture noundef readonly %ipvs, i32 noundef %skb_af, ptr noundef %skb, ptr noundef %dest, ptr noundef %daddr, ptr noundef %ret_saddr, ptr nocapture noundef readonly %ipvsh, i32 noundef %do_xfrm, i32 noundef %rt_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 8
  %tobool.not = icmp eq ptr %dest, null
  br i1 %tobool.not, label %if.else34, label %if.then

if.then:                                          ; preds = %entry
  %dest_dst1.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 21
  %2 = ptrtoint ptr %dest_dst1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dest_dst1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end8.i_crit_edge

if.then.do.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %if.then
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @__ip_vs_dst_check.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__ip_vs_dst_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef nonnull @.str.72) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %if.then.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %3, null
  br i1 %tobool10.not.i, label %do.end8.i.if.else_crit_edge, label %if.end12.i

do.end8.i.if.else_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end12.i:                                       ; preds = %do.end8.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %obsolete.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %obsolete.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %obsolete.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool13.not.i = icmp eq i16 %7, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.then5_crit_edge, label %land.lhs.true14.i

if.end12.i.if.then5_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true14.i:                                ; preds = %if.end12.i
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %check.i = getelementptr inbounds %struct.dst_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %check.i, align 4
  %dst_cookie.i = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_cookie.i, align 4
  %call15.i = tail call ptr %11(ptr noundef %5, i32 noundef %13) #10
  %cmp.i = icmp eq ptr %call15.i, null
  br i1 %cmp.i, label %land.lhs.true14.i.if.else_crit_edge, label %land.lhs.true14.i.if.then5_crit_edge

land.lhs.true14.i.if.then5_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true14.i.if.else_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true14.i.if.then5_crit_edge, %if.end12.i.if.then5_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true14.i.if.else_crit_edge, %do.end8.i.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2592, i32 noundef 32) #14
  %dst_lock = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %dst_lock) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__ip_vs_dst_set(ptr noundef nonnull %dest, ptr noundef null, ptr noundef null, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dst_lock) #10
  br label %err_unreach

if.end:                                           ; preds = %if.else
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 4
  %dst_saddr = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %call7.i.i, i32 0, i32 2
  %call10 = tail call fastcc ptr @__ip_vs_route_output_v6(ptr noundef %1, ptr noundef %addr, ptr noundef %dst_saddr, i32 noundef %do_xfrm, i32 noundef %rt_mode)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__ip_vs_dst_set(ptr noundef nonnull %dest, ptr noundef null, ptr noundef null, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dst_lock) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %err_unreach

if.end14:                                         ; preds = %if.end
  %call15 = tail call fastcc i32 @rt6_get_cookie(ptr noundef nonnull %call10)
  tail call fastcc void @__ip_vs_dst_set(ptr noundef nonnull %dest, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call10, i32 noundef %call15)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dst_lock) #10
  %call18 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call18)
  %cmp = icmp sgt i32 %call18, 9
  br i1 %cmp, label %do.end, label %if.end14.if.end29_crit_edge

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %call10, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__refcnt, i32 noundef 4) #10
  %17 = ptrtoint ptr %__refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %__refcnt, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %addr, ptr noundef %dst_saddr, i32 noundef %18) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end14.if.end29_crit_edge, %if.then5
  %rt.1 = phi ptr [ %15, %if.then5 ], [ %call10, %do.end ], [ %call10, %if.end14.if.end29_crit_edge ]
  %dest_dst.0 = phi ptr [ %3, %if.then5 ], [ %call7.i.i, %do.end ], [ %call7.i.i, %if.end14.if.end29_crit_edge ]
  %tobool30.not = icmp eq ptr %ret_saddr, null
  br i1 %tobool30.not, label %if.end29.if.end39_crit_edge, label %if.then31

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %dst_saddr32 = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %dest_dst.0, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %ret_saddr, ptr %dst_saddr32, i32 16)
  br label %if.end39

if.else34:                                        ; preds = %entry
  %call35 = tail call fastcc ptr @__ip_vs_route_output_v6(ptr noundef %1, ptr noundef %daddr, ptr noundef %ret_saddr, i32 noundef %do_xfrm, i32 noundef %rt_mode)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.else34.err_unreach_crit_edge, label %if.else34.if.end39_crit_edge

if.else34.if.end39_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else34.err_unreach_crit_edge:                  ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unreach

if.end39:                                         ; preds = %if.else34.if.end39_crit_edge, %if.then31, %if.end29.if.end39_crit_edge
  %rt.2 = phi ptr [ %rt.1, %if.then31 ], [ %rt.1, %if.end29.if.end39_crit_edge ], [ %call35, %if.else34.if.end39_crit_edge ]
  %20 = ptrtoint ptr %rt.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rt.2, align 4
  %tobool.not.i241 = icmp eq ptr %21, null
  br i1 %tobool.not.i241, label %if.end39.__ip_vs_is_local_route6.exit_crit_edge, label %land.rhs.i

if.end39.__ip_vs_is_local_route6.exit_crit_edge:  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ip_vs_is_local_route6.exit

land.rhs.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 8
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %phi.cmp = icmp ne i32 %24, 0
  br label %__ip_vs_is_local_route6.exit

__ip_vs_is_local_route6.exit:                     ; preds = %land.rhs.i, %if.end39.__ip_vs_is_local_route6.exit_crit_edge
  %25 = phi i1 [ false, %if.end39.__ip_vs_is_local_route6.exit_crit_edge ], [ %phi.cmp, %land.rhs.i ]
  %call42 = tail call fastcc zeroext i1 @crosses_local_route_boundary(i32 noundef %skb_af, ptr noundef %skb, i32 noundef %rt_mode, i1 noundef zeroext %25)
  br i1 %call42, label %do.body50, label %if.end62, !prof !231

do.body50:                                        ; preds = %__ip_vs_is_local_route6.exit
  %call51 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body50.err_put_crit_edge, label %do.end56

do.body50.err_put_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %daddr) #13
  br label %err_put

if.end62:                                         ; preds = %__ip_vs_is_local_route6.exit
  br i1 %25, label %if.then70, label %if.end75, !prof !231

if.then70:                                        ; preds = %if.end62
  br i1 %tobool.not, label %if.then72, label %if.then70.cleanup162_crit_edge

if.then70.cleanup162_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dst_release(ptr noundef %rt.2) #10
  br label %cleanup162

if.end75:                                         ; preds = %if.end62
  %call76 = tail call fastcc zeroext i1 @decrement_ttl(ptr noundef %ipvs, i32 noundef %skb_af, ptr noundef %skb)
  br i1 %call76, label %if.end78, label %if.end75.err_put_crit_edge

if.end75.err_put_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

if.end78:                                         ; preds = %if.end75
  %and = and i32 %rt_mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  %ops.i242 = getelementptr inbounds %struct.dst_entry, ptr %rt.2, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i242 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i242, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mtu.i, align 4
  %call.i243 = tail call i32 %29(ptr noundef %rt.2) #10
  br i1 %tobool79.not, label %if.end78.if.end144_crit_edge, label %if.else91, !prof !226

if.end78.if.end144_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.else91:                                        ; preds = %if.end78
  %sub = add i32 %call.i243, -40
  br i1 %tobool.not, label %if.else91.if.then155_crit_edge, label %if.end96

if.else91.if.then155_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then155

if.end96:                                         ; preds = %if.else91
  %tun_type = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 9
  %30 = ptrtoint ptr %tun_type to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tun_type, align 4
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %31, label %if.end96.if.end127_crit_edge [
    i16 1, label %if.then99
    i16 2, label %if.then115
  ]

if.end96.if.end127_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then99:                                        ; preds = %if.end96
  %sub100 = add i32 %call.i243, -52
  %tun_flags = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 11
  %33 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tun_flags, align 8
  %35 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool103.not = icmp eq i16 %35, 0
  br i1 %tobool103.not, label %if.then99.if.end127_crit_edge, label %land.lhs.true

if.then99.if.end127_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %36 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %ip_summed, align 8
  %37 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %37)
  %cmp105 = icmp eq i16 %37, 1536
  %sub108 = add i32 %call.i243, -60
  %spec.select = select i1 %cmp105, i32 %sub108, i32 %sub100
  br label %if.end127

if.then115:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %tun_flags116 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 11
  %38 = ptrtoint ptr %tun_flags116 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tun_flags116, align 8
  %40 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not.i248 = icmp eq i16 %40, 0
  %spec.select.i.neg = select i1 %tobool.not.i248, i32 -4, i32 -8
  %sub125 = add i32 %spec.select.i.neg, %sub
  br label %if.end127

if.end127:                                        ; preds = %if.then115, %land.lhs.true, %if.then99.if.end127_crit_edge, %if.end96.if.end127_crit_edge
  %mtu.0 = phi i32 [ %sub100, %if.then99.if.end127_crit_edge ], [ %sub125, %if.then115 ], [ %spec.select, %land.lhs.true ], [ %sub, %if.end96.if.end127_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %mtu.0)
  %cmp128 = icmp slt i32 %mtu.0, 1280
  br i1 %cmp128, label %do.body131, label %if.end143

do.body131:                                       ; preds = %if.end127
  %call132 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.body131.cleanup162_crit_edge, label %do.end137

do.body131.cleanup162_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef 1280) #13
  br label %cleanup162

if.end143:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @maybe_update_pmtu(ptr noundef %skb, i32 noundef %mtu.0)
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end78.if.end144_crit_edge
  %mtu.1 = phi i32 [ %mtu.0, %if.end143 ], [ %call.i243, %if.end78.if.end144_crit_edge ]
  %call145 = tail call fastcc zeroext i1 @ensure_mtu_is_adequate(ptr noundef %ipvs, i32 noundef %skb_af, i32 noundef %rt_mode, ptr noundef %ipvsh, ptr noundef %skb, i32 noundef %mtu.1)
  br i1 %call145, label %if.end147, label %if.end144.err_put_crit_edge

if.end144.err_put_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

if.end147:                                        ; preds = %if.end144
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i249 = icmp eq i32 %43, 0
  br i1 %tobool.not.i249, label %if.end147.skb_dst_drop.exit_crit_edge, label %if.then.i250

if.end147.skb_dst_drop.exit_crit_edge:            ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i250:                                     ; preds = %if.end147
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i250.refdst_drop.exit.i_crit_edge

if.then.i250.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %43, -2
  %44 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %44) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i250.refdst_drop.exit.i_crit_edge
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %41, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end147.skb_dst_drop.exit_crit_edge
  br i1 %tobool.not, label %if.else151, label %if.then149

if.then149:                                       ; preds = %skb_dst_drop.exit
  %call.i251 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool.not.i252 = icmp eq i32 %call.i251, 0
  br i1 %tobool.not.i252, label %land.rhs.i253, label %if.then149.skb_dst_set_noref.exit_crit_edge

if.then149.skb_dst_set_noref.exit_crit_edge:      ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_set_noref.exit

land.rhs.i253:                                    ; preds = %if.then149
  %call1.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i253.skb_dst_set_noref.exit_crit_edge, !prof !231

land.rhs.i253.skb_dst_set_noref.exit_crit_edge:   ; preds = %land.rhs.i253
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_set_noref.exit

do.end.i:                                         ; preds = %land.rhs.i253
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1043, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i, %land.rhs.i253.skb_dst_set_noref.exit_crit_edge, %if.then149.skb_dst_set_noref.exit_crit_edge
  %tobool23.not.i = icmp eq ptr %rt.2, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %46 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool23.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear30.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear30.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %47 = ptrtoint ptr %rt.2 to i32
  %or31.i = or i32 %47, 1
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or31.i, ptr %41, align 8
  br label %cleanup162

if.else151:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i254 = icmp eq ptr %rt.2, null
  %slow_gro.i255 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %49 = ptrtoint ptr %slow_gro.i255 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %bf.load.i256 = load i32, ptr %slow_gro.i255, align 2
  %bf.load.mask.i257 = and i32 %bf.load.i256, 4096
  %bf.shl.i258 = select i1 %tobool.not.i254, i32 %bf.load.mask.i257, i32 4096
  %bf.clear4.i = and i32 %bf.load.i256, -4097
  %bf.set.i259 = or i32 %bf.shl.i258, %bf.clear4.i
  store i32 %bf.set.i259, ptr %slow_gro.i255, align 2
  %50 = ptrtoint ptr %rt.2 to i32
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %41, align 8
  br label %cleanup162

err_put:                                          ; preds = %if.end144.err_put_crit_edge, %if.end75.err_put_crit_edge, %do.end56, %do.body50.err_put_crit_edge
  br i1 %tobool.not, label %err_put.if.then155_crit_edge, label %err_put.cleanup162_crit_edge

err_put.cleanup162_crit_edge:                     ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

err_put.if.then155_crit_edge:                     ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then155

if.then155:                                       ; preds = %err_put.if.then155_crit_edge, %if.else91.if.then155_crit_edge
  tail call void @dst_release(ptr noundef %rt.2) #10
  br label %cleanup162

err_unreach:                                      ; preds = %if.else34.err_unreach_crit_edge, %if.then12, %if.then8
  %52 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %tobool158.not = icmp eq ptr %54, null
  br i1 %tobool158.not, label %if.then159, label %err_unreach.if.end161_crit_edge

err_unreach.if.end161_crit_edge:                  ; preds = %err_unreach
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then159:                                       ; preds = %err_unreach
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %and.i260 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i260)
  %tobool.not.i261 = icmp eq i32 %and.i260, 0
  br i1 %tobool.not.i261, label %if.then159.skb_dst.exit_crit_edge, label %land.lhs.true.i263

if.then159.skb_dst.exit_crit_edge:                ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i263:                               ; preds = %if.then159
  %call.i262 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool1.not.i = icmp eq i32 %call.i262, 0
  br i1 %tobool1.not.i, label %land.rhs.i265, label %land.lhs.true.i263.skb_dst.exit_crit_edge

land.lhs.true.i263.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i263
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i265:                                    ; preds = %land.lhs.true.i263
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i264 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i264, label %do.end.i266, label %land.rhs.i265.skb_dst.exit_crit_edge, !prof !231

land.rhs.i265.skb_dst.exit_crit_edge:             ; preds = %land.rhs.i265
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i266:                                      ; preds = %land.rhs.i265
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i266, %land.rhs.i265.skb_dst.exit_crit_edge, %land.lhs.true.i263.skb_dst.exit_crit_edge, %if.then159.skb_dst.exit_crit_edge
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 8
  %and25.i = and i32 %59, -2
  %60 = inttoptr i32 %and25.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %52, align 8
  br label %if.end161

if.end161:                                        ; preds = %skb_dst.exit, %err_unreach.if.end161_crit_edge
  %64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %and.i.i267 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i267)
  %tobool.not.i.i268 = icmp eq i32 %and.i.i267, 0
  br i1 %tobool.not.i.i268, label %if.end161.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end161.skb_dst.exit.i_crit_edge:               ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end161
  %call.i.i269 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i269)
  %tobool1.not.i.i = icmp eq i32 %call.i.i269, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !231

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end161.skb_dst.exit.i_crit_edge
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 8
  %and25.i.i = and i32 %68, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i270 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i270, label %skb_dst.exit.i.cleanup162_crit_edge, label %land.lhs.true.i273

skb_dst.exit.i.cleanup162_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

land.lhs.true.i273:                               ; preds = %skb_dst.exit.i
  %69 = inttoptr i32 %and25.i.i to ptr
  %ops.i271 = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ops.i271 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i271, align 4
  %tobool1.not.i272 = icmp eq ptr %71, null
  br i1 %tobool1.not.i272, label %land.lhs.true.i273.cleanup162_crit_edge, label %land.lhs.true2.i

land.lhs.true.i273.cleanup162_crit_edge:          ; preds = %land.lhs.true.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i273
  %link_failure.i = getelementptr inbounds %struct.dst_ops, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %link_failure.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %link_failure.i, align 8
  %tobool4.not.i274 = icmp eq ptr %73, null
  br i1 %tobool4.not.i274, label %land.lhs.true2.i.cleanup162_crit_edge, label %if.then.i275

land.lhs.true2.i.cleanup162_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

if.then.i275:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %73(ptr noundef %skb) #10
  br label %cleanup162

cleanup162:                                       ; preds = %if.then.i275, %land.lhs.true2.i.cleanup162_crit_edge, %land.lhs.true.i273.cleanup162_crit_edge, %skb_dst.exit.i.cleanup162_crit_edge, %if.then155, %err_put.cleanup162_crit_edge, %if.else151, %skb_dst_set_noref.exit, %do.end137, %do.body131.cleanup162_crit_edge, %if.then72, %if.then70.cleanup162_crit_edge
  %retval.0 = phi i32 [ 1, %if.then72 ], [ 1, %if.then70.cleanup162_crit_edge ], [ 0, %if.else151 ], [ 0, %skb_dst_set_noref.exit ], [ -1, %if.then155 ], [ -1, %err_put.cleanup162_crit_edge ], [ -1, %skb_dst.exit.i.cleanup162_crit_edge ], [ -1, %land.lhs.true.i273.cleanup162_crit_edge ], [ -1, %land.lhs.true2.i.cleanup162_crit_edge ], [ -1, %if.then.i275 ], [ -1, %do.body131.cleanup162_crit_edge ], [ -1, %do.end137 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_nat_xmit(ptr noundef %skb, ptr noundef %cp, ptr noundef %pp, ptr noundef %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  %_pt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 771) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end4.if.end25_crit_edge, label %if.then7, !prof !226

do.end4.if.end25_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then7:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_pt) #10
  %2 = ptrtoint ptr %_pt to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %_pt, align 2, !annotation !232
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call8 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %4, ptr noundef nonnull %_pt)
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then7
  %5 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call8, align 2
  call void @ip_vs_conn_fill_cport(ptr noundef %cp, i16 noundef zeroext %6) #10
  %call13 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 9
  br i1 %cmp14, label %do.end18, label %if.end11.cleanup.thread_crit_edge

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call8, align 2
  %conv = zext i16 %8 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end18, %if.end11.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_pt) #10
  br label %if.end25

cleanup:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_pt) #10
  br label %tx_error

if.end25:                                         ; preds = %cleanup.thread, %do.end4.if.end25_crit_edge
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.end25.skb_rtable.exit_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.end25
  %call.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !231

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.end25.skb_rtable.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %and25.i.i = and i32 %13, -2
  %14 = inttoptr i32 %and25.i.i to ptr
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i.not = icmp eq i8 %16, 0
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %17 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %19 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %af, align 2
  %conv29 = zext i16 %20 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %21 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %23 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daddr, align 4
  %call30 = call fastcc i32 @__ip_vs_get_out_rt(ptr noundef %18, i32 noundef %conv29, ptr noundef %skb, ptr noundef %22, i32 noundef %24, i32 noundef 7, ptr noundef null, ptr noundef %ipvsh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %skb_rtable.exit.tx_error_crit_edge, label %if.end34

skb_rtable.exit.tx_error_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end34:                                         ; preds = %skb_rtable.exit
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %9, align 8
  %and.i.i188 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i188)
  %tobool.not.i.i189 = icmp eq i32 %and.i.i188, 0
  br i1 %tobool.not.i.i189, label %if.end34.skb_rtable.exit198_crit_edge, label %land.lhs.true.i.i192

if.end34.skb_rtable.exit198_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit198

land.lhs.true.i.i192:                             ; preds = %if.end34
  %call.i.i190 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190)
  %tobool1.not.i.i191 = icmp eq i32 %call.i.i190, 0
  br i1 %tobool1.not.i.i191, label %land.rhs.i.i195, label %land.lhs.true.i.i192.skb_rtable.exit198_crit_edge

land.lhs.true.i.i192.skb_rtable.exit198_crit_edge: ; preds = %land.lhs.true.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit198

land.rhs.i.i195:                                  ; preds = %land.lhs.true.i.i192
  %call2.i.i193 = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i193)
  %tobool3.not.i.i194 = icmp eq i32 %call2.i.i193, 0
  br i1 %tobool3.not.i.i194, label %do.end.i.i196, label %land.rhs.i.i195.skb_rtable.exit198_crit_edge, !prof !231

land.rhs.i.i195.skb_rtable.exit198_crit_edge:     ; preds = %land.rhs.i.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit198

do.end.i.i196:                                    ; preds = %land.rhs.i.i195
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit198

skb_rtable.exit198:                               ; preds = %do.end.i.i196, %land.rhs.i.i195.skb_rtable.exit198_crit_edge, %land.lhs.true.i.i192.skb_rtable.exit198_crit_edge, %if.end34.skb_rtable.exit198_crit_edge
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %9, align 8
  %and25.i.i197 = and i32 %28, -2
  %29 = inttoptr i32 %and25.i.i197 to ptr
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %and37 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool39.not = icmp eq i32 %call30, 0
  %or.cond = select i1 %tobool38.not, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %skb_rtable.exit198.if.end60_crit_edge, label %if.then40

skb_rtable.exit198.if.end60_crit_edge:            ; preds = %skb_rtable.exit198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then40:                                        ; preds = %skb_rtable.exit198
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %32 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %tobool42.not = icmp ult i32 %33, 8
  br i1 %tobool42.not, label %if.then40.if.end60_crit_edge, label %do.body44

if.then40.if.end60_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.body44:                                        ; preds = %if.then40
  %call45 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call45)
  %cmp46 = icmp sgt i32 %call45, 9
  br i1 %cmp46, label %land.lhs.true48, label %do.body44.tx_error_crit_edge

do.body44.tx_error_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

land.lhs.true48:                                  ; preds = %do.body44
  %call49 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.tx_error_crit_edge, label %if.then51

land.lhs.true48.tx_error_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  %debug_packet = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %34 = ptrtoint ptr %debug_packet to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debug_packet, align 4
  %off = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 1
  %36 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %off, align 4
  call void %35(i32 noundef 2, ptr noundef %pp, ptr noundef %skb, i32 noundef %37, ptr noundef nonnull @.str.17) #10
  br label %tx_error

if.end60:                                         ; preds = %if.then40.if.end60_crit_edge, %skb_rtable.exit198.if.end60_crit_edge
  br i1 %tobool39.not, label %if.end60.if.end82_crit_edge, label %land.lhs.true62

if.end60.if.end82_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true62:                                  ; preds = %if.end60
  %38 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daddr, align 4
  %and.i199 = and i32 %39, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i199)
  %cmp.i200 = icmp ne i32 %and.i199, 2130706432
  %brmerge = select i1 %cmp.i200, i1 true, i1 %cmp.i.not
  br i1 %brmerge, label %land.lhs.true62.if.end82_crit_edge, label %do.body69

land.lhs.true62.if.end82_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.body69:                                        ; preds = %land.lhs.true62
  %call70 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp sgt i32 %call70, 0
  br i1 %cmp71, label %land.lhs.true73, label %do.body69.tx_error_crit_edge

do.body69.tx_error_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

land.lhs.true73:                                  ; preds = %do.body69
  %call74 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.tx_error_crit_edge, label %if.then76

land.lhs.true73.tx_error_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  %debug_packet77 = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %40 = ptrtoint ptr %debug_packet77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %debug_packet77, align 4
  %off78 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 1
  %42 = ptrtoint ptr %off78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %off78, align 4
  call void %41(i32 noundef 2, ptr noundef %pp, ptr noundef %skb, i32 noundef %43, ptr noundef nonnull @.str.18) #10
  br label %tx_error

if.end82:                                         ; preds = %land.lhs.true62.if.end82_crit_edge, %if.end60.if.end82_crit_edge
  %call83 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.tx_error_crit_edge

if.end82.tx_error_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end86:                                         ; preds = %if.end82
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %29, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hard_header_len, align 2
  %conv87 = zext i16 %47 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %48 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i201 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i201, label %if.end86.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i203

if.end86.skb_cloned.exit.i_crit_edge:             ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cloned.exit.i

land.rhs.i.i203:                                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %51 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i202 = and i32 %52, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i202)
  %cmp.i.not.i = icmp eq i32 %and.i.i202, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i203, %if.end86.skb_cloned.exit.i_crit_edge
  %53 = phi i1 [ true, %if.end86.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i203 ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %56 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv87)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv87
  %or.cond.i.i = and i1 %53, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end91_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end91_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %58 = call i32 @llvm.usub.sat.i32(i32 %conv87, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %58, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool89.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool89.not, label %skb_cow.exit.if.end91_crit_edge, label %skb_cow.exit.tx_error_crit_edge

skb_cow.exit.tx_error_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

skb_cow.exit.if.end91_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.end91:                                         ; preds = %skb_cow.exit.if.end91_crit_edge, %skb_cloned.exit.i.if.end91_crit_edge
  %dnat_handler = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 13
  %59 = ptrtoint ptr %dnat_handler to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dnat_handler, align 4
  %tobool92.not = icmp eq ptr %60, null
  br i1 %tobool92.not, label %if.end91.if.end98_crit_edge, label %land.lhs.true93

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true93:                                  ; preds = %if.end91
  %call95 = call i32 %60(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %ipvsh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true93.tx_error_crit_edge, label %land.lhs.true93.if.end98_crit_edge

land.lhs.true93.if.end98_crit_edge:               ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true93.tx_error_crit_edge:               ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end98:                                         ; preds = %land.lhs.true93.if.end98_crit_edge, %if.end91.if.end98_crit_edge
  %61 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %daddr, align 4
  %63 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %65 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %66 to i32
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %conv.i.i
  %daddr101 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %daddr101 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %62, ptr %daddr101, align 4
  %68 = load ptr, ptr %head.i.i.i, align 8
  %69 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i206 = zext i16 %69 to i32
  %add.ptr.i.i207 = getelementptr i8, ptr %68, i32 %conv.i.i206
  call void @ip_send_check(ptr noundef %add.ptr.i.i207) #10
  %call104 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call104)
  %cmp105 = icmp sgt i32 %call104, 9
  br i1 %cmp105, label %if.then107, label %if.end98.do.end112_crit_edge

if.end98.do.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end112

if.then107:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %debug_packet108 = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %70 = ptrtoint ptr %debug_packet108 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %debug_packet108, align 4
  %off109 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 1
  %72 = ptrtoint ptr %off109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %off109, align 4
  call void %71(i32 noundef 2, ptr noundef %pp, ptr noundef %skb, i32 noundef %73, ptr noundef nonnull @.str.19) #10
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %if.end98.do.end112_crit_edge
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %74 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call113 = call fastcc i32 @ip_vs_nat_send_or_cont(i32 noundef 2, ptr noundef %skb, ptr noundef %cp, i32 noundef %call30)
  %call115 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call115)
  %cmp116 = icmp sgt i32 %call115, 9
  br i1 %cmp116, label %do.end112.cleanup140.sink.split_crit_edge, label %do.end112.cleanup140_crit_edge

do.end112.cleanup140_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140

do.end112.cleanup140.sink.split_crit_edge:        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140.sink.split

tx_error:                                         ; preds = %land.lhs.true93.tx_error_crit_edge, %skb_cow.exit.tx_error_crit_edge, %if.end82.tx_error_crit_edge, %if.then76, %land.lhs.true73.tx_error_crit_edge, %do.body69.tx_error_crit_edge, %if.then51, %land.lhs.true48.tx_error_crit_edge, %do.body44.tx_error_crit_edge, %skb_rtable.exit.tx_error_crit_edge, %cleanup
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call128 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call128)
  %cmp129 = icmp sgt i32 %call128, 9
  br i1 %cmp129, label %tx_error.cleanup140.sink.split_crit_edge, label %tx_error.cleanup140_crit_edge

tx_error.cleanup140_crit_edge:                    ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140

tx_error.cleanup140.sink.split_crit_edge:         ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140.sink.split

cleanup140.sink.split:                            ; preds = %tx_error.cleanup140.sink.split_crit_edge, %do.end112.cleanup140.sink.split_crit_edge
  %.sink = phi i32 [ 842, %do.end112.cleanup140.sink.split_crit_edge ], [ 847, %tx_error.cleanup140.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call113, %do.end112.cleanup140.sink.split_crit_edge ], [ 2, %tx_error.cleanup140.sink.split_crit_edge ]
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef %.sink) #13
  br label %cleanup140

cleanup140:                                       ; preds = %cleanup140.sink.split, %tx_error.cleanup140_crit_edge, %do.end112.cleanup140_crit_edge
  %retval.0 = phi i32 [ %call113, %do.end112.cleanup140_crit_edge ], [ 2, %tx_error.cleanup140_crit_edge ], [ %retval.0.ph, %cleanup140.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, ptr noundef %buffer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i1 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i1)
  %cmp.i = icmp sgt i32 %sub.i1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !226

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !231
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_conn_fill_cport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_nat_send_or_cont(i32 noundef %pf, ptr noundef %skb, ptr noundef %cp, i32 noundef %local) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ipvs_property = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %ipvs_property to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %ipvs_property, align 2
  %bf.set = or i32 %bf.load, 8388608
  store i32 %bf.set, ptr %ipvs_property, align 2
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !226

if.then:                                          ; preds = %entry
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i = and i32 %4, -8
  %5 = inttoptr i32 %and1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %5) #10
  br label %nf_conntrack_put.exit.i

nf_conntrack_put.exit.i:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge
  %7 = ptrtoint ptr %ipvs_property to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load.i.i.i = load i32, ptr %ipvs_property, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %ipvs_property, align 2
  %8 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %_nfct.i.i.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ip_vs_update_conntrack(ptr noundef %skb, ptr noundef %cp, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %nf_conntrack_put.exit.i, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool4.not = icmp eq i32 %local, 0
  br i1 %tobool4.not, label %if.then13.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport, align 4
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %11 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp.not = icmp eq i16 %10, %12
  br i1 %cmp.not, label %lor.lhs.false7, label %if.end21.critedge38

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp.i = icmp eq i16 %14, 10
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vaddr, align 4
  %17 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daddr, align 4
  br i1 %cmp.i, label %if.then.i, label %ip_vs_addr_equal.exit

if.then.i:                                        ; preds = %lor.lhs.false7
  %xor.i.i = xor i32 %18, %16
  %arrayidx4.i.i = getelementptr %struct.ip_vs_conn, ptr %cp, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ip_vs_conn, ptr %cp, i32 0, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %22, %20
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.ip_vs_conn, ptr %cp, i32 0, i32 6, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.ip_vs_conn, ptr %cp, i32 0, i32 7, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %26, %24
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.ip_vs_conn, ptr %cp, i32 0, i32 6, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.ip_vs_conn, ptr %cp, i32 0, i32 7, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %30, %28
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.if.end21_crit_edge, label %if.then.i.if.end21.critedge_crit_edge

if.then.i.if.end21.critedge_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.critedge

if.then.i.if.end21_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

ip_vs_addr_equal.exit:                            ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp1.i = icmp eq i32 %16, %18
  br i1 %cmp1.i, label %ip_vs_addr_equal.exit.if.end21_crit_edge, label %ip_vs_addr_equal.exit.if.end21.critedge_crit_edge

ip_vs_addr_equal.exit.if.end21.critedge_crit_edge: ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.critedge

ip_vs_addr_equal.exit.if.end21_crit_edge:         ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then13.critedge:                               ; preds = %if.end
  %31 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %tobool.not.i39 = icmp eq ptr %33, null
  br i1 %tobool.not.i39, label %if.then13.critedge.ip_vs_drop_early_demux_sk.exit_crit_edge, label %if.then.i40

if.then13.critedge.ip_vs_drop_early_demux_sk.exit_crit_edge: ; preds = %if.then13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_drop_early_demux_sk.exit

if.then.i40:                                      ; preds = %if.then13.critedge
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %34 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i41

if.then.i.i41:                                    ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %35(ptr noundef %skb) #10
  %36 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %destructor.i.i, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %37, align 4
  br label %ip_vs_drop_early_demux_sk.exit

do.body.i.i:                                      ; preds = %if.then.i40
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool3.not.i.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge, label %do.body7.i.i, !prof !226

do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_drop_early_demux_sk.exit

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

ip_vs_drop_early_demux_sk.exit:                   ; preds = %do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge, %if.then.i.i41, %if.then13.critedge.ip_vs_drop_early_demux_sk.exit_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %42 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %43 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %43)
  %cmp.i43 = icmp eq i16 %43, 1024
  br i1 %cmp.i43, label %if.then.i44, label %ip_vs_drop_early_demux_sk.exit.skb_forward_csum.exit_crit_edge

ip_vs_drop_early_demux_sk.exit.skb_forward_csum.exit_crit_edge: ; preds = %ip_vs_drop_early_demux_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_forward_csum.exit

if.then.i44:                                      ; preds = %ip_vs_drop_early_demux_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %44 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %bf.clear4.i, ptr %ip_summed.i, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i44, %ip_vs_drop_early_demux_sk.exit.skb_forward_csum.exit_crit_edge
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %31, align 8
  %tobool14.not = icmp eq ptr %46, null
  br i1 %tobool14.not, label %skb_forward_csum.exit.if.end16_crit_edge, label %if.then15

skb_forward_csum.exit.if.end16_crit_edge:         ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %47, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %skb_forward_csum.exit.if.end16_crit_edge
  %conv17 = trunc i32 %pf to i8
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %49 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ipvs, align 4
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %50, i32 0, i32 75
  %51 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %and.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i46 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i46, label %if.end16.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end16.skb_dst.exit_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end16.skb_dst.exit_crit_edge
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 8
  %and25.i = and i32 %57, -2
  %58 = inttoptr i32 %and25.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i48 = tail call fastcc i32 @nf_hook(i8 noundef zeroext %conv17, ptr noundef %52, ptr noundef %skb, ptr noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i48)
  %cmp.i49 = icmp eq i32 %call.i48, 1
  br i1 %cmp.i49, label %if.then.i50, label %skb_dst.exit.if.end21_crit_edge

skb_dst.exit.if.end21_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then.i50:                                      ; preds = %skb_dst.exit
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %53, align 8
  %and.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i50.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i50.dst_output.exit.i_crit_edge:          ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i50
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !231

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %if.then.i50.dst_output.exit.i_crit_edge
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %53, align 8
  %and25.i.i.i = and i32 %64, -2
  %65 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = tail call i32 %67(ptr noundef %52, ptr noundef null, ptr noundef %skb) #10
  br label %if.end21

if.end21.critedge:                                ; preds = %ip_vs_addr_equal.exit.if.end21.critedge_crit_edge, %if.then.i.if.end21.critedge_crit_edge
  %68 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %tobool.not.i52 = icmp eq ptr %70, null
  br i1 %tobool.not.i52, label %if.end21.critedge.if.end21_crit_edge, label %if.then.i55

if.end21.critedge.if.end21_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then.i55:                                      ; preds = %if.end21.critedge
  %destructor.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %71 = ptrtoint ptr %destructor.i.i53 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %destructor.i.i53, align 4
  %tobool.not.i.i54 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i54, label %do.body.i.i58, label %if.then.i.i56

if.then.i.i56:                                    ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %72(ptr noundef %skb) #10
  %73 = ptrtoint ptr %destructor.i.i53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %destructor.i.i53, align 4
  %74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %74, align 4
  br label %if.end21

do.body.i.i58:                                    ; preds = %if.then.i55
  %76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %tobool3.not.i.i57 = icmp eq ptr %78, null
  br i1 %tobool3.not.i.i57, label %do.body.i.i58.if.end21_crit_edge, label %do.body7.i.i59, !prof !226

do.body.i.i58.if.end21_crit_edge:                 ; preds = %do.body.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body7.i.i59:                                   ; preds = %do.body.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

if.end21.critedge38:                              ; preds = %lor.lhs.false
  %79 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %tobool.not.i62 = icmp eq ptr %81, null
  br i1 %tobool.not.i62, label %if.end21.critedge38.if.end21_crit_edge, label %if.then.i65

if.end21.critedge38.if.end21_crit_edge:           ; preds = %if.end21.critedge38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then.i65:                                      ; preds = %if.end21.critedge38
  %destructor.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %82 = ptrtoint ptr %destructor.i.i63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %destructor.i.i63, align 4
  %tobool.not.i.i64 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i64, label %do.body.i.i68, label %if.then.i.i66

if.then.i.i66:                                    ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %83(ptr noundef %skb) #10
  %84 = ptrtoint ptr %destructor.i.i63 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %destructor.i.i63, align 4
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %85, align 4
  br label %if.end21

do.body.i.i68:                                    ; preds = %if.then.i65
  %87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool3.not.i.i67 = icmp eq ptr %89, null
  br i1 %tobool3.not.i.i67, label %do.body.i.i68.if.end21_crit_edge, label %do.body7.i.i69, !prof !226

do.body.i.i68.if.end21_crit_edge:                 ; preds = %do.body.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body7.i.i69:                                   ; preds = %do.body.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

if.end21:                                         ; preds = %do.body.i.i68.if.end21_crit_edge, %if.then.i.i66, %if.end21.critedge38.if.end21_crit_edge, %do.body.i.i58.if.end21_crit_edge, %if.then.i.i56, %if.end21.critedge.if.end21_crit_edge, %dst_output.exit.i, %skb_dst.exit.if.end21_crit_edge, %ip_vs_addr_equal.exit.if.end21_crit_edge, %if.then.i.if.end21_crit_edge
  %ret.0 = phi i32 [ 1, %ip_vs_addr_equal.exit.if.end21_crit_edge ], [ 2, %skb_dst.exit.if.end21_crit_edge ], [ 2, %dst_output.exit.i ], [ 1, %if.end21.critedge.if.end21_crit_edge ], [ 1, %if.then.i.i56 ], [ 1, %do.body.i.i58.if.end21_crit_edge ], [ 1, %if.end21.critedge38.if.end21_crit_edge ], [ 1, %if.then.i.i66 ], [ 1, %do.body.i.i68.if.end21_crit_edge ], [ 1, %if.then.i.if.end21_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_nat_xmit_v6(ptr noundef %skb, ptr noundef %cp, ptr noundef %pp, ptr noundef %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  %_pt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 859) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end4.if.end27_crit_edge, label %land.rhs

do.end4.if.end27_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs:                                         ; preds = %do.end4
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 3
  %2 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.then9, label %land.rhs.if.end27_crit_edge, !prof !231

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then9:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_pt) #10
  %4 = ptrtoint ptr %_pt to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %_pt, align 2, !annotation !232
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call10 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %6, ptr noundef nonnull %_pt)
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then9
  %7 = ptrtoint ptr %call10 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call10, align 2
  call void @ip_vs_conn_fill_cport(ptr noundef %cp, i16 noundef zeroext %8) #10
  %call15 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 9
  br i1 %cmp16, label %do.end20, label %if.end13.cleanup.thread_crit_edge

if.end13.cleanup.thread_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call10, align 2
  %conv = zext i16 %10 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end20, %if.end13.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_pt) #10
  br label %if.end27

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_pt) #10
  br label %do.body130

if.end27:                                         ; preds = %cleanup.thread, %land.rhs.if.end27_crit_edge, %do.end4.if.end27_crit_edge
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %11 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %conv28 = zext i16 %14 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %15 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %call29 = call fastcc i32 @__ip_vs_get_out_rt_v6(ptr noundef %12, i32 noundef %conv28, ptr noundef %skb, ptr noundef %16, ptr noundef %daddr, ptr noundef null, ptr noundef %ipvsh, i32 noundef 0, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.do.body130_crit_edge, label %if.end33

if.end27.do.body130_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

if.end33:                                         ; preds = %if.end27
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end33.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end33.skb_dst.exit_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end33
  %call.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end33.skb_dst.exit_crit_edge
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %and25.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i to ptr
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %and36 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool38.not = icmp eq i32 %call29, 0
  %or.cond = select i1 %tobool37.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %skb_dst.exit.if.end59_crit_edge, label %if.then39

skb_dst.exit.if.end59_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then39:                                        ; preds = %skb_dst.exit
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %25 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %tobool41.not = icmp ult i32 %26, 8
  br i1 %tobool41.not, label %if.then39.if.end59_crit_edge, label %do.body43

if.then39.if.end59_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.body43:                                        ; preds = %if.then39
  %call44 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, 9
  br i1 %cmp45, label %land.lhs.true47, label %do.body43.do.body130_crit_edge

do.body43.do.body130_crit_edge:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

land.lhs.true47:                                  ; preds = %do.body43
  %call48 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.body130_crit_edge, label %if.then50

land.lhs.true47.do.body130_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  %debug_packet = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %27 = ptrtoint ptr %debug_packet to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debug_packet, align 4
  %off = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 1
  %29 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %off, align 4
  call void %28(i32 noundef 10, ptr noundef %pp, ptr noundef %skb, i32 noundef %30, ptr noundef nonnull @.str.27) #10
  br label %do.body130

if.end59:                                         ; preds = %if.then39.if.end59_crit_edge, %skb_dst.exit.if.end59_crit_edge
  br i1 %tobool38.not, label %if.end59.if.end86_crit_edge, label %land.lhs.true61

if.end59.if.end86_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true61:                                  ; preds = %if.end59
  %31 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %tobool62.not = icmp eq ptr %33, null
  br i1 %tobool62.not, label %land.lhs.true61.if.end86_crit_edge, label %land.lhs.true63

land.lhs.true61.if.end86_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true63:                                  ; preds = %land.lhs.true61
  %flags64 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags64, align 8
  %and65 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %land.lhs.true63.if.end86_crit_edge

land.lhs.true63.if.end86_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %call.i193 = call i32 @__ipv6_addr_type(ptr noundef %daddr) #10
  %and70 = and i32 %call.i193, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true67.if.end86_crit_edge, label %do.body73

land.lhs.true67.if.end86_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.body73:                                        ; preds = %land.lhs.true67
  %call74 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp sgt i32 %call74, 0
  br i1 %cmp75, label %land.lhs.true77, label %do.body73.do.body130_crit_edge

do.body73.do.body130_crit_edge:                   ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

land.lhs.true77:                                  ; preds = %do.body73
  %call78 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.body130_crit_edge, label %if.then80

land.lhs.true77.do.body130_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  %debug_packet81 = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %36 = ptrtoint ptr %debug_packet81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %debug_packet81, align 4
  %off82 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 1
  %38 = ptrtoint ptr %off82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %off82, align 4
  call void %37(i32 noundef 10, ptr noundef %pp, ptr noundef %skb, i32 noundef %39, ptr noundef nonnull @.str.28) #10
  br label %do.body130

if.end86:                                         ; preds = %land.lhs.true67.if.end86_crit_edge, %land.lhs.true63.if.end86_crit_edge, %land.lhs.true61.if.end86_crit_edge, %if.end59.if.end86_crit_edge
  %call87 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.do.body130_crit_edge

if.end86.do.body130_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

if.end90:                                         ; preds = %if.end86
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %22, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hard_header_len, align 2
  %conv91 = zext i16 %43 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %44 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end90.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end90.skb_cloned.exit.i_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %45 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %47 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %48, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end90.skb_cloned.exit.i_crit_edge
  %49 = phi i1 [ true, %if.end90.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv91)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv91
  %or.cond.i.i = and i1 %49, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end95_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end95_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %54 = call i32 @llvm.usub.sat.i32(i32 %conv91, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %54, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool93.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool93.not, label %skb_cow.exit.if.end95_crit_edge, label %skb_cow.exit.do.body130_crit_edge

skb_cow.exit.do.body130_crit_edge:                ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

skb_cow.exit.if.end95_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.end95:                                         ; preds = %skb_cow.exit.if.end95_crit_edge, %skb_cloned.exit.i.if.end95_crit_edge
  %dnat_handler = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 13
  %55 = ptrtoint ptr %dnat_handler to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dnat_handler, align 4
  %tobool96.not = icmp eq ptr %56, null
  br i1 %tobool96.not, label %if.end95.if.end102_crit_edge, label %land.lhs.true97

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true97:                                  ; preds = %if.end95
  %call99 = call i32 %56(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %ipvsh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true97.do.body130_crit_edge, label %land.lhs.true97.if.end102_crit_edge

land.lhs.true97.if.end102_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true97.do.body130_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body130

if.end102:                                        ; preds = %land.lhs.true97.if.end102_crit_edge, %if.end95.if.end102_crit_edge
  %57 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %59 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %60 to i32
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %conv.i.i
  %daddr104 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %61 = call ptr @memcpy(ptr %daddr104, ptr %daddr, i32 16)
  %call107 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call107)
  %cmp108 = icmp sgt i32 %call107, 9
  br i1 %cmp108, label %if.then110, label %if.end102.do.end115_crit_edge

if.end102.do.end115_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end115

if.then110:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %debug_packet111 = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %62 = ptrtoint ptr %debug_packet111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %debug_packet111, align 4
  %off112 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 1
  %64 = ptrtoint ptr %off112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %off112, align 4
  call void %63(i32 noundef 10, ptr noundef %pp, ptr noundef %skb, i32 noundef %65, ptr noundef nonnull @.str.19) #10
  br label %do.end115

do.end115:                                        ; preds = %if.then110, %if.end102.do.end115_crit_edge
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %66 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call116 = call fastcc i32 @ip_vs_nat_send_or_cont(i32 noundef 10, ptr noundef %skb, ptr noundef %cp, i32 noundef %call29)
  %call118 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call118)
  %cmp119 = icmp sgt i32 %call118, 9
  br i1 %cmp119, label %do.end124, label %do.end115.cleanup143_crit_edge

do.end115.cleanup143_crit_edge:                   ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

do.end124:                                        ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 930) #13
  br label %cleanup143

do.body130:                                       ; preds = %land.lhs.true97.do.body130_crit_edge, %skb_cow.exit.do.body130_crit_edge, %if.end86.do.body130_crit_edge, %if.then80, %land.lhs.true77.do.body130_crit_edge, %do.body73.do.body130_crit_edge, %if.then50, %land.lhs.true47.do.body130_crit_edge, %do.body43.do.body130_crit_edge, %if.end27.do.body130_crit_edge, %cleanup
  %call131 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call131)
  %cmp132 = icmp sgt i32 %call131, 9
  br i1 %cmp132, label %do.end137, label %do.body130.do.end142_crit_edge

do.body130.do.end142_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end142

do.end137:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #12
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 934) #13
  br label %do.end142

do.end142:                                        ; preds = %do.end137, %do.body130.do.end142_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup143

cleanup143:                                       ; preds = %do.end142, %do.end124, %do.end115.cleanup143_crit_edge
  %retval.0 = phi i32 [ 2, %do.end142 ], [ %call116, %do.end124 ], [ %call116, %do.end115.cleanup143_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_tunnel_xmit(ptr noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readonly %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  %saddr = alloca i32, align 4
  %next_protocol = alloca i8, align 1
  %dsfield = alloca i8, align 1
  %ttl = alloca i8, align 1
  %df = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %net2 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saddr) #10
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %saddr, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %next_protocol) #10
  %5 = ptrtoint ptr %next_protocol to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %next_protocol, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dsfield) #10
  %6 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dsfield, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ttl) #10
  %7 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ttl, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %df) #10
  %8 = ptrtoint ptr %df to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %df, align 2
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 1152) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %9 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %af, align 2
  %conv = zext i16 %10 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %11 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr, align 4
  %call7 = call fastcc i32 @__ip_vs_get_out_rt(ptr noundef %1, i32 noundef %conv, ptr noundef %skb, ptr noundef %12, i32 noundef %14, i32 noundef 43, ptr noundef nonnull %saddr, ptr noundef %ipvsh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end6.tx_error_crit_edge, label %if.end11

do.end6.tx_error_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end11:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end11
  %ipvs_property.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i = or i32 %bf.load.i, 8388608
  store i32 %bf.set.i, ptr %ipvs_property.i, align 2
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then12.cleanup183_crit_edge, !prof !226

if.then12.cleanup183_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup183

if.then.i:                                        ; preds = %if.then12
  %_nfct.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %18 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_nfct.i.i.i.i, align 8
  %and1.i.i.i = and i32 %19, -8
  %20 = inttoptr i32 %and1.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup183_crit_edge, label %land.lhs.true.i.i.i

if.then.i.cleanup183_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup183

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %20, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  call void @llvm.prefetch.p0(ptr nonnull %20, i32 1, i32 3, i32 1) #10
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @nf_conntrack_destroy(ptr noundef nonnull %20) #10
  br label %nf_conntrack_put.exit.i.i

nf_conntrack_put.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge
  %22 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i.i.i.i = or i32 %bf.load.i.i.i.i, 4096
  store i32 %bf.set.i.i.i.i, ptr %ipvs_property.i, align 2
  %23 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %_nfct.i.i.i.i, align 8
  br label %cleanup183

if.end14:                                         ; preds = %if.end11
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i279 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i279, label %if.end14.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.end14.skb_rtable.exit_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.end14
  %call.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !231

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.end14.skb_rtable.exit_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %and25.i.i = and i32 %28, -2
  %29 = inttoptr i32 %and25.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hard_header_len, align 2
  %conv16 = zext i16 %33 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 21
  %34 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %needed_headroom, align 8
  %conv17 = zext i16 %35 to i32
  %add = add nuw nsw i32 %conv17, %conv16
  %and = and i32 %add, 131056
  %add19 = add nuw nsw i32 %and, 36
  %36 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dest, align 4
  %tun_type21 = getelementptr inbounds %struct.ip_vs_dest, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %tun_type21 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tun_type21, align 4
  %tun_flags24 = getelementptr inbounds %struct.ip_vs_dest, ptr %37, i32 0, i32 11
  %40 = ptrtoint ptr %tun_flags24 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tun_flags24, align 8
  %conv25 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp26 = icmp eq i16 %39, 1
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %skb_rtable.exit
  %and29 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then28.if.end36_crit_edge, label %land.lhs.true

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %42 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load = load i16, ptr %ip_summed, align 8
  %43 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %43)
  %cmp32 = icmp eq i16 %43, 1536
  %spec.select = select i1 %cmp32, i32 20, i32 12
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true, %if.then28.if.end36_crit_edge
  %gue_optlen.0 = phi i32 [ 12, %if.then28.if.end36_crit_edge ], [ %spec.select, %land.lhs.true ]
  %add39 = add nuw nsw i32 %gue_optlen.0, %add19
  br label %if.end52

if.else:                                          ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp40 = icmp eq i16 %39, 2
  br i1 %cmp40, label %if.then42, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and43 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and43)
  %tobool.not.i281 = icmp eq i16 %and43, 0
  %spec.select.i = select i1 %tobool.not.i281, i32 4, i32 8
  %add50 = add nuw nsw i32 %spec.select.i, %add19
  br label %if.end52

if.end52:                                         ; preds = %if.then42, %if.else.if.end52_crit_edge, %if.end36
  %max_headroom.0 = phi i32 [ %add39, %if.end36 ], [ %add50, %if.then42 ], [ %add19, %if.else.if.end52_crit_edge ]
  %sysctl_pmtu_disc.i = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 50
  %44 = ptrtoint ptr %sysctl_pmtu_disc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sysctl_pmtu_disc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not = icmp eq i32 %45, 0
  %df. = select i1 %tobool54.not, ptr null, ptr %df
  %46 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %af, align 2
  %conv56 = zext i16 %47 to i32
  %call57 = call fastcc ptr @ip_vs_prepare_tunneled_skb(ptr noundef %skb, i32 noundef %conv56, i32 noundef %max_headroom.0, ptr noundef nonnull %next_protocol, ptr noundef null, ptr noundef nonnull %dsfield, ptr noundef nonnull %ttl, ptr noundef %df.)
  %cmp.i = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end52.tx_error_crit_edge, label %if.end60

if.end52.tx_error_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end60:                                         ; preds = %if.end52
  br i1 %cmp26, label %if.then66, label %if.else90

if.then66:                                        ; preds = %if.end60
  %and69 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %48 = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %49 = icmp eq i32 %48, 0
  %gso_type.0 = select i1 %49, i32 1280, i32 2304
  br i1 %tobool70.not, label %if.then66.if.end102_crit_edge, label %land.lhs.true78

if.then66.if.end102_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true78:                                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed79 = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15
  %50 = ptrtoint ptr %ip_summed79 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load80 = load i16, ptr %ip_summed79, align 8
  %51 = and i16 %bf.load80, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %51)
  %cmp85 = icmp eq i16 %51, 1536
  %or88 = or i32 %gso_type.0, 8192
  %spec.select276 = select i1 %cmp85, i32 %or88, i32 %gso_type.0
  br label %if.end102

if.else90:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp91 = icmp eq i16 %39, 2
  br i1 %cmp91, label %if.then93, label %if.else90.if.end102_crit_edge

if.else90.if.end102_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then93:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  %and94 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %spec.select304 = select i1 %tobool95.not, i32 320, i32 384
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %if.else90.if.end102_crit_edge, %land.lhs.true78, %if.then66.if.end102_crit_edge
  %gso_type.1 = phi i32 [ %gso_type.0, %if.then66.if.end102_crit_edge ], [ 256, %if.else90.if.end102_crit_edge ], [ %spec.select276, %land.lhs.true78 ], [ %spec.select304, %if.then93 ]
  %call103 = call i32 @iptunnel_handle_offloads(ptr noundef %call57, i32 noundef %gso_type.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.tx_error_crit_edge

if.end102.tx_error_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end106:                                        ; preds = %if.end102
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15, i32 0, i32 19
  %54 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %transport_header, align 2
  %55 = ptrtoint ptr %next_protocol to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %next_protocol, align 1
  %57 = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15, i32 0, i32 14
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %56, ptr %57, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15, i32 0, i32 3
  %59 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load.i282 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i283 = or i32 %bf.load.i282, 4194304
  store i32 %bf.set.i283, ptr %inner_protocol_type.i, align 2
  br i1 %cmp26, label %if.then109, label %if.else123

if.then109:                                       ; preds = %if.end106
  %call110 = call fastcc i32 @ipvs_gue_encap(ptr noundef %3, ptr noundef %call57, ptr noundef %cp, ptr noundef nonnull %next_protocol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup.thread, label %if.then109.tx_error_crit_edge

if.then109.tx_error_crit_edge:                    ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

cleanup.thread:                                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %60 = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %61 = icmp eq i32 %60, 0
  %62 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %saddr, align 4
  %64 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %daddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 6
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  call void @udp_set_csum(i1 noundef zeroext %61, ptr noundef %call57, i32 noundef %63, i32 noundef %65, i32 noundef %67) #10
  br label %if.end128

if.else123:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp124 = icmp eq i16 %39, 2
  br i1 %cmp124, label %if.then126, label %if.else123.if.end128_crit_edge

if.else123.if.end128_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then126:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ipvs_gre_encap(ptr noundef %call57, ptr noundef %cp, ptr noundef nonnull %next_protocol)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.else123.if.end128_crit_edge, %cleanup.thread
  %call129 = call ptr @skb_push(ptr noundef %call57, i32 noundef 20) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 19
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 18
  %70 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i284 = trunc i32 %sub.ptr.sub.i to i16
  %72 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i284, ptr %network_header, align 4
  %opt = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 3, i32 4
  %73 = call ptr @memset(ptr %opt, i32 0, i32 16)
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 %conv.i.i
  %74 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 69, ptr %add.ptr.i.i, align 4
  %75 = ptrtoint ptr %df to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %df, align 2
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %frag_off, align 2
  %78 = ptrtoint ptr %next_protocol to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %next_protocol, align 1
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %protocol, align 1
  %81 = ptrtoint ptr %dsfield to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dsfield, align 1
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %tos, align 1
  %84 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %daddr, align 4
  %daddr137 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %daddr137 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %daddr137, align 4
  %87 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %saddr, align 4
  %saddr138 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %89 = ptrtoint ptr %saddr138 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %saddr138, align 4
  %90 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ttl, align 1
  %ttl139 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %ttl139 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %ttl139, align 4
  %93 = load ptr, ptr %head.i, align 8
  %94 = load i16, ptr %network_header, align 4
  %conv.i.i.i.i = zext i16 %94 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %93, i32 %conv.i.i.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %95 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %frag_off.i.i, align 2
  %97 = and i16 %96, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool9.not.i.i = icmp eq i16 %97, 0
  br i1 %tobool9.not.i.i, label %if.end128.if.else.i.i_crit_edge, label %land.lhs.true10.i.i

if.end128.if.else.i.i_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true10.i.i:                              ; preds = %if.end128
  %ignore_df.i.i = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15
  %98 = ptrtoint ptr %ignore_df.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i.i = load i16, ptr %ignore_df.i.i, align 8
  %99 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool11.not.i.i = icmp eq i16 %99, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %land.lhs.true10.i.i.if.else.i.i_crit_edge

land.lhs.true10.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %id13.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %100 = ptrtoint ptr %id13.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %id13.i.i, align 4
  br label %ip_select_ident.exit

if.else.i.i:                                      ; preds = %land.lhs.true10.i.i.if.else.i.i_crit_edge, %if.end128.if.else.i.i_crit_edge
  call void @__ip_select_ident(ptr noundef %3, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #10
  br label %ip_select_ident.exit

ip_select_ident.exit:                             ; preds = %if.else.i.i, %if.then12.i.i
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 15
  %101 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %101)
  %bf.load140 = load i16, ptr %ignore_df, align 8
  %bf.set142 = or i16 %bf.load140, 4096
  store i16 %bf.set142, ptr %ignore_df, align 8
  %102 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %bf.load.i286 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i287 = or i32 %bf.load.i286, 8388608
  store i32 %bf.set.i287, ptr %inner_protocol_type.i, align 2
  %flags.i288 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %103 = ptrtoint ptr %flags.i288 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %flags.i288, align 4
  %and.i289 = and i32 %104, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i289)
  %tobool.not.i290 = icmp eq i32 %and.i289, 0
  br i1 %tobool.not.i290, label %ip_select_ident.exit.if.then3.i_crit_edge, label %if.end.i, !prof !226

ip_select_ident.exit.if.then3.i_crit_edge:        ; preds = %ip_select_ident.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end.i:                                         ; preds = %ip_select_ident.exit
  %call.i = call i32 @ip_vs_confirm_conntrack(ptr noundef %call57) #10
  %105 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call.i, label %if.end.i.do.body154_crit_edge [
    i32 1, label %if.end.i.if.then3.i_crit_edge
    i32 0, label %if.then151
  ]

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end.i.do.body154_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body154

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %ip_select_ident.exit.if.then3.i_crit_edge
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 5
  %106 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i.i = and i32 %107, -8
  %108 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.nf_reset_ct.exit.i_crit_edge, label %land.lhs.true.i.i.i295

if.then3.i.nf_reset_ct.exit.i_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit.i

land.lhs.true.i.i.i295:                           ; preds = %if.then3.i
  %call.i.i.i.i.i.i.i.i292 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %108, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  call void @llvm.prefetch.p0(ptr nonnull %108, i32 1, i32 3, i32 1) #10
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %108, ptr nonnull %108, i32 1, ptr nonnull elementtype(i32) %108) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i293 = extractvalue { i32, i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i293)
  %cmp.i.i.i.i.i.i294 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i293, 1
  br i1 %cmp.i.i.i.i.i.i294, label %if.then.i.i.i299, label %if.end5.i.i.i.i.i.i297

if.end5.i.i.i.i.i.i297:                           ; preds = %land.lhs.true.i.i.i295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i293)
  %.not.i.i.i.i.i.i296 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i293, 0
  br i1 %.not.i.i.i.i.i.i296, label %if.end5.i.i.i.i.i.i297.nf_reset_ct.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i298, !prof !226

if.end5.i.i.i.i.i.i297.nf_reset_ct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i297
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit.i

if.then10.i.i.i.i.i.i298:                         ; preds = %if.end5.i.i.i.i.i.i297
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %108, i32 noundef 3) #10
  br label %nf_reset_ct.exit.i

if.then.i.i.i299:                                 ; preds = %land.lhs.true.i.i.i295
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @nf_conntrack_destroy(ptr noundef nonnull %108) #10
  br label %nf_reset_ct.exit.i

nf_reset_ct.exit.i:                               ; preds = %if.then.i.i.i299, %if.then10.i.i.i.i.i.i298, %if.end5.i.i.i.i.i.i297.nf_reset_ct.exit.i_crit_edge, %if.then3.i.nf_reset_ct.exit.i_crit_edge
  %110 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %_nfct.i.i.i, align 8
  %111 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load.i.i300 = load i16, ptr %ignore_df, align 8
  %112 = and i16 %bf.load.i.i300, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %112)
  %cmp.i.i = icmp eq i16 %112, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %nf_reset_ct.exit.i.skb_forward_csum.exit.i_crit_edge

nf_reset_ct.exit.i.skb_forward_csum.exit.i_crit_edge: ; preds = %nf_reset_ct.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_forward_csum.exit.i

if.then.i.i:                                      ; preds = %nf_reset_ct.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear4.i.i = and i16 %bf.load.i.i300, -1537
  %113 = ptrtoint ptr %ignore_df to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %bf.clear4.i.i, ptr %ignore_df, align 8
  br label %skb_forward_csum.exit.i

skb_forward_csum.exit.i:                          ; preds = %if.then.i.i, %nf_reset_ct.exit.i.skb_forward_csum.exit.i_crit_edge
  %114 = getelementptr inbounds %struct.anon, ptr %call57, i32 0, i32 2
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 8
  %tobool4.not.i = icmp eq ptr %116, null
  br i1 %tobool4.not.i, label %skb_forward_csum.exit.i.if.then146_crit_edge, label %if.then5.i

skb_forward_csum.exit.i.if.then146_crit_edge:     ; preds = %skb_forward_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

if.then5.i:                                       ; preds = %skb_forward_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 2
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 0, ptr %117, align 8
  br label %if.then146

if.then146:                                       ; preds = %if.then5.i, %skb_forward_csum.exit.i.if.then146_crit_edge
  %119 = getelementptr inbounds %struct.sk_buff, ptr %call57, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call147 = call i32 @ip_local_out(ptr noundef %3, ptr noundef %121, ptr noundef %call57) #10
  br label %do.body154

if.then151:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %call57, i32 noundef 0) #10
  br label %do.body154

do.body154:                                       ; preds = %if.then151, %if.then146, %if.end.i.do.body154_crit_edge
  %call155 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call155)
  %cmp156 = icmp sgt i32 %call155, 9
  br i1 %cmp156, label %do.end161, label %do.body154.cleanup183_crit_edge

do.body154.cleanup183_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup183

do.end161:                                        ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 1270) #13
  br label %cleanup183

tx_error:                                         ; preds = %if.then109.tx_error_crit_edge, %if.end102.tx_error_crit_edge, %if.end52.tx_error_crit_edge, %do.end6.tx_error_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %do.end6.tx_error_crit_edge ], [ %call57, %if.end52.tx_error_crit_edge ], [ %call57, %if.end102.tx_error_crit_edge ], [ %call57, %if.then109.tx_error_crit_edge ]
  %cmp.i301 = icmp ugt ptr %skb.addr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %tx_error.do.body170_crit_edge, label %if.then168

tx_error.do.body170_crit_edge:                    ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body170

if.then168:                                       ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #10
  br label %do.body170

do.body170:                                       ; preds = %if.then168, %tx_error.do.body170_crit_edge
  %call171 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call171)
  %cmp172 = icmp sgt i32 %call171, 9
  br i1 %cmp172, label %do.end177, label %do.body170.cleanup183_crit_edge

do.body170.cleanup183_crit_edge:                  ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup183

do.end177:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #12
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 1277) #13
  br label %cleanup183

cleanup183:                                       ; preds = %do.end177, %do.body170.cleanup183_crit_edge, %do.end161, %do.body154.cleanup183_crit_edge, %nf_conntrack_put.exit.i.i, %if.then.i.cleanup183_crit_edge, %if.then12.cleanup183_crit_edge
  %retval.0 = phi i32 [ 2, %do.end161 ], [ 2, %do.body154.cleanup183_crit_edge ], [ 2, %do.end177 ], [ 2, %do.body170.cleanup183_crit_edge ], [ 1, %if.then12.cleanup183_crit_edge ], [ 1, %if.then.i.cleanup183_crit_edge ], [ 1, %nf_conntrack_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %df) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ttl) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dsfield) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %next_protocol) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_vs_prepare_tunneled_skb(ptr noundef %skb, i32 noundef %skb_af, i32 noundef %max_headroom, ptr nocapture noundef writeonly %next_protocol, ptr noundef writeonly %payload_len, ptr nocapture noundef writeonly %dsfield, ptr nocapture noundef writeonly %ttl, ptr noundef writeonly %df) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.ip_vs_drop_early_demux_sk.exit_crit_edge, label %if.then.i

entry.ip_vs_drop_early_demux_sk.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_drop_early_demux_sk.exit

if.then.i:                                        ; preds = %entry
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %4(ptr noundef %skb) #10
  %5 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %destructor.i.i, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 4
  br label %ip_vs_drop_early_demux_sk.exit

do.body.i.i:                                      ; preds = %if.then.i
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool3.not.i.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge, label %do.body7.i.i, !prof !226

do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_drop_early_demux_sk.exit

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

ip_vs_drop_early_demux_sk.exit:                   ; preds = %do.body.i.i.ip_vs_drop_early_demux_sk.exit_crit_edge, %if.then.i.i, %entry.ip_vs_drop_early_demux_sk.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %max_headroom)
  %cmp = icmp ult i32 %sub.ptr.sub.i, %max_headroom
  br i1 %cmp, label %ip_vs_drop_early_demux_sk.exit.if.then_crit_edge, label %lor.lhs.false

ip_vs_drop_early_demux_sk.exit.if.then_crit_edge: ; preds = %ip_vs_drop_early_demux_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %ip_vs_drop_early_demux_sk.exit
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %15 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i66 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i66, label %lor.lhs.false.if.end8_crit_edge, label %skb_cloned.exit

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

skb_cloned.exit:                                  ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.end8_crit_edge, label %skb_cloned.exit.if.then_crit_edge

skb_cloned.exit.if.then_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

skb_cloned.exit.if.end8_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %skb_cloned.exit.if.then_crit_edge, %ip_vs_drop_early_demux_sk.exit.if.then_crit_edge
  %call2 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %max_headroom) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %error, label %if.end

if.end:                                           ; preds = %if.then
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_set_owner_w(ptr noundef nonnull %call2, ptr noundef nonnull %22) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %skb_cloned.exit.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %skb.addr.0 = phi ptr [ %call2, %if.end7 ], [ %skb, %skb_cloned.exit.if.end8_crit_edge ], [ %skb, %lor.lhs.false.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %skb_af)
  %cmp9 = icmp eq i32 %skb_af, 10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %27 = ptrtoint ptr %next_protocol to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 41, ptr %next_protocol, align 1
  %tobool12.not = icmp eq ptr %payload_len, null
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then13

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %payload_len14 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %payload_len14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %payload_len14, align 4
  %conv = zext i16 %29 to i32
  %add = add nuw nsw i32 %conv, 40
  %30 = ptrtoint ptr %payload_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %payload_len, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10.if.end15_crit_edge
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %33 = lshr i16 %32, 4
  %conv1.i = trunc i16 %33 to i8
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hop_limit, align 1
  %36 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ttl, align 1
  %tobool17.not = icmp eq ptr %df, null
  br i1 %tobool17.not, label %if.end15.if.end32_crit_edge, label %if.then18

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %df to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %df, align 2
  br label %if.end32

if.else:                                          ; preds = %if.end8
  %tobool21.not = icmp eq ptr %df, null
  br i1 %tobool21.not, label %if.else.if.end25_crit_edge, label %if.then22

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %frag_off, align 2
  %40 = and i16 %39, 16384
  %41 = ptrtoint ptr %df to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %df, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else.if.end25_crit_edge
  %42 = ptrtoint ptr %next_protocol to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %next_protocol, align 1
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i) #10
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tos.i, align 1
  %ttl27 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %ttl27 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ttl27, align 4
  %47 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %ttl, align 1
  %tobool28.not = icmp eq ptr %payload_len, null
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tot_len, align 2
  %conv30 = zext i16 %49 to i32
  %50 = ptrtoint ptr %payload_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv30, ptr %payload_len, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge, %if.then18, %if.end15.if.end32_crit_edge
  %old_dsfield.0 = phi i8 [ %conv1.i, %if.then18 ], [ %conv1.i, %if.end15.if.end32_crit_edge ], [ %44, %if.then29 ], [ %44, %if.end25.if.end32_crit_edge ]
  %51 = and i8 %old_dsfield.0, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp.i.not.i = icmp eq i8 %51, 3
  %spec.select.i = select i1 %cmp.i.not.i, i8 2, i8 %51
  %52 = and i8 %old_dsfield.0, -4
  %or.i = or i8 %spec.select.i, %52
  %53 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or.i, ptr %dsfield, align 1
  br label %cleanup

error:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end32
  %retval.0 = phi ptr [ %skb.addr.0, %if.end32 ], [ inttoptr (i32 -12 to ptr), %error ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipvs_gue_encap(ptr noundef %net, ptr noundef %skb, ptr nocapture noundef readonly %cp, ptr nocapture noundef %next_protocol) unnamed_addr #0 align 64 {
entry:
  %min.addr.i = alloca i32, align 4
  %max.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.addr.i)
  %0 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min.addr.i, align 4
  %1 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max.addr.i, align 4
  call void @inet_get_local_port_range(ptr noundef %net, ptr noundef nonnull %min.addr.i, ptr noundef nonnull %max.addr.i) #10
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %3 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %if.then.i.i, label %entry.skb_get_hash.exit.i_crit_edge

entry.skb_get_hash.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__skb_get_hash(ptr noundef %skb) #10
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %entry.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %5 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge, !prof !231

skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge: ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %udp_flow_src_port.exit

if.else.i:                                        ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = call i32 @udp_flow_hashrnd() #10
  br label %udp_flow_src_port.exit

udp_flow_src_port.exit:                           ; preds = %if.else.i, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge
  %hash.0.i = phi i32 [ %call8.i, %if.else.i ], [ %6, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge ]
  %shl.i = shl i32 %hash.0.i, 16
  %xor.i = xor i32 %shl.i, %hash.0.i
  %conv11.i = zext i32 %xor.i to i64
  %7 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max.addr.i, align 4
  %9 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min.addr.i, align 4
  %sub.i = sub i32 %8, %10
  %conv12.i = sext i32 %sub.i to i64
  %mul.i = mul nsw i64 %conv12.i, %conv11.i
  %shr.i = lshr i64 %mul.i, 32
  %conv131.i = zext i32 %10 to i64
  %add.i = add nuw nsw i64 %shr.i, %conv131.i
  %conv14.i = trunc i64 %add.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.addr.i)
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %11 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dest, align 4
  %tun_flags = getelementptr inbounds %struct.ip_vs_dest, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tun_flags, align 8
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %udp_flow_src_port.exit.if.end_crit_edge, label %land.lhs.true

udp_flow_src_port.exit.if.end_crit_edge:          ; preds = %udp_flow_src_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %udp_flow_src_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %l4_hash.i.i, align 8
  %17 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %17)
  %cmp = icmp eq i16 %17, 1536
  %spec.select = select i1 %cmp, i32 8, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %udp_flow_src_port.exit.if.end_crit_edge
  %optlen.0 = phi i32 [ 0, %udp_flow_src_port.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %need_priv.0.off0 = phi i1 [ false, %udp_flow_src_port.exit.if.end_crit_edge ], [ %cmp, %land.lhs.true ]
  %add3 = or i32 %optlen.0, 4
  %call4 = call ptr @skb_push(ptr noundef %skb, i32 noundef %add3) #10
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data5, align 4
  %20 = trunc i32 %optlen.0 to i8
  %21 = lshr exact i8 %20, 2
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %19, align 4
  %flags = getelementptr inbounds %struct.anon.215, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags, align 2
  %24 = ptrtoint ptr %next_protocol to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %next_protocol, align 1
  %proto_ctype = getelementptr inbounds %struct.anon.215, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %proto_ctype, align 1
  %arrayidx = getelementptr %struct.guehdr, ptr %19, i32 1
  br i1 %need_priv.0.off0, label %if.then16, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then16:                                        ; preds = %if.end
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 8
  %conv.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data5, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i101 = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags, align 2
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx, align 4
  %conv23 = and i32 %sub.i101, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %add3)
  %cmp24 = icmp ult i32 %conv23, %add3
  br i1 %cmp24, label %if.then16.cleanup57_crit_edge, label %if.end27

if.then16.cleanup57_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end27:                                         ; preds = %if.then16
  %add.ptr = getelementptr %struct.guehdr, ptr %19, i32 2
  %sub = sub i32 %sub.i101, %add3
  %conv29 = trunc i32 %sub to i16
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv29, ptr %add.ptr, align 2
  %csum_offset = getelementptr inbounds %struct.anon.185, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %csum_offset, align 2
  %conv34 = add i16 %38, %conv29
  %arrayidx35 = getelementptr i16, ptr %add.ptr, i32 1
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv34, ptr %arrayidx35, align 2
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %40 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.i.not = icmp eq i16 %43, 0
  br i1 %tobool.i.not, label %if.then37, label %if.end27.if.end45_crit_edge

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load39 = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear43 = and i16 %bf.load39, -1541
  store i16 %bf.clear43, ptr %l4_hash.i.i, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.end27.if.end45_crit_edge
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %or46 = or i32 %46, -2147483648
  store i32 %or46, ptr %arrayidx, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %if.end.if.end50_crit_edge
  %call51 = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #10
  %47 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data5, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %49 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i102 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %51 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i102, ptr %transport_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %conv.i.i
  %52 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dest, align 4
  %tun_port = getelementptr inbounds %struct.ip_vs_dest, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %tun_port to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tun_port, align 2
  %dest54 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %dest54 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %dest54, align 2
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv14.i, ptr %add.ptr.i.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  %conv55 = trunc i32 %59 to i16
  %len56 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %len56 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv55, ptr %len56, align 2
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %check, align 2
  %62 = ptrtoint ptr %next_protocol to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 17, ptr %next_protocol, align 1
  br label %cleanup57

cleanup57:                                        ; preds = %if.end50, %if.then16.cleanup57_crit_edge
  %retval.1 = phi i32 [ 0, %if.end50 ], [ -22, %if.then16.cleanup57_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_set_csum(i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipvs_gre_encap(ptr noundef %skb, ptr nocapture noundef readonly %cp, ptr nocapture noundef %next_protocol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %next_protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %next_protocol, align 1
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dest, align 4
  %tun_flags = getelementptr inbounds %struct.ip_vs_dest, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tun_flags, align 8
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  %conv2 = select i1 %cmp, i16 2048, i16 -31011
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 8
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %spec.select.i) #10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %7, align 8
  %inner_protocol_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %9 = ptrtoint ptr %inner_protocol_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load.i.i = load i32, ptr %inner_protocol_type.i.i, align 2
  %bf.clear.i.i = and i32 %bf.load.i.i, -4194305
  store i32 %bf.clear.i.i, ptr %inner_protocol_type.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %rev65.i.i = tail call i16 @llvm.bitreverse.i16(i16 %6) #10
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %rev65.i.i, ptr %11, align 1
  %protocol.i = getelementptr inbounds %struct.gre_base_hdr, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %protocol.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv2, ptr %protocol.i, align 1
  br i1 %tobool.not.i, label %entry.gre_build_header.exit_crit_edge, label %if.then.i

entry.gre_build_header.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gre_build_header.exit

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %11, i32 %spec.select.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gso_type.i, align 8
  %and18.i = and i32 %20, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.then.i.gre_build_header.exit_crit_edge

if.then.i.gre_build_header.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gre_build_header.exit

if.then20.i:                                      ; preds = %if.then.i
  %21 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %add.ptr3.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %23 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %23)
  %cmp.i = icmp eq i16 %23, 1536
  br i1 %cmp.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 8
  %conv.i8.i.i = zext i16 %28 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %conv.i8.i.i
  %29 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_header.i.i, align 2
  %conv.i10.i.i = zext i16 %30 to i32
  %add.ptr.i11.i.i = getelementptr i8, ptr %25, i32 %conv.i10.i.i
  %csum_offset.i.i = getelementptr inbounds %struct.anon.185, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %csum_offset.i.i, align 2
  %conv.i2.i = zext i16 %32 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i2.i
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i.i = zext i16 %34 to i32
  %neg.i.i = xor i32 %conv.i.i.i, -1
  %sub.ptr.lhs.cast.i3.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i4.i = ptrtoint ptr %add.ptr.i11.i.i to i32
  %sub.ptr.sub.i5.i = sub i32 %sub.ptr.lhs.cast.i3.i, %sub.ptr.rhs.cast.i4.i
  %call3.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i11.i.i, i32 noundef %sub.ptr.sub.i5.i, i32 noundef %neg.i.i) #10
  %35 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call3.i.i) #15, !srcloc !233
  %neg.i6.i = xor i32 %35, -1
  %shr.i.i = lshr i32 %neg.i6.i, 16
  %conv.i7.i = trunc i32 %shr.i.i to i16
  %36 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i7.i, ptr %add.ptr3.i, align 2
  br label %gre_build_header.exit

if.else.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = or i16 %bf.load.i, 1536
  %37 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %38 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %transport_header.i.i, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %39, ptr %40, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.185, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 4, ptr %csum_offset.i, align 2
  br label %gre_build_header.exit

gre_build_header.exit:                            ; preds = %if.else.i, %if.then23.i, %if.then.i.gre_build_header.exit_crit_edge, %entry.gre_build_header.exit_crit_edge
  %43 = ptrtoint ptr %next_protocol to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 47, ptr %next_protocol, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_tunnel_xmit_v6(ptr noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readonly %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  %saddr = alloca %struct.in6_addr, align 4
  %next_protocol = alloca i8, align 1
  %payload_len = alloca i32, align 4
  %dsfield = alloca i8, align 1
  %ttl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %net2 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr) #10
  %4 = call ptr @memset(ptr %saddr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %next_protocol) #10
  %5 = ptrtoint ptr %next_protocol to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %next_protocol, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_len) #10
  %6 = ptrtoint ptr %payload_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %payload_len, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dsfield) #10
  %7 = ptrtoint ptr %dsfield to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dsfield, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ttl) #10
  %8 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ttl, align 1
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 1301) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %9 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %af, align 2
  %conv = zext i16 %10 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %11 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %call7 = call fastcc i32 @__ip_vs_get_out_rt_v6(ptr noundef %1, i32 noundef %conv, ptr noundef %skb, ptr noundef %12, ptr noundef %daddr, ptr noundef nonnull %saddr, ptr noundef %ipvsh, i32 noundef 1, i32 noundef 35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end6.tx_error_crit_edge, label %if.end11

do.end6.tx_error_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end11:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end11
  %ipvs_property.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %13 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i = or i32 %bf.load.i, 8388608
  store i32 %bf.set.i, ptr %ipvs_property.i, align 2
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then12.cleanup179_crit_edge, !prof !226

if.then12.cleanup179_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

if.then.i:                                        ; preds = %if.then12
  %_nfct.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %16 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_nfct.i.i.i.i, align 8
  %and1.i.i.i = and i32 %17, -8
  %18 = inttoptr i32 %and1.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup179_crit_edge, label %land.lhs.true.i.i.i

if.then.i.cleanup179_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #10
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @nf_conntrack_destroy(ptr noundef nonnull %18) #10
  br label %nf_conntrack_put.exit.i.i

nf_conntrack_put.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge
  %20 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i.i.i.i = or i32 %bf.load.i.i.i.i, 4096
  store i32 %bf.set.i.i.i.i, ptr %ipvs_property.i, align 2
  %21 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %_nfct.i.i.i.i, align 8
  br label %cleanup179

if.end14:                                         ; preds = %if.end11
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %and.i271 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool.not.i272 = icmp eq i32 %and.i271, 0
  br i1 %tobool.not.i272, label %if.end14.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end14.skb_dst.exit_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end14.skb_dst.exit_crit_edge
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %and25.i = and i32 %26, -2
  %27 = inttoptr i32 %and25.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hard_header_len, align 2
  %conv16 = zext i16 %31 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 21
  %32 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %needed_headroom, align 8
  %conv17 = zext i16 %33 to i32
  %add = add nuw nsw i32 %conv17, %conv16
  %and = and i32 %add, 131056
  %add19 = add nuw nsw i32 %and, 56
  %34 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dest, align 4
  %tun_type21 = getelementptr inbounds %struct.ip_vs_dest, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %tun_type21 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tun_type21, align 4
  %tun_flags24 = getelementptr inbounds %struct.ip_vs_dest, ptr %35, i32 0, i32 11
  %38 = ptrtoint ptr %tun_flags24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tun_flags24, align 8
  %conv25 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp26 = icmp eq i16 %37, 1
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %skb_dst.exit
  %and29 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then28.if.end52.thread_crit_edge, label %land.lhs.true

if.then28.if.end52.thread_crit_edge:              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.thread

land.lhs.true:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %40 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %ip_summed, align 8
  %41 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %41)
  %cmp32 = icmp eq i16 %41, 1536
  %spec.select = select i1 %cmp32, i32 20, i32 12
  br label %if.end52.thread

if.else:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp40 = icmp eq i16 %37, 2
  %and43 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and43)
  %tobool.not.i274 = icmp eq i16 %and43, 0
  %spec.select.i = select i1 %tobool.not.i274, i32 4, i32 8
  %add50 = select i1 %cmp40, i32 %spec.select.i, i32 0
  %max_headroom.0 = add nuw nsw i32 %add19, %add50
  %42 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %af, align 2
  %conv54 = zext i16 %43 to i32
  %call55 = call fastcc ptr @ip_vs_prepare_tunneled_skb(ptr noundef %skb, i32 noundef %conv54, i32 noundef %max_headroom.0, ptr noundef nonnull %next_protocol, ptr noundef nonnull %payload_len, ptr noundef nonnull %dsfield, ptr noundef nonnull %ttl, ptr noundef null)
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else.tx_error_crit_edge, label %if.else88

if.else.tx_error_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end52.thread:                                  ; preds = %land.lhs.true, %if.then28.if.end52.thread_crit_edge
  %gue_optlen.0 = phi i32 [ 12, %if.then28.if.end52.thread_crit_edge ], [ %spec.select, %land.lhs.true ]
  %add39 = add nuw nsw i32 %gue_optlen.0, %add19
  %44 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %af, align 2
  %conv54297 = zext i16 %45 to i32
  %call55298 = call fastcc ptr @ip_vs_prepare_tunneled_skb(ptr noundef %skb, i32 noundef %conv54297, i32 noundef %add39, ptr noundef nonnull %next_protocol, ptr noundef nonnull %payload_len, ptr noundef nonnull %dsfield, ptr noundef nonnull %ttl, ptr noundef null)
  %cmp.i299 = icmp ugt ptr %call55298, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.end52.thread.tx_error_crit_edge, label %if.then64

if.end52.thread.tx_error_crit_edge:               ; preds = %if.end52.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.then64:                                        ; preds = %if.end52.thread
  %46 = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  %gso_type.0 = select i1 %47, i32 1536, i32 2560
  br i1 %tobool30.not, label %if.then64.if.end100_crit_edge, label %land.lhs.true76

if.then64.if.end100_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

land.lhs.true76:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed77 = getelementptr inbounds %struct.sk_buff, ptr %call55298, i32 0, i32 15
  %48 = ptrtoint ptr %ip_summed77 to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load78 = load i16, ptr %ip_summed77, align 8
  %49 = and i16 %bf.load78, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %49)
  %cmp83 = icmp eq i16 %49, 1536
  %or86 = or i32 %gso_type.0, 8192
  %spec.select268 = select i1 %cmp83, i32 %or86, i32 %gso_type.0
  br label %if.end100

if.else88:                                        ; preds = %if.else
  br i1 %cmp40, label %if.then91, label %if.else88.if.end100_crit_edge

if.else88.if.end100_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then91:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #12
  %and92 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %spec.select307 = select i1 %tobool93.not, i32 576, i32 640
  br label %if.end100

if.end100:                                        ; preds = %if.then91, %if.else88.if.end100_crit_edge, %land.lhs.true76, %if.then64.if.end100_crit_edge
  %call55300303 = phi ptr [ %call55298, %if.then64.if.end100_crit_edge ], [ %call55, %if.else88.if.end100_crit_edge ], [ %call55298, %land.lhs.true76 ], [ %call55, %if.then91 ]
  %gso_type.1 = phi i32 [ %gso_type.0, %if.then64.if.end100_crit_edge ], [ 512, %if.else88.if.end100_crit_edge ], [ %spec.select268, %land.lhs.true76 ], [ %spec.select307, %if.then91 ]
  %call101 = call i32 @iptunnel_handle_offloads(ptr noundef %call55300303, i32 noundef %gso_type.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end100.tx_error_crit_edge

if.end100.tx_error_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end104:                                        ; preds = %if.end100
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 15, i32 0, i32 20
  %50 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 15, i32 0, i32 19
  %52 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %transport_header, align 2
  %53 = ptrtoint ptr %next_protocol to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %next_protocol, align 1
  %55 = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 15, i32 0, i32 14
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %54, ptr %55, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 15, i32 0, i32 3
  %57 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %bf.load.i276 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i277 = or i32 %bf.load.i276, 4194304
  store i32 %bf.set.i277, ptr %inner_protocol_type.i, align 2
  br i1 %cmp26, label %if.then107, label %if.else121

if.then107:                                       ; preds = %if.end104
  %call108 = call fastcc i32 @ipvs_gue_encap(ptr noundef %3, ptr noundef %call55300303, ptr noundef %cp, ptr noundef nonnull %next_protocol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %cleanup.thread, label %if.then107.tx_error_crit_edge

if.then107.tx_error_crit_edge:                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

cleanup.thread:                                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %58 = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 6
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len, align 4
  call void @udp6_set_csum(i1 noundef zeroext %59, ptr noundef %call55300303, ptr noundef nonnull %saddr, ptr noundef %daddr, i32 noundef %61) #10
  br label %if.end126

if.else121:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp122 = icmp eq i16 %37, 2
  br i1 %cmp122, label %if.then124, label %if.else121.if.end126_crit_edge

if.else121.if.end126_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then124:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ipvs_gre_encap(ptr noundef %call55300303, ptr noundef %cp, ptr noundef nonnull %next_protocol)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.else121.if.end126_crit_edge, %cleanup.thread
  %call127 = call ptr @skb_push(ptr noundef %call55300303, i32 noundef 40) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 19
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 18
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i278 = trunc i32 %sub.ptr.sub.i to i16
  %66 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i278, ptr %network_header, align 4
  %opt = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 3, i32 4
  %67 = call ptr @memset(ptr %opt, i32 0, i32 16)
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 %conv.i.i
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load129 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear130 = and i8 %bf.load129, 15
  %bf.set = or i8 %bf.clear130, 96
  store i8 %bf.set, ptr %add.ptr.i.i, align 4
  %69 = ptrtoint ptr %next_protocol to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %next_protocol, align 1
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %nexthdr, align 2
  %72 = ptrtoint ptr %payload_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %payload_len, align 4
  %conv131 = trunc i32 %73 to i16
  %payload_len132 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %payload_len132 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv131, ptr %payload_len132, align 4
  %flow_lbl = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %75 = call ptr @memset(ptr %flow_lbl, i32 0, i32 3)
  %76 = ptrtoint ptr %dsfield to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dsfield, align 1
  %78 = load i16, ptr %add.ptr.i.i, align 2
  %79 = and i16 %78, -4081
  %conv6.i = zext i8 %77 to i16
  %shl7.i = shl nuw nsw i16 %conv6.i, 4
  %or10.i = or i16 %79, %shl7.i
  store i16 %or10.i, ptr %add.ptr.i.i, align 2
  %daddr133 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %80 = call ptr @memcpy(ptr %daddr133, ptr %daddr, i32 16)
  %saddr135 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %81 = call ptr @memcpy(ptr %saddr135, ptr %saddr, i32 16)
  %82 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ttl, align 1
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %hop_limit, align 1
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 15
  %85 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load136 = load i16, ptr %ignore_df, align 8
  %bf.set138 = or i16 %bf.load136, 4096
  store i16 %bf.set138, ptr %ignore_df, align 8
  %86 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %bf.load.i280 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i281 = or i32 %bf.load.i280, 8388608
  store i32 %bf.set.i281, ptr %inner_protocol_type.i, align 2
  %flags.i282 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %87 = ptrtoint ptr %flags.i282 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags.i282, align 4
  %and.i283 = and i32 %88, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp eq i32 %and.i283, 0
  br i1 %tobool.not.i284, label %if.end126.if.then3.i_crit_edge, label %if.end.i, !prof !226

if.end126.if.then3.i_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end.i:                                         ; preds = %if.end126
  %call.i285 = call i32 @ip_vs_confirm_conntrack(ptr noundef %call55300303) #10
  %89 = zext i32 %call.i285 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call.i285, label %if.end.i.do.body150_crit_edge [
    i32 1, label %if.end.i.if.then3.i_crit_edge
    i32 0, label %if.then147
  ]

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end.i.do.body150_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body150

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %if.end126.if.then3.i_crit_edge
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 5
  %90 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i.i = and i32 %91, -8
  %92 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.nf_reset_ct.exit.i_crit_edge, label %land.lhs.true.i.i.i290

if.then3.i.nf_reset_ct.exit.i_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit.i

land.lhs.true.i.i.i290:                           ; preds = %if.then3.i
  %call.i.i.i.i.i.i.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %92, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  call void @llvm.prefetch.p0(ptr nonnull %92, i32 1, i32 3, i32 1) #10
  %93 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %92, ptr nonnull %92, i32 1, ptr nonnull elementtype(i32) %92) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i288 = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i288)
  %cmp.i.i.i.i.i.i289 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i288, 1
  br i1 %cmp.i.i.i.i.i.i289, label %if.then.i.i.i294, label %if.end5.i.i.i.i.i.i292

if.end5.i.i.i.i.i.i292:                           ; preds = %land.lhs.true.i.i.i290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i288)
  %.not.i.i.i.i.i.i291 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i288, 0
  br i1 %.not.i.i.i.i.i.i291, label %if.end5.i.i.i.i.i.i292.nf_reset_ct.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i293, !prof !226

if.end5.i.i.i.i.i.i292.nf_reset_ct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit.i

if.then10.i.i.i.i.i.i293:                         ; preds = %if.end5.i.i.i.i.i.i292
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %92, i32 noundef 3) #10
  br label %nf_reset_ct.exit.i

if.then.i.i.i294:                                 ; preds = %land.lhs.true.i.i.i290
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @nf_conntrack_destroy(ptr noundef nonnull %92) #10
  br label %nf_reset_ct.exit.i

nf_reset_ct.exit.i:                               ; preds = %if.then.i.i.i294, %if.then10.i.i.i.i.i.i293, %if.end5.i.i.i.i.i.i292.nf_reset_ct.exit.i_crit_edge, %if.then3.i.nf_reset_ct.exit.i_crit_edge
  %94 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %_nfct.i.i.i, align 8
  %95 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i.i = load i16, ptr %ignore_df, align 8
  %96 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %96)
  %cmp.i.i = icmp eq i16 %96, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %nf_reset_ct.exit.i.skb_forward_csum.exit.i_crit_edge

nf_reset_ct.exit.i.skb_forward_csum.exit.i_crit_edge: ; preds = %nf_reset_ct.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_forward_csum.exit.i

if.then.i.i:                                      ; preds = %nf_reset_ct.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear4.i.i = and i16 %bf.load.i.i, -1537
  %97 = ptrtoint ptr %ignore_df to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %bf.clear4.i.i, ptr %ignore_df, align 8
  br label %skb_forward_csum.exit.i

skb_forward_csum.exit.i:                          ; preds = %if.then.i.i, %nf_reset_ct.exit.i.skb_forward_csum.exit.i_crit_edge
  %98 = getelementptr inbounds %struct.anon, ptr %call55300303, i32 0, i32 2
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %tobool4.not.i = icmp eq ptr %100, null
  br i1 %tobool4.not.i, label %skb_forward_csum.exit.i.if.then142_crit_edge, label %if.then5.i

skb_forward_csum.exit.i.if.then142_crit_edge:     ; preds = %skb_forward_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then142

if.then5.i:                                       ; preds = %skb_forward_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %101, align 8
  br label %if.then142

if.then142:                                       ; preds = %if.then5.i, %skb_forward_csum.exit.i.if.then142_crit_edge
  %103 = getelementptr inbounds %struct.sk_buff, ptr %call55300303, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %call143 = call i32 @ip6_local_out(ptr noundef %3, ptr noundef %105, ptr noundef %call55300303) #10
  br label %do.body150

if.then147:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %call55300303, i32 noundef 0) #10
  br label %do.body150

do.body150:                                       ; preds = %if.then147, %if.then142, %if.end.i.do.body150_crit_edge
  %call151 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call151)
  %cmp152 = icmp sgt i32 %call151, 9
  br i1 %cmp152, label %do.end157, label %do.body150.cleanup179_crit_edge

do.body150.cleanup179_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

do.end157:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 1417) #13
  br label %cleanup179

tx_error:                                         ; preds = %if.then107.tx_error_crit_edge, %if.end100.tx_error_crit_edge, %if.end52.thread.tx_error_crit_edge, %if.else.tx_error_crit_edge, %do.end6.tx_error_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %do.end6.tx_error_crit_edge ], [ %call55, %if.else.tx_error_crit_edge ], [ %call55300303, %if.end100.tx_error_crit_edge ], [ %call55298, %if.end52.thread.tx_error_crit_edge ], [ %call55300303, %if.then107.tx_error_crit_edge ]
  %cmp.i295 = icmp ugt ptr %skb.addr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i295, label %tx_error.do.body166_crit_edge, label %if.then164

tx_error.do.body166_crit_edge:                    ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166

if.then164:                                       ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #10
  br label %do.body166

do.body166:                                       ; preds = %if.then164, %tx_error.do.body166_crit_edge
  %call167 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call167)
  %cmp168 = icmp sgt i32 %call167, 9
  br i1 %cmp168, label %do.end173, label %do.body166.cleanup179_crit_edge

do.body166.cleanup179_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

do.end173:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 1424) #13
  br label %cleanup179

cleanup179:                                       ; preds = %do.end173, %do.body166.cleanup179_crit_edge, %do.end157, %do.body150.cleanup179_crit_edge, %nf_conntrack_put.exit.i.i, %if.then.i.cleanup179_crit_edge, %if.then12.cleanup179_crit_edge
  %retval.0 = phi i32 [ 2, %do.end157 ], [ 2, %do.body150.cleanup179_crit_edge ], [ 2, %do.end173 ], [ 2, %do.body166.cleanup179_crit_edge ], [ 1, %if.then12.cleanup179_crit_edge ], [ 1, %if.then.i.cleanup179_crit_edge ], [ 1, %nf_conntrack_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ttl) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dsfield) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_len) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %next_protocol) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp6_set_csum(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_dr_xmit(ptr noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readonly %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 1440) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 2
  %conv = zext i16 %3 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  %call5 = tail call fastcc i32 @__ip_vs_get_out_rt(ptr noundef %1, i32 noundef %conv, ptr noundef %skb, ptr noundef %5, i32 noundef %7, i32 noundef 19, ptr noundef null, ptr noundef %ipvsh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %tx_error, label %if.end9

if.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end9
  %ipvs_property.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i = or i32 %bf.load.i, 8388608
  store i32 %bf.set.i, ptr %ipvs_property.i, align 2
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.cleanup_crit_edge, !prof !226

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then10
  %_nfct.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %11 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_nfct.i.i.i.i, align 8
  %and1.i.i.i = and i32 %12, -8
  %13 = inttoptr i32 %and1.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %land.lhs.true.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %13) #10
  br label %nf_conntrack_put.exit.i.i

nf_conntrack_put.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge
  %15 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i.i.i.i = or i32 %bf.load.i.i.i.i, 4096
  store i32 %bf.set.i.i.i.i, ptr %ipvs_property.i, align 2
  %16 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %_nfct.i.i.i.i, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i) #10
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %21 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call14 = tail call fastcc i32 @ip_vs_send_or_cont(i32 noundef 2, ptr noundef %skb, ptr noundef %cp, i32 noundef 0)
  %call16 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, 9
  br i1 %cmp17, label %do.end22, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 1458) #13
  br label %cleanup

tx_error:                                         ; preds = %do.end4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call29 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call29)
  %cmp30 = icmp sgt i32 %call29, 9
  br i1 %cmp30, label %do.end35, label %tx_error.cleanup_crit_edge

tx_error.cleanup_crit_edge:                       ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35:                                         ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 1463) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %tx_error.cleanup_crit_edge, %do.end22, %if.end12.cleanup_crit_edge, %nf_conntrack_put.exit.i.i, %if.then.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.end22 ], [ 2, %if.end12.cleanup_crit_edge ], [ 2, %do.end35 ], [ 2, %tx_error.cleanup_crit_edge ], [ 1, %if.then10.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %nf_conntrack_put.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_dr_xmit_v6(ptr noundef %skb, ptr noundef %cp, ptr nocapture noundef readnone %pp, ptr nocapture noundef readonly %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 1474) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 2
  %conv = zext i16 %3 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %call5 = tail call fastcc i32 @__ip_vs_get_out_rt_v6(ptr noundef %1, i32 noundef %conv, ptr noundef %skb, ptr noundef %5, ptr noundef %daddr, ptr noundef null, ptr noundef %ipvsh, i32 noundef 0, i32 noundef 19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %tx_error, label %if.end9

if.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end9
  %ipvs_property.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i = or i32 %bf.load.i, 8388608
  store i32 %bf.set.i, ptr %ipvs_property.i, align 2
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.cleanup_crit_edge, !prof !226

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then10
  %_nfct.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %9 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nfct.i.i.i.i, align 8
  %and1.i.i.i = and i32 %10, -8
  %11 = inttoptr i32 %and1.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %land.lhs.true.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #10, !srcloc !228
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !226

if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #10
  br label %nf_conntrack_put.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %11) #10
  br label %nf_conntrack_put.exit.i.i

nf_conntrack_put.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nf_conntrack_put.exit.i.i_crit_edge
  %13 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %ipvs_property.i, align 2
  %bf.set.i.i.i.i = or i32 %bf.load.i.i.i.i, 4096
  store i32 %bf.set.i.i.i.i, ptr %ipvs_property.i, align 2
  %14 = ptrtoint ptr %_nfct.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %_nfct.i.i.i.i, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call13 = tail call fastcc i32 @ip_vs_send_or_cont(i32 noundef 10, ptr noundef %skb, ptr noundef %cp, i32 noundef 0)
  %call15 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 9
  br i1 %cmp16, label %do.end21, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 1492) #13
  br label %cleanup

tx_error:                                         ; preds = %do.end4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %call28 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, 9
  br i1 %cmp29, label %do.end34, label %tx_error.cleanup_crit_edge

tx_error.cleanup_crit_edge:                       ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end34:                                         ; preds = %tx_error
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 1497) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %tx_error.cleanup_crit_edge, %do.end21, %if.end12.cleanup_crit_edge, %nf_conntrack_put.exit.i.i, %if.then.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.end21 ], [ 2, %if.end12.cleanup_crit_edge ], [ 2, %do.end34 ], [ 2, %tx_error.cleanup_crit_edge ], [ 1, %if.then10.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %nf_conntrack_put.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_icmp_xmit(ptr noundef %skb, ptr noundef %cp, ptr noundef %pp, i32 noundef %offset, i32 noundef %hooknum, ptr noundef %iph) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 1517) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %do.end4
  %packet_xmit = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 24
  %2 = ptrtoint ptr %packet_xmit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %packet_xmit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then6.if.end10_crit_edge, label %if.then7

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 %3(ptr noundef %skb, ptr noundef %cp, ptr noundef %pp, ptr noundef %iph) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then6.if.end10_crit_edge
  %rc.0 = phi i32 [ %call9, %if.then7 ], [ 1, %if.then6.if.end10_crit_edge ]
  %in_pkts = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_pkts, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %in_pkts, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_pkts, ptr %in_pkts, i32 1, ptr elementtype(i32) %in_pkts) #10, !srcloc !234
  br label %do.body81

if.end11:                                         ; preds = %do.end4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.end11.skb_rtable.exit_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.end11
  %call.i.i128 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %tobool1.not.i.i = icmp eq i32 %call.i.i128, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !231

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.end11.skb_rtable.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %and25.i.i = and i32 %9, -2
  %10 = inttoptr i32 %and25.i.i to ptr
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hooknum)
  %cmp14.not = icmp eq i32 %hooknum, 2
  %cond = select i1 %cmp14.not, i32 2, i32 7
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %13 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %15 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %af, align 2
  %conv16 = zext i16 %16 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %17 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %19 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %daddr, align 4
  %call17 = tail call fastcc i32 @__ip_vs_get_out_rt(ptr noundef %14, i32 noundef %conv16, ptr noundef %skb, ptr noundef %18, i32 noundef %20, i32 noundef %cond, ptr noundef null, ptr noundef %iph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %skb_rtable.exit.tx_error_crit_edge, label %if.end21

skb_rtable.exit.tx_error_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end21:                                         ; preds = %skb_rtable.exit
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 8
  %and.i.i129 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129)
  %tobool.not.i.i130 = icmp eq i32 %and.i.i129, 0
  br i1 %tobool.not.i.i130, label %if.end21.skb_rtable.exit139_crit_edge, label %land.lhs.true.i.i133

if.end21.skb_rtable.exit139_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit139

land.lhs.true.i.i133:                             ; preds = %if.end21
  %call.i.i131 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i131)
  %tobool1.not.i.i132 = icmp eq i32 %call.i.i131, 0
  br i1 %tobool1.not.i.i132, label %land.rhs.i.i136, label %land.lhs.true.i.i133.skb_rtable.exit139_crit_edge

land.lhs.true.i.i133.skb_rtable.exit139_crit_edge: ; preds = %land.lhs.true.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit139

land.rhs.i.i136:                                  ; preds = %land.lhs.true.i.i133
  %call2.i.i134 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i134)
  %tobool3.not.i.i135 = icmp eq i32 %call2.i.i134, 0
  br i1 %tobool3.not.i.i135, label %do.end.i.i137, label %land.rhs.i.i136.skb_rtable.exit139_crit_edge, !prof !231

land.rhs.i.i136.skb_rtable.exit139_crit_edge:     ; preds = %land.rhs.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit139

do.end.i.i137:                                    ; preds = %land.rhs.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit139

skb_rtable.exit139:                               ; preds = %do.end.i.i137, %land.rhs.i.i136.skb_rtable.exit139_crit_edge, %land.lhs.true.i.i133.skb_rtable.exit139_crit_edge, %if.end21.skb_rtable.exit139_crit_edge
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 8
  %and25.i.i138 = and i32 %24, -2
  %25 = inttoptr i32 %and25.i.i138 to ptr
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %and24 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool26.not = icmp eq i32 %call17, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %skb_rtable.exit139.if.end47_crit_edge, label %if.then27

skb_rtable.exit139.if.end47_crit_edge:            ; preds = %skb_rtable.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then27:                                        ; preds = %skb_rtable.exit139
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %28 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %tobool29.not = icmp ult i32 %29, 8
  br i1 %tobool29.not, label %if.then27.if.end47_crit_edge, label %do.body31

if.then27.if.end47_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.body31:                                        ; preds = %if.then27
  %call32 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, 9
  br i1 %cmp33, label %do.body31.tx_error.sink.split_crit_edge, label %do.body31.tx_error_crit_edge

do.body31.tx_error_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

do.body31.tx_error.sink.split_crit_edge:          ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error.sink.split

if.end47:                                         ; preds = %if.then27.if.end47_crit_edge, %skb_rtable.exit139.if.end47_crit_edge
  br i1 %tobool26.not, label %if.end47.if.end70_crit_edge, label %land.lhs.true49

if.end47.if.end70_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true49:                                  ; preds = %if.end47
  %30 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %daddr, align 4
  %and.i140 = and i32 %31, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i140)
  %cmp.i141 = icmp ne i32 %and.i140, 2130706432
  %brmerge = select i1 %cmp.i141, i1 true, i1 %cmp.i.not
  br i1 %brmerge, label %land.lhs.true49.if.end70_crit_edge, label %do.body56

land.lhs.true49.if.end70_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.body56:                                        ; preds = %land.lhs.true49
  %call57 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, 0
  br i1 %cmp58, label %do.body56.tx_error.sink.split_crit_edge, label %do.body56.tx_error_crit_edge

do.body56.tx_error_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

do.body56.tx_error.sink.split_crit_edge:          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error.sink.split

if.end70:                                         ; preds = %land.lhs.true49.if.end70_crit_edge, %if.end47.if.end70_crit_edge
  %call71 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.tx_error_crit_edge

if.end70.tx_error_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end74:                                         ; preds = %if.end70
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hard_header_len, align 2
  %conv75 = zext i16 %35 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %36 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i142 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i142, label %if.end74.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i144

if.end74.skb_cloned.exit.i_crit_edge:             ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cloned.exit.i

land.rhs.i.i144:                                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %39 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i143 = and i32 %40, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i143)
  %cmp.i.not.i = icmp eq i32 %and.i.i143, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i144, %if.end74.skb_cloned.exit.i_crit_edge
  %41 = phi i1 [ true, %if.end74.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i144 ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv75)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv75
  %or.cond.i.i = and i1 %41, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end79_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end79_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %46 = tail call i32 @llvm.usub.sat.i32(i32 %conv75, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %46, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool77.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool77.not, label %skb_cow.exit.if.end79_crit_edge, label %skb_cow.exit.tx_error_crit_edge

skb_cow.exit.tx_error_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

skb_cow.exit.if.end79_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end79:                                         ; preds = %skb_cow.exit.if.end79_crit_edge, %skb_cloned.exit.i.if.end79_crit_edge
  tail call void @ip_vs_nat_icmp(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, i32 noundef 0) #10
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call80 = tail call fastcc i32 @ip_vs_nat_send_or_cont(i32 noundef 2, ptr noundef %skb, ptr noundef %cp, i32 noundef %call17)
  br label %do.body81

tx_error.sink.split:                              ; preds = %do.body56.tx_error.sink.split_crit_edge, %do.body31.tx_error.sink.split_crit_edge
  %.str.55.sink = phi ptr [ @.str.55, %do.body31.tx_error.sink.split_crit_edge ], [ @.str.58, %do.body56.tx_error.sink.split_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.55.sink, ptr noundef nonnull @.str.53, ptr noundef %daddr) #13
  br label %tx_error

tx_error:                                         ; preds = %tx_error.sink.split, %skb_cow.exit.tx_error_crit_edge, %if.end70.tx_error_crit_edge, %do.body56.tx_error_crit_edge, %do.body31.tx_error_crit_edge, %skb_rtable.exit.tx_error_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %do.body81

do.body81:                                        ; preds = %tx_error, %if.end79, %if.end10
  %rc.1 = phi i32 [ %rc.0, %if.end10 ], [ 2, %tx_error ], [ %call80, %if.end79 ]
  %call82 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call82)
  %cmp83 = icmp sgt i32 %call82, 9
  br i1 %cmp83, label %do.end88, label %do.body81.cleanup94_crit_edge

do.body81.cleanup94_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

do.end88:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 1592) #13
  br label %cleanup94

cleanup94:                                        ; preds = %do.end88, %do.body81.cleanup94_crit_edge
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_nat_icmp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_icmp_xmit_v6(ptr noundef %skb, ptr noundef %cp, ptr noundef %pp, i32 noundef %offset, i32 noundef %hooknum, ptr noundef %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2, i32 noundef 1607) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %do.end4
  %packet_xmit = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 24
  %2 = ptrtoint ptr %packet_xmit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %packet_xmit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then6.if.end10_crit_edge, label %if.then7

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 %3(ptr noundef %skb, ptr noundef %cp, ptr noundef %pp, ptr noundef %ipvsh) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then6.if.end10_crit_edge
  %rc.0 = phi i32 [ %call9, %if.then7 ], [ 1, %if.then6.if.end10_crit_edge ]
  %in_pkts = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_pkts, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %in_pkts, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_pkts, ptr %in_pkts, i32 1, ptr elementtype(i32) %in_pkts) #10, !srcloc !234
  br label %do.body82

if.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hooknum)
  %cmp12.not = icmp eq i32 %hooknum, 2
  %cond = select i1 %cmp12.not, i32 2, i32 7
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %5 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %7 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %af, align 2
  %conv = zext i16 %8 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %9 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dest, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %call13 = tail call fastcc i32 @__ip_vs_get_out_rt_v6(ptr noundef %6, i32 noundef %conv, ptr noundef %skb, ptr noundef %10, ptr noundef %daddr, ptr noundef null, ptr noundef %ipvsh, i32 noundef 0, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.tx_error_crit_edge, label %if.end17

if.end11.tx_error_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end17:                                         ; preds = %if.end11
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end17.skb_dst.exit_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end17.skb_dst.exit_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %and25.i = and i32 %15, -2
  %16 = inttoptr i32 %and25.i to ptr
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %and20 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool22.not = icmp eq i32 %call13, 0
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %skb_dst.exit.if.end43_crit_edge, label %if.then23

skb_dst.exit.if.end43_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then23:                                        ; preds = %skb_dst.exit
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %19 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %tobool25.not = icmp ult i32 %20, 8
  br i1 %tobool25.not, label %if.then23.if.end43_crit_edge, label %do.body27

if.then23.if.end43_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body27:                                        ; preds = %if.then23
  %call28 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, 9
  br i1 %cmp29, label %do.body27.tx_error.sink.split_crit_edge, label %do.body27.tx_error_crit_edge

do.body27.tx_error_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

do.body27.tx_error.sink.split_crit_edge:          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error.sink.split

if.end43:                                         ; preds = %if.then23.if.end43_crit_edge, %skb_dst.exit.if.end43_crit_edge
  br i1 %tobool22.not, label %if.end43.if.end71_crit_edge, label %land.lhs.true45

if.end43.if.end71_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true45:                                  ; preds = %if.end43
  %21 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %tobool46.not = icmp eq ptr %23, null
  br i1 %tobool46.not, label %land.lhs.true45.if.end71_crit_edge, label %land.lhs.true47

land.lhs.true45.if.end71_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true47:                                  ; preds = %land.lhs.true45
  %flags48 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags48, align 8
  %and49 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %land.lhs.true47.if.end71_crit_edge

land.lhs.true47.if.end71_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true51:                                  ; preds = %land.lhs.true47
  %call.i131 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr) #10
  %and54 = and i32 %call.i131, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true51.if.end71_crit_edge, label %do.body57

land.lhs.true51.if.end71_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.body57:                                        ; preds = %land.lhs.true51
  %call58 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp sgt i32 %call58, 0
  br i1 %cmp59, label %do.body57.tx_error.sink.split_crit_edge, label %do.body57.tx_error_crit_edge

do.body57.tx_error_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

do.body57.tx_error.sink.split_crit_edge:          ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error.sink.split

if.end71:                                         ; preds = %land.lhs.true51.if.end71_crit_edge, %land.lhs.true47.if.end71_crit_edge, %land.lhs.true45.if.end71_crit_edge, %if.end43.if.end71_crit_edge
  %call72 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.tx_error_crit_edge

if.end71.tx_error_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end75:                                         ; preds = %if.end71
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %16, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hard_header_len, align 2
  %conv76 = zext i16 %29 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %30 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end75.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end75.skb_cloned.exit.i_crit_edge:             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %31 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %33 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %34, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end75.skb_cloned.exit.i_crit_edge
  %35 = phi i1 [ true, %if.end75.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv76)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv76
  %or.cond.i.i = and i1 %35, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end80_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end80_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %40 = tail call i32 @llvm.usub.sat.i32(i32 %conv76, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %40, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool78.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool78.not, label %skb_cow.exit.if.end80_crit_edge, label %skb_cow.exit.tx_error_crit_edge

skb_cow.exit.tx_error_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

skb_cow.exit.if.end80_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end80:                                         ; preds = %skb_cow.exit.if.end80_crit_edge, %skb_cloned.exit.i.if.end80_crit_edge
  tail call void @ip_vs_nat_icmp_v6(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, i32 noundef 0) #10
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %41 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %call81 = tail call fastcc i32 @ip_vs_nat_send_or_cont(i32 noundef 10, ptr noundef %skb, ptr noundef %cp, i32 noundef %call13)
  br label %do.body82

tx_error.sink.split:                              ; preds = %do.body57.tx_error.sink.split_crit_edge, %do.body27.tx_error.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.64, %do.body27.tx_error.sink.split_crit_edge ], [ @.str.67, %do.body57.tx_error.sink.split_crit_edge ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink, ptr noundef nonnull @.str.62, ptr noundef %daddr) #13
  br label %tx_error

tx_error:                                         ; preds = %tx_error.sink.split, %skb_cow.exit.tx_error_crit_edge, %if.end71.tx_error_crit_edge, %do.body57.tx_error_crit_edge, %do.body27.tx_error_crit_edge, %if.end11.tx_error_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %do.body82

do.body82:                                        ; preds = %tx_error, %if.end80, %if.end10
  %rc.1 = phi i32 [ %rc.0, %if.end10 ], [ 2, %tx_error ], [ %call81, %if.end80 ]
  %call83 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call83)
  %cmp84 = icmp sgt i32 %call83, 9
  br i1 %cmp84, label %do.end89, label %do.body82.cleanup95_crit_edge

do.body82.cleanup95_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup95

do.end89:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2, i32 noundef 1681) #13
  br label %cleanup95

cleanup95:                                        ; preds = %do.end89, %do.body82.cleanup95_crit_edge
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_nat_icmp_v6(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
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
  %call1 = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i8 noundef zeroext %pf, ptr noundef %net, ptr noundef %skb, ptr noundef %outdev) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !235
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %pf, label %land.end149 [
    i8 2, label %sw.bb
    i8 10, label %sw.bb16
    i8 3, label %land.end
    i8 7, label %sw.bb102
  ]

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 3
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b4 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b4, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb16:                                          ; preds = %rcu_read_lock.exit
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 3
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb16
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b2173 = load i1, ptr @nf_hook.__warned.73, align 1
  br i1 %.b2173, label %land.lhs.true29.sw.epilog_crit_edge, label %land.lhs.true29.sw.epilog.sink.split_crit_edge

land.lhs.true29.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.end:                                         ; preds = %rcu_read_lock.exit
  %.b2182 = load i1, ptr @nf_hook.__already_done, align 1
  br i1 %.b2182, label %land.end.if.end194_crit_edge, label %if.then46, !prof !226

land.end.if.end194_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then46:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 236, i32 noundef 9, ptr noundef null) #10
  br label %if.end194

sw.bb102:                                         ; preds = %rcu_read_lock.exit
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 3
  %9 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %sw.bb102.sw.epilog_crit_edge

sw.bb102.sw.epilog_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %sw.bb102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b2191 = load i1, ptr @nf_hook.__warned.75, align 1
  br i1 %.b2191, label %land.lhs.true115.sw.epilog_crit_edge, label %land.lhs.true115.sw.epilog.sink.split_crit_edge

land.lhs.true115.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.end149:                                      ; preds = %rcu_read_lock.exit
  %.b2205 = load i1, ptr @nf_hook.__already_done.77, align 1
  br i1 %.b2205, label %land.end149.if.end194_crit_edge, label %if.then156, !prof !226

land.end149.if.end194_crit_edge:                  ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then156:                                       ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_hook.__already_done.77, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 252, i32 noundef 9, ptr noundef null) #10
  br label %if.end194

sw.epilog.sink.split:                             ; preds = %land.lhs.true115.sw.epilog.sink.split_crit_edge, %land.lhs.true29.sw.epilog.sink.split_crit_edge, %land.lhs.true9.sw.epilog.sink.split_crit_edge
  %nf_hook.__warned.75.sink = phi ptr [ @nf_hook.__warned, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.73, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.75, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 229, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ 232, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ 243, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %hook_head.0.ph = phi ptr [ %6, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ %8, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %11 = ptrtoint ptr %nf_hook.__warned.75.sink to i32
  call void @__asan_store1_noabort(i32 %11)
  store i1 true, ptr %nf_hook.__warned.75.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.71, i32 noundef %.sink, ptr noundef nonnull @.str.72) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %sw.bb102.sw.epilog_crit_edge, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hook_head.0 = phi ptr [ %6, %land.lhs.true9.sw.epilog_crit_edge ], [ %6, %land.lhs.true6.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %8, %land.lhs.true29.sw.epilog_crit_edge ], [ %8, %land.lhs.true26.sw.epilog_crit_edge ], [ %8, %sw.bb16.sw.epilog_crit_edge ], [ %10, %land.lhs.true115.sw.epilog_crit_edge ], [ %10, %land.lhs.true112.sw.epilog_crit_edge ], [ %10, %sw.bb102.sw.epilog_crit_edge ], [ %hook_head.0.ph, %sw.epilog.sink.split ]
  %tobool191.not = icmp eq ptr %hook_head.0, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #10
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %state, align 4
  store i8 3, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %13 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %pf, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %18 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dst_output, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %hook_head.0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #10
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge, %if.then156, %land.end149.if.end194_crit_edge, %if.then46, %land.end.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ], [ 1, %if.then46 ], [ 1, %land.end.if.end194_crit_edge ], [ 1, %if.then156 ], [ 1, %land.end149.if.end194_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i6, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end194
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.80) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !236
  %19 = call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i.i.i.i.i13 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ip_vs_dst_set(ptr noundef %dest, ptr noundef %dest_dst, ptr noundef %dst, i32 noundef %dst_cookie) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 20, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @__ip_vs_dst_set.__warned, align 1
  br i1 %.b57, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__ip_vs_dst_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 79, ptr noundef nonnull @.str.89) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dest_dst5 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 21
  %0 = ptrtoint ptr %dest_dst5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest_dst5, align 4
  %tobool6.not = icmp eq ptr %dest_dst, null
  br i1 %tobool6.not, label %do.end.do.body10_crit_edge, label %if.then7

do.end.do.body10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dest_dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dst, ptr %dest_dst, align 4
  %dst_cookie8 = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %dest_dst, i32 0, i32 1
  %3 = ptrtoint ptr %dst_cookie8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dst_cookie, ptr %dst_cookie8, align 4
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %do.end.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  %4 = ptrtoint ptr %dest_dst5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %dest_dst, ptr %dest_dst5, align 4
  %tobool48.not = icmp eq ptr %1, null
  br i1 %tobool48.not, label %do.body10.if.end50_crit_edge, label %if.then49

do.body10.if.end50_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %callback_head = getelementptr inbounds %struct.ip_vs_dest_dst, ptr %1, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @ip_vs_dest_dst_rcu_free) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.body10.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @do_output_route4(ptr noundef %net, i32 noundef %daddr, i32 noundef %rt_mode, ptr nocapture noundef %saddr) unnamed_addr #0 align 64 {
entry:
  %daddr.addr = alloca i32, align 4
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %daddr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %daddr, ptr %daddr.addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #10
  %1 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %daddr1 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %2 = ptrtoint ptr %daddr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %daddr, ptr %daddr1, align 4
  %3 = trunc i32 %rt_mode to i8
  %4 = lshr i8 %3, 3
  %conv = and i8 %4, 2
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %5 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %flowic_flags, align 1
  %and7 = and i32 %rt_mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %saddr3.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  br label %retry.outer

retry.outer:                                      ; preds = %if.then27, %entry
  %loop.0.off0.ph = phi i1 [ true, %if.then27 ], [ false, %entry ]
  %call.i50 = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4, ptr noundef null) #10
  %cmp.i51 = icmp ugt ptr %call.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %retry.outer.if.then_crit_edge, label %retry.outer.if.else_crit_edge

retry.outer.if.else_crit_edge:                    ; preds = %retry.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

retry.outer.if.then_crit_edge:                    ; preds = %retry.outer
  br label %if.then

if.then:                                          ; preds = %if.then11.if.then_crit_edge, %retry.outer.if.then_crit_edge
  %call.i52 = phi ptr [ %call.i, %if.then11.if.then_crit_edge ], [ %call.i50, %retry.outer.if.then_crit_edge ]
  %cmp = icmp eq ptr %call.i52, inttoptr (i32 -22 to ptr)
  br i1 %cmp, label %land.lhs.true, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %or.cond = or i1 %tobool8.not, %tobool5.not
  %brmerge = or i1 %or.cond, %loop.0.off0.ph
  br i1 %brmerge, label %land.lhs.true.do.body_crit_edge, label %if.then11

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then11:                                        ; preds = %land.lhs.true
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %saddr, align 4
  %9 = ptrtoint ptr %daddr.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %daddr.addr, align 4
  %11 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fl4, align 8
  %12 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %flowic_tos.i, align 4
  %13 = ptrtoint ptr %daddr1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %daddr1, align 4
  %14 = ptrtoint ptr %saddr3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %saddr3.i, align 8
  %call.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11.if.then_crit_edge, label %if.then11.if.else_crit_edge

if.then11.if.else_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then11.if.then_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.then.do.body_crit_edge
  %call12 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %daddr.addr) #13
  br label %cleanup

if.else:                                          ; preds = %if.then11.if.else_crit_edge, %retry.outer.if.else_crit_edge
  %call.i.lcssa = phi ptr [ %call.i50, %retry.outer.if.else_crit_edge ], [ %call.i, %if.then11.if.else_crit_edge ]
  %15 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not = icmp ne i32 %16, 0
  %or.cond44 = or i1 %tobool8.not, %tobool20.not
  br i1 %or.cond44, label %if.else.if.end31_crit_edge, label %land.lhs.true24

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true24:                                  ; preds = %if.else
  %17 = ptrtoint ptr %saddr3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saddr3.i, align 8
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end31_crit_edge, label %if.then27

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  call void @dst_release(ptr noundef %call.i.lcssa) #10
  %19 = ptrtoint ptr %saddr3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr3.i, align 8
  %21 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %saddr, align 4
  %22 = ptrtoint ptr %daddr.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %daddr.addr, align 4
  %24 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fl4, align 8
  %25 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %flowic_tos.i, align 4
  %26 = ptrtoint ptr %daddr1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %daddr1, align 4
  br label %retry.outer

if.end31:                                         ; preds = %land.lhs.true24.if.end31_crit_edge, %if.else.if.end31_crit_edge
  %27 = ptrtoint ptr %saddr3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saddr3.i, align 8
  %29 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %saddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.lcssa, %if.end31 ], [ null, %do.end ], [ null, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #10
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @crosses_local_route_boundary(i32 noundef %skb_af, ptr nocapture noundef readonly %skb, i32 noundef %rt_mode, i1 noundef zeroext %new_rt_is_local) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %rt_mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %rt_mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and8 = and i32 %rt_mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %skb_af)
  %cmp = icmp eq i32 %skb_af, 10
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr) #10
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %tobool14.not = icmp eq ptr %6, null
  br i1 %tobool14.not, label %if.then.land.rhs_crit_edge, label %lor.lhs.false

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and15 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false.land.end_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %and17 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18 = icmp ne i32 %and17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.land.end_crit_edge
  %9 = phi i1 [ false, %lor.lhs.false.land.end_crit_edge ], [ %tobool18, %land.rhs ]
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i65 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i, label %land.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

land.end.skb_dst.exit_crit_edge:                  ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %land.end
  %call.i66 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool1.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %land.end.skb_dst.exit_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %and25.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i67 = icmp eq ptr %17, null
  br i1 %tobool.not.i67, label %skb_dst.exit.if.end_crit_edge, label %land.rhs.i69

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs.i69:                                     ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp = icmp ne i32 %20, 0
  br label %if.end

if.else:                                          ; preds = %entry
  %saddr25 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %saddr25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saddr25, align 4
  %and.i74 = and i32 %22, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i74)
  %cmp.i = icmp eq i32 %and.i74, 2130706432
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.else.skb_rtable.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.else
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !231

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.else.skb_rtable.exit_crit_edge
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 8
  %and25.i.i = and i32 %27, -2
  %28 = inttoptr i32 %and25.i.i to ptr
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rt_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %extract.t63 = icmp slt i32 %30, 0
  br label %if.end

if.end:                                           ; preds = %skb_rtable.exit, %land.rhs.i69, %skb_dst.exit.if.end_crit_edge
  %source_is_loopback.0.in = phi i1 [ %cmp.i, %skb_rtable.exit ], [ %9, %skb_dst.exit.if.end_crit_edge ], [ %9, %land.rhs.i69 ]
  %old_rt_is_local.0.off0 = phi i1 [ %extract.t63, %skb_rtable.exit ], [ false, %skb_dst.exit.if.end_crit_edge ], [ %phi.cmp, %land.rhs.i69 ]
  br i1 %new_rt_is_local, label %if.then36, label %if.else44, !prof !231

if.then36:                                        ; preds = %if.end
  %brmerge = select i1 %tobool9.not, i1 true, i1 %old_rt_is_local.0.off0
  %or.cond = select i1 %tobool.not, i1 %brmerge, i1 false
  br i1 %or.cond, label %if.then36.if.end51_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36.if.end51_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else44:                                        ; preds = %if.end
  %brmerge64 = select i1 %tobool4.not, i1 true, i1 %source_is_loopback.0.in
  br i1 %brmerge64, label %if.else44.cleanup_crit_edge, label %if.else44.if.end51_crit_edge

if.else44.if.end51_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %if.else44.if.end51_crit_edge, %if.then36.if.end51_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.else44.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end51 ], [ true, %if.then36.cleanup_crit_edge ], [ true, %if.else44.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @decrement_ttl(ptr nocapture noundef readonly %ipvs, i32 noundef %skb_af, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %net1 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %skb_af)
  %cmp = icmp eq i32 %skb_af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then.skb_dst.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !231

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hop_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp3 = icmp ult i8 %13, 2
  br i1 %cmp3, label %if.then5, label %if.end45

if.then5:                                         ; preds = %skb_dst.exit
  %14 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %tobool.not.i108 = icmp eq ptr %16, null
  br i1 %tobool.not.i108, label %if.then5.__in6_dev_get_safely.exit_crit_edge, label %if.then.i, !prof !231

if.then5.__in6_dev_get_safely.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

if.then.i:                                        ; preds = %if.then5
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 80
  %17 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i109 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i109, label %if.then.i.__in6_dev_get_safely.exit_crit_edge, label %lor.lhs.false.i

if.then.i.__in6_dev_get_safely.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %call4.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i110, label %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge

lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

land.lhs.true.i110:                               ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i110.__in6_dev_get_safely.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i110.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i110
  %.b15.i = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in6_dev_get_safely.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.92, i32 noundef 341, ptr noundef nonnull @.str.72) #10
  br label %__in6_dev_get_safely.exit

__in6_dev_get_safely.exit:                        ; preds = %if.then10.i, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, %land.lhs.true.i110.__in6_dev_get_safely.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge, %if.then.i.__in6_dev_get_safely.exit_crit_edge, %if.then5.__in6_dev_get_safely.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then10.i ], [ %18, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge ], [ %18, %land.lhs.true.i110.__in6_dev_get_safely.exit_crit_edge ], [ %18, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge ], [ %18, %if.then.i.__in6_dev_get_safely.exit_crit_edge ], [ null, %if.then5.__in6_dev_get_safely.exit_crit_edge ]
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %14, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #10
  %cmp7.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp7.not, label %__in6_dev_get_safely.exit.do.body22_crit_edge, label %do.body, !prof !231

__in6_dev_get_safely.exit.do.body22_crit_edge:    ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.body:                                          ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %22 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipv6, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i111 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i111 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx15 = getelementptr [37 x i64], ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %33, 1
  store i64 %add16, ptr %arrayidx15, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1, i32 0, i32 1
  %34 = tail call ptr @llvm.returnaddress(i32 0) #10
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  %36 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body22

do.body22:                                        ; preds = %do.body, %__in6_dev_get_safely.exit.do.body22_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 1
  %38 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipv6_statistics, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i112 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i112 to ptr
  %cpu33 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu33, align 4
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %46, %40
  %47 = inttoptr i32 %add35 to ptr
  %syncp36 = getelementptr inbounds %struct.ipstats_mib, ptr %47, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp36)
  %arrayidx38 = getelementptr [37 x i64], ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx38, align 8
  %add39 = add i64 %49, 1
  store i64 %add39, ptr %arrayidx38, align 8
  %dep_map.i.i113 = getelementptr inbounds %struct.ipstats_mib, ptr %47, i32 0, i32 1, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #10
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i113, i32 noundef %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  %52 = ptrtoint ptr %syncp36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp36, align 4
  %inc.i.i.i114 = add i32 %53, 1
  store i32 %inc.i.i.i114, ptr %syncp36, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup89

if.end45:                                         ; preds = %skb_dst.exit
  %call46 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup89_crit_edge

if.end45.cleanup89_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %56 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i117 = zext i16 %57 to i32
  %add.ptr.i.i118 = getelementptr i8, ptr %55, i32 %conv.i.i117
  %hop_limit51 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i118, i32 0, i32 4
  %58 = ptrtoint ptr %hop_limit51 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hop_limit51, align 1
  %dec = add i8 %59, -1
  store i8 %dec, ptr %hop_limit51, align 1
  br label %cleanup89

if.else:                                          ; preds = %entry
  %head.i.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i119, align 8
  %network_header.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %62 = ptrtoint ptr %network_header.i.i120 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i120, align 4
  %conv.i.i121 = zext i16 %63 to i32
  %add.ptr.i.i122 = getelementptr i8, ptr %61, i32 %conv.i.i121
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i122, i32 0, i32 5
  %64 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp54 = icmp ult i8 %65, 2
  br i1 %cmp54, label %do.body57, label %if.end81

do.body57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %mib66 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  %66 = ptrtoint ptr %mib66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mib66, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i123 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i123 to ptr
  %cpu69 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu69, align 4
  %arrayidx70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %74, %68
  %75 = inttoptr i32 %add71 to ptr
  %syncp72 = getelementptr inbounds %struct.ipstats_mib, ptr %75, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp72)
  %arrayidx74 = getelementptr [37 x i64], ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx74, align 8
  %add75 = add i64 %77, 1
  store i64 %add75, ptr %arrayidx74, align 8
  %dep_map.i.i124 = getelementptr inbounds %struct.ipstats_mib, ptr %75, i32 0, i32 1, i32 0, i32 1
  %78 = tail call ptr @llvm.returnaddress(i32 0) #10
  %79 = ptrtoint ptr %78 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i124, i32 noundef %79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  %80 = ptrtoint ptr %syncp72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %syncp72, align 4
  %inc.i.i.i125 = add i32 %81, 1
  store i32 %inc.i.i.i125, ptr %syncp72, align 4
  tail call fastcc void @local_bh_enable()
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef %opt.i) #10
  br label %cleanup89

if.end81:                                         ; preds = %if.else
  %call82 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.cleanup89_crit_edge

if.end81.cleanup89_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

if.end85:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %head.i.i119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i119, align 8
  %84 = ptrtoint ptr %network_header.i.i120 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i120, align 4
  %conv.i.i128 = zext i16 %85 to i32
  %add.ptr.i.i129 = getelementptr i8, ptr %83, i32 %conv.i.i128
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i129, i32 0, i32 7
  %86 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %check1.i, align 2
  %add.i = add i16 %87, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %87)
  %cmp.i = icmp ugt i16 %87, -258
  %conv2.i = zext i1 %cmp.i to i16
  %add3.i = add i16 %add.i, %conv2.i
  %88 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add3.i, ptr %check1.i, align 2
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i129, i32 0, i32 5
  %89 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ttl.i, align 4
  %dec.i = add i8 %90, -1
  store i8 %dec.i, ptr %ttl.i, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %if.end85, %if.end81.cleanup89_crit_edge, %do.body57, %if.end49, %if.end45.cleanup89_crit_edge, %do.body22
  %retval.1 = phi i1 [ false, %do.body57 ], [ false, %if.end45.cleanup89_crit_edge ], [ false, %do.body22 ], [ false, %if.end81.cleanup89_crit_edge ], [ true, %if.end49 ], [ true, %if.end85 ]
  ret i1 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @maybe_update_pmtu(ptr nocapture noundef readonly %skb, i32 noundef %mtu) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !231

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %and25.i.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i.i to ptr
  %9 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool.not = icmp ne ptr %11, null
  %tobool1.not = icmp eq ptr %2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %skb_rtable.exit.if.end_crit_edge, label %land.lhs.true2

skb_rtable.exit.if.end_crit_edge:                 ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %skb_rtable.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %update_pmtu, align 4
  tail call void %17(ptr noundef %8, ptr noundef nonnull %2, ptr noundef null, i32 noundef %mtu, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %skb_rtable.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ensure_mtu_is_adequate(ptr nocapture noundef readonly %ipvs, i32 noundef %skb_af, i32 noundef %rt_mode, ptr nocapture noundef readonly %ipvsh, ptr noundef %skb, i32 noundef %mtu) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %skb_af)
  %cmp = icmp eq i32 %skb_af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %net1 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 8
  %frag_max_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %frag_max_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %frag_max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %mtu)
  %cmp.i = icmp ugt i32 %conv.i, %mtu
  br i1 %cmp.i, label %if.then.i.if.then3_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i.if.then3_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.else.i:                                        ; preds = %if.then
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mtu)
  %cmp6.i = icmp ugt i32 %5, %mtu
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %if.else.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i = icmp eq i16 %9, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.then3_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.i.if.then3_crit_edge, %if.then.i.if.then3_crit_edge
  %10 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.then5, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %loopback_dev = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %loopback_dev, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3.if.end_crit_edge
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 3
  %16 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not = icmp eq i16 %17, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %18 = ptrtoint ptr %ipvsh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ipvsh, align 4
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then8, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %mtu, ptr noundef null, ptr noundef %cb.i) #10
  br label %do.body

do.body:                                          ; preds = %if.then8, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %call10 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %saddr) #13
  br label %return

if.else:                                          ; preds = %entry
  %and = and i32 %rt_mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else.if.end25_crit_edge, label %land.lhs.true21

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.else
  %sysctl_pmtu_disc.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 50
  %24 = ptrtoint ptr %sysctl_pmtu_disc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sysctl_pmtu_disc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool23.not = icmp eq i32 %25, 0
  br i1 %tobool23.not, label %land.lhs.true21.return_crit_edge, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true21.return_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %head.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i78, align 8
  %network_header.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i.i79 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i79, align 4
  %conv.i.i80 = zext i16 %29 to i32
  %add.ptr.i.i81 = getelementptr i8, ptr %27, i32 %conv.i.i80
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i81, i32 0, i32 4
  %30 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %frag_off, align 2
  %32 = and i16 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool28.not = icmp eq i16 %32, 0
  br i1 %tobool28.not, label %if.end25.return_crit_edge, label %land.lhs.true29

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true29:                                  ; preds = %if.end25
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %mtu)
  %cmp30 = icmp ugt i32 %34, %mtu
  br i1 %cmp30, label %land.lhs.true32, label %land.lhs.true29.return_crit_edge

land.lhs.true29.return_crit_edge:                 ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i82.not = icmp eq i16 %38, 0
  br i1 %tobool.i82.not, label %land.rhs, label %land.lhs.true32.return_crit_edge

land.lhs.true32.return_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.rhs:                                         ; preds = %land.lhs.true32
  %39 = ptrtoint ptr %ipvsh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ipvsh, align 4
  %and.i83 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.i84.not = icmp eq i32 %and.i83, 0
  br i1 %tobool.i84.not, label %if.then43, label %land.rhs.return_crit_edge, !prof !231

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then43:                                        ; preds = %land.rhs
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %mtu, ptr noundef %opt.i) #10
  %call45 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp sgt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %if.then43.return_crit_edge

if.then43.return_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end51:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %head.i.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i78, align 8
  %43 = ptrtoint ptr %network_header.i.i79 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i79, align 4
  %conv.i.i87 = zext i16 %44 to i32
  %add.ptr.i.i88 = getelementptr i8, ptr %42, i32 %conv.i.i87
  %saddr54 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i88, i32 0, i32 8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %saddr54) #13
  br label %return

return:                                           ; preds = %do.end51, %if.then43.return_crit_edge, %land.rhs.return_crit_edge, %land.lhs.true32.return_crit_edge, %land.lhs.true29.return_crit_edge, %if.end25.return_crit_edge, %land.lhs.true21.return_crit_edge, %do.end, %do.body.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.else.i.return_crit_edge, %if.then.i.return_crit_edge
  %retval.1 = phi i1 [ true, %land.lhs.true21.return_crit_edge ], [ false, %if.then43.return_crit_edge ], [ false, %do.end51 ], [ false, %do.body.return_crit_edge ], [ false, %do.end ], [ true, %if.end25.return_crit_edge ], [ true, %land.lhs.true29.return_crit_edge ], [ true, %land.lhs.true32.return_crit_edge ], [ true, %land.rhs.return_crit_edge ], [ true, %if.then.i.return_crit_edge ], [ true, %if.else.i.return_crit_edge ], [ true, %land.lhs.true.i.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_dest_dst_rcu_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !239
  %5 = tail call i32 @llvm.read_register.i32(metadata !216) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !240
  %14 = tail call i32 @llvm.read_register.i32(metadata !216) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !216) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !241
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !242
  %33 = tail call i32 @llvm.read_register.i32(metadata !216) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !226

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.93, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !243
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #10
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ip_vs_route_output_v6(ptr noundef %net, ptr noundef %daddr, ptr noundef writeonly %ret_saddr, i32 noundef %do_xfrm, i32 noundef %rt_mode) unnamed_addr #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  %0 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr1 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %daddr1, ptr %daddr, i32 16)
  %and = and i32 %rt_mode, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 6
  %2 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %flowic_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #10
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 15
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %ret_saddr, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %5 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saddr, align 8
  %arrayidx2.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %8, %6
  %arrayidx4.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 8
  %or5.i = or i32 %or.i, %10
  %arrayidx7.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rt6i_idev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call12 = call i32 @ipv6_dev_get_saddr(ptr noundef %net, ptr noundef %16, ptr noundef %daddr1, i32 noundef 0, ptr noundef %saddr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %land.lhs.true.out_err_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true.out_err_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_xfrm)
  %tobool15.not = icmp eq i32 %do_xfrm, 0
  br i1 %tobool15.not, label %if.end14.if.end22_crit_edge, label %if.then16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %call18 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %call.i, ptr noundef nonnull %fl6, ptr noundef null, i32 noundef 0) #10
  %cmp.i43 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.then16.out_err_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16.out_err_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %dst.0 = phi ptr [ %call18, %if.then16.if.end22_crit_edge ], [ %call.i, %if.end14.if.end22_crit_edge ]
  %17 = call ptr @memcpy(ptr %ret_saddr, ptr %saddr, i32 16)
  br label %cleanup

out_err:                                          ; preds = %if.then16.out_err_crit_edge, %land.lhs.true.out_err_crit_edge, %if.end.out_err_crit_edge
  %dst.1 = phi ptr [ %call.i, %if.end.out_err_crit_edge ], [ %call.i, %land.lhs.true.out_err_crit_edge ], [ null, %if.then16.out_err_crit_edge ]
  call void @dst_release(ptr noundef %dst.1) #10
  %call24 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %out_err.cleanup_crit_edge, label %do.end

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %daddr) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out_err.cleanup_crit_edge, %if.end22, %if.end4.cleanup_crit_edge
  %retval.0 = phi ptr [ %dst.0, %if.end22 ], [ %call.i, %if.end4.cleanup_crit_edge ], [ null, %do.end ], [ null, %out_err.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt6_get_cookie(ptr noundef %rt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sernum = getelementptr inbounds %struct.rt6_info, ptr %rt, i32 0, i32 2
  %0 = ptrtoint ptr %sernum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sernum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !235
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %from2 = getelementptr inbounds %struct.rt6_info, ptr %rt, i32 0, i32 1
  %6 = ptrtoint ptr %from2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %from2, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.110, i32 noundef 306, ptr noundef nonnull @.str.72) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.end12.if.end17_crit_edge, label %if.then15

do.end12.if.end17_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %do.end12
  %fib6_node.i = getelementptr inbounds %struct.fib6_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fib6_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fib6_node.i, align 4
  %call.i24 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26, label %if.then15.do.end7.i_crit_edge

if.then15.do.end7.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i26:                                ; preds = %if.then15
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i26.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i26.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i26
  %.b1.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i27

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i27:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.110, i32 noundef 284, ptr noundef nonnull @.str.72) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i27, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i26.do.end7.i_crit_edge, %if.then15.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end17_crit_edge, label %do.end13.i

do.end7.i.if.end17_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end13.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %fn_sernum.i = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %fn_sernum.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fn_sernum.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !244
  br label %if.end17

if.end17:                                         ; preds = %do.end13.i, %do.end7.i.if.end17_crit_edge, %do.end12.if.end17_crit_edge
  %cookie.1 = phi i32 [ 0, %do.end12.if.end17_crit_edge ], [ 0, %do.end7.i.if.end17_crit_edge ], [ %11, %do.end13.i ]
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i28, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %if.end17
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.80) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !236
  %12 = tail call i32 @llvm.read_register.i32(metadata !216) #10
  %and.i.i.i.i.i35 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cookie.1, %rcu_read_unlock.exit ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_update_conntrack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_flow_hashrnd() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_confirm_conntrack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !171, !173, !174, !175, !176, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214}
!llvm.named.register.sp = !{!216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 709, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ip_vs_bypass_xmit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ip_vs_bypass_xmit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 722, i32 2}
!8 = !{ptr @ip_vs_bypass_xmit._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ip_vs_bypass_xmit._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @ip_vs_bypass_xmit._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 727, i32 2}
!12 = !{ptr @ip_vs_bypass_xmit._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 738, i32 2}
!15 = !{ptr @ip_vs_bypass_xmit_v6._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_bypass_xmit_v6._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ip_vs_bypass_xmit_v6._entry.9, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 750, i32 2}
!19 = !{ptr @ip_vs_bypass_xmit_v6._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ip_vs_bypass_xmit_v6._entry.11, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 755, i32 2}
!22 = !{ptr @ip_vs_bypass_xmit_v6._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 771, i32 2}
!25 = !{ptr @ip_vs_nat_xmit._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ip_vs_nat_xmit._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 781, i32 3}
!29 = !{ptr @ip_vs_nat_xmit._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ip_vs_nat_xmit._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 802, i32 4}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 812, i32 3}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 831, i32 2}
!37 = !{ptr @ip_vs_nat_xmit._entry.20, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 842, i32 2}
!39 = !{ptr @ip_vs_nat_xmit._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ip_vs_nat_xmit._entry.22, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 847, i32 2}
!42 = !{ptr @ip_vs_nat_xmit._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 859, i32 2}
!45 = !{ptr @ip_vs_nat_xmit_v6._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ip_vs_nat_xmit_v6._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ip_vs_nat_xmit_v6._entry.25, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 868, i32 3}
!49 = !{ptr @ip_vs_nat_xmit_v6._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 890, i32 4}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 901, i32 3}
!54 = !{ptr @ip_vs_nat_xmit_v6._entry.29, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 930, i32 2}
!56 = !{ptr @ip_vs_nat_xmit_v6._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ip_vs_nat_xmit_v6._entry.31, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 934, i32 2}
!59 = !{ptr @ip_vs_nat_xmit_v6._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1152, i32 2}
!62 = !{ptr @ip_vs_tunnel_xmit._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ip_vs_tunnel_xmit._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ip_vs_tunnel_xmit._entry.34, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1270, i32 2}
!66 = !{ptr @ip_vs_tunnel_xmit._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ip_vs_tunnel_xmit._entry.36, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1277, i32 2}
!69 = !{ptr @ip_vs_tunnel_xmit._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1301, i32 2}
!72 = !{ptr @ip_vs_tunnel_xmit_v6._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ip_vs_tunnel_xmit_v6._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ip_vs_tunnel_xmit_v6._entry.39, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1417, i32 2}
!76 = !{ptr @ip_vs_tunnel_xmit_v6._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ip_vs_tunnel_xmit_v6._entry.41, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1424, i32 2}
!79 = !{ptr @ip_vs_tunnel_xmit_v6._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1440, i32 2}
!82 = !{ptr @ip_vs_dr_xmit._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ip_vs_dr_xmit._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ip_vs_dr_xmit._entry.44, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1458, i32 2}
!86 = !{ptr @ip_vs_dr_xmit._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ip_vs_dr_xmit._entry.46, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1463, i32 2}
!89 = !{ptr @ip_vs_dr_xmit._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1474, i32 2}
!92 = !{ptr @ip_vs_dr_xmit_v6._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ip_vs_dr_xmit_v6._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ip_vs_dr_xmit_v6._entry.49, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1492, i32 2}
!96 = !{ptr @ip_vs_dr_xmit_v6._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @ip_vs_dr_xmit_v6._entry.51, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1497, i32 2}
!99 = !{ptr @ip_vs_dr_xmit_v6._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1517, i32 2}
!102 = !{ptr @ip_vs_icmp_xmit._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ip_vs_icmp_xmit._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1557, i32 4}
!106 = !{ptr @ip_vs_icmp_xmit._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ip_vs_icmp_xmit._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1567, i32 3}
!110 = !{ptr @ip_vs_icmp_xmit._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ip_vs_icmp_xmit._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @ip_vs_icmp_xmit._entry.60, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1592, i32 2}
!114 = !{ptr @ip_vs_icmp_xmit._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1607, i32 2}
!117 = !{ptr @ip_vs_icmp_xmit_v6._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ip_vs_icmp_xmit_v6._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1645, i32 4}
!121 = !{ptr @ip_vs_icmp_xmit_v6._entry.63, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ip_vs_icmp_xmit_v6._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1656, i32 3}
!125 = !{ptr @ip_vs_icmp_xmit_v6._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ip_vs_icmp_xmit_v6._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @ip_vs_icmp_xmit_v6._entry.69, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 1681, i32 2}
!129 = !{ptr @ip_vs_icmp_xmit_v6._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!132 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!148 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!152 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 340, i32 4}
!155 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @__ip_vs_get_out_rt._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @__ip_vs_get_out_rt._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 365, i32 3}
!160 = !{ptr @__ip_vs_get_out_rt._entry.83, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @__ip_vs_get_out_rt._entry_ptr.85, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 400, i32 4}
!164 = !{ptr @__ip_vs_get_out_rt._entry.86, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @__ip_vs_get_out_rt._entry_ptr.88, !163, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 94, i32 36}
!168 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!169 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 78, i32 8}
!170 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 145, i32 3}
!173 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @do_output_route4._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @do_output_route4._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../include/net/addrconf.h", i32 341, i32 10}
!178 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!181 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 229, i32 4}
!184 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ensure_mtu_is_adequate._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @ensure_mtu_is_adequate._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 247, i32 4}
!189 = !{ptr @ensure_mtu_is_adequate._entry.96, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ensure_mtu_is_adequate._entry_ptr.98, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/skbuff.h", i32 1043, i32 2}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 508, i32 4}
!195 = !{ptr @.str.101, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @__ip_vs_get_out_rt_v6._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @__ip_vs_get_out_rt_v6._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 527, i32 3}
!200 = !{ptr @__ip_vs_get_out_rt_v6._entry.102, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @__ip_vs_get_out_rt_v6._entry_ptr.104, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 563, i32 4}
!204 = !{ptr @__ip_vs_get_out_rt_v6._entry.105, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @__ip_vs_get_out_rt_v6._entry_ptr.107, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/netfilter/ipvs/ip_vs_xmit.c", i32 461, i32 2}
!208 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @__ip_vs_route_output_v6._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @__ip_vs_route_output_v6._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!212 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!213 = !{ptr @.str.110, !212, !"<string literal>", i1 false, i1 false}
!214 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!215 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!216 = !{!"sp"}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2148340768}
!228 = !{i64 2148255232, i64 2148255264, i64 2148255293, i64 2148255327, i64 2148255358, i64 2148255381}
!229 = !{i64 2149909357}
!230 = !{i64 2154638851, i64 2154639339, i64 2154638888, i64 2154638944, i64 2154638978, i64 2154639002, i64 2154639043, i64 2154639064, i64 2154639092, i64 2154639126}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{!"auto-init"}
!233 = !{i64 6508913}
!234 = !{i64 2148251237, i64 2148251263, i64 2148251292, i64 2148251326, i64 2148251357, i64 2148251380}
!235 = !{i64 2149958900}
!236 = !{i64 2149959166}
!237 = !{i64 2159221986}
!238 = !{i64 2149802078}
!239 = !{i64 2149693760}
!240 = !{i64 2149698692}
!241 = !{i64 2149720404}
!242 = !{i64 2149725296}
!243 = !{i64 2149801753}
!244 = !{i64 2157713208}
