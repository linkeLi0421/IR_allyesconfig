; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/pptp.c_pt.bc'
source_filename = "../drivers/net/ppp/pptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.151, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.151 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.gre_protocol = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pppox_proto = type { ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.27, %union.anon.30, %union.anon.31, [48 x i8], %union.anon.32, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.34, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, ptr, %union.anon.29 }
%union.anon.29 = type { ptr }
%union.anon.30 = type { ptr }
%union.anon.31 = type { i64 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i32, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.36, i32, i32, i32, i16, i16, %union.anon.38, i32, %union.anon.39, %union.anon.40, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.36 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i32 }
%union.anon.40 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.pptp_gre_header = type { %struct.gre_base_hdr, i16, i16, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pppox_sock = type { %struct.sock, %struct.ppp_channel, ptr, %union.anon.156, i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%union.anon.156 = type { %struct.pppoe_opt }
%struct.pppoe_opt = type { ptr, i32, %struct.pppoe_addr, %struct.sockaddr_pppox, %struct.work_struct }
%struct.pppoe_addr = type { i16, [6 x i8], [16 x i8] }
%struct.sockaddr_pppox = type <{ i16, i32, %union.anon.157 }>
%union.anon.157 = type { %struct.pptp_addr, [16 x i8] }
%struct.pptp_addr = type { i16, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.21 }
%union.anon.21 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.anon.22 = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.124, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.136, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.136 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.150 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.120, i32, %struct.list_head, ptr }
%union.anon.120 = type { %struct.in6_addr }

@pptp_sk_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1104, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.151 zeroinitializer, ptr null, [32 x i8] c"PPTP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@gre_pptp_protocol = internal constant { %struct.gre_protocol, [24 x i8] } { %struct.gre_protocol { ptr @pptp_rcv, ptr null }, [24 x i8] zeroinitializer }, align 32
@callid_sock = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_pptp__575_684_pptp_init_module6 = internal global ptr @pptp_init_module, section ".initcall6.init", align 4
@__exitcall_pptp_exit_module = internal global ptr @pptp_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description576 = internal constant [51 x i8] c"pptp.description=Point-to-Point Tunneling Protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_author577 = internal constant [36 x i8] c"pptp.author=D. Kozlov (xeb@mail.ru)\00", section ".modinfo", align 1
@__UNIQUE_ID_file578 = internal constant [31 x i8] c"pptp.file=drivers/net/ppp/pptp\00", section ".modinfo", align 1
@__UNIQUE_ID_license579 = internal constant [17 x i8] c"pptp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias580 = internal constant [29 x i8] c"pptp.alias=net-pf-24-proto-2\00", section ".modinfo", align 1
@lookup_chan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/ppp/pptp.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@pptp_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016PPTP driver version 0.8.5\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pptp_init_module\00", [47 x i8] zeroinitializer }, align 32
@pptp_init_module._entry_ptr = internal global ptr @pptp_init_module._entry, section ".printk_index", align 4
@pptp_init_module._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013PPTP: can't add gre protocol\0A\00", [32 x i8] zeroinitializer }, align 32
@pptp_init_module._entry_ptr.9 = internal global ptr @pptp_init_module._entry.7, section ".printk_index", align 4
@pptp_init_module._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013PPTP: can't register sk_proto\0A\00", [63 x i8] zeroinitializer }, align 32
@pptp_init_module._entry_ptr.12 = internal global ptr @pptp_init_module._entry.10, section ".printk_index", align 4
@pppox_pptp_proto = internal constant { %struct.pppox_proto, [20 x i8] } { %struct.pppox_proto { ptr @pptp_create, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pptp_init_module._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013PPTP: can't register pppox_proto\0A\00", [60 x i8] zeroinitializer }, align 32
@pptp_init_module._entry_ptr.15 = internal global ptr @pptp_init_module._entry.13, section ".printk_index", align 4
@pptp_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 24, ptr null, ptr @pptp_release, ptr @pptp_bind, ptr @pptp_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @pptp_getname, ptr null, ptr @pppox_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @sock_no_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@chan_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.4 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@callid_bitmap = internal global { [2048 x i32], [2048 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chan_lock\00", [22 x i8] zeroinitializer }, align 32
@add_chan.call_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pptp_chan_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @pptp_xmit, ptr @pptp_ppp_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@pptp_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013PPTP: failed to register PPP channel (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pptp_connect\00", [19 x i8] zeroinitializer }, align 32
@pptp_connect._entry_ptr = internal global ptr @pptp_connect._entry, section ".printk_index", align 4
@lookup_chan_dst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1074033753, i64 2147775578]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"gre_pptp_protocol\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 633, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"callid_sock\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 44, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 58, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 695, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 640, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 648, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 654, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"pppox_pptp_proto\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 628, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 660, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"pptp_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 608, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"chan_lock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"callid_bitmap\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 43, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 46, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [8 x i8] c"call_id\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 96, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"pptp_chan_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 597, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [26 x i8] c"../drivers/net/ppp/pptp.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 461, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias580, ptr @__UNIQUE_ID_author577, ptr @__UNIQUE_ID_description576, ptr @__UNIQUE_ID_file578, ptr @__UNIQUE_ID_license579, ptr @__exitcall_pptp_exit_module, ptr @__initcall__kmod_pptp__575_684_pptp_init_module6, ptr @pptp_connect._entry, ptr @pptp_connect._entry_ptr, ptr @pptp_exit_module, ptr @pptp_init_module._entry, ptr @pptp_init_module._entry.10, ptr @pptp_init_module._entry.13, ptr @pptp_init_module._entry.7, ptr @pptp_init_module._entry_ptr, ptr @pptp_init_module._entry_ptr.12, ptr @pptp_init_module._entry_ptr.15, ptr @pptp_init_module._entry_ptr.9, ptr @gre_pptp_protocol, ptr @callid_sock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @pppox_pptp_proto, ptr @.str.14, ptr @pptp_ops, ptr @chan_lock, ptr @callid_bitmap, ptr @.str.16, ptr @add_chan.call_id, ptr @pptp_chan_ops, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gre_pptp_protocol to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callid_sock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_init_module._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_init_module._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppox_pptp_proto to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_init_module._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callid_bitmap to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_chan.call_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_chan_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pptp_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_pppox_proto(i32 noundef 2) #10
  tail call void @proto_unregister(ptr noundef nonnull @pptp_sk_proto) #10
  %call = tail call i32 @gre_del_protocol(ptr noundef nonnull @gre_pptp_protocol, i8 noundef zeroext 1) #10
  %0 = load ptr, ptr @callid_sock, align 4
  tail call void @vfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pppox_proto(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gre_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %call2 = tail call noalias ptr @vzalloc(i32 noundef 262144) #14
  store ptr %call2, ptr @callid_sock, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @gre_add_protocol(ptr noundef nonnull @gre_pptp_protocol, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %out_mem_free

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @proto_register(ptr noundef nonnull @pptp_sk_proto, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %out_gre_del_protocol

if.end20:                                         ; preds = %if.end11
  %call21 = tail call i32 @register_pppox_proto(i32 noundef 2, ptr noundef nonnull @pppox_pptp_proto) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %do.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  tail call void @proto_unregister(ptr noundef nonnull @pptp_sk_proto) #10
  br label %out_gre_del_protocol

out_gre_del_protocol:                             ; preds = %do.end26, %do.end17
  %err.0 = phi i32 [ %call12, %do.end17 ], [ %call21, %do.end26 ]
  %call30 = tail call i32 @gre_del_protocol(ptr noundef nonnull @gre_pptp_protocol, i8 noundef zeroext 1) #10
  br label %out_mem_free

out_mem_free:                                     ; preds = %out_gre_del_protocol, %do.end8
  %err.1 = phi i32 [ %call3, %do.end8 ], [ %err.0, %out_gre_del_protocol ]
  %0 = load ptr, ptr @callid_sock, align 4
  tail call void @vfree(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %out_mem_free, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_mem_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_rcv(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !82

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp3.i = icmp ult i32 %2, 12
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !82

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30709, i16 %12)
  %cmp6.not = icmp eq i16 %12, -30709
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end3.drop_crit_edge

if.end3.drop_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

lor.lhs.false:                                    ; preds = %if.end3
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %10, align 1
  %15 = and i16 %14, -8072
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %15)
  %16 = icmp eq i16 %15, 8192
  br i1 %16, label %if.end29, label %lor.lhs.false.drop_crit_edge

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end29:                                         ; preds = %lor.lhs.false
  %call_id = getelementptr inbounds %struct.pptp_gre_header, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %call_id to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %call_id, align 1
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 4
  %21 = tail call i32 @llvm.read_register.i32(metadata !72) #10
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end29.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end29.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end29
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end29.rcu_read_lock.exit.i_crit_edge
  %25 = load ptr, ptr @callid_sock, align 4
  %idxprom.i = zext i16 %18 to i32
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b19.i = load i1, ptr @lookup_chan.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @lookup_chan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %27, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end15.i_crit_edge, label %if.then10.i

do.end7.i.if.end15.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then10.i:                                      ; preds = %do.end7.i
  %sin_addr.i = getelementptr inbounds %struct.pppox_sock, ptr %27, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %28 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sin_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %20)
  %cmp.not.i53 = icmp eq i32 %29, %20
  br i1 %cmp.not.i53, label %if.else.i, label %if.then10.i.if.end15.i_crit_edge

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.else.i:                                        ; preds = %if.then10.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !82

if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end15.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !85

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end15.i_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end15.i_crit_edge, %if.then10.i.if.end15.i_crit_edge, %do.end7.i.if.end15.i_crit_edge
  %sock.0.i = phi ptr [ null, %do.end7.i.if.end15.i_crit_edge ], [ null, %if.then10.i.if.end15.i_crit_edge ], [ %27, %if.else.i.i.i.i.i.if.end15.i_crit_edge ], [ %27, %if.end15.sink.split.i.i.i.i.i ]
  %call.i20.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20.i, label %if.end15.i.lookup_chan.exit_crit_edge, label %land.lhs.true.i23.i

if.end15.i.lookup_chan.exit_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_chan.exit

land.lhs.true.i23.i:                              ; preds = %if.end15.i
  %call1.i21.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.lookup_chan.exit_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.lookup_chan.exit_crit_edge:   ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_chan.exit

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.lookup_chan.exit_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.lookup_chan.exit_crit_edge:  ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_chan.exit

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %lookup_chan.exit

lookup_chan.exit:                                 ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.lookup_chan.exit_crit_edge, %land.lhs.true.i23.i.lookup_chan.exit_crit_edge, %if.end15.i.lookup_chan.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %32 = tail call i32 @llvm.read_register.i32(metadata !72) #10
  %and.i.i.i.i.i27.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %preempt_count.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i28.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i28.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool31.not = icmp eq ptr %sock.0.i, null
  br i1 %tobool31.not, label %lookup_chan.exit.drop_crit_edge, label %if.then32

lookup_chan.exit.drop_crit_edge:                  ; preds = %lookup_chan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.then32:                                        ; preds = %lookup_chan.exit
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i54 = icmp eq i32 %38, 0
  br i1 %tobool.not.i54, label %if.then32.skb_dst_drop.exit_crit_edge, label %if.then.i56

if.then32.skb_dst_drop.exit_crit_edge:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i56:                                      ; preds = %if.then32
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i55 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i55, label %if.then.i.i57, label %if.then.i56.refdst_drop.exit.i_crit_edge

if.then.i56.refdst_drop.exit.i_crit_edge:         ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i57:                                    ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %38, -2
  %39 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %39) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i57, %if.then.i56.refdst_drop.exit.i_crit_edge
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %36, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.then32.skb_dst_drop.exit_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %41 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i59 = and i32 %42, -8
  %43 = inttoptr i32 %and.i.i59 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.not.i.i60, label %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i62

skb_dst_drop.exit.nf_reset_ct.exit_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit

land.lhs.true.i.i62:                              ; preds = %skb_dst_drop.exit
  %call.i.i.i.i.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %43, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i64, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i63 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i63, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !85

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef 3) #10
  br label %nf_reset_ct.exit

if.then.i.i64:                                    ; preds = %land.lhs.true.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %43) #10
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i64, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge
  %45 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %_nfct.i.i, align 8
  %call.i65 = tail call i32 @__sk_receive_skb(ptr noundef nonnull %sock.0.i, ptr noundef %skb, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup

drop:                                             ; preds = %lookup_chan.exit.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %if.end3.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %drop, %nf_reset_ct.exit
  %retval.0 = phi i32 [ 1, %drop ], [ %call.i65, %nf_reset_ct.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gre_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pppox_proto(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_create(ptr noundef %net, ptr noundef %sock, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 24, i32 noundef 3264, ptr noundef nonnull @pptp_sk_proto, i32 noundef %kern) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #10
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pptp_ops, ptr %ops, align 4
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 80
  %2 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pptp_rcv_core, ptr %sk_backlog_rcv, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 0, ptr %skc_state, align 2
  %sk_type = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %sk_type, align 2
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 24, ptr %skc_family, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %sk_protocol, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pptp_sock_destruct, ptr %sk_destruct, align 4
  %seq_sent = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 2, i32 2, i32 8
  %8 = ptrtoint ptr %seq_sent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %seq_sent, align 4
  %seq_recv = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 2, i32 2, i32 12
  %9 = ptrtoint ptr %seq_recv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %seq_recv, align 4
  %ack_recv = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 2, i32 2, i32 4
  %10 = ptrtoint ptr %ack_recv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ack_recv, align 4
  %ack_sent = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 3, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %ack_sent to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ack_sent, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %error.0 = phi i32 [ 0, %if.end ], [ -12, %entry.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_rcv_core(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup110_crit_edge, label %if.then.drop_crit_edge

if.then.drop_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.then.cleanup110_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup110

if.end4:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = and i16 %6, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not = icmp eq i16 %7, 0
  br i1 %tobool7.not, label %if.end4.if.end34_crit_edge, label %if.then8

if.end4.if.end34_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then8:                                         ; preds = %if.end4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.not.i, label %if.end.i, label %if.then8.if.end11_crit_edge, !prof !82

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp3.i = icmp ult i32 %9, 16
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !82

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 16, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end11_crit_edge

pskb_may_pull.exit.if.end11_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end11:                                         ; preds = %pskb_may_pull.exit.if.end11_crit_edge, %if.then8.if.end11_crit_edge
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %13, align 1
  %16 = and i16 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool17.not = icmp eq i16 %16, 0
  %ack18 = getelementptr inbounds %struct.pptp_gre_header, ptr %13, i32 0, i32 4
  %seq19 = getelementptr inbounds %struct.pptp_gre_header, ptr %13, i32 0, i32 3
  %cond.in = select i1 %tobool17.not, ptr %seq19, ptr %ack18
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %cond = load i32, ptr %cond.in, align 1
  %ack_recv = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 3, i32 0, i32 2, i32 2, i32 4
  %18 = ptrtoint ptr %ack_recv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ack_recv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %19)
  %cmp = icmp ugt i32 %cond, %19
  br i1 %cmp, label %if.then21, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ack_recv to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %ack_recv, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end11.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cond)
  %cmp25 = icmp ult i32 %cond, 256
  br i1 %cmp25, label %land.lhs.true, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end23
  %21 = ptrtoint ptr %ack_recv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ack_recv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %22)
  %cmp29 = icmp ugt i32 %22, -257
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %ack_recv to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %ack_recv, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %if.end23.if.end34_crit_edge, %if.end4.if.end34_crit_edge
  %headersize.0 = phi i32 [ 12, %if.end4.if.end34_crit_edge ], [ 16, %if.then31 ], [ 16, %land.lhs.true.if.end34_crit_edge ], [ 16, %if.end23.if.end34_crit_edge ]
  %header.1 = phi ptr [ %4, %if.end4.if.end34_crit_edge ], [ %13, %if.then31 ], [ %13, %land.lhs.true.if.end34_crit_edge ], [ %13, %if.end23.if.end34_crit_edge ]
  %24 = ptrtoint ptr %header.1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %header.1, align 1
  %26 = and i16 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool39.not = icmp eq i16 %26, 0
  br i1 %tobool39.not, label %if.end34.drop_crit_edge, label %if.end41

if.end34.drop_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end41:                                         ; preds = %if.end34
  %payload_len42 = getelementptr inbounds %struct.pptp_gre_header, ptr %header.1, i32 0, i32 1
  %27 = ptrtoint ptr %payload_len42 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %payload_len42, align 1
  %conv43 = zext i16 %28 to i32
  %seq44 = getelementptr inbounds %struct.pptp_gre_header, ptr %header.1, i32 0, i32 3
  %29 = ptrtoint ptr %seq44 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %seq44, align 1
  %add = add nuw nsw i32 %headersize.0, %conv43
  %len.i.i164 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len.i.i164 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i164, align 4
  %data_len.i.i165 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i165 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i165, align 8
  %sub.i.i166 = sub i32 %32, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i166)
  %cmp.not.i167 = icmp ugt i32 %add, %sub.i.i166
  br i1 %cmp.not.i167, label %if.end.i169, label %if.end41.if.end47_crit_edge, !prof !82

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end.i169:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add)
  %cmp3.i168 = icmp ult i32 %32, %add
  br i1 %cmp3.i168, label %if.end.i169.drop_crit_edge, label %pskb_may_pull.exit175, !prof !82

if.end.i169.drop_crit_edge:                       ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

pskb_may_pull.exit175:                            ; preds = %if.end.i169
  %sub.i170 = sub i32 %add, %sub.i.i166
  %call13.i171 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i170) #10
  %cmp14.i172.not = icmp eq ptr %call13.i171, null
  br i1 %cmp14.i172.not, label %pskb_may_pull.exit175.drop_crit_edge, label %pskb_may_pull.exit175.if.end47_crit_edge

pskb_may_pull.exit175.if.end47_crit_edge:         ; preds = %pskb_may_pull.exit175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

pskb_may_pull.exit175.drop_crit_edge:             ; preds = %pskb_may_pull.exit175
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end47:                                         ; preds = %pskb_may_pull.exit175.if.end47_crit_edge, %if.end41.if.end47_crit_edge
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %headersize.0
  %seq_recv = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 3, i32 0, i32 2, i32 2, i32 12
  %37 = ptrtoint ptr %seq_recv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %seq_recv, align 4
  %add49 = add i32 %38, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add49)
  %cmp50 = icmp ult i32 %30, %add49
  br i1 %cmp50, label %if.end47.if.then60_crit_edge, label %lor.lhs.false

if.end47.if.then60_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

lor.lhs.false:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %38)
  %cmp54 = icmp ult i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %30)
  %cmp58 = icmp ugt i32 %30, -257
  %or.cond = select i1 %cmp54, i1 %cmp58, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then60_crit_edge, label %if.else89

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false.if.then60_crit_edge, %if.end47.if.then60_crit_edge
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %cmp62 = icmp eq i8 %40, -1
  br i1 %cmp62, label %land.lhs.true64, label %if.then60.drop_crit_edge

if.then60.drop_crit_edge:                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

land.lhs.true64:                                  ; preds = %if.then60
  %arrayidx65 = getelementptr i8, ptr %add.ptr, i32 1
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp67 = icmp eq i8 %42, 3
  br i1 %cmp67, label %land.lhs.true69, label %land.lhs.true64.drop_crit_edge

land.lhs.true64.drop_crit_edge:                   ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %arrayidx70 = getelementptr i8, ptr %add.ptr, i32 2
  %43 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %44 to i32
  %shl = shl nuw nsw i32 %conv71, 8
  %arrayidx72 = getelementptr i8, ptr %add.ptr, i32 3
  %45 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %46 to i32
  %add74 = or i32 %shl, %conv73
  call void @__sanitizer_cov_trace_const_cmp4(i32 49185, i32 %add74)
  %cmp75 = icmp eq i32 %add74, 49185
  br i1 %cmp75, label %land.lhs.true77, label %land.lhs.true69.drop_crit_edge

land.lhs.true69.drop_crit_edge:                   ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

land.lhs.true77:                                  ; preds = %land.lhs.true69
  %arrayidx78 = getelementptr i8, ptr %add.ptr, i32 4
  %47 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx78, align 1
  %.off = add i8 %48, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch163 = icmp ult i8 %.off, 2
  br i1 %switch163, label %land.lhs.true77.allow_packet_crit_edge, label %land.lhs.true77.drop_crit_edge

land.lhs.true77.drop_crit_edge:                   ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

land.lhs.true77.allow_packet_crit_edge:           ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %allow_packet

if.else89:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %seq_recv to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %30, ptr %seq_recv, align 4
  br label %allow_packet

allow_packet:                                     ; preds = %if.else89, %land.lhs.true77.allow_packet_crit_edge
  %call91 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %headersize.0) #10
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp94 = icmp eq i8 %51, -1
  br i1 %cmp94, label %land.lhs.true96, label %allow_packet.if.end107_crit_edge

allow_packet.if.end107_crit_edge:                 ; preds = %allow_packet
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

land.lhs.true96:                                  ; preds = %allow_packet
  %arrayidx97 = getelementptr i8, ptr %add.ptr, i32 1
  %52 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp99 = icmp eq i8 %53, 3
  br i1 %cmp99, label %if.then101, label %land.lhs.true96.if.end107_crit_edge

land.lhs.true96.if.end107_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then101:                                       ; preds = %land.lhs.true96
  %54 = ptrtoint ptr %len.i.i164 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp102 = icmp ult i32 %55, 3
  br i1 %cmp102, label %if.then101.drop_crit_edge, label %if.end105

if.then101.drop_crit_edge:                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end105:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #10
  br label %if.end107

if.end107:                                        ; preds = %if.end105, %land.lhs.true96.if.end107_crit_edge, %allow_packet.if.end107_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %56 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %57 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head, align 8
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %60 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %61 = trunc i32 %sub.ptr.sub to i16
  %conv1.i = add i16 %conv.i.i, %61
  %62 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 1
  tail call void @ppp_input(ptr noundef %chan, ptr noundef %skb) #10
  br label %cleanup110

drop:                                             ; preds = %if.then101.drop_crit_edge, %land.lhs.true77.drop_crit_edge, %land.lhs.true69.drop_crit_edge, %land.lhs.true64.drop_crit_edge, %if.then60.drop_crit_edge, %pskb_may_pull.exit175.drop_crit_edge, %if.end.i169.drop_crit_edge, %if.end34.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %if.then.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup110

cleanup110:                                       ; preds = %drop, %if.end107, %if.then.cleanup110_crit_edge
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %if.end107 ], [ 0, %if.then.cleanup110_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pptp_sock_destruct(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @chan_lock) #10
  %proto.i = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 3
  %3 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %proto.i, align 8
  %conv.i = zext i16 %4 to i32
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef nonnull @callid_bitmap) #10
  %5 = load ptr, ptr @callid_sock, align 4
  %6 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proto.i, align 8
  %idxprom.i = zext i16 %7 to i32
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chan_lock) #10
  tail call void @pppox_unbind_sock(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #10
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %9 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_dst_cache, align 4
  tail call void @dst_release(ptr noundef %10) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef nonnull %1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @chan_lock) #10
  %proto.i = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proto.i, align 8
  %conv.i = zext i16 %7 to i32
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef nonnull @callid_bitmap) #10
  %8 = load ptr, ptr @callid_sock, align 4
  %9 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %proto.i, align 8
  %idxprom.i = zext i16 %10 to i32
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chan_lock) #10
  tail call void @synchronize_rcu() #10
  tail call void @pppox_unbind_sock(ptr noundef nonnull %1) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 16, ptr %skc_state, align 2
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %14, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %15 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %sk_socket.i.i, align 8
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %16, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %18 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !85

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef %uservaddr, i32 noundef %sockaddr_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sockaddr_len)
  %cmp = icmp ult i32 %sockaddr_len, 30
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end3
  %sa_addr = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @chan_lock) #10
  %8 = ptrtoint ptr %sa_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sa_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end10
  %10 = load i32, ptr @add_chan.call_id, align 4
  %add.i = add i32 %10, 1
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef nonnull @callid_bitmap, i32 noundef 65535, i32 noundef %add.i) #10
  store i32 %call.i, ptr @add_chan.call_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 65535
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then1.i:                                       ; preds = %if.then.i
  %call2.i = tail call i32 @_find_next_zero_bit_be(ptr noundef nonnull @callid_bitmap, i32 noundef 65535, i32 noundef 1) #10
  store i32 %call2.i, ptr @add_chan.call_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 65535
  br i1 %cmp3.i, label %if.then1.i.add_chan.exit.thread_crit_edge, label %if.then1.i.if.end5.i_crit_edge

if.then1.i.if.end5.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then1.i.add_chan.exit.thread_crit_edge:        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_chan.exit.thread

if.end5.i:                                        ; preds = %if.then1.i.if.end5.i_crit_edge, %if.then.i.if.end5.i_crit_edge
  %11 = load i32, ptr @add_chan.call_id, align 4
  %conv.i = trunc i32 %11 to i16
  %12 = ptrtoint ptr %sa_addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %sa_addr, align 4
  br label %if.else

if.else.i:                                        ; preds = %if.end10
  %conv8.i = zext i16 %9 to i32
  %div3.i.i = lshr i32 %conv8.i, 5
  %arrayidx.i.i = getelementptr i32, ptr @callid_bitmap, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv8.i, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not.i = icmp eq i32 %16, 0
  br i1 %tobool10.not.i, label %if.else.i.if.else_crit_edge, label %if.else.i.add_chan.exit.thread_crit_edge

if.else.i.add_chan.exit.thread_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_chan.exit.thread

if.else.i.if.else_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

add_chan.exit.thread:                             ; preds = %if.else.i.add_chan.exit.thread_crit_edge, %if.then1.i.add_chan.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chan_lock) #10
  br label %out

if.else:                                          ; preds = %if.else.i.if.else_crit_edge, %if.end5.i
  %proto.i = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %sa_addr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %sa_addr, align 4
  %19 = ptrtoint ptr %proto.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %proto.i, align 8
  %20 = load i16, ptr %sa_addr, align 4
  %conv15.i = zext i16 %20 to i32
  tail call void @_set_bit(i32 noundef %conv15.i, ptr noundef nonnull @callid_bitmap) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %21 = load ptr, ptr @callid_sock, align 4
  %22 = ptrtoint ptr %sa_addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sa_addr, align 4
  %idxprom42.i = zext i16 %23 to i32
  %arrayidx43.i = getelementptr ptr, ptr %21, i32 %idxprom42.i
  %24 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %1, ptr %arrayidx43.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chan_lock) #10
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  %27 = or i8 %26, 2
  store volatile i8 %27, ptr %skc_state, align 2
  br label %out

out:                                              ; preds = %if.else, %add_chan.exit.thread, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ 0, %if.else ], [ -114, %if.end.out_crit_edge ], [ -16, %if.end3.out_crit_edge ], [ -16, %add_chan.exit.thread ]
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_connect(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %uservaddr, i32 noundef %sockaddr_len, i32 noundef %flags) #2 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #10
  %2 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sockaddr_len)
  %cmp = icmp ult i32 %sockaddr_len, 30
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_protocol = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 1
  %3 = ptrtoint ptr %sa_protocol to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %sa_protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.not = icmp eq i32 %4, 2
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sa_addr = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2
  %5 = ptrtoint ptr %sa_addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %sa_addr, align 1
  %sin_addr = getelementptr inbounds %struct.sockaddr_pppox, ptr %uservaddr, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %sin_addr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %sin_addr, align 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end4.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end4.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end4.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @callid_bitmap, i32 noundef 65535, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i)
  %cmp42.i = icmp slt i32 %call.i, 65535
  br i1 %cmp42.i, label %rcu_read_lock.exit.i.for.body.i_crit_edge, label %rcu_read_lock.exit.i.for.end.i_crit_edge

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %i.043.i = phi i32 [ %call23.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %13 = load ptr, ptr @callid_sock, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.043.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.do.end8.i_crit_edge

for.body.i.do.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b32.i = load i1, ptr @lookup_chan_dst.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @lookup_chan_dst.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.1) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %for.body.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %do.end8.i.for.inc.i_crit_edge, label %if.end12.i

do.end8.i.for.inc.i_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end12.i:                                       ; preds = %do.end8.i
  %dst_addr.i = getelementptr inbounds %struct.pppox_sock, ptr %15, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dst_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %6)
  %cmp15.i = icmp eq i16 %17, %6
  br i1 %cmp15.i, label %land.lhs.true17.i, label %if.end12.i.for.inc.i_crit_edge

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %if.end12.i
  %sin_addr.i = getelementptr inbounds %struct.pppox_sock, ptr %15, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %18 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %8)
  %cmp19.i = icmp eq i32 %19, %8
  br i1 %cmp19.i, label %land.lhs.true17.i.for.end.i_crit_edge, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true17.i.for.end.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge, %do.end8.i.for.inc.i_crit_edge
  %add.i = add nsw i32 %i.043.i, 1
  %call23.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @callid_bitmap, i32 noundef 65535, i32 noundef %add.i) #10
  %cmp.i = icmp slt i32 %call23.i, 65535
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true17.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %tobool.not = phi i1 [ true, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ false, %land.lhs.true17.i.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ]
  %call.i33.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i33.i, label %for.end.i.lookup_chan_dst.exit_crit_edge, label %land.lhs.true.i36.i

for.end.i.lookup_chan_dst.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_chan_dst.exit

land.lhs.true.i36.i:                              ; preds = %for.end.i
  %call1.i34.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call1.i34.i, 0
  br i1 %tobool.not.i35.i, label %land.lhs.true.i36.i.lookup_chan_dst.exit_crit_edge, label %land.lhs.true2.i38.i

land.lhs.true.i36.i.lookup_chan_dst.exit_crit_edge: ; preds = %land.lhs.true.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_chan_dst.exit

land.lhs.true2.i38.i:                             ; preds = %land.lhs.true.i36.i
  %.b4.i37.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37.i, label %land.lhs.true2.i38.i.lookup_chan_dst.exit_crit_edge, label %if.then.i39.i

land.lhs.true2.i38.i.lookup_chan_dst.exit_crit_edge: ; preds = %land.lhs.true2.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_chan_dst.exit

if.then.i39.i:                                    ; preds = %land.lhs.true2.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %lookup_chan_dst.exit

lookup_chan_dst.exit:                             ; preds = %if.then.i39.i, %land.lhs.true2.i38.i.lookup_chan_dst.exit_crit_edge, %land.lhs.true.i36.i.lookup_chan_dst.exit_crit_edge, %for.end.i.lookup_chan_dst.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %20 = tail call i32 @llvm.read_register.i32(metadata !72) #10
  %and.i.i.i.i.i40.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i40.i to ptr
  %preempt_count.i.i.i.i41.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i41.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i41.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool.not, label %if.end8, label %lookup_chan_dst.exit.cleanup_crit_edge

lookup_chan_dst.exit.cleanup_crit_edge:           ; preds = %lookup_chan_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lookup_chan_dst.exit
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state, align 2
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.end_crit_edge

if.end8.end_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end11:                                         ; preds = %if.end8
  %27 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state, align 2
  %29 = and i8 %28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool16.not = icmp eq i8 %29, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.end_crit_edge

if.end11.end_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end18:                                         ; preds = %if.end11
  %sin_addr19 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %sin_addr19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sin_addr19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not = icmp eq i32 %31, 0
  br i1 %tobool21.not, label %if.end18.end_crit_edge, label %lor.lhs.false

if.end18.end_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

lor.lhs.false:                                    ; preds = %if.end18
  %32 = ptrtoint ptr %sin_addr to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %sin_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not = icmp eq i32 %33, 0
  br i1 %tobool25.not, label %lor.lhs.false.end_crit_edge, label %if.end27

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end27:                                         ; preds = %lor.lhs.false
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %chan, align 8
  %ops = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pptp_chan_ops, ptr %ops, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skc_net.i, align 4
  %dst_addr = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2
  %sin_addr30 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %38 = ptrtoint ptr %sin_addr30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sin_addr30, align 4
  %tos = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tos, align 4
  %42 = and i8 %41, 30
  %43 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = lshr i32 %45, 13
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %or = or i8 %48, %42
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %skc_bound_dev_if, align 4
  %call42 = call fastcc ptr @ip_route_output_ports(ptr noundef %37, ptr noundef nonnull %fl4, ptr noundef %1, i32 noundef %39, i32 noundef %31, i8 noundef zeroext %or, i32 noundef %50)
  %cmp.i109 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.end27.end_crit_edge, label %if.end45

if.end27.end_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end45:                                         ; preds = %if.end27
  call void @sk_setup_caps(ptr noundef %1, ptr noundef %call42) #10
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call42, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mtu.i, align 4
  %call.i110 = call i32 %54(ptr noundef %call42) #10
  %mtu = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool51.not = icmp eq i32 %call.i110, 0
  %call.i110.op = add i32 %call.i110, -18
  %sub = select i1 %tobool51.not, i32 1482, i32 %call.i110.op
  %55 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub, ptr %mtu, align 8
  %hdrlen = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 18, ptr %hdrlen, align 4
  %call60 = call i32 @ppp_register_channel(ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end64, label %do.end

do.end:                                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call60) #13
  br label %end

if.end64:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %sa_addr to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %sa_addr, align 1
  %59 = ptrtoint ptr %dst_addr to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %dst_addr, align 4
  %60 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state, align 2
  %62 = or i8 %61, 1
  store volatile i8 %62, ptr %skc_state, align 2
  br label %end

end:                                              ; preds = %if.end64, %do.end, %if.end27.end_crit_edge, %lor.lhs.false.end_crit_edge, %if.end18.end_crit_edge, %if.end11.end_crit_edge, %if.end8.end_crit_edge
  %error.0 = phi i32 [ %call60, %do.end ], [ 0, %if.end64 ], [ -16, %if.end8.end_crit_edge ], [ -114, %if.end11.end_crit_edge ], [ -22, %lor.lhs.false.end_crit_edge ], [ -22, %if.end18.end_crit_edge ], [ -113, %if.end27.end_crit_edge ]
  call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %end, %lookup_chan_dst.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -114, %lookup_chan_dst.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pptp_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %proto = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %proto, align 8
  %4 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 24, ptr %uaddr, align 2
  %sp.sroa.5.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %5 = ptrtoint ptr %sp.sroa.5.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 2, ptr %sp.sroa.5.0.uaddr.sroa_idx, align 2
  %sp.sroa.6.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %6 = ptrtoint ptr %sp.sroa.6.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %3, ptr %sp.sroa.6.0.uaddr.sroa_idx, align 2
  %sp.sroa.8.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 14
  %7 = call ptr @memset(ptr %sp.sroa.8.0.uaddr.sroa_idx, i32 0, i32 16)
  ret i32 30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pppox_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pppox_unbind_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_route_output_ports(ptr noundef %net, ptr noundef %fl4, ptr noundef %sk, i32 noundef %daddr, i32 noundef %saddr, i8 noundef zeroext %tos, i32 noundef %oif) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %sock_net_uid.exit11, label %sock_net_uid.exit

sock_net_uid.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %0 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_mark, align 8
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %2 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %transparent.i, align 8
  %3 = and i16 %bf.load.i, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp ne i16 %3, 0
  %flags.0.i = zext i1 %4 to i8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %5 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.sroa.0.0.copyload.i = load i32, ptr %sk_uid.i, align 4
  %6 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %oif, ptr %fl4, align 8
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %7 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %8 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %flowic_mark.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %9 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %tos, ptr %flowic_tos.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %10 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flowic_scope.i, align 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %11 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 47, ptr %flowic_proto.i, align 2
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %12 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %flags.0.i, ptr %flowic_flags.i, align 1
  %flowic_secid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %13 = ptrtoint ptr %flowic_secid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flowic_secid.i, align 8
  %flowic_tun_key.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %14 = ptrtoint ptr %flowic_tun_key.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %flowic_tun_key.i, align 8
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %15 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.sroa.0.0.copyload.i, ptr %flowic_uid.i, align 4
  %daddr10.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %16 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %daddr, ptr %daddr10.i, align 4
  %saddr11.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %17 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %saddr, ptr %saddr11.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %18 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %uli.i, align 8
  %sport14.i = getelementptr inbounds %struct.anon.22, ptr %uli.i, i32 0, i32 1
  %19 = ptrtoint ptr %sport14.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %sport14.i, align 2
  %flowic_multipath_hash.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %20 = ptrtoint ptr %flowic_multipath_hash.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flowic_multipath_hash.i, align 8
  tail call void @security_sk_classify_flow(ptr noundef nonnull %sk, ptr noundef %fl4) #10
  br label %if.end

sock_net_uid.exit11:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_ns.i7 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %21 = ptrtoint ptr %user_ns.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns.i7, align 4
  %call.i8 = tail call i32 @make_kuid(ptr noundef %22, i32 noundef 0) #10
  %23 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %oif, ptr %fl4, align 8
  %flowic_iif.i12 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %24 = ptrtoint ptr %flowic_iif.i12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %flowic_iif.i12, align 4
  %flowic_mark.i13 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %25 = ptrtoint ptr %flowic_mark.i13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flowic_mark.i13, align 8
  %flowic_tos.i14 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %26 = ptrtoint ptr %flowic_tos.i14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %tos, ptr %flowic_tos.i14, align 4
  %flowic_scope.i15 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %27 = ptrtoint ptr %flowic_scope.i15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %flowic_scope.i15, align 1
  %flowic_proto.i16 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %28 = ptrtoint ptr %flowic_proto.i16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 47, ptr %flowic_proto.i16, align 2
  %flowic_flags.i17 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %29 = ptrtoint ptr %flowic_flags.i17 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %flowic_flags.i17, align 1
  %flowic_secid.i18 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %30 = ptrtoint ptr %flowic_secid.i18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flowic_secid.i18, align 8
  %flowic_tun_key.i19 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %31 = ptrtoint ptr %flowic_tun_key.i19 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %flowic_tun_key.i19, align 8
  %flowic_uid.i20 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %32 = ptrtoint ptr %flowic_uid.i20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i8, ptr %flowic_uid.i20, align 4
  %daddr10.i21 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %33 = ptrtoint ptr %daddr10.i21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %daddr, ptr %daddr10.i21, align 4
  %saddr11.i22 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %34 = ptrtoint ptr %saddr11.i22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %saddr, ptr %saddr11.i22, align 8
  %uli.i23 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %35 = ptrtoint ptr %uli.i23 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %uli.i23, align 8
  %sport14.i24 = getelementptr inbounds %struct.anon.22, ptr %uli.i23, i32 0, i32 1
  %36 = ptrtoint ptr %sport14.i24 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %sport14.i24, align 2
  %flowic_multipath_hash.i25 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %37 = ptrtoint ptr %flowic_multipath_hash.i25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %flowic_multipath_hash.i25, align 8
  br label %if.end

if.end:                                           ; preds = %sock_net_uid.exit11, %sock_net_uid.exit
  %call11 = tail call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef %fl4, ptr noundef %sk) #10
  ret ptr %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_xmit(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #10
  %4 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.tx_error_crit_edge

entry.tx_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end:                                           ; preds = %entry
  %dst_addr = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2
  %sin_addr = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr, align 4
  %sin_addr3 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %sin_addr3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin_addr3, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %skc_bound_dev_if, align 4
  %user_ns.i7.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %user_ns.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i7.i, align 4
  %call.i8.i = tail call i32 @make_kuid(ptr noundef %15, i32 noundef 0) #10
  %16 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %fl4, align 8
  %flowic_iif.i12.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %17 = ptrtoint ptr %flowic_iif.i12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %flowic_iif.i12.i, align 4
  %flowic_mark.i13.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %18 = ptrtoint ptr %flowic_mark.i13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flowic_mark.i13.i, align 8
  %flowic_tos.i14.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %19 = ptrtoint ptr %flowic_tos.i14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %flowic_tos.i14.i, align 4
  %flowic_scope.i15.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %20 = ptrtoint ptr %flowic_scope.i15.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flowic_scope.i15.i, align 1
  %flowic_proto.i16.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %21 = ptrtoint ptr %flowic_proto.i16.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 47, ptr %flowic_proto.i16.i, align 2
  %flowic_flags.i17.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %22 = ptrtoint ptr %flowic_flags.i17.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %flowic_flags.i17.i, align 1
  %flowic_secid.i18.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %23 = ptrtoint ptr %flowic_secid.i18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flowic_secid.i18.i, align 8
  %flowic_tun_key.i19.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %24 = ptrtoint ptr %flowic_tun_key.i19.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %flowic_tun_key.i19.i, align 8
  %flowic_uid.i20.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %25 = ptrtoint ptr %flowic_uid.i20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i8.i, ptr %flowic_uid.i20.i, align 4
  %daddr10.i21.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %26 = ptrtoint ptr %daddr10.i21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %9, ptr %daddr10.i21.i, align 4
  %saddr11.i22.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %27 = ptrtoint ptr %saddr11.i22.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %11, ptr %saddr11.i22.i, align 8
  %uli.i23.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %28 = ptrtoint ptr %uli.i23.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %uli.i23.i, align 8
  %sport14.i24.i = getelementptr inbounds %struct.anon.22, ptr %uli.i23.i, i32 0, i32 1
  %29 = ptrtoint ptr %sport14.i24.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %sport14.i24.i, align 2
  %flowic_multipath_hash.i25.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %30 = ptrtoint ptr %flowic_multipath_hash.i25.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flowic_multipath_hash.i25.i, align 8
  %call11.i = call ptr @ip_route_output_flow(ptr noundef %3, ptr noundef nonnull %fl4, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.tx_error_crit_edge, label %if.end9

if.end.tx_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_error

if.end9:                                          ; preds = %if.end
  %31 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call11.i, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hard_header_len, align 2
  %conv10 = zext i16 %34 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 21
  %35 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %needed_headroom, align 8
  %conv11 = zext i16 %36 to i32
  %add = add nuw nsw i32 %conv11, %conv10
  %and12 = and i32 %add, 131056
  %add16 = add nuw nsw i32 %and12, 54
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add16)
  %cmp = icmp ult i32 %sub.ptr.sub.i, %add16
  br i1 %cmp, label %if.end9.if.then24_crit_edge, label %lor.lhs.false

if.end9.if.then24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end9
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %41 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.lor.lhs.false21_crit_edge, label %skb_cloned.exit

lor.lhs.false.lor.lhs.false21_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false21

skb_cloned.exit:                                  ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #10
  %44 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %45, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i221.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i221.not, label %skb_cloned.exit.lor.lhs.false21_crit_edge, label %skb_cloned.exit.if.then24_crit_edge

skb_cloned.exit.if.then24_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

skb_cloned.exit.lor.lhs.false21_crit_edge:        ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %skb_cloned.exit.lor.lhs.false21_crit_edge, %lor.lhs.false.lor.lhs.false21_crit_edge
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #10
  %46 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i222.not = icmp eq i32 %47, 1
  br i1 %cmp.i222.not, label %lor.lhs.false21.if.end32_crit_edge, label %lor.lhs.false21.if.then24_crit_edge

lor.lhs.false21.if.then24_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false21.if.end32_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then24:                                        ; preds = %lor.lhs.false21.if.then24_crit_edge, %skb_cloned.exit.if.then24_crit_edge, %if.end9.if.then24_crit_edge
  %call25 = call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %add16) #10
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.then24
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool29.not = icmp eq ptr %50, null
  br i1 %tobool29.not, label %if.end28.cleanup.thread_crit_edge, label %if.then30

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_set_owner_w(ptr noundef nonnull %call25, ptr noundef nonnull %50) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then30, %if.end28.cleanup.thread_crit_edge
  call void @consume_skb(ptr noundef %skb) #10
  br label %if.end32

cleanup:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  call void @dst_release(ptr noundef %call11.i) #10
  br label %tx_error

if.end32:                                         ; preds = %cleanup.thread, %lor.lhs.false21.if.end32_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %lor.lhs.false21.if.end32_crit_edge ], [ %call25, %cleanup.thread ]
  %data33 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %51 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data33, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %conv34 = zext i8 %54 to i32
  %shl = shl nuw nsw i32 %conv34, 8
  %arrayidx35 = getelementptr i8, ptr %52, i32 1
  %55 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %56 to i32
  %add37 = or i32 %shl, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 49185, i32 %add37)
  %cmp38 = icmp eq i32 %add37, 49185
  br i1 %cmp38, label %land.lhs.true, label %if.end32.land.end_crit_edge

if.end32.land.end_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx40 = getelementptr i8, ptr %52, i32 2
  %57 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx40, align 1
  %59 = add i8 %58, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %59)
  %60 = icmp ult i8 %59, 7
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %if.end32.land.end_crit_edge
  %61 = phi i1 [ false, %if.end32.land.end_crit_edge ], [ %60, %land.lhs.true ]
  %ppp_flags = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 3
  %62 = ptrtoint ptr %ppp_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ppp_flags, align 4
  %and48 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp53 = icmp ne i8 %54, 0
  %64 = select i1 %tobool49.not, i1 true, i1 %cmp53
  %or.cond255 = select i1 %64, i1 true, i1 %61
  br i1 %or.cond255, label %land.end.if.end59_crit_edge, label %if.then57

land.end.if.end59_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call ptr @skb_pull(ptr noundef %skb.addr.1, i32 noundef 1) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.end.if.end59_crit_edge
  %65 = ptrtoint ptr %ppp_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ppp_flags, align 4
  %and61 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  %brmerge219 = select i1 %cmp62, i1 true, i1 %61
  br i1 %brmerge219, label %if.then66, label %if.end59.if.end70_crit_edge

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %call67 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 2) #10
  %67 = ptrtoint ptr %call67 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %call67, align 1
  %arrayidx69 = getelementptr i8, ptr %call67, i32 1
  %68 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %arrayidx69, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end59.if.end70_crit_edge
  %len71 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %69 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len71, align 4
  %seq_recv72 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 2, i32 12
  %71 = ptrtoint ptr %seq_recv72 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %seq_recv72, align 4
  %ack_sent = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 2
  %73 = ptrtoint ptr %ack_sent to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ack_sent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %72)
  %cmp73 = icmp eq i32 %74, %72
  %spec.select220 = select i1 %cmp73, i32 12, i32 16
  %call77 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef %spec.select220) #10
  %75 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data33, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 12289, ptr %76, align 1
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %protocol to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 -30709, ptr %protocol, align 1
  %79 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dst_addr, align 4
  %call_id81 = getelementptr inbounds %struct.pptp_gre_header, ptr %76, i32 0, i32 2
  %81 = ptrtoint ptr %call_id81 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %call_id81, align 1
  %seq_sent = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 2, i32 8
  %82 = ptrtoint ptr %seq_sent to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seq_sent, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %seq_sent, align 4
  %seq = getelementptr inbounds %struct.pptp_gre_header, ptr %76, i32 0, i32 3
  %84 = ptrtoint ptr %seq to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %inc, ptr %seq, align 1
  %85 = ptrtoint ptr %ack_sent to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ack_sent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %72)
  %cmp83.not = icmp eq i32 %86, %72
  br i1 %cmp83.not, label %if.end70.if.end91_crit_edge, label %if.then85

if.end70.if.end91_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then85:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %76 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %76, align 1
  %89 = or i16 %88, 128
  store i16 %89, ptr %76, align 1
  %ack = getelementptr inbounds %struct.pptp_gre_header, ptr %76, i32 0, i32 4
  %90 = ptrtoint ptr %ack to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %72, ptr %ack, align 1
  %91 = ptrtoint ptr %ack_sent to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %72, ptr %ack_sent, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %if.end70.if.end91_crit_edge
  %conv92 = trunc i32 %70 to i16
  %payload_len = getelementptr inbounds %struct.pptp_gre_header, ptr %76, i32 0, i32 1
  %92 = ptrtoint ptr %payload_len to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %conv92, ptr %payload_len, align 1
  %93 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data33, align 4
  %head.i224 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 18
  %95 = ptrtoint ptr %head.i224 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %head.i224, align 8
  %sub.ptr.lhs.cast.i225 = ptrtoint ptr %94 to i32
  %sub.ptr.rhs.cast.i226 = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i227 = sub i32 %sub.ptr.lhs.cast.i225, %sub.ptr.rhs.cast.i226
  %conv.i228 = trunc i32 %sub.ptr.sub.i227 to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 19
  %97 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i228, ptr %transport_header.i, align 2
  %call93 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 20) #10
  %98 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data33, align 4
  %100 = ptrtoint ptr %head.i224 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %head.i224, align 8
  %sub.ptr.lhs.cast.i231 = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast.i232 = ptrtoint ptr %101 to i32
  %sub.ptr.sub.i233 = sub i32 %sub.ptr.lhs.cast.i231, %sub.ptr.rhs.cast.i232
  %conv.i234 = trunc i32 %sub.ptr.sub.i233 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 20
  %102 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv.i234, ptr %network_header.i, align 4
  %opt94 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 4
  %103 = call ptr @memset(ptr %opt94, i32 0, i32 16)
  %flags97 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 20
  %104 = ptrtoint ptr %flags97 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %flags97, align 4
  %106 = and i16 %105, -23
  store i16 %106, ptr %flags97, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i233, 65535
  %add.ptr.i.i = getelementptr i8, ptr %101, i32 %conv.i.i
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 69, ptr %add.ptr.i.i, align 4
  %pmtudisc1.i = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 11
  %108 = ptrtoint ptr %pmtudisc1.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load volatile i8, ptr %pmtudisc1.i, align 1
  %110 = zext i8 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values)
  switch i8 %109, label %if.end91.if.else_crit_edge [
    i8 2, label %if.end91.if.end110_crit_edge
    i8 1, label %land.rhs.i235
  ]

if.end91.if.end110_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.end91.if.else_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.rhs.i235:                                    ; preds = %if.end91
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %call11.i, i32 0, i32 9
  %111 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load.i.i = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %ip_dont_fragment.exit, label %land.rhs.i235.if.else_crit_edge

land.rhs.i235.if.else_crit_edge:                  ; preds = %land.rhs.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

ip_dont_fragment.exit:                            ; preds = %land.rhs.i235
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %call11.i, i32 0, i32 2
  %112 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %113, -4
  %114 = inttoptr i32 %and.i.i.i.i.i to ptr
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %117 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool107.not.not = icmp eq i32 %117, 0
  br i1 %tobool107.not.not, label %ip_dont_fragment.exit.if.end110_crit_edge, label %ip_dont_fragment.exit.if.else_crit_edge

ip_dont_fragment.exit.if.else_crit_edge:          ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

ip_dont_fragment.exit.if.end110_crit_edge:        ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.else:                                          ; preds = %ip_dont_fragment.exit.if.else_crit_edge, %land.rhs.i235.if.else_crit_edge, %if.end91.if.else_crit_edge
  br label %if.end110

if.end110:                                        ; preds = %if.else, %ip_dont_fragment.exit.if.end110_crit_edge, %if.end91.if.end110_crit_edge
  %.sink = phi i16 [ 0, %if.else ], [ 16384, %if.end91.if.end110_crit_edge ], [ 16384, %ip_dont_fragment.exit.if.end110_crit_edge ]
  %frag_off109 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %frag_off109 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %.sink, ptr %frag_off109, align 2
  %protocol111 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %119 = ptrtoint ptr %protocol111 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 47, ptr %protocol111, align 1
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %tos, align 1
  %121 = ptrtoint ptr %daddr10.i21.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %daddr10.i21.i, align 4
  %daddr112 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %123 = ptrtoint ptr %daddr112 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %daddr112, align 4
  %124 = ptrtoint ptr %saddr11.i22.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %saddr11.i22.i, align 8
  %saddr113 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %126 = ptrtoint ptr %saddr113 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %saddr113, align 4
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %call11.i, i32 0, i32 2
  %127 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %128, -4
  %129 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %129, i32 9
  %130 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i236 = icmp eq i32 %131, 0
  br i1 %cmp.i236, label %if.then.i, label %if.end110.ip4_dst_hoplimit.exit_crit_edge

if.end110.ip4_dst_hoplimit.exit_crit_edge:        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip4_dst_hoplimit.exit

if.then.i:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call11.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 127
  %134 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %135, i32 0, i32 35, i32 37
  %136 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i237 = zext i8 %137 to i32
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %if.then.i, %if.end110.ip4_dst_hoplimit.exit_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i237, %if.then.i ], [ %131, %if.end110.ip4_dst_hoplimit.exit_crit_edge ]
  %conv116 = trunc i32 %hoplimit.0.i to i8
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %138 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv116, ptr %ttl, align 4
  %139 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %len71, align 4
  %conv118 = trunc i32 %140 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %141 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv118, ptr %tot_len, align 2
  %142 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i238 = icmp eq i32 %144, 0
  br i1 %tobool.not.i238, label %ip4_dst_hoplimit.exit.skb_dst_drop.exit_crit_edge, label %if.then.i241

ip4_dst_hoplimit.exit.skb_dst_drop.exit_crit_edge: ; preds = %ip4_dst_hoplimit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i241:                                     ; preds = %ip4_dst_hoplimit.exit
  %and.i.i239 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i239)
  %tobool.not.i.i240 = icmp eq i32 %and.i.i239, 0
  br i1 %tobool.not.i.i240, label %if.then.i.i, label %if.then.i241.refdst_drop.exit.i_crit_edge

if.then.i241.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %144, -2
  %145 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %145) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i241.refdst_drop.exit.i_crit_edge
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %142, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %ip4_dst_hoplimit.exit.skb_dst_drop.exit_crit_edge
  %tobool.not.i242 = icmp eq ptr %call11.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 3
  %147 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %bf.load.i243 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i243, 4096
  %bf.shl.i = select i1 %tobool.not.i242, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i243, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %148 = ptrtoint ptr %call11.i to i32
  %149 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %142, align 8
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 5
  %150 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i244 = and i32 %151, -8
  %152 = inttoptr i32 %and.i.i244 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i244)
  %tobool.not.i.i245 = icmp eq i32 %and.i.i244, 0
  br i1 %tobool.not.i.i245, label %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

skb_dst_drop.exit.nf_reset_ct.exit_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %skb_dst_drop.exit
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %152, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  call void @llvm.prefetch.p0(ptr nonnull %152, i32 1, i32 3, i32 1) #10
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %152, ptr nonnull %152, i32 1, ptr nonnull elementtype(i32) %152) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i246, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !85

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %152, i32 noundef 3) #10
  br label %nf_reset_ct.exit

if.then.i.i246:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @nf_conntrack_destroy(ptr noundef nonnull %152) #10
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i246, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge
  %154 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %_nfct.i.i, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15
  %155 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load120 = load i16, ptr %ip_summed, align 8
  %bf.clear121 = and i16 %bf.load120, -1537
  store i16 %bf.clear121, ptr %ip_summed, align 8
  %156 = ptrtoint ptr %head.i224 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %head.i224, align 8
  %158 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i.i = zext i16 %159 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %157, i32 %conv.i.i.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %160 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %frag_off.i.i, align 2
  %162 = and i16 %161, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool9.not.i.i = icmp ne i16 %162, 0
  %163 = and i16 %bf.load120, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool11.not.i.i = icmp eq i16 %163, 0
  %or.cond = select i1 %tobool9.not.i.i, i1 %tobool11.not.i.i, i1 false
  br i1 %or.cond, label %if.then12.i.i, label %if.else.i.i

if.then12.i.i:                                    ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #12
  %id13.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %164 = ptrtoint ptr %id13.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %id13.i.i, align 4
  br label %ip_select_ident.exit

if.else.i.i:                                      ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__ip_select_ident(ptr noundef %3, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #10
  br label %ip_select_ident.exit

ip_select_ident.exit:                             ; preds = %if.else.i.i, %if.then12.i.i
  call void @ip_send_check(ptr noundef %add.ptr.i.i) #10
  %165 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 1
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %call123 = call i32 @ip_local_out(ptr noundef %3, ptr noundef %167, ptr noundef %skb.addr.1) #10
  br label %cleanup124

tx_error:                                         ; preds = %cleanup, %if.end.tx_error_crit_edge, %entry.tx_error_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup124

cleanup124:                                       ; preds = %tx_error, %ip_select_ident.exit
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_ppp_ioctl(ptr nocapture noundef readonly %chan, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2147191718, label %sw.bb
    i32 1074033753, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ppp_flags = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 3
  %4 = ptrtoint ptr %ppp_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ppp_flags, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 580) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !72) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !91
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %5, i32 -1226833921) #10, !srcloc !94
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 585) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !72) #10
  %and.i.i.i21 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i21 to ptr
  %cpu_domain.i.i22 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i22) #5, !srcloc !91
  %and.i23 = and i32 %12, -13
  %or.i24 = or i32 %and.i23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i24) #10, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #10, !srcloc !95
  %asmresult = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end16:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult12 = extractvalue { i32, i32 } %13, 1
  %and = and i32 %asmresult12, -251658241
  %ppp_flags17 = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 3, i32 0, i32 3
  %14 = ptrtoint ptr %ppp_flags17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %ppp_flags17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %sw.bb3.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -14, %sw.bb3.sw.epilog_crit_edge ], [ 0, %if.end16 ], [ %spec.select, %sw.bb ], [ -25, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_pptp__575_684_pptp_init_module6, !1, !"__initcall__kmod_pptp__575_684_pptp_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/pptp.c", i32 684, i32 1}
!2 = !{ptr @__exitcall_pptp_exit_module, !3, !"__exitcall_pptp_exit_module", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/pptp.c", i32 685, i32 1}
!4 = !{ptr @__UNIQUE_ID_description576, !5, !"__UNIQUE_ID_description576", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/pptp.c", i32 687, i32 1}
!6 = !{ptr @__UNIQUE_ID_author577, !7, !"__UNIQUE_ID_author577", i1 false, i1 false}
!7 = !{!"../drivers/net/ppp/pptp.c", i32 688, i32 1}
!8 = !{ptr @__UNIQUE_ID_file578, !9, !"__UNIQUE_ID_file578", i1 false, i1 false}
!9 = !{!"../drivers/net/ppp/pptp.c", i32 689, i32 1}
!10 = !{ptr @__UNIQUE_ID_license579, !9, !"__UNIQUE_ID_license579", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias580, !12, !"__UNIQUE_ID_alias580", i1 false, i1 false}
!12 = !{!"../drivers/net/ppp/pptp.c", i32 690, i32 1}
!13 = !{ptr @callid_sock, !14, !"callid_sock", i1 false, i1 false}
!14 = !{!"../drivers/net/ppp/pptp.c", i32 44, i32 34}
!15 = !{ptr @pptp_sk_proto, !16, !"pptp_sk_proto", i1 false, i1 false}
!16 = !{!"../drivers/net/ppp/pptp.c", i32 602, i32 21}
!17 = !{ptr @gre_pptp_protocol, !18, !"gre_pptp_protocol", i1 false, i1 false}
!18 = !{!"../drivers/net/ppp/pptp.c", i32 633, i32 34}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/net/ppp/pptp.c", i32 58, i32 9}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ppp/pptp.c", i32 640, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pptp_init_module._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pptp_init_module._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ppp/pptp.c", i32 648, i32 3}
!37 = !{ptr @pptp_init_module._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pptp_init_module._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ppp/pptp.c", i32 654, i32 3}
!41 = !{ptr @pptp_init_module._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pptp_init_module._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ppp/pptp.c", i32 660, i32 3}
!45 = !{ptr @pptp_init_module._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pptp_init_module._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @pppox_pptp_proto, !48, !"pppox_pptp_proto", i1 false, i1 false}
!48 = !{!"../drivers/net/ppp/pptp.c", i32 628, i32 33}
!49 = !{ptr @pptp_ops, !50, !"pptp_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/ppp/pptp.c", i32 608, i32 31}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ppp/pptp.c", i32 46, i32 8}
!53 = !{ptr @chan_lock, !52, !"chan_lock", i1 false, i1 false}
!54 = !{ptr @callid_bitmap, !55, !"callid_bitmap", i1 false, i1 false}
!55 = !{!"../drivers/net/ppp/pptp.c", i32 43, i32 8}
!56 = !{ptr @add_chan.call_id, !57, !"call_id", i1 false, i1 false}
!57 = !{!"../drivers/net/ppp/pptp.c", i32 96, i32 13}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ppp/pptp.c", i32 461, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pptp_connect._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @pptp_connect._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../drivers/net/ppp/pptp.c", i32 80, i32 10}
!65 = !{ptr @pptp_chan_ops, !66, !"pptp_chan_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/ppp/pptp.c", i32 597, i32 37}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/net/dst.h", i32 161, i32 2}
!69 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../drivers/net/ppp/pptp.c", i32 529, i32 14}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2149370122}
!84 = !{i64 2148371156, i64 2148371188, i64 2148371217, i64 2148371251, i64 2148371282, i64 2148371305}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2149370388}
!87 = !{i64 2148459181}
!88 = !{i64 2148373621, i64 2148373653, i64 2148373682, i64 2148373716, i64 2148373747, i64 2148373770}
!89 = !{i64 2149319632}
!90 = !{i64 2157965451}
!91 = !{i64 5966279}
!92 = !{i64 5966476}
!93 = !{i64 2153451709}
!94 = !{i64 2157984271, i64 2157984551, i64 2157984885, i64 2157985219}
!95 = !{i64 2157996429, i64 2157996709, i64 2157997043, i64 2157997377}
