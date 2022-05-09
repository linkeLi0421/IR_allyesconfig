; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_vti.c_pt.bc'
source_filename = "../net/ipv4/ip_vti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfrm4_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
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
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.flowi = type { %union.anon.43 }
%union.anon.43 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.123, [48 x i8], %union.anon.124, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.126, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.123 = type { i64 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.128, i32, i32, i32, i16, i16, %union.anon.130, i32, %union.anon.131, %union.anon.132, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.128 = type { i32 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.52, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.53, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.52 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.53 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, %struct.ip_tunnel_6rd_parm, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.ip_tunnel_6rd_parm = type { %struct.in6_addr, i32, i16, i16 }
%struct.gro_cells = type { ptr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.160, i32, i32, i8, i8 }
%struct.anon.160 = type { i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.64, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.64 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.ip_comp_hdr = type { i8, i8, i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.161 }
%union.anon.161 = type { i32 }

@vti_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 180, ptr null, ptr @vti_tunnel_setup, i8 0, i32 6, ptr @vti_policy, ptr @vti_tunnel_validate, ptr @vti_newlink, ptr @vti_changelink, ptr @ip_tunnel_dellink, ptr @vti_get_size, ptr @vti_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@vti_ipip6_handler = internal global %struct.xfrm_tunnel { ptr @vti_rcv_tunnel, ptr @vti_rcv_cb, ptr @vti4_err, ptr null, i32 0 }, section ".data..read_mostly", align 4
@vti_ipip_handler = internal global %struct.xfrm_tunnel { ptr @vti_rcv_tunnel, ptr @vti_rcv_cb, ptr @vti4_err, ptr null, i32 0 }, section ".data..read_mostly", align 4
@vti_ipcomp4_protocol = internal global %struct.xfrm4_protocol { ptr @vti_rcv_proto, ptr @vti_input_proto, ptr @vti_rcv_cb, ptr @vti4_err, ptr null, i32 100 }, section ".data..read_mostly", align 4
@vti_ah4_protocol = internal global %struct.xfrm4_protocol { ptr @vti_rcv_proto, ptr @vti_input_proto, ptr @vti_rcv_cb, ptr @vti4_err, ptr null, i32 100 }, section ".data..read_mostly", align 4
@vti_esp4_protocol = internal global %struct.xfrm4_protocol { ptr @vti_rcv_proto, ptr @vti_input_proto, ptr @vti_rcv_cb, ptr @vti4_err, ptr null, i32 100 }, section ".data..read_mostly", align 4
@vti_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @vti_init_net, ptr null, ptr null, ptr @vti_exit_batch_net, ptr @vti_net_id, i32 528 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vti__591_722_vti_init6 = internal global ptr @vti_init, section ".initcall6.init", align 4
@__exitcall_vti_fini = internal global ptr @vti_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file592 = internal constant [28 x i8] c"ip_vti.file=net/ipv4/ip_vti\00", section ".modinfo", align 1
@__UNIQUE_ID_license593 = internal constant [19 x i8] c"ip_vti.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias594 = internal constant [27 x i8] c"ip_vti.alias=rtnl-link-vti\00", section ".modinfo", align 1
@__UNIQUE_ID_alias595 = internal constant [28 x i8] c"ip_vti.alias=netdev-ip_vti0\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vti\00", [28 x i8] zeroinitializer }, align 32
@vti_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@vti_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @vti_tunnel_init, ptr @ip_tunnel_uninit, ptr null, ptr null, ptr @vti_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_siocdevprivate, ptr null, ptr @ip_tunnel_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vti_tunnel_ctl, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@vti_net_id = internal global i32 0, section ".data..read_mostly", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip_vti0\00", [24 x i8] zeroinitializer }, align 32
@vti_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016IPv4 over IPsec tunneling driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vti_init\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ipv4/ip_vti.c\00", [46 x i8] zeroinitializer }, align 32
@vti_init._entry_ptr = internal global ptr @vti_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tunnel device\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tunnel protocols\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipip tunnel\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netlink interface\00", [46 x i8] zeroinitializer }, align 32
@vti_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.12, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013vti init: failed to register %s\0A\00", [61 x i8] zeroinitializer }, align 32
@vti_init._entry_ptr.19 = internal global ptr @vti_init._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 35313, i64 35315]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 41]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"vti_net_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 518, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 630, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"vti_policy\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 620, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"vti_netdev_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 404, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1011, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 231, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 271, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 45, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 504, i32 59 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 649, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 651, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 656, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 668, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 679, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [21 x i8] c"../net/ipv4/ip_vti.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 703, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias594, ptr @__UNIQUE_ID_alias595, ptr @__UNIQUE_ID_file592, ptr @__UNIQUE_ID_license593, ptr @__exitcall_vti_fini, ptr @__initcall__kmod_ip_vti__591_722_vti_init6, ptr @vti_fini, ptr @vti_init._entry, ptr @vti_init._entry.17, ptr @vti_init._entry_ptr, ptr @vti_init._entry_ptr.19, ptr @vti_net_ops, ptr @.str, ptr @vti_policy, ptr @vti_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vti_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtnl_link_unregister(ptr noundef nonnull @vti_link_ops) #11
  %call = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @vti_ipip6_handler, i16 noundef zeroext 10) #11
  %call1 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @vti_ipip_handler, i16 noundef zeroext 2) #11
  %call2 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @vti_ipcomp4_protocol, i8 noundef zeroext 108) #11
  %call3 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @vti_ah4_protocol, i8 noundef zeroext 51) #11
  %call4 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @vti_esp4_protocol, i8 noundef zeroext 50) #11
  tail call void @unregister_pernet_device(ptr noundef nonnull @vti_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @vti_net_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end33_crit_edge, label %if.end

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @vti_esp4_protocol, i8 noundef zeroext 50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.xfrm_proto_esp_failed_crit_edge, label %if.end5

if.end.xfrm_proto_esp_failed_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_proto_esp_failed

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @vti_ah4_protocol, i8 noundef zeroext 51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.xfrm_proto_ah_failed_crit_edge, label %if.end9

if.end5.xfrm_proto_ah_failed_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_proto_ah_failed

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @vti_ipcomp4_protocol, i8 noundef zeroext 108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.xfrm_proto_comp_failed_crit_edge, label %if.end13

if.end9.xfrm_proto_comp_failed_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_proto_comp_failed

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @vti_ipip_handler, i16 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.xfrm_tunnel_ipip_failed_crit_edge, label %if.end17

if.end13.xfrm_tunnel_ipip_failed_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_tunnel_ipip_failed

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @vti_ipip6_handler, i16 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.xfrm_tunnel_ipip6_failed_crit_edge, label %if.end21

if.end17.xfrm_tunnel_ipip6_failed_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_tunnel_ipip6_failed

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @rtnl_link_register(ptr noundef nonnull @vti_link_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %rtnl_link_failed, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rtnl_link_failed:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @vti_ipip6_handler, i16 noundef zeroext 10) #11
  br label %xfrm_tunnel_ipip6_failed

xfrm_tunnel_ipip6_failed:                         ; preds = %rtnl_link_failed, %if.end17.xfrm_tunnel_ipip6_failed_crit_edge
  %err.0 = phi i32 [ %call18, %if.end17.xfrm_tunnel_ipip6_failed_crit_edge ], [ %call22, %rtnl_link_failed ]
  %msg.0 = phi ptr [ @.str.15, %if.end17.xfrm_tunnel_ipip6_failed_crit_edge ], [ @.str.16, %rtnl_link_failed ]
  %call27 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @vti_ipip_handler, i16 noundef zeroext 2) #11
  br label %xfrm_tunnel_ipip_failed

xfrm_tunnel_ipip_failed:                          ; preds = %xfrm_tunnel_ipip6_failed, %if.end13.xfrm_tunnel_ipip_failed_crit_edge
  %err.1 = phi i32 [ %call14, %if.end13.xfrm_tunnel_ipip_failed_crit_edge ], [ %err.0, %xfrm_tunnel_ipip6_failed ]
  %msg.1 = phi ptr [ @.str.15, %if.end13.xfrm_tunnel_ipip_failed_crit_edge ], [ %msg.0, %xfrm_tunnel_ipip6_failed ]
  %call28 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @vti_ipcomp4_protocol, i8 noundef zeroext 108) #11
  br label %xfrm_proto_comp_failed

xfrm_proto_comp_failed:                           ; preds = %xfrm_tunnel_ipip_failed, %if.end9.xfrm_proto_comp_failed_crit_edge
  %err.2 = phi i32 [ %call10, %if.end9.xfrm_proto_comp_failed_crit_edge ], [ %err.1, %xfrm_tunnel_ipip_failed ]
  %msg.2 = phi ptr [ @.str.14, %if.end9.xfrm_proto_comp_failed_crit_edge ], [ %msg.1, %xfrm_tunnel_ipip_failed ]
  %call29 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @vti_ah4_protocol, i8 noundef zeroext 51) #11
  br label %xfrm_proto_ah_failed

xfrm_proto_ah_failed:                             ; preds = %xfrm_proto_comp_failed, %if.end5.xfrm_proto_ah_failed_crit_edge
  %err.3 = phi i32 [ %call6, %if.end5.xfrm_proto_ah_failed_crit_edge ], [ %err.2, %xfrm_proto_comp_failed ]
  %msg.3 = phi ptr [ @.str.14, %if.end5.xfrm_proto_ah_failed_crit_edge ], [ %msg.2, %xfrm_proto_comp_failed ]
  %call30 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @vti_esp4_protocol, i8 noundef zeroext 50) #11
  br label %xfrm_proto_esp_failed

xfrm_proto_esp_failed:                            ; preds = %xfrm_proto_ah_failed, %if.end.xfrm_proto_esp_failed_crit_edge
  %err.4 = phi i32 [ %call2, %if.end.xfrm_proto_esp_failed_crit_edge ], [ %err.3, %xfrm_proto_ah_failed ]
  %msg.4 = phi ptr [ @.str.14, %if.end.xfrm_proto_esp_failed_crit_edge ], [ %msg.3, %xfrm_proto_ah_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @vti_net_ops) #11
  br label %do.end33

do.end33:                                         ; preds = %xfrm_proto_esp_failed, %entry.do.end33_crit_edge
  %err.5 = phi i32 [ %call1, %entry.do.end33_crit_edge ], [ %err.4, %xfrm_proto_esp_failed ]
  %msg.5 = phi ptr [ @.str.13, %entry.do.end33_crit_edge ], [ %msg.4, %xfrm_proto_esp_failed ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %msg.5) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %do.end33 ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti_tunnel_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vti_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip_tunnel_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 768, ptr %type, align 16
  %3 = load i32, ptr @vti_net_id, align 4
  tail call void @ip_tunnel_setup(ptr noundef %dev, i32 noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vti_tunnel_validate(ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %parms = alloca %struct.ip_tunnel_parm, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %parms) #11
  %0 = call ptr @memset(ptr %parms, i32 0, i32 52)
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 6
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %protocol.i, align 1
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.vti_netlink_parms.exit_crit_edge, label %if.end.i

entry.vti_netlink_parms.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vti_netlink_parms.exit

if.end.i:                                         ; preds = %entry
  %i_flags.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 2
  %2 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %i_flags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i, align 4
  %link.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 1
  %7 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %link.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %arrayidx5.i = getelementptr ptr, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end10.i_crit_edge, label %if.then7.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i61.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i61.i, align 4
  %i_key.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 4
  %12 = ptrtoint ptr %i_key.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %i_key.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end4.i.if.end10.i_crit_edge
  %arrayidx11.i = getelementptr ptr, ptr %data, i32 3
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %14, null
  br i1 %tobool12.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.then13.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i62.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i62.i, align 4
  %o_key.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 5
  %17 = ptrtoint ptr %o_key.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %o_key.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end16.i_crit_edge
  %arrayidx17.i = getelementptr ptr, ptr %data, i32 4
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %19, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then19.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i63.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i63.i, align 4
  %saddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 8
  %22 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %saddr.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end23.i_crit_edge
  %arrayidx24.i = getelementptr ptr, ptr %data, i32 5
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then26.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i64.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i64.i, align 4
  %daddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 9
  %27 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %daddr.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end30.i_crit_edge
  %arrayidx31.i = getelementptr ptr, ptr %data, i32 6
  %28 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31.i, align 4
  %tobool32.not.i = icmp eq ptr %29, null
  br i1 %tobool32.not.i, label %if.end30.i.vti_netlink_parms.exit_crit_edge, label %if.then33.i

if.end30.i.vti_netlink_parms.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vti_netlink_parms.exit

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i65.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i65.i, align 4
  br label %vti_netlink_parms.exit

vti_netlink_parms.exit:                           ; preds = %if.then33.i, %if.end30.i.vti_netlink_parms.exit_crit_edge, %entry.vti_netlink_parms.exit_crit_edge
  %fwmark.0 = phi i32 [ 0, %entry.vti_netlink_parms.exit_crit_edge ], [ 0, %if.end30.i.vti_netlink_parms.exit_crit_edge ], [ %31, %if.then33.i ]
  %call = call i32 @ip_tunnel_newlink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %parms, i32 noundef %fwmark.0) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %parms) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %p = alloca %struct.ip_tunnel_parm, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fwmark1 = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %fwmark1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwmark1, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #11
  %2 = call ptr @memset(ptr %p, i32 0, i32 52)
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %protocol.i, align 1
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.vti_netlink_parms.exit_crit_edge, label %if.end.i

entry.vti_netlink_parms.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vti_netlink_parms.exit

if.end.i:                                         ; preds = %entry
  %i_flags.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %i_flags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i, align 4
  %link.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %link.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %arrayidx5.i = getelementptr ptr, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end10.i_crit_edge, label %if.then7.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i61.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i61.i, align 4
  %i_key.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 4
  %14 = ptrtoint ptr %i_key.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %i_key.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end4.i.if.end10.i_crit_edge
  %arrayidx11.i = getelementptr ptr, ptr %data, i32 3
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %16, null
  br i1 %tobool12.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.then13.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i62.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i62.i, align 4
  %o_key.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 5
  %19 = ptrtoint ptr %o_key.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %o_key.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end16.i_crit_edge
  %arrayidx17.i = getelementptr ptr, ptr %data, i32 4
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %21, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then19.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i63.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i63.i, align 4
  %saddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 8
  %24 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %saddr.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end23.i_crit_edge
  %arrayidx24.i = getelementptr ptr, ptr %data, i32 5
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %26, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then26.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i64.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i64.i, align 4
  %daddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %29 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %daddr.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end30.i_crit_edge
  %arrayidx31.i = getelementptr ptr, ptr %data, i32 6
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx31.i, align 4
  %tobool32.not.i = icmp eq ptr %31, null
  br i1 %tobool32.not.i, label %if.end30.i.vti_netlink_parms.exit_crit_edge, label %if.then33.i

if.end30.i.vti_netlink_parms.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vti_netlink_parms.exit

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i65.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i65.i, align 4
  br label %vti_netlink_parms.exit

vti_netlink_parms.exit:                           ; preds = %if.then33.i, %if.end30.i.vti_netlink_parms.exit_crit_edge, %entry.vti_netlink_parms.exit_crit_edge
  %fwmark.0 = phi i32 [ %1, %entry.vti_netlink_parms.exit_crit_edge ], [ %1, %if.end30.i.vti_netlink_parms.exit_crit_edge ], [ %33, %if.then33.i ]
  %call2 = call i32 @ip_tunnel_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %fwmark.0) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_dellink(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vti_get_size(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tmp.i34 = alloca i32, align 4
  %tmp.i.i32 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i30 = alloca i32, align 4
  %tmp.i28 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr i8, ptr %dev, i32 2380
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_key = getelementptr i8, ptr %dev, i32 2388
  %3 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #11
  %5 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i28, align 4
  %call.i29 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i28) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool3.not = icmp eq i32 %call.i29, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %6 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %o_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30) #11
  %8 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i30, align 4
  %call.i31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i30) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool6.not = icmp eq i32 %call.i31, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %9 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %11 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i32) #11
  %14 = ptrtoint ptr %tmp.i.i32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i.i32, align 4
  %call.i.i33 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i.i32) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool13.not = icmp eq i32 %call.i.i33, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  %fwmark = getelementptr i8, ptr %dev, i32 2476
  %15 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34) #11
  %17 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i34, align 4
  %call.i35 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i34) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool16.not = icmp eq i32 %call.i35, 0
  %spec.select = select i1 %tobool16.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false14, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false10.cleanup_crit_edge ], [ -90, %lor.lhs.false7.cleanup_crit_edge ], [ -90, %lor.lhs.false4.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_get_link_net(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_tunnel_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr i8, ptr %dev, i32 2408
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %saddr, i32 noundef 4) #11
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr, align 4
  %2 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %broadcast, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %flags, align 8
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %addr_len, align 1
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %or = or i64 %6, 4096
  store i64 %or, ptr %features, align 16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %8, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %call2 = tail call i32 @ip_tunnel_init(ptr noundef %dev) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_uninit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_tunnel_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %fl = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl) #11
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %switch.selectcmp.i = icmp eq i16 %1, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %switch.selectcmp3.i = icmp eq i16 %1, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_err_crit_edge, label %pskb_inet_may_pull.exit, !prof !81

if.end.i.i.i.tx_err_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_err

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #11
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_err_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pskb_inet_may_pull.exit.tx_err_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_err

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = call ptr @memset(ptr %fl, i32 0, i32 88)
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol.i, align 8
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %if.end.tx_err_crit_edge [
    i16 2048, label %if.end.sw.epilog_crit_edge
    i16 -31011, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.tx_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_err

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 10, %sw.bb3 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %call.i18 = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl, i32 noundef %.sink, i32 noundef 0) #11
  %cb5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %16 = call ptr @memset(ptr %cb5, i32 0, i32 24)
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %17 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %o_key, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %19 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flowic_mark, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.skb_dst.exit.i_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !81

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %sw.epilog.skb_dst.exit.i_crit_edge
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %and25.i.i = and i32 %24, -2
  %25 = inttoptr i32 %and25.i.i to ptr
  %26 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %skb_dst.exit.i.if.end36.i_crit_edge

skb_dst.exit.i.if.end36.i_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then.i:                                        ; preds = %skb_dst.exit.i
  %28 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol.i, align 8
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %29, label %sw.default.i [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex.i, align 4
  %33 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %fl, align 8
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %34 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flowic_flags.i, align 1
  %36 = or i8 %35, 1
  store i8 %36, ptr %flowic_flags.i, align 1
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %37 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nd_net.i.i, align 4
  %call.i2.i = call ptr @ip_route_output_key_hash(ptr noundef %38, ptr noundef nonnull %fl, ptr noundef null) #11
  %cmp.i.i = icmp ugt ptr %call.i2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i, label %sw.bb.i.if.end36.sink.split.i_crit_edge

sw.bb.i.if.end36.sink.split.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.sink.split.i

cleanup.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %39 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %tx_carrier_errors.i, align 4
  br label %tx_error_icmp.i

sw.bb13.i:                                        ; preds = %if.then.i
  %ifindex14.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex14.i, align 4
  %43 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fl, align 8
  %flowic_flags20.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %44 = ptrtoint ptr %flowic_flags20.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flowic_flags20.i, align 1
  %46 = or i8 %45, 1
  store i8 %46, ptr %flowic_flags20.i, align 1
  %nd_net.i4.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %47 = ptrtoint ptr %nd_net.i4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nd_net.i4.i, align 4
  %call.i5.i = call ptr @ip6_route_output_flags(ptr noundef %48, ptr noundef null, ptr noundef nonnull %fl, i32 noundef 0) #11
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call.i5.i, i32 0, i32 15
  %49 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool27.not.i = icmp eq i16 %50, 0
  br i1 %tobool27.not.i, label %sw.bb13.i.if.end36.sink.split.i_crit_edge, label %if.then28.i

sw.bb13.i.if.end36.sink.split.i_crit_edge:        ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.sink.split.i

if.then28.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dst_release(ptr noundef %call.i5.i) #11
  %tx_carrier_errors30.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %51 = ptrtoint ptr %tx_carrier_errors30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_carrier_errors30.i, align 4
  %inc31.i = add i32 %52, 1
  store i32 %inc31.i, ptr %tx_carrier_errors30.i, align 4
  br label %tx_error_icmp.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_carrier_errors34.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %53 = ptrtoint ptr %tx_carrier_errors34.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_carrier_errors34.i, align 4
  %inc35.i = add i32 %54, 1
  store i32 %inc35.i, ptr %tx_carrier_errors34.i, align 4
  br label %tx_error_icmp.i

if.end36.sink.split.i:                            ; preds = %sw.bb13.i.if.end36.sink.split.i_crit_edge, %sw.bb.i.if.end36.sink.split.i_crit_edge
  %tobool.not.i3.sink.in.i = phi ptr [ %call.i2.i, %sw.bb.i.if.end36.sink.split.i_crit_edge ], [ %call.i5.i, %sw.bb13.i.if.end36.sink.split.i_crit_edge ]
  %slow_gro.i7.sink.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %tobool.not.i3.sink.i = icmp eq ptr %tobool.not.i3.sink.in.i, null
  %55 = ptrtoint ptr %slow_gro.i7.sink.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load.i8.i = load i32, ptr %slow_gro.i7.sink.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i8.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i3.sink.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i8.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i7.sink.i, align 2
  %56 = ptrtoint ptr %tobool.not.i3.sink.in.i to i32
  %57 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %20, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %skb_dst.exit.i.if.end36.i_crit_edge
  %dst.1.i = phi ptr [ %25, %skb_dst.exit.i.if.end36.i_crit_edge ], [ %tobool.not.i3.sink.in.i, %if.end36.sink.split.i ]
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst.1.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #11
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #11, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #11
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %net.i = getelementptr i8, ptr %dev, i32 2324
  %59 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i, align 4
  %call37.i = call ptr @xfrm_lookup_route(ptr noundef %60, ptr noundef %dst.1.i, ptr noundef nonnull %fl, ptr noundef null, i32 noundef 0) #11
  %cmp.i13.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i13.i, label %if.then39.i, label %if.end43.i

if.then39.i:                                      ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_carrier_errors41.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %61 = ptrtoint ptr %tx_carrier_errors41.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_carrier_errors41.i, align 4
  %inc42.i = add i32 %62, 1
  store i32 %inc42.i, ptr %tx_carrier_errors41.i, align 4
  br label %tx_error_icmp.i

if.end43.i:                                       ; preds = %dst_hold.exit.i
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %call37.i, i32 0, i32 7
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags.i, align 4
  %65 = and i16 %64, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool45.not.i = icmp eq i16 %65, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end43.i.xmit.i_crit_edge

if.end43.i.xmit.i_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xmit.i

if.end47.i:                                       ; preds = %if.end43.i
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %call37.i, i32 0, i32 4
  %66 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xfrm.i, align 4
  %daddr.i = getelementptr i8, ptr %dev, i32 2412
  %68 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %daddr.i, align 4
  %saddr.i = getelementptr i8, ptr %dev, i32 2408
  %70 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %saddr.i, align 4
  %tobool.not.i14.i = icmp eq ptr %67, null
  br i1 %tobool.not.i14.i, label %if.end47.i.if.then50.i_crit_edge, label %lor.lhs.false.i.i

if.end47.i.if.then50.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

lor.lhs.false.i.i:                                ; preds = %if.end47.i
  %mode.i.i = getelementptr inbounds %struct.xfrm_state, ptr %67, i32 0, i32 14, i32 1
  %72 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp.not.i.i = icmp eq i8 %73, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.if.then50.i_crit_edge

lor.lhs.false.i.i.if.then50.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %family.i.i = getelementptr inbounds %struct.xfrm_state, ptr %67, i32 0, i32 14, i32 7
  %74 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %family.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %75)
  %cmp5.not.i.i = icmp eq i16 %75, 2
  br i1 %cmp5.not.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.if.then50.i_crit_edge

lor.lhs.false2.i.i.if.then50.i_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool7.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool7.not.i.i, label %vti_state_check.exit.i, label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %id.i.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %67, i32 0, i32 7
  %76 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %69)
  %cmp.i.i.i.i = icmp eq i32 %77, %69
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end11.i.i.if.then50.i_crit_edge

if.end11.i.i.if.then50.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end11.i.i
  %saddr2.i.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %67, i32 0, i32 14, i32 8
  %78 = ptrtoint ptr %saddr2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %saddr2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %71)
  %cmp3.i.i.i.i = icmp eq i32 %79, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i.i = icmp eq i32 %71, 0
  %or.cond.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool7.not.i.i.i.i = icmp eq i32 %79, 0
  %or.cond12.i.i.i.i = or i1 %tobool7.not.i.i.i.i, %or.cond.i.i.i.i
  br i1 %or.cond12.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end54.i_crit_edge, label %land.lhs.true.i.i.i.i.if.then50.i_crit_edge

land.lhs.true.i.i.i.i.if.then50.i_crit_edge:      ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

land.lhs.true.i.i.i.i.if.end54.i_crit_edge:       ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

vti_state_check.exit.i:                           ; preds = %if.end.i.i
  %saddr10.i.i = getelementptr inbounds %struct.xfrm_state, ptr %67, i32 0, i32 14, i32 8
  %80 = ptrtoint ptr %saddr10.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %saddr10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %71)
  %cmp.i.i.i = icmp eq i32 %81, %71
  br i1 %cmp.i.i.i, label %vti_state_check.exit.i.if.end54.i_crit_edge, label %vti_state_check.exit.i.if.then50.i_crit_edge

vti_state_check.exit.i.if.then50.i_crit_edge:     ; preds = %vti_state_check.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

vti_state_check.exit.i.if.end54.i_crit_edge:      ; preds = %vti_state_check.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then50.i:                                      ; preds = %vti_state_check.exit.i.if.then50.i_crit_edge, %land.lhs.true.i.i.i.i.if.then50.i_crit_edge, %if.end11.i.i.if.then50.i_crit_edge, %lor.lhs.false2.i.i.if.then50.i_crit_edge, %lor.lhs.false.i.i.if.then50.i_crit_edge, %if.end47.i.if.then50.i_crit_edge
  %tx_carrier_errors52.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %82 = ptrtoint ptr %tx_carrier_errors52.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_carrier_errors52.i, align 4
  %inc53.i = add i32 %83, 1
  store i32 %inc53.i, ptr %tx_carrier_errors52.i, align 4
  call void @dst_release(ptr noundef %call37.i) #11
  br label %tx_error_icmp.i

if.end54.i:                                       ; preds = %vti_state_check.exit.i.if.end54.i_crit_edge, %land.lhs.true.i.i.i.i.if.end54.i_crit_edge
  %84 = ptrtoint ptr %call37.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call37.i, align 4
  %cmp.i = icmp eq ptr %85, %dev
  br i1 %cmp.i, label %if.then57.i, label %if.end60.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dst_release(ptr noundef %call37.i) #11
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %86 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %collisions.i, align 4
  %inc59.i = add i32 %87, 1
  store i32 %inc59.i, ptr %collisions.i, align 4
  br label %tx_error.i

if.end60.i:                                       ; preds = %if.end54.i
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %call37.i, i32 0, i32 1
  %88 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mtu.i.i, align 4
  %call.i15.i = call i32 %91(ptr noundef %call37.i) #11
  %92 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %call.i15.i)
  %cmp63.i = icmp ugt i32 %93, %call.i15.i
  br i1 %cmp63.i, label %if.then65.i, label %if.end60.i.xmit.i_crit_edge

if.end60.i.xmit.i_crit_edge:                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xmit.i

if.then65.i:                                      ; preds = %if.end60.i
  %94 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %20, align 8
  %and.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then65.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then65.i.skb_dst.exit.i.i_crit_edge:           ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then65.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !81

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then65.i.skb_dst.exit.i.i_crit_edge
  %96 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %20, align 8
  %and25.i.i.i = and i32 %97, -2
  %98 = inttoptr i32 %and25.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i16.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i16.i, label %skb_dst.exit.i.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge, label %land.lhs.true.i19.i

skb_dst.exit.i.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_update_pmtu_no_confirm.exit.i

land.lhs.true.i19.i:                              ; preds = %skb_dst.exit.i.i
  %ops.i17.i = getelementptr inbounds %struct.dst_entry, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %ops.i17.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i17.i, align 4
  %update_pmtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %update_pmtu.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %update_pmtu.i.i, align 4
  %tobool1.not.i18.i = icmp eq ptr %102, null
  br i1 %tobool1.not.i18.i, label %land.lhs.true.i19.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i19.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_update_pmtu_no_confirm.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %102(ptr noundef nonnull %98, ptr noundef null, ptr noundef %skb, i32 noundef %call.i15.i, i1 noundef zeroext false) #11
  br label %skb_dst_update_pmtu_no_confirm.exit.i

skb_dst_update_pmtu_no_confirm.exit.i:            ; preds = %if.then.i.i, %land.lhs.true.i19.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge, %skb_dst.exit.i.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge
  %103 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %104)
  %cmp68.i = icmp eq i16 %104, 2048
  br i1 %cmp68.i, label %if.then70.i, label %if.else.i

if.then70.i:                                      ; preds = %skb_dst_update_pmtu_no_confirm.exit.i
  %105 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i.i.i.i, align 8
  %107 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i = zext i16 %108 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %106, i32 %conv.i.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %109 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %frag_off.i, align 2
  %111 = and i16 %110, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool74.not.i = icmp eq i16 %111, 0
  br i1 %tobool74.not.i, label %if.then70.i.xmit.i_crit_edge, label %if.end76.i

if.then70.i.xmit.i_crit_edge:                     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xmit.i

if.end76.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %call.i15.i) #11
  br label %if.end81.i

if.else.i:                                        ; preds = %skb_dst_update_pmtu_no_confirm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = call i32 @llvm.smax.i32(i32 %call.i15.i, i32 1280) #11
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %112) #11
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else.i, %if.end76.i
  call void @dst_release(ptr noundef %call37.i) #11
  br label %tx_error.i

xmit.i:                                           ; preds = %if.then70.i.xmit.i_crit_edge, %if.end60.i.xmit.i_crit_edge, %if.end43.i.xmit.i_crit_edge
  %113 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net.i, align 4
  %nd_net.i21.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %115 = ptrtoint ptr %nd_net.i21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %nd_net.i21.i, align 4
  %cmp.i22.i = icmp ne ptr %114, %116
  call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i22.i) #11
  %tobool.not.i23.i = icmp eq ptr %call37.i, null
  %slow_gro.i24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %117 = ptrtoint ptr %slow_gro.i24.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %bf.load.i25.i = load i32, ptr %slow_gro.i24.i, align 2
  %bf.load.mask.i26.i = and i32 %bf.load.i25.i, 4096
  %bf.shl.i27.i = select i1 %tobool.not.i23.i, i32 %bf.load.mask.i26.i, i32 4096
  %bf.clear4.i28.i = and i32 %bf.load.i25.i, -4097
  %bf.set.i29.i = or i32 %bf.shl.i27.i, %bf.clear4.i28.i
  store i32 %bf.set.i29.i, ptr %slow_gro.i24.i, align 2
  %118 = ptrtoint ptr %call37.i to i32
  %119 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %20, align 8
  %and.i30.i = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool.not.i31.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool.not.i31.i, label %xmit.i.skb_dst.exit41.i_crit_edge, label %land.lhs.true.i34.i

xmit.i.skb_dst.exit41.i_crit_edge:                ; preds = %xmit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit41.i

land.lhs.true.i34.i:                              ; preds = %xmit.i
  %call.i32.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool1.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool1.not.i33.i, label %land.rhs.i37.i, label %land.lhs.true.i34.i.skb_dst.exit41.i_crit_edge

land.lhs.true.i34.i.skb_dst.exit41.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit41.i

land.rhs.i37.i:                                   ; preds = %land.lhs.true.i34.i
  %call2.i35.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35.i)
  %tobool3.not.i36.i = icmp eq i32 %call2.i35.i, 0
  br i1 %tobool3.not.i36.i, label %do.end.i38.i, label %land.rhs.i37.i.skb_dst.exit41.i_crit_edge, !prof !81

land.rhs.i37.i.skb_dst.exit41.i_crit_edge:        ; preds = %land.rhs.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit41.i

do.end.i38.i:                                     ; preds = %land.rhs.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit41.i

skb_dst.exit41.i:                                 ; preds = %do.end.i38.i, %land.rhs.i37.i.skb_dst.exit41.i_crit_edge, %land.lhs.true.i34.i.skb_dst.exit41.i_crit_edge, %xmit.i.skb_dst.exit41.i_crit_edge
  %120 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %20, align 8
  %and25.i39.i = and i32 %121, -2
  %122 = inttoptr i32 %and25.i39.i to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %125 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %124, ptr %125, align 8
  %127 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net.i, align 4
  %129 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %and.i.i42.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42.i)
  %tobool.not.i.i43.i = icmp eq i32 %and.i.i42.i, 0
  br i1 %tobool.not.i.i43.i, label %skb_dst.exit41.i.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i46.i

skb_dst.exit41.i.dst_output.exit.i_crit_edge:     ; preds = %skb_dst.exit41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit.i

land.lhs.true.i.i46.i:                            ; preds = %skb_dst.exit41.i
  %call.i.i44.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool1.not.i.i45.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool1.not.i.i45.i, label %land.rhs.i.i49.i, label %land.lhs.true.i.i46.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i46.i.dst_output.exit.i_crit_edge: ; preds = %land.lhs.true.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit.i

land.rhs.i.i49.i:                                 ; preds = %land.lhs.true.i.i46.i
  %call2.i.i47.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i47.i)
  %tobool3.not.i.i48.i = icmp eq i32 %call2.i.i47.i, 0
  br i1 %tobool3.not.i.i48.i, label %do.end.i.i50.i, label %land.rhs.i.i49.i.dst_output.exit.i_crit_edge, !prof !81

land.rhs.i.i49.i.dst_output.exit.i_crit_edge:     ; preds = %land.rhs.i.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit.i

do.end.i.i50.i:                                   ; preds = %land.rhs.i.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i50.i, %land.rhs.i.i49.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i46.i.dst_output.exit.i_crit_edge, %skb_dst.exit41.i.dst_output.exit.i_crit_edge
  %132 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %20, align 8
  %and25.i.i51.i = and i32 %133, -2
  %134 = inttoptr i32 %and25.i.i51.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %134, i32 0, i32 6
  %135 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = call i32 %136(ptr noundef %128, ptr noundef %131, ptr noundef %skb) #11
  %137 = and i32 %call1.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %138 = icmp eq i32 %137, 0
  %err.0.i = select i1 %138, i32 %27, i32 %call1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp.i53.i = icmp sgt i32 %err.0.i, 0
  br i1 %cmp.i53.i, label %if.then.i55.i, label %if.else.i.i

if.then.i55.i:                                    ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %142, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %143 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 64
  %146 = ptrtoint ptr %145 to i32
  %147 = call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i54.i = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i54.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %150
  %151 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i20 = add i32 %152, %146
  %153 = inttoptr i32 %add.i.i20 to ptr
  %syncp.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %153, i32 0, i32 4
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #11
  %conv33.i.i = zext i32 %err.0.i to i64
  %tx_bytes.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %tx_bytes.i.i, align 8
  %add6.i.i = add i64 %155, %conv33.i.i
  store i64 %add6.i.i, ptr %tx_bytes.i.i, align 8
  %tx_packets.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %153, i32 0, i32 2
  %156 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %tx_packets.i.i, align 16
  %inc.i.i = add i64 %157, 1
  store i64 %inc.i.i, ptr %tx_packets.i.i, align 16
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %153, i32 0, i32 4, i32 0, i32 1
  %158 = call ptr @llvm.returnaddress(i32 0) #11
  %159 = ptrtoint ptr %158 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %159) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !86
  %160 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %161, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %162 = call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i31.i.i = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i31.i.i to ptr
  %preempt_count.i.i32.i.i = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i32.i.i, align 4
  %sub.i.i.i21 = add i32 %165, -1
  store volatile i32 %sub.i.i.i21, ptr %preempt_count.i.i32.i.i, align 4
  br label %cleanup

if.else.i.i:                                      ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp14.i.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else19.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %166 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tx_errors.i.i, align 4
  %inc17.i.i = add i32 %167, 1
  store i32 %inc17.i.i, ptr %tx_errors.i.i, align 4
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %168 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_aborted_errors.i.i, align 4
  %inc18.i.i = add i32 %169, 1
  store i32 %inc18.i.i, ptr %tx_aborted_errors.i.i, align 4
  br label %cleanup

if.else19.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %170 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tx_dropped.i.i, align 4
  %inc20.i.i = add i32 %171, 1
  store i32 %inc20.i.i, ptr %tx_dropped.i.i, align 4
  br label %cleanup

tx_error_icmp.i:                                  ; preds = %if.then50.i, %if.then39.i, %sw.default.i, %if.then28.i, %cleanup.i
  %172 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %20, align 8
  %and.i.i56.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56.i)
  %tobool.not.i.i57.i = icmp eq i32 %and.i.i56.i, 0
  br i1 %tobool.not.i.i57.i, label %tx_error_icmp.i.skb_dst.exit.i67.i_crit_edge, label %land.lhs.true.i.i60.i

tx_error_icmp.i.skb_dst.exit.i67.i_crit_edge:     ; preds = %tx_error_icmp.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i67.i

land.lhs.true.i.i60.i:                            ; preds = %tx_error_icmp.i
  %call.i.i58.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58.i)
  %tobool1.not.i.i59.i = icmp eq i32 %call.i.i58.i, 0
  br i1 %tobool1.not.i.i59.i, label %land.rhs.i.i63.i, label %land.lhs.true.i.i60.i.skb_dst.exit.i67.i_crit_edge

land.lhs.true.i.i60.i.skb_dst.exit.i67.i_crit_edge: ; preds = %land.lhs.true.i.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i67.i

land.rhs.i.i63.i:                                 ; preds = %land.lhs.true.i.i60.i
  %call2.i.i61.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i61.i)
  %tobool3.not.i.i62.i = icmp eq i32 %call2.i.i61.i, 0
  br i1 %tobool3.not.i.i62.i, label %do.end.i.i64.i, label %land.rhs.i.i63.i.skb_dst.exit.i67.i_crit_edge, !prof !81

land.rhs.i.i63.i.skb_dst.exit.i67.i_crit_edge:    ; preds = %land.rhs.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i67.i

do.end.i.i64.i:                                   ; preds = %land.rhs.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i67.i

skb_dst.exit.i67.i:                               ; preds = %do.end.i.i64.i, %land.rhs.i.i63.i.skb_dst.exit.i67.i_crit_edge, %land.lhs.true.i.i60.i.skb_dst.exit.i67.i_crit_edge, %tx_error_icmp.i.skb_dst.exit.i67.i_crit_edge
  %174 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %20, align 8
  %and25.i.i65.i = and i32 %175, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i65.i)
  %tobool.not.i66.i = icmp eq i32 %and25.i.i65.i, 0
  br i1 %tobool.not.i66.i, label %skb_dst.exit.i67.i.tx_error.i_crit_edge, label %land.lhs.true.i70.i

skb_dst.exit.i67.i.tx_error.i_crit_edge:          ; preds = %skb_dst.exit.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_error.i

land.lhs.true.i70.i:                              ; preds = %skb_dst.exit.i67.i
  %176 = inttoptr i32 %and25.i.i65.i to ptr
  %ops.i68.i = getelementptr inbounds %struct.dst_entry, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %ops.i68.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ops.i68.i, align 4
  %tobool1.not.i69.i = icmp eq ptr %178, null
  br i1 %tobool1.not.i69.i, label %land.lhs.true.i70.i.tx_error.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i70.i.tx_error.i_crit_edge:         ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_error.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i70.i
  %link_failure.i.i = getelementptr inbounds %struct.dst_ops, ptr %178, i32 0, i32 10
  %179 = ptrtoint ptr %link_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %link_failure.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %180, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.tx_error.i_crit_edge, label %if.then.i71.i

land.lhs.true2.i.i.tx_error.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_error.i

if.then.i71.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %180(ptr noundef %skb) #11
  br label %tx_error.i

tx_error.i:                                       ; preds = %if.then.i71.i, %land.lhs.true2.i.i.tx_error.i_crit_edge, %land.lhs.true.i70.i.tx_error.i_crit_edge, %skb_dst.exit.i67.i.tx_error.i_crit_edge, %if.end81.i, %if.then57.i
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %181 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %tx_errors.i, align 4
  %inc98.i = add i32 %182, 1
  store i32 %inc98.i, ptr %tx_errors.i, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

tx_err:                                           ; preds = %if.end.tx_err_crit_edge, %pskb_inet_may_pull.exit.tx_err_crit_edge, %if.end.i.i.i.tx_err_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %183 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %184, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %tx_err, %tx_error.i, %if.else19.i.i, %if.then16.i.i, %if.then.i55.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_get_iflink(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %cmd, label %entry.if.end16_crit_edge [
    i32 35313, label %entry.if.then_crit_edge
    i32 35315, label %entry.if.then_crit_edge54
  ]

entry.if.then_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge54
  %iph = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %1 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %iph, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp2.not = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp2.not, label %lor.lhs.false4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.then
  %protocol = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp7.not = icmp eq i8 %3, 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp13.not = icmp eq i8 %bf.clear, 5
  %or.cond = select i1 %cmp7.not, i1 %cmp13.not, i1 false
  br i1 %or.cond, label %lor.lhs.false4.if.end16_crit_edge, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4.if.end16_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %lor.lhs.false4.if.end16_crit_edge, %entry.if.end16_crit_edge
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_flags, align 4
  %6 = and i16 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %i_key = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 4
  %7 = ptrtoint ptr %i_key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %i_key, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %o_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %o_flags, align 2
  %10 = and i16 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool22.not = icmp eq i16 %10, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %o_key = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 5
  %11 = ptrtoint ptr %o_key to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %o_key, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %i_flags, align 4
  %call = tail call i32 @ip_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 35314, i32 %cmd)
  %cmp29.not = icmp eq i32 %cmd, 35314
  br i1 %cmp29.not, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_flags, align 4
  %15 = or i16 %14, 8192
  store i16 %15, ptr %i_flags, align 4
  %16 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %o_flags, align 2
  %18 = or i16 %17, 8192
  store i16 %18, ptr %o_flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %call, %if.end24.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  %5 = tail call i32 @llvm.read_register.i32(metadata !71) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !89
  %14 = tail call i32 @llvm.read_register.i32(metadata !71) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !71) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  %33 = tail call i32 @llvm.read_register.i32(metadata !71) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !92

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #11
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_ctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_newlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_changelink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_rcv_tunnel(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %family, align 8
  %daddroff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %1 = ptrtoint ptr %daddroff to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %daddroff, align 4
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
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saddr, align 4
  %call3 = tail call fastcc i32 @vti_input(ptr noundef %skb, i32 noundef 4, i32 noundef %7, i32 noundef 0)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_rcv_cb(ptr noundef %skb, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %tunnel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tunnel1, align 8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool3.not = icmp eq i32 %err, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 6
  %9 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_dropped, align 8
  %inc6 = add i32 %10, 1
  store i32 %inc6, ptr %rx_dropped, align 8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %11 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.i.not.i.i.i, label %if.end7.xfrm_input_state.exit_crit_edge, label %if.then.i.i.i

if.end7.xfrm_input_state.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_input_state.exit

if.then.i.i.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %14 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %17 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %shl.i.i.i
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %if.end7.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %if.end7.xfrm_input_state.exit_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %19, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %inner_mode8 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 46
  %family9 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %family9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp = icmp eq i16 %23, 0
  br i1 %cmp, label %if.then11, label %xfrm_input_state.exit.if.end64_crit_edge

xfrm_input_state.exit.if.end64_crit_edge:         ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then11:                                        ; preds = %xfrm_input_state.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %protocol, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %25, label %if.then11.if.else.i_crit_edge [
    i8 4, label %land.lhs.true.i
    i8 41, label %land.lhs.true5.i
  ]

if.then11.if.else.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then11
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 14, i32 7
  %27 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp1.i = icmp eq i16 %28, 2
  br i1 %cmp1.i, label %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_ip2inner_mode.exit

land.lhs.true5.i:                                 ; preds = %if.then11
  %family7.i = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 14, i32 7
  %29 = ptrtoint ptr %family7.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %family7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %30)
  %cmp9.i = icmp eq i16 %30, 10
  br i1 %cmp9.i, label %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_ip2inner_mode.exit

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then11.if.else.i_crit_edge
  %inner_mode_iaf.i = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 47
  br label %xfrm_ip2inner_mode.exit

xfrm_ip2inner_mode.exit:                          ; preds = %if.else.i, %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge, %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge
  %retval.0.i = phi ptr [ %inner_mode_iaf.i, %if.else.i ], [ %inner_mode8, %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge ], [ %inner_mode8, %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge ]
  %cmp16 = icmp eq ptr %retval.0.i, null
  br i1 %cmp16, label %do.body19, label %xfrm_ip2inner_mode.exit.if.end64_crit_edge

xfrm_ip2inner_mode.exit.if.end64_crit_edge:       ; preds = %xfrm_ip2inner_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

do.body19:                                        ; preds = %xfrm_ip2inner_mode.exit
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !94
  %32 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 127
  %35 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nd_net.i, align 4
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %36, i32 0, i32 30, i32 6
  %37 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx34 = getelementptr [29 x i32], ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx34 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx37, align 4
  %add = add i32 %45, %39
  %46 = inttoptr i32 %add to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add38 = add i32 %48, 1
  store i32 %add38, ptr %46, align 4
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !95
  %and.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not, label %if.then53, label %do.body19.do.end56_crit_edge, !prof !81

do.body19.do.end56_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

if.then53:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body19.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #11, !srcloc !96
  br label %cleanup

if.end64:                                         ; preds = %xfrm_ip2inner_mode.exit.if.end64_crit_edge, %xfrm_input_state.exit.if.end64_crit_edge
  %inner_mode.0 = phi ptr [ %retval.0.i, %xfrm_ip2inner_mode.exit.if.end64_crit_edge ], [ %inner_mode8, %xfrm_input_state.exit.if.end64_crit_edge ]
  %family65 = getelementptr inbounds %struct.xfrm_mode, ptr %inner_mode.0, i32 0, i32 1
  %50 = ptrtoint ptr %family65 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %family65, align 1
  %conv66 = zext i8 %51 to i16
  %i_key = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 4
  %52 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_key, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %2, align 4
  %call67 = tail call fastcc i32 @xfrm_policy_check(ptr noundef %skb, i16 noundef zeroext %conv66)
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %4, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end64.cleanup_crit_edge, label %if.end70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net, align 4
  %58 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %nd_net.i102 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 127
  %61 = ptrtoint ptr %nd_net.i102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nd_net.i102, align 4
  %cmp.i = icmp ne ptr %57, %62
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i) #11
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %6, ptr %58, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %66 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 130
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 64
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i103 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i103 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i, align 4
  %arrayidx.i104 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i104, align 4
  %add.i = add i32 %75, %69
  %76 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %76, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #11
  %conv.i105 = zext i32 %65 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %78, %conv.i105
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %76, align 32
  %inc.i = add i64 %80, 1
  store i64 %inc.i, ptr %76, align 32
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %76, i32 0, i32 4, i32 0, i32 1
  %81 = tail call ptr @llvm.returnaddress(i32 0) #11
  %82 = ptrtoint ptr %81 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %82) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !86
  %83 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %84, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end64.cleanup_crit_edge, %do.end56, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -22, %do.end56 ], [ 0, %if.end70 ], [ 1, %entry.cleanup_crit_edge ], [ -1, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti4_err(ptr noundef %skb, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %protocol1 = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %protocol1, align 1
  %9 = load i32, ptr @vti_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %9)
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 9
  %14 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 8
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr, align 4
  %call3 = tail call ptr @ip_tunnel_lookup(ptr noundef %call2, i32 noundef %13, i16 noundef zeroext 128, i32 noundef %15, i32 noundef %17, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %o_key = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 15, i32 5
  %18 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %o_key, align 4
  %20 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %8, label %if.end.cleanup_crit_edge [
    i8 50, label %sw.bb
    i8 51, label %sw.bb7
    i8 108, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %6, align 4
  %bf.clear = shl i8 %bf.load, 2
  %24 = and i8 %bf.clear, 60
  %shl = zext i8 %24 to i32
  %add.ptr = getelementptr i8, ptr %22, i32 %shl
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load9 = load i8, ptr %6, align 4
  %bf.clear10 = shl i8 %bf.load9, 2
  %30 = and i8 %bf.clear10, 60
  %shl12 = zext i8 %30 to i32
  %add.ptr13 = getelementptr i8, ptr %28, i32 %shl12
  %spi14 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr13, i32 0, i32 3
  %31 = ptrtoint ptr %spi14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %spi14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load17 = load i8, ptr %6, align 4
  %bf.clear18 = shl i8 %bf.load17, 2
  %36 = and i8 %bf.clear18, 60
  %shl20 = zext i8 %36 to i32
  %add.ptr21 = getelementptr i8, ptr %34, i32 %shl20
  %cpi = getelementptr inbounds %struct.ip_comp_hdr, ptr %add.ptr21, i32 0, i32 2
  %37 = ptrtoint ptr %cpi to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cpi, align 2
  %conv22 = zext i16 %38 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb7, %sw.bb
  %spi.0 = phi i32 [ %conv22, %sw.bb15 ], [ %32, %sw.bb7 ], [ %26, %sw.bb ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %41 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %conv.i.i
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i.i, align 4
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %44, label %sw.epilog.cleanup_crit_edge [
    i8 3, label %sw.bb25
    i8 5, label %sw.epilog.sw.epilog32_crit_edge
  ]

sw.epilog.sw.epilog32_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog32

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb25:                                          ; preds = %sw.epilog
  %code = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %47)
  %cmp.not = icmp eq i8 %47, 4
  br i1 %cmp.not, label %sw.bb25.sw.epilog32_crit_edge, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb25.sw.epilog32_crit_edge:                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb25.sw.epilog32_crit_edge, %sw.epilog.sw.epilog32_crit_edge
  %call35 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %19, ptr noundef %daddr, i32 noundef %spi.0, i8 noundef zeroext %8, i16 noundef zeroext 2) #11
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %sw.epilog32.cleanup_crit_edge, label %if.end38

sw.epilog32.cleanup_crit_edge:                    ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog32
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %50 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i88 = zext i16 %51 to i32
  %add.ptr.i.i89 = getelementptr i8, ptr %49, i32 %conv.i.i88
  %52 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp42 = icmp eq i8 %53, 3
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i8 noundef zeroext %8) #11
  br label %if.end47

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef 0, i8 noundef zeroext %8) #11
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call35, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !92

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call35, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog32.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb25.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog32.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vti_input(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %4 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %9 = load i32, ptr @vti_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9)
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr, align 4
  %call3 = tail call ptr @ip_tunnel_lookup(ptr noundef %call2, i32 noundef %13, i16 noundef zeroext 128, i32 noundef %15, i32 noundef %17, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @xfrm_policy_check(ptr noundef %skb, i16 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %drop, label %if.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tunnel7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %tunnel7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3, ptr %tunnel7, align 8
  %call11 = tail call i32 @xfrm_input(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) #11
  br label %cleanup

drop:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ 0, %drop ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.5) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_policy_check(ptr noundef %skb, i16 noundef zeroext %family) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i, align 4
  %policy_default.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %5 = ptrtoint ptr %policy_default.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %policy_default.i.i, align 16
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.i.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %entry
  %policy_count.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %8 = ptrtoint ptr %policy_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %policy_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.i = icmp eq i32 %9, 0
  br i1 %tobool7.not.i, label %land.lhs.true8.i, label %if.then5.i.lor.lhs.false.i_crit_edge

if.then5.i.lor.lhs.false.i_crit_edge:             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true8.i:                                 ; preds = %if.then5.i
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not.i = icmp eq i8 %12, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.__xfrm_policy_check2.exit_crit_edge, label %land.lhs.true8.i.lor.lhs.false.i_crit_edge

land.lhs.true8.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true8.i.__xfrm_policy_check2.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__xfrm_policy_check2.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i.lor.lhs.false.i_crit_edge, %if.then5.i.lor.lhs.false.i_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.skb_dst.exit.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !81

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i = load i32, ptr %13, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %lor.lhs.false.i.skb_dst.exit.i_crit_edge
  %17 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %15, %lor.lhs.false.i.skb_dst.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool12.not.i = icmp ult i32 %17, 2
  br i1 %tobool12.not.i, label %skb_dst.exit.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true13.i

skb_dst.exit.i.cleanup.sink.split.i_crit_edge:    ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

land.lhs.true13.i:                                ; preds = %skb_dst.exit.i
  %and.i2.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true13.i.skb_dst.exit12.i_crit_edge, label %land.lhs.true.i6.i

land.lhs.true13.i.skb_dst.exit12.i_crit_edge:     ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i

land.lhs.true.i6.i:                               ; preds = %land.lhs.true13.i
  %call.i4.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool1.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool1.not.i5.i, label %land.rhs.i9.i, label %land.lhs.true.i6.i.skb_dst.exit12.i_crit_edge

land.lhs.true.i6.i.skb_dst.exit12.i_crit_edge:    ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i

land.rhs.i9.i:                                    ; preds = %land.lhs.true.i6.i
  %call2.i7.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i)
  %tobool3.not.i8.i = icmp eq i32 %call2.i7.i, 0
  br i1 %tobool3.not.i8.i, label %do.end.i10.i, label %land.rhs.i9.i.skb_dst.exit12.i_crit_edge, !prof !81

land.rhs.i9.i.skb_dst.exit12.i_crit_edge:         ; preds = %land.rhs.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i

do.end.i10.i:                                     ; preds = %land.rhs.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit12.i

skb_dst.exit12.i:                                 ; preds = %do.end.i10.i, %land.rhs.i9.i.skb_dst.exit12.i_crit_edge, %land.lhs.true.i6.i.skb_dst.exit12.i_crit_edge, %land.lhs.true13.i.skb_dst.exit12.i_crit_edge
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %and25.i11.i = and i32 %19, -2
  %20 = inttoptr i32 %and25.i11.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags.i, align 4
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not.i = icmp eq i16 %23, 0
  br i1 %tobool16.not.i, label %skb_dst.exit12.i.cleanup.sink.split.i_crit_edge, label %skb_dst.exit12.i.__xfrm_policy_check2.exit_crit_edge

skb_dst.exit12.i.__xfrm_policy_check2.exit_crit_edge: ; preds = %skb_dst.exit12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__xfrm_policy_check2.exit

skb_dst.exit12.i.cleanup.sink.split.i_crit_edge:  ; preds = %skb_dst.exit12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %entry
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %and.i13.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.not.i14.i, label %if.else.i.skb_dst.exit23.i_crit_edge, label %land.lhs.true.i17.i

if.else.i.skb_dst.exit23.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23.i

land.lhs.true.i17.i:                              ; preds = %if.else.i
  %call.i15.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool1.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool1.not.i16.i, label %land.rhs.i20.i, label %land.lhs.true.i17.i.skb_dst.exit23thread-pre-split.i_crit_edge

land.lhs.true.i17.i.skb_dst.exit23thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23thread-pre-split.i

land.rhs.i20.i:                                   ; preds = %land.lhs.true.i17.i
  %call2.i18.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i)
  %tobool3.not.i19.i = icmp eq i32 %call2.i18.i, 0
  br i1 %tobool3.not.i19.i, label %do.end.i21.i, label %land.rhs.i20.i.skb_dst.exit23thread-pre-split.i_crit_edge, !prof !81

land.rhs.i20.i.skb_dst.exit23thread-pre-split.i_crit_edge: ; preds = %land.rhs.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23thread-pre-split.i

do.end.i21.i:                                     ; preds = %land.rhs.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit23thread-pre-split.i

skb_dst.exit23thread-pre-split.i:                 ; preds = %do.end.i21.i, %land.rhs.i20.i.skb_dst.exit23thread-pre-split.i_crit_edge, %land.lhs.true.i17.i.skb_dst.exit23thread-pre-split.i_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr35.i = load i32, ptr %24, align 8
  br label %skb_dst.exit23.i

skb_dst.exit23.i:                                 ; preds = %skb_dst.exit23thread-pre-split.i, %if.else.i.skb_dst.exit23.i_crit_edge
  %28 = phi i32 [ %.pr35.i, %skb_dst.exit23thread-pre-split.i ], [ %26, %if.else.i.skb_dst.exit23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %tobool21.not.i = icmp ult i32 %28, 2
  br i1 %tobool21.not.i, label %skb_dst.exit23.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true22.i

skb_dst.exit23.i.cleanup.sink.split.i_crit_edge:  ; preds = %skb_dst.exit23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

land.lhs.true22.i:                                ; preds = %skb_dst.exit23.i
  %and.i24.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i25.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true22.i.skb_dst.exit34.i_crit_edge, label %land.lhs.true.i28.i

land.lhs.true22.i.skb_dst.exit34.i_crit_edge:     ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i

land.lhs.true.i28.i:                              ; preds = %land.lhs.true22.i
  %call.i26.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool1.not.i27.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool1.not.i27.i, label %land.rhs.i31.i, label %land.lhs.true.i28.i.skb_dst.exit34.i_crit_edge

land.lhs.true.i28.i.skb_dst.exit34.i_crit_edge:   ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i

land.rhs.i31.i:                                   ; preds = %land.lhs.true.i28.i
  %call2.i29.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i)
  %tobool3.not.i30.i = icmp eq i32 %call2.i29.i, 0
  br i1 %tobool3.not.i30.i, label %do.end.i32.i, label %land.rhs.i31.i.skb_dst.exit34.i_crit_edge, !prof !81

land.rhs.i31.i.skb_dst.exit34.i_crit_edge:        ; preds = %land.rhs.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i

do.end.i32.i:                                     ; preds = %land.rhs.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit34.i

skb_dst.exit34.i:                                 ; preds = %do.end.i32.i, %land.rhs.i31.i.skb_dst.exit34.i_crit_edge, %land.lhs.true.i28.i.skb_dst.exit34.i_crit_edge, %land.lhs.true22.i.skb_dst.exit34.i_crit_edge
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 8
  %and25.i33.i = and i32 %30, -2
  %31 = inttoptr i32 %and25.i33.i to ptr
  %flags24.i = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags24.i, align 4
  %34 = and i16 %33, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool27.not.i = icmp eq i16 %34, 0
  br i1 %tobool27.not.i, label %skb_dst.exit34.i.cleanup.sink.split.i_crit_edge, label %skb_dst.exit34.i.__xfrm_policy_check2.exit_crit_edge

skb_dst.exit34.i.__xfrm_policy_check2.exit_crit_edge: ; preds = %skb_dst.exit34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__xfrm_policy_check2.exit

skb_dst.exit34.i.cleanup.sink.split.i_crit_edge:  ; preds = %skb_dst.exit34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %skb_dst.exit34.i.cleanup.sink.split.i_crit_edge, %skb_dst.exit23.i.cleanup.sink.split.i_crit_edge, %skb_dst.exit12.i.cleanup.sink.split.i_crit_edge, %skb_dst.exit.i.cleanup.sink.split.i_crit_edge
  %call30.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext %family) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.i = icmp ne i32 %call30.i, 0
  %phi.cast.i = zext i1 %tobool31.i to i32
  br label %__xfrm_policy_check2.exit

__xfrm_policy_check2.exit:                        ; preds = %cleanup.sink.split.i, %skb_dst.exit34.i.__xfrm_policy_check2.exit_crit_edge, %skb_dst.exit12.i.__xfrm_policy_check2.exit_crit_edge, %land.lhs.true8.i.__xfrm_policy_check2.exit_crit_edge
  %retval.0.shrunk.i = phi i32 [ 1, %skb_dst.exit12.i.__xfrm_policy_check2.exit_crit_edge ], [ 1, %land.lhs.true8.i.__xfrm_policy_check2.exit_crit_edge ], [ 1, %skb_dst.exit34.i.__xfrm_policy_check2.exit_crit_edge ], [ %phi.cast.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.shrunk.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_rcv_proto(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %family.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %family.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %family.i, align 8
  %daddroff.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %1 = ptrtoint ptr %daddroff.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %daddroff.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol.i, align 1
  %conv.i = zext i8 %7 to i32
  %call3.i = tail call fastcc i32 @vti_input(ptr noundef %skb, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #11
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_input_proto(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vti_input(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vti_net_id, align 4
  %call = tail call i32 @ip_tunnel_init_net(ptr noundef %net, i32 noundef %0, ptr noundef nonnull @vti_link_ops, ptr noundef nonnull @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @vti_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1)
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %iph1.i = getelementptr i8, ptr %3, i32 2396
  %protocol.i = getelementptr i8, ptr %3, i32 2405
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %protocol.i, align 1
  %5 = ptrtoint ptr %iph1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 69, ptr %iph1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti_exit_batch_net(ptr noundef %list_net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vti_net_id, align 4
  tail call void @ip_tunnel_delete_nets(ptr noundef %list_net, i32 noundef %0, ptr noundef nonnull @vti_link_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_init_net(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_delete_nets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !61, !63, !65, !67, !69, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_ip_vti__591_722_vti_init6, !1, !"__initcall__kmod_ip_vti__591_722_vti_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_vti.c", i32 722, i32 1}
!2 = !{ptr @__exitcall_vti_fini, !3, !"__exitcall_vti_fini", i1 false, i1 false}
!3 = !{!"../net/ipv4/ip_vti.c", i32 723, i32 1}
!4 = !{ptr @__UNIQUE_ID_file592, !5, !"__UNIQUE_ID_file592", i1 false, i1 false}
!5 = !{!"../net/ipv4/ip_vti.c", i32 724, i32 1}
!6 = !{ptr @__UNIQUE_ID_license593, !5, !"__UNIQUE_ID_license593", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias594, !8, !"__UNIQUE_ID_alias594", i1 false, i1 false}
!8 = !{!"../net/ipv4/ip_vti.c", i32 725, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias595, !10, !"__UNIQUE_ID_alias595", i1 false, i1 false}
!10 = !{!"../net/ipv4/ip_vti.c", i32 726, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv4/ip_vti.c", i32 630, i32 11}
!13 = !{ptr @vti_link_ops, !14, !"vti_link_ops", i1 false, i1 false}
!14 = !{!"../net/ipv4/ip_vti.c", i32 629, i32 29}
!15 = !{ptr @vti_netdev_ops, !16, !"vti_netdev_ops", i1 false, i1 false}
!16 = !{!"../net/ipv4/ip_vti.c", i32 404, i32 36}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/dst.h", i32 231, i32 2}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vti_net_id, !25, !"vti_net_id", i1 false, i1 false}
!25 = !{!"../net/ipv4/ip_vti.c", i32 44, i32 21}
!26 = !{ptr @vti_policy, !27, !"vti_policy", i1 false, i1 false}
!27 = !{!"../net/ipv4/ip_vti.c", i32 620, i32 32}
!28 = !{ptr @vti_ipip6_handler, !29, !"vti_ipip6_handler", i1 false, i1 false}
!29 = !{!"../net/ipv4/ip_vti.c", i32 490, i32 27}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vti_ipip_handler, !42, !"vti_ipip_handler", i1 false, i1 false}
!42 = !{!"../net/ipv4/ip_vti.c", i32 482, i32 27}
!43 = !{ptr @vti_ipcomp4_protocol, !44, !"vti_ipcomp4_protocol", i1 false, i1 false}
!44 = !{!"../net/ipv4/ip_vti.c", i32 465, i32 30}
!45 = !{ptr @vti_ah4_protocol, !46, !"vti_ah4_protocol", i1 false, i1 false}
!46 = !{!"../net/ipv4/ip_vti.c", i32 457, i32 30}
!47 = !{ptr @vti_esp4_protocol, !48, !"vti_esp4_protocol", i1 false, i1 false}
!48 = !{!"../net/ipv4/ip_vti.c", i32 449, i32 30}
!49 = !{ptr @vti_net_ops, !50, !"vti_net_ops", i1 false, i1 false}
!50 = !{!"../net/ipv4/ip_vti.c", i32 518, i32 33}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv4/ip_vti.c", i32 504, i32 59}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv4/ip_vti.c", i32 649, i32 2}
!55 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vti_init._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @vti_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ipv4/ip_vti.c", i32 651, i32 8}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv4/ip_vti.c", i32 656, i32 8}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv4/ip_vti.c", i32 668, i32 8}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv4/ip_vti.c", i32 679, i32 8}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ipv4/ip_vti.c", i32 703, i32 2}
!69 = !{ptr @vti_init._entry.17, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vti_init._entry_ptr.19, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2148393489}
!83 = !{i64 879109, i64 879134, i64 879156, i64 879172, i64 879184, i64 879204, i64 879228, i64 879244, i64 879256}
!84 = !{i64 2148393677}
!85 = !{i64 2157961489}
!86 = !{i64 2150016475}
!87 = !{i64 2157962545}
!88 = !{i64 2149908157}
!89 = !{i64 2149913089}
!90 = !{i64 2149934801}
!91 = !{i64 2149939693}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2150016150}
!94 = !{i64 797770, i64 797831}
!95 = !{i64 800502}
!96 = !{i64 800787}
!97 = !{i64 2148483625}
!98 = !{i64 2148398065, i64 2148398097, i64 2148398126, i64 2148398160, i64 2148398191, i64 2148398214}
!99 = !{i64 2149349668}
!100 = !{i64 2149400158}
!101 = !{i64 2149400424}
