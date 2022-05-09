; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_vti.c_pt.bc'
source_filename = "../net/ipv6/ip6_vti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xfrm6_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.50 }
%union.anon.50 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.65, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.65 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.55, i32, %struct.spinlock }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.195 = type { ptr }
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
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.__ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32, i32, i32, i8, i8, i16 }
%struct.ip6_tnl = type { ptr, ptr, ptr, ptr, %struct.__ip6_tnl_parm, %struct.flowi, %struct.dst_cache, %struct.gro_cells, i32, i32, i32, i32, i32, i32, i32, %struct.ip_tunnel_encap, i32 }
%struct.flowi = type { %union.anon.44 }
%union.anon.44 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_cache = type { ptr, i32 }
%struct.gro_cells = type { ptr }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vti6_net = type { ptr, [32 x ptr], [1 x ptr], [2 x ptr] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.162, [48 x i8], %union.anon.163, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.165, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.162 = type { i64 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, ptr }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.167, i32, i32, i32, i16, i16, %union.anon.169, i32, %union.anon.170, %union.anon.171, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.167 = type { i32 }
%union.anon.169 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.53, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.54, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.53 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.54 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip6_tnl_parm2 = type { [16 x i8], i32, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.203, i32, i32, i8, i8 }
%struct.anon.203 = type { i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.ip_comp_hdr = type { i8, i8, i16 }

@vti6_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 248, ptr null, ptr @vti6_dev_setup, i8 0, i32 6, ptr @vti6_policy, ptr @vti6_validate, ptr @vti6_newlink, ptr @vti6_changelink, ptr @vti6_dellink, ptr @vti6_get_size, ptr @vti6_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@vti_ip6ip_handler = internal global %struct.xfrm6_tunnel { ptr @vti6_rcv_tunnel, ptr @vti6_rcv_cb, ptr @vti6_err, ptr null, i32 0 }, section ".data..read_mostly", align 4
@vti_ipv6_handler = internal global %struct.xfrm6_tunnel { ptr @vti6_rcv_tunnel, ptr @vti6_rcv_cb, ptr @vti6_err, ptr null, i32 0 }, section ".data..read_mostly", align 4
@vti_ipcomp6_protocol = internal global %struct.xfrm6_protocol { ptr @vti6_rcv, ptr @vti6_input_proto, ptr @vti6_rcv_cb, ptr @vti6_err, ptr null, i32 100 }, section ".data..read_mostly", align 4
@vti_ah6_protocol = internal global %struct.xfrm6_protocol { ptr @vti6_rcv, ptr @vti6_input_proto, ptr @vti6_rcv_cb, ptr @vti6_err, ptr null, i32 100 }, section ".data..read_mostly", align 4
@vti_esp6_protocol = internal global %struct.xfrm6_protocol { ptr @vti6_rcv, ptr @vti6_input_proto, ptr @vti6_rcv_cb, ptr @vti6_err, ptr null, i32 100 }, section ".data..read_mostly", align 4
@vti6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @vti6_init_net, ptr null, ptr null, ptr @vti6_exit_batch_net, ptr @vti6_net_id, i32 144 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip6_vti__729_1329_vti6_tunnel_init6 = internal global ptr @vti6_tunnel_init, section ".initcall6.init", align 4
@__exitcall_vti6_tunnel_cleanup = internal global ptr @vti6_tunnel_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file730 = internal constant [30 x i8] c"ip6_vti.file=net/ipv6/ip6_vti\00", section ".modinfo", align 1
@__UNIQUE_ID_license731 = internal constant [20 x i8] c"ip6_vti.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias732 = internal constant [29 x i8] c"ip6_vti.alias=rtnl-link-vti6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias733 = internal constant [30 x i8] c"ip6_vti.alias=netdev-ip6_vti0\00", section ".modinfo", align 1
@__UNIQUE_ID_author734 = internal constant [32 x i8] c"ip6_vti.author=Steffen Klassert\00", section ".modinfo", align 1
@__UNIQUE_ID_description735 = internal constant [50 x i8] c"ip6_vti.description=IPv6 virtual tunnel interface\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vti6\00", [27 x i8] zeroinitializer }, align 32
@vti6_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@vti6_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @vti6_dev_init, ptr @vti6_dev_uninit, ptr null, ptr null, ptr @vti6_tnl_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vti6_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@vti6_dev_init_gen.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@vti6_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@vti6_tnl_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/ip6_vti.c\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@vti6_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: Local routing loop detected!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vti6_xmit\00", [22 x i8] zeroinitializer }, align 32
@vti6_xmit._entry_ptr = internal global ptr @vti6_xmit._entry, section ".printk_index", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vti6_locate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6_vti%%d\00", [21 x i8] zeroinitializer }, align 32
@vti6_tnl_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vti6_tnl_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_tnl_lookup.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_tnl_lookup.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_tnl_lookup.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_tnl_lookup.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_tnl_lookup.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_tnl_lookup.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ip6_vti0\00", [23 x i8] zeroinitializer }, align 32
@sysctl_fb_tunnels_only_for_init_net = external dso_local local_unnamed_addr global i32, align 4
@init_net = external dso_local global %struct.net, align 128
@vti6_destroy_tunnels.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_destroy_tunnels.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vti6_destroy_tunnels.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tunnel device\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tunnel protocols\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipv6 tunnel\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netlink interface\00", [46 x i8] zeroinitializer }, align 32
@vti6_tunnel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013vti6 init: failed to register %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vti6_tunnel_init\00", [47 x i8] zeroinitializer }, align 32
@vti6_tunnel_init._entry_ptr = internal global ptr @vti6_tunnel_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 41]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 35312, i64 35313, i64 35314, i64 35315]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 41]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 41]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 41]
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"vti6_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1194, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1107, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"vti6_policy\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1097, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"vti6_netdev_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 892, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 936, i32 16 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 45, i32 7 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 695, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 723, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 168, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 510, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1011, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 231, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 271, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 156, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 216, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1152, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1262, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1267, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1278, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1287, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [22 x i8] c"../net/ipv6/ip6_vti.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1309, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias732, ptr @__UNIQUE_ID_alias733, ptr @__UNIQUE_ID_author734, ptr @__UNIQUE_ID_description735, ptr @__UNIQUE_ID_file730, ptr @__UNIQUE_ID_license731, ptr @__exitcall_vti6_tunnel_cleanup, ptr @__initcall__kmod_ip6_vti__729_1329_vti6_tunnel_init6, ptr @vti6_tunnel_cleanup, ptr @vti6_tunnel_init._entry, ptr @vti6_tunnel_init._entry_ptr, ptr @vti6_xmit._entry, ptr @vti6_xmit._entry_ptr, ptr @vti6_net_ops, ptr @.str, ptr @vti6_policy, ptr @vti6_netdev_ops, ptr @vti6_dev_init_gen.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti6_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti6_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti6_dev_init_gen.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti6_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vti6_tunnel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vti6_tunnel_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_link_unregister(ptr noundef nonnull @vti6_link_ops) #16
  %call = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @vti_ip6ip_handler, i16 noundef zeroext 2) #16
  %call1 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @vti_ipv6_handler, i16 noundef zeroext 10) #16
  %call2 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @vti_ipcomp6_protocol, i8 noundef zeroext 108) #16
  %call3 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @vti_ah6_protocol, i8 noundef zeroext 51) #16
  %call4 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @vti_esp6_protocol, i8 noundef zeroext 50) #16
  tail call void @unregister_pernet_device(ptr noundef nonnull @vti6_net_ops) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_tunnel_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @vti6_net_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @vti_esp6_protocol, i8 noundef zeroext 50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.xfrm_proto_esp_failed_crit_edge, label %if.end4

if.end.xfrm_proto_esp_failed_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_proto_esp_failed

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @vti_ah6_protocol, i8 noundef zeroext 51) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.xfrm_proto_ah_failed_crit_edge, label %if.end8

if.end4.xfrm_proto_ah_failed_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_proto_ah_failed

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @vti_ipcomp6_protocol, i8 noundef zeroext 108) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.xfrm_proto_comp_failed_crit_edge, label %if.end12

if.end8.xfrm_proto_comp_failed_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_proto_comp_failed

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @vti_ipv6_handler, i16 noundef zeroext 10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.vti_tunnel_ipv6_failed_crit_edge, label %if.end16

if.end12.vti_tunnel_ipv6_failed_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti_tunnel_ipv6_failed

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @vti_ip6ip_handler, i16 noundef zeroext 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.vti_tunnel_ip6ip_failed_crit_edge, label %if.end20

if.end16.vti_tunnel_ip6ip_failed_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti_tunnel_ip6ip_failed

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @rtnl_link_register(ptr noundef nonnull @vti6_link_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %rtnl_link_failed, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

rtnl_link_failed:                                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @vti_ip6ip_handler, i16 noundef zeroext 2) #16
  br label %vti_tunnel_ip6ip_failed

vti_tunnel_ip6ip_failed:                          ; preds = %rtnl_link_failed, %if.end16.vti_tunnel_ip6ip_failed_crit_edge
  %msg.0 = phi ptr [ @.str.29, %if.end16.vti_tunnel_ip6ip_failed_crit_edge ], [ @.str.30, %rtnl_link_failed ]
  %call26 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @vti_ipv6_handler, i16 noundef zeroext 10) #16
  br label %vti_tunnel_ipv6_failed

vti_tunnel_ipv6_failed:                           ; preds = %vti_tunnel_ip6ip_failed, %if.end12.vti_tunnel_ipv6_failed_crit_edge
  %msg.1 = phi ptr [ @.str.29, %if.end12.vti_tunnel_ipv6_failed_crit_edge ], [ %msg.0, %vti_tunnel_ip6ip_failed ]
  %err.0 = phi i32 [ %call13, %if.end12.vti_tunnel_ipv6_failed_crit_edge ], [ %call26, %vti_tunnel_ip6ip_failed ]
  %call27 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @vti_ipcomp6_protocol, i8 noundef zeroext 108) #16
  br label %xfrm_proto_comp_failed

xfrm_proto_comp_failed:                           ; preds = %vti_tunnel_ipv6_failed, %if.end8.xfrm_proto_comp_failed_crit_edge
  %msg.2 = phi ptr [ @.str.28, %if.end8.xfrm_proto_comp_failed_crit_edge ], [ %msg.1, %vti_tunnel_ipv6_failed ]
  %err.1 = phi i32 [ %call9, %if.end8.xfrm_proto_comp_failed_crit_edge ], [ %err.0, %vti_tunnel_ipv6_failed ]
  %call28 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @vti_ah6_protocol, i8 noundef zeroext 51) #16
  br label %xfrm_proto_ah_failed

xfrm_proto_ah_failed:                             ; preds = %xfrm_proto_comp_failed, %if.end4.xfrm_proto_ah_failed_crit_edge
  %msg.3 = phi ptr [ @.str.28, %if.end4.xfrm_proto_ah_failed_crit_edge ], [ %msg.2, %xfrm_proto_comp_failed ]
  %err.2 = phi i32 [ %call5, %if.end4.xfrm_proto_ah_failed_crit_edge ], [ %err.1, %xfrm_proto_comp_failed ]
  %call29 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @vti_esp6_protocol, i8 noundef zeroext 50) #16
  br label %xfrm_proto_esp_failed

xfrm_proto_esp_failed:                            ; preds = %xfrm_proto_ah_failed, %if.end.xfrm_proto_esp_failed_crit_edge
  %msg.4 = phi ptr [ @.str.28, %if.end.xfrm_proto_esp_failed_crit_edge ], [ %msg.3, %xfrm_proto_ah_failed ]
  %err.3 = phi i32 [ %call1, %if.end.xfrm_proto_esp_failed_crit_edge ], [ %err.2, %xfrm_proto_ah_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @vti6_net_ops) #16
  br label %do.end

do.end:                                           ; preds = %xfrm_proto_esp_failed, %entry.do.end_crit_edge
  %msg.5 = phi ptr [ @.str.27, %entry.do.end_crit_edge ], [ %msg.4, %xfrm_proto_esp_failed ]
  %err.4 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %err.3, %xfrm_proto_esp_failed ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %msg.5) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %do.end ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti6_dev_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vti6_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip_tunnel_header_ops, ptr %header_ops, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %2 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %3 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vti6_dev_free, ptr %priv_destructor, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 769, ptr %type, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65495, ptr %max_mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 128
  store i32 %or, ptr %flags, align 8
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %9 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %addr_len, align 1
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %11, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %12 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %addr_assign_type, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 54
  tail call void @get_random_bytes(ptr noundef %perm_addr, i32 noundef 6) #16
  %13 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %perm_addr, align 1
  %15 = and i8 %14, -4
  %16 = or i8 %15, 2
  store i8 %16, ptr %perm_addr, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vti6_validate(ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %parms = getelementptr i8, ptr %dev, i32 2320
  tail call fastcc void @vti6_netlink_parms(ptr noundef %data, ptr noundef %parms)
  %proto = getelementptr i8, ptr %dev, i32 2340
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 41, ptr %proto, align 4
  %call4 = tail call fastcc ptr @vti6_locate(ptr noundef %1, ptr noundef %parms, i32 noundef 0)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr @vti6_net_id, align 4
  %call2.i = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #16
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %6 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vti6_link_ops, ptr %rtnl_link_ops.i, align 4
  %call3.i = tail call i32 @register_netdevice(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i = tail call ptr @strcpy(ptr noundef %parms, ptr noundef %dev) #20
  tail call fastcc void @vti6_tnl_link(ptr noundef %call2.i, ptr noundef %add.ptr.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call3.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_changelink(ptr noundef %dev, ptr noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp.i = alloca %struct.in6_addr, align 4
  %tmp13.i = alloca %struct.in6_addr, align 4
  %p = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %p) #16
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @vti6_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 4
  %cmp = icmp eq ptr %4, %dev
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %p, i32 0, i32 88)
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end.vti6_netlink_parms.exit_crit_edge, label %if.end.i

if.end.vti6_netlink_parms.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_netlink_parms.exit

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 4
  %link.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %link.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %arrayidx5.i = getelementptr ptr, ptr %data, i32 4
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then7.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %laddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #16
  %13 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %12, i32 noundef 16) #16
  %14 = call ptr @memcpy(ptr %laddr.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #16
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr ptr, ptr %data, i32 5
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %16, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %raddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp13.i) #16
  %17 = call ptr @memset(ptr %tmp13.i, i32 255, i32 16)
  %call.i55.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp13.i, ptr noundef nonnull %16, i32 noundef 16) #16
  %18 = call ptr @memcpy(ptr %raddr.i, ptr %tmp13.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp13.i) #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %arrayidx16.i = getelementptr ptr, ptr %data, i32 2
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i = icmp eq ptr %20, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then18.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i56.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i56.i, align 4
  %i_key.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 12
  %23 = ptrtoint ptr %i_key.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %i_key.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end21.i_crit_edge
  %arrayidx22.i = getelementptr ptr, ptr %data, i32 3
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %25, null
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i57.i = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i57.i, align 4
  %o_key.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 13
  %28 = ptrtoint ptr %o_key.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %o_key.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %arrayidx28.i = getelementptr ptr, ptr %data, i32 6
  %29 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx28.i, align 4
  %tobool29.not.i = icmp eq ptr %30, null
  br i1 %tobool29.not.i, label %if.end27.i.vti6_netlink_parms.exit_crit_edge, label %if.then30.i

if.end27.i.vti6_netlink_parms.exit_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_netlink_parms.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i58.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i58.i, align 4
  %fwmark.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 14
  %33 = ptrtoint ptr %fwmark.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %fwmark.i, align 4
  br label %vti6_netlink_parms.exit

vti6_netlink_parms.exit:                          ; preds = %if.then30.i, %if.end27.i.vti6_netlink_parms.exit_crit_edge, %if.end.vti6_netlink_parms.exit_crit_edge
  %call2 = call fastcc ptr @vti6_locate(ptr noundef %1, ptr noundef nonnull %p, i32 noundef 0)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %vti6_netlink_parms.exit
  %dev4 = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 1
  %34 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev4, align 4
  %cmp5.not = icmp eq ptr %35, %dev
  br i1 %cmp5.not, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.else:                                          ; preds = %vti6_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3.if.end9_crit_edge
  %t.0 = phi ptr [ %call2, %if.then3.if.end9_crit_edge ], [ %add.ptr.i, %if.else ]
  %tobool10.not = icmp eq ptr %tb, null
  br i1 %tobool10.not, label %if.end9.land.end_crit_edge, label %land.rhs

if.end9.land.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tobool11 = icmp ne ptr %37, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end9.land.end_crit_edge
  %38 = phi i1 [ false, %if.end9.land.end_crit_edge ], [ %tobool11, %land.rhs ]
  %dev.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 127
  %41 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nd_net.i.i, align 4
  %43 = load i32, ptr @vti6_net_id, align 4
  %call1.i = call fastcc ptr @net_generic(ptr noundef %42, i32 noundef %43) #16
  call fastcc void @vti6_tnl_unlink(ptr noundef %call1.i, ptr noundef %t.0) #16
  call void @synchronize_net() #16
  %laddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 8
  %laddr1.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  %44 = call ptr @memcpy(ptr %laddr.i.i, ptr %laddr1.i.i, i32 16)
  %raddr.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 9
  %raddr3.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  %45 = call ptr @memcpy(ptr %raddr.i.i, ptr %raddr3.i.i, i32 16)
  %link.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 1
  %46 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link.i.i, align 4
  %link5.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %link5.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %link5.i.i, align 8
  %i_key.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 12
  %49 = ptrtoint ptr %i_key.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_key.i.i, align 4
  %i_key7.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 12
  %51 = ptrtoint ptr %i_key7.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %i_key7.i.i, align 4
  %o_key.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 13
  %52 = ptrtoint ptr %o_key.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %o_key.i.i, align 4
  %o_key9.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 13
  %54 = ptrtoint ptr %o_key9.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %o_key9.i.i, align 8
  %proto.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 2
  %55 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %proto.i.i, align 4
  %proto11.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %proto11.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %proto11.i.i, align 4
  %fwmark.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 14
  %58 = ptrtoint ptr %fwmark.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fwmark.i.i, align 4
  %fwmark13.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 4, i32 14
  %60 = ptrtoint ptr %fwmark13.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %fwmark13.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.0, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %reset_ts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %reset_ts.i.i.i, align 4
  call fastcc void @vti6_link_config(ptr noundef %t.0, i1 noundef zeroext %38) #16
  call fastcc void @vti6_tnl_link(ptr noundef %call1.i, ptr noundef %t.0) #16
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  call void @netdev_state_change(ptr noundef %64) #16
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end ], [ -22, %entry.cleanup_crit_edge ], [ -17, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %p) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti6_dellink(ptr noundef %dev, ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @vti6_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 4
  %cmp.not = icmp eq ptr %4, %dev
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vti6_get_size(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_fill_info(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %tmp.i33 = alloca i32, align 4
  %tmp.i31 = alloca i32, align 4
  %tmp.i29 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr i8, ptr %dev, i32 2336
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %laddr = getelementptr i8, ptr %dev, i32 2352
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %laddr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool3.not = icmp eq i32 %call.i27, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %raddr = getelementptr i8, ptr %dev, i32 2368
  %call.i28 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 16, ptr noundef %raddr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool6.not = icmp eq i32 %call.i28, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %i_key = getelementptr i8, ptr %dev, i32 2388
  %3 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29) #16
  %5 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i29, align 4
  %call.i30 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i29) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool9.not = icmp eq i32 %call.i30, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false7.nla_put_failure_crit_edge

lor.lhs.false7.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %6 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %o_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i31) #16
  %8 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i31, align 4
  %call.i32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i31) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool12.not = icmp eq i32 %call.i32, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false10.nla_put_failure_crit_edge

lor.lhs.false10.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %fwmark = getelementptr i8, ptr %dev, i32 2396
  %9 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i33) #16
  %11 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i33, align 4
  %call.i34 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i33) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i33) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool15.not = icmp eq i32 %call.i34, 0
  br i1 %tobool15.not, label %lor.lhs.false13.cleanup_crit_edge, label %lor.lhs.false13.nla_put_failure_crit_edge

lor.lhs.false13.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_put_failure

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false13.nla_put_failure_crit_edge, %lor.lhs.false10.nla_put_failure_crit_edge, %lor.lhs.false7.nla_put_failure_crit_edge, %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false13.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %lor.lhs.false13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_tnl_get_link_net(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti6_dev_free(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_dev_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i.i, align 4
  %net.i = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %net.i, align 4
  %call3.i = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #21
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %vti6_dev_init_gen.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %call424.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call424.i, i32 %4)
  %cmp25.i = icmp ult i32 %call424.i, %4
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end12.i_crit_edge

for.cond.preheader.i.if.end12.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %5 = ptrtoint ptr %call3.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call426.i = phi i32 [ %call424.i, %for.body.lr.ph.i ], [ %call4.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call426.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %5
  %8 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %8, i32 0, i32 4
  %dep_map.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %8, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @vti6_dev_init_gen.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %9 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %syncp.i, align 4
  %call4.i = tail call i32 @cpumask_next(i32 noundef %call426.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call4.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end12.i_crit_edge

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end12.i:                                       ; preds = %for.body.i.if.end12.i_crit_edge, %for.cond.preheader.i.if.end12.i_crit_edge
  %11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3.i, ptr %11, align 64
  %dev_tracker.i = getelementptr i8, ptr %dev, i32 2312
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %if.end12.i.if.end_crit_edge, label %do.body1.i.i.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body1.i.i.i:                                   ; preds = %if.end12.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !122
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %14 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add13.i.i.i = add i32 %25, 1
  store i32 %add13.i.i.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !123
  %and.i.i.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge, !prof !124

do.body1.i.i.i.dev_hold.exit.i.i_crit_edge:       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #16, !srcloc !125
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i, i32 noundef 3264) #16
  br label %if.end

vti6_dev_init_gen.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %27 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %27, align 64
  br label %cleanup

if.end:                                           ; preds = %dev_hold.exit.i.i, %if.end12.i.if.end_crit_edge
  tail call fastcc void @vti6_link_config(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vti6_dev_init_gen.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %vti6_dev_init_gen.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti6_dev_uninit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @vti6_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 4
  %cmp = icmp eq ptr %4, %dev
  br i1 %cmp, label %do.body4, label %if.else

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tnls_wc = getelementptr inbounds %struct.vti6_net, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %tnls_wc to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %tnls_wc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @vti6_tnl_unlink(ptr noundef %call1, ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end.dev_put_track.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end
  %dev_tracker = getelementptr i8, ptr %dev, i32 2312
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #16
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !122
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i.i = add i32 %18, -1
  store i32 %add13.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !123
  %and.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !124

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !125
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_tnl_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %fl = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl) #16
  %2 = call ptr @memset(ptr %fl, i32 255, i32 88)
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %switch.selectcmp.i = icmp eq i16 %4, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %4)
  %switch.selectcmp3.i = icmp eq i16 %4, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !124

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %12, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_err_crit_edge, label %pskb_inet_may_pull.exit, !prof !124

if.end.i.i.i.tx_err_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #16
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_err_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

pskb_inet_may_pull.exit.tx_err_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = call ptr @memset(ptr %fl, i32 0, i32 88)
  %16 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol.i, align 8
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %if.end.tx_err_crit_edge [
    i16 -31011, label %sw.bb
    i16 2048, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.tx_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

sw.bb:                                            ; preds = %if.end
  %proto = getelementptr i8, ptr %dev, i32 2340
  %19 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %proto, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %20, label %sw.bb.tx_err_crit_edge [
    i8 41, label %sw.bb.lor.lhs.false_crit_edge
    i8 0, label %sw.bb.lor.lhs.false_crit_edge63
  ]

sw.bb.lor.lhs.false_crit_edge63:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

sw.bb.lor.lhs.false_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

sw.bb.tx_err_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

lor.lhs.false:                                    ; preds = %sw.bb.lor.lhs.false_crit_edge, %sw.bb.lor.lhs.false_crit_edge63
  %22 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i.i, align 8
  %24 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %raddr.i = getelementptr i8, ptr %dev, i32 2368
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %raddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %raddr.i, align 4
  %28 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saddr.i, align 4
  %xor.i.i = xor i32 %29, %27
  %arrayidx4.i.i = getelementptr i8, ptr %dev, i32 2372
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %33, %31
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr i8, ptr %dev, i32 2376
  %34 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %37, %35
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %dev, i32 2380
  %38 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %41, %39
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.tx_err_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.tx_err_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 10, %lor.lhs.false.sw.epilog_crit_edge ], [ 2, %if.end.sw.epilog_crit_edge ]
  %call.i45 = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl, i32 noundef %.sink, i32 noundef 0) #16
  %cb19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %42 = call ptr @memset(ptr %cb19, i32 0, i32 24)
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %43 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %o_key, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %45 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %flowic_mark, align 8
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.skb_dst.exit.i_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !124

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %sw.epilog.skb_dst.exit.i_crit_edge
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 8
  %and25.i.i = and i32 %52, -2
  %53 = inttoptr i32 %and25.i.i to ptr
  %54 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %skb_dst.exit.i.if.end31.i_crit_edge

skb_dst.exit.i.if.end31.i_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then.i:                                        ; preds = %skb_dst.exit.i
  %56 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %protocol.i, align 8
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %57, label %if.then.i.tx_err_link_failure.i_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb14.i
  ]

if.then.i.tx_err_link_failure.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

sw.bb.i:                                          ; preds = %if.then.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %59 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex.i, align 4
  %61 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %fl, align 8
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %62 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %flowic_flags.i, align 1
  %64 = or i8 %63, 1
  store i8 %64, ptr %flowic_flags.i, align 1
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %65 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nd_net.i.i, align 4
  %call.i170.i = call ptr @ip_route_output_key_hash(ptr noundef %66, ptr noundef nonnull %fl, ptr noundef null) #16
  %cmp.i.i48 = icmp ugt ptr %call.i170.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i48, label %sw.bb.i.tx_err_link_failure.i_crit_edge, label %sw.bb.i.if.end31.sink.split.i_crit_edge

sw.bb.i.if.end31.sink.split.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.sink.split.i

sw.bb.i.tx_err_link_failure.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

sw.bb14.i:                                        ; preds = %if.then.i
  %ifindex15.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %67 = ptrtoint ptr %ifindex15.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ifindex15.i, align 4
  %69 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %fl, align 8
  %flowic_flags21.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %70 = ptrtoint ptr %flowic_flags21.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flowic_flags21.i, align 1
  %72 = or i8 %71, 1
  store i8 %72, ptr %flowic_flags21.i, align 1
  %nd_net.i172.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %73 = ptrtoint ptr %nd_net.i172.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nd_net.i172.i, align 4
  %call.i173.i = call ptr @ip6_route_output_flags(ptr noundef %74, ptr noundef null, ptr noundef nonnull %fl, i32 noundef 0) #16
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call.i173.i, i32 0, i32 15
  %75 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool28.not.i = icmp eq i16 %76, 0
  br i1 %tobool28.not.i, label %sw.bb14.i.if.end31.sink.split.i_crit_edge, label %if.then29.i

sw.bb14.i.if.end31.sink.split.i_crit_edge:        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.sink.split.i

if.then29.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @dst_release(ptr noundef %call.i173.i) #16
  br label %tx_err_link_failure.i

if.end31.sink.split.i:                            ; preds = %sw.bb14.i.if.end31.sink.split.i_crit_edge, %sw.bb.i.if.end31.sink.split.i_crit_edge
  %tobool.not.i171.sink.in.i = phi ptr [ %call.i170.i, %sw.bb.i.if.end31.sink.split.i_crit_edge ], [ %call.i173.i, %sw.bb14.i.if.end31.sink.split.i_crit_edge ]
  %slow_gro.i175.sink.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %tobool.not.i171.sink.i = icmp eq ptr %tobool.not.i171.sink.in.i, null
  %77 = ptrtoint ptr %slow_gro.i175.sink.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %bf.load.i176.i = load i32, ptr %slow_gro.i175.sink.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i176.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i171.sink.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i176.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i175.sink.i, align 2
  %78 = ptrtoint ptr %tobool.not.i171.sink.in.i to i32
  %79 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %48, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %skb_dst.exit.i.if.end31.i_crit_edge
  %dst.1.i = phi ptr [ %53, %skb_dst.exit.i.if.end31.i_crit_edge ], [ %tobool.not.i171.sink.in.i, %if.end31.sink.split.i ]
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst.1.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !126
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #16
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #16, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !128
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 231, i32 noundef 9, ptr noundef null) #16
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %net.i = getelementptr i8, ptr %dev, i32 2316
  %81 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net.i, align 4
  %call32.i = call ptr @xfrm_lookup_route(ptr noundef %82, ptr noundef %dst.1.i, ptr noundef nonnull %fl, ptr noundef null, i32 noundef 0) #16
  %cmp.i181.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.i, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %call32.i to i32
  br label %tx_err_link_failure.i

if.end36.i:                                       ; preds = %dst_hold.exit.i
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %call32.i, i32 0, i32 7
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags.i, align 4
  %86 = and i16 %85, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool38.not.i = icmp eq i16 %86, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.xmit.i_crit_edge

if.end36.i.xmit.i_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xmit.i

if.end40.i:                                       ; preds = %if.end36.i
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %call32.i, i32 0, i32 4
  %87 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %xfrm.i, align 4
  %parms.i = getelementptr i8, ptr %dev, i32 2320
  %raddr.i49 = getelementptr i8, ptr %dev, i32 2368
  %laddr.i = getelementptr i8, ptr %dev, i32 2352
  %tobool.not.i182.i = icmp eq ptr %88, null
  br i1 %tobool.not.i182.i, label %if.end40.i.tx_err_link_failure.i_crit_edge, label %lor.lhs.false.i.i

if.end40.i.tx_err_link_failure.i_crit_edge:       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

lor.lhs.false.i.i:                                ; preds = %if.end40.i
  %mode.i.i = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 1
  %89 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp.not.i.i = icmp eq i8 %90, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.tx_err_link_failure.i_crit_edge

lor.lhs.false.i.i.tx_err_link_failure.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %family.i.i = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 7
  %91 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %family.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %92)
  %cmp5.not.i.i = icmp eq i16 %92, 10
  br i1 %cmp5.not.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.tx_err_link_failure.i_crit_edge

lor.lhs.false2.i.i.tx_err_link_failure.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  %93 = ptrtoint ptr %raddr.i49 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %raddr.i49, align 4
  %arrayidx2.i.i.i = getelementptr i8, ptr %dev, i32 2372
  %95 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %96, %94
  %arrayidx4.i.i.i = getelementptr i8, ptr %dev, i32 2376
  %97 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %98
  %arrayidx7.i.i.i = getelementptr i8, ptr %dev, i32 2380
  %99 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or8.i.i.i, 0
  br i1 %cmp.i.i.i, label %vti6_state_check.exit.i, label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %id.i.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 7
  %101 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id.i.i.i.i, align 4
  %xor.i.i.i23.i.i = xor i32 %102, %94
  %arrayidx6.i.i.i25.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 7, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx6.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx6.i.i.i25.i.i, align 4
  %xor7.i.i.i26.i.i = xor i32 %104, %96
  %or.i.i.i27.i.i = or i32 %xor7.i.i.i26.i.i, %xor.i.i.i23.i.i
  %arrayidx11.i.i.i29.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 7, i32 0, i32 0, i32 2
  %105 = ptrtoint ptr %arrayidx11.i.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx11.i.i.i29.i.i, align 4
  %xor12.i.i.i30.i.i = xor i32 %106, %98
  %or13.i.i.i31.i.i = or i32 %or.i.i.i27.i.i, %xor12.i.i.i30.i.i
  %arrayidx17.i.i.i33.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 7, i32 0, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx17.i.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx17.i.i.i33.i.i, align 4
  %xor18.i.i.i34.i.i = xor i32 %108, %100
  %or19.i.i.i35.i.i = or i32 %or13.i.i.i31.i.i, %xor18.i.i.i34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i35.i.i)
  %cmp.i.i.i36.i.i = icmp eq i32 %or19.i.i.i35.i.i, 0
  br i1 %cmp.i.i.i36.i.i, label %land.lhs.true.i.i.i.i, label %if.end11.i.i.tx_err_link_failure.i_crit_edge

if.end11.i.i.tx_err_link_failure.i_crit_edge:     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end11.i.i
  %saddr2.i.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8
  %109 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %laddr.i, align 4
  %111 = ptrtoint ptr %saddr2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %saddr2.i.i.i.i, align 4
  %xor.i12.i.i.i.i = xor i32 %112, %110
  %arrayidx4.i13.i.i.i.i = getelementptr i8, ptr %dev, i32 2356
  %113 = ptrtoint ptr %arrayidx4.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx4.i13.i.i.i.i, align 4
  %arrayidx6.i14.i.i.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx6.i14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx6.i14.i.i.i.i, align 4
  %xor7.i15.i.i.i.i = xor i32 %116, %114
  %or.i16.i.i.i.i = or i32 %xor7.i15.i.i.i.i, %xor.i12.i.i.i.i
  %arrayidx9.i17.i.i.i.i = getelementptr i8, ptr %dev, i32 2360
  %117 = ptrtoint ptr %arrayidx9.i17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx9.i17.i.i.i.i, align 4
  %arrayidx11.i18.i.i.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx11.i18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx11.i18.i.i.i.i, align 4
  %xor12.i19.i.i.i.i = xor i32 %120, %118
  %or13.i20.i.i.i.i = or i32 %or.i16.i.i.i.i, %xor12.i19.i.i.i.i
  %arrayidx15.i21.i.i.i.i = getelementptr i8, ptr %dev, i32 2364
  %121 = ptrtoint ptr %arrayidx15.i21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx15.i21.i.i.i.i, align 4
  %arrayidx17.i22.i.i.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx17.i22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx17.i22.i.i.i.i, align 4
  %xor18.i23.i.i.i.i = xor i32 %124, %122
  %or19.i24.i.i.i.i = or i32 %or13.i20.i.i.i.i, %xor18.i23.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i24.i.i.i.i)
  %cmp.i25.i.i.i.i = icmp eq i32 %or19.i24.i.i.i.i, 0
  br i1 %cmp.i25.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end44.i_crit_edge, label %lor.lhs.false.i.i.i.i

land.lhs.true.i.i.i.i.if.end44.i_crit_edge:       ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

lor.lhs.false.i.i.i.i:                            ; preds = %land.lhs.true.i.i.i.i
  %or.i26.i.i.i.i = or i32 %114, %110
  %or5.i.i.i.i.i = or i32 %or.i26.i.i.i.i, %118
  %or8.i.i.i.i.i = or i32 %or5.i.i.i.i.i, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i.i.i)
  %cmp.i28.i.i.i.i = icmp eq i32 %or8.i.i.i.i.i, 0
  br i1 %cmp.i28.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.end44.i_crit_edge, label %lor.lhs.false5.i.i.i.i

lor.lhs.false.i.i.i.i.if.end44.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

lor.lhs.false5.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %or.i30.i.i.i.i = or i32 %116, %112
  %or5.i32.i.i.i.i = or i32 %or.i30.i.i.i.i, %120
  %or8.i34.i.i.i.i = or i32 %or5.i32.i.i.i.i, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i34.i.i.i.i)
  %cmp.i35.i.i.i.i = icmp eq i32 %or8.i34.i.i.i.i, 0
  br i1 %cmp.i35.i.i.i.i, label %lor.lhs.false5.i.i.i.i.if.end44.i_crit_edge, label %lor.lhs.false5.i.i.i.i.tx_err_link_failure.i_crit_edge

lor.lhs.false5.i.i.i.i.tx_err_link_failure.i_crit_edge: ; preds = %lor.lhs.false5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

lor.lhs.false5.i.i.i.i.if.end44.i_crit_edge:      ; preds = %lor.lhs.false5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

vti6_state_check.exit.i:                          ; preds = %if.end.i.i
  %saddr9.i.i = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8
  %125 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %laddr.i, align 4
  %127 = ptrtoint ptr %saddr9.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %saddr9.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %128, %126
  %arrayidx4.i.i.i.i.i = getelementptr i8, ptr %dev, i32 2356
  %129 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx4.i.i.i.i.i, align 4
  %arrayidx6.i.i.i.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8, i32 0, i32 1
  %131 = ptrtoint ptr %arrayidx6.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx6.i.i.i.i.i, align 4
  %xor7.i.i.i.i.i = xor i32 %132, %130
  %or.i.i.i.i.i = or i32 %xor7.i.i.i.i.i, %xor.i.i.i.i.i
  %arrayidx9.i.i.i.i.i = getelementptr i8, ptr %dev, i32 2360
  %133 = ptrtoint ptr %arrayidx9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx9.i.i.i.i.i, align 4
  %arrayidx11.i.i.i.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8, i32 0, i32 2
  %135 = ptrtoint ptr %arrayidx11.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx11.i.i.i.i.i, align 4
  %xor12.i.i.i.i.i = xor i32 %136, %134
  %or13.i.i.i.i.i = or i32 %or.i.i.i.i.i, %xor12.i.i.i.i.i
  %arrayidx15.i.i.i.i.i = getelementptr i8, ptr %dev, i32 2364
  %137 = ptrtoint ptr %arrayidx15.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx15.i.i.i.i.i, align 4
  %arrayidx17.i.i.i.i.i = getelementptr %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8, i32 0, i32 3
  %139 = ptrtoint ptr %arrayidx17.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx17.i.i.i.i.i, align 4
  %xor18.i.i.i.i.i = xor i32 %140, %138
  %or19.i.i.i.i.i = or i32 %or13.i.i.i.i.i, %xor18.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or19.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %vti6_state_check.exit.i.if.end44.i_crit_edge, label %vti6_state_check.exit.i.tx_err_link_failure.i_crit_edge

vti6_state_check.exit.i.tx_err_link_failure.i_crit_edge: ; preds = %vti6_state_check.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

vti6_state_check.exit.i.if.end44.i_crit_edge:     ; preds = %vti6_state_check.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

if.end44.i:                                       ; preds = %vti6_state_check.exit.i.if.end44.i_crit_edge, %lor.lhs.false5.i.i.i.i.if.end44.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end44.i_crit_edge, %land.lhs.true.i.i.i.i.if.end44.i_crit_edge
  %saddr.i50 = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 14, i32 8
  %id.i = getelementptr inbounds %struct.xfrm_state, ptr %88, i32 0, i32 7
  %call45.i = call i32 @ip6_tnl_xmit_ctl(ptr noundef %add.ptr.i, ptr noundef %saddr.i50, ptr noundef %id.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.tx_err_link_failure.i_crit_edge, label %if.end48.i

if.end44.i.tx_err_link_failure.i_crit_edge:       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err_link_failure.i

if.end48.i:                                       ; preds = %if.end44.i
  %141 = ptrtoint ptr %call32.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call32.i, align 4
  %cmp.i = icmp eq ptr %142, %dev
  br i1 %cmp.i, label %if.then51.i, label %if.end61.i

if.then51.i:                                      ; preds = %if.end48.i
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 36, i32 9
  %143 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %collisions.i, align 4
  %inc.i = add i32 %144, 1
  store i32 %inc.i, ptr %collisions.i, align 4
  %call52.i = call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then51.i.vti6_xmit.exit.thread59_crit_edge, label %do.end.i

if.then51.i.vti6_xmit.exit.thread59_crit_edge:    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_xmit.exit.thread59

do.end.i:                                         ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #18
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %parms.i) #19
  br label %vti6_xmit.exit.thread59

if.end61.i:                                       ; preds = %if.end48.i
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %call32.i, i32 0, i32 1
  %145 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mtu.i.i, align 4
  %call.i183.i = call i32 %148(ptr noundef %call32.i) #16
  %149 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %call.i183.i)
  %cmp64.i = icmp ugt i32 %150, %call.i183.i
  br i1 %cmp64.i, label %if.then66.i, label %if.end61.i.xmit.i_crit_edge

if.end61.i.xmit.i_crit_edge:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xmit.i

if.then66.i:                                      ; preds = %if.end61.i
  call fastcc void @skb_dst_update_pmtu_no_confirm(ptr noundef %skb, i32 noundef %call.i183.i) #16
  %151 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %152)
  %cmp69.i = icmp eq i16 %152, -31011
  br i1 %cmp69.i, label %if.then71.i, label %if.else.i

if.then71.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #18
  %153 = call i32 @llvm.smax.i32(i32 %call.i183.i, i32 1280) #16
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %153) #16
  br label %vti6_xmit.exit.thread59

if.else.i:                                        ; preds = %if.then66.i
  %154 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %head.i.i.i.i, align 8
  %156 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i = zext i16 %157 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %155, i32 %conv.i.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %158 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %frag_off.i, align 2
  %160 = and i16 %159, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool79.not.i = icmp eq i16 %160, 0
  br i1 %tobool79.not.i, label %if.else.i.xmit.i_crit_edge, label %if.end81.i

if.else.i.xmit.i_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xmit.i

if.end81.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %call.i183.i) #16
  br label %vti6_xmit.exit.thread59

xmit.i:                                           ; preds = %if.else.i.xmit.i_crit_edge, %if.end61.i.xmit.i_crit_edge, %if.end36.i.xmit.i_crit_edge
  %161 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %net.i, align 4
  %nd_net.i184.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %163 = ptrtoint ptr %nd_net.i184.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %nd_net.i184.i, align 4
  %cmp.i185.i = icmp ne ptr %162, %164
  call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i185.i) #16
  %tobool.not.i186.i = icmp eq ptr %call32.i, null
  %slow_gro.i187.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %165 = ptrtoint ptr %slow_gro.i187.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %bf.load.i188.i = load i32, ptr %slow_gro.i187.i, align 2
  %bf.load.mask.i189.i = and i32 %bf.load.i188.i, 4096
  %bf.shl.i190.i = select i1 %tobool.not.i186.i, i32 %bf.load.mask.i189.i, i32 4096
  %bf.clear4.i191.i = and i32 %bf.load.i188.i, -4097
  %bf.set.i192.i = or i32 %bf.shl.i190.i, %bf.clear4.i191.i
  store i32 %bf.set.i192.i, ptr %slow_gro.i187.i, align 2
  %166 = ptrtoint ptr %call32.i to i32
  %167 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %48, align 8
  %and.i193.i = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193.i)
  %tobool.not.i194.i = icmp eq i32 %and.i193.i, 0
  br i1 %tobool.not.i194.i, label %xmit.i.skb_dst.exit204.i_crit_edge, label %land.lhs.true.i197.i

xmit.i.skb_dst.exit204.i_crit_edge:               ; preds = %xmit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit204.i

land.lhs.true.i197.i:                             ; preds = %xmit.i
  %call.i195.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195.i)
  %tobool1.not.i196.i = icmp eq i32 %call.i195.i, 0
  br i1 %tobool1.not.i196.i, label %land.rhs.i200.i, label %land.lhs.true.i197.i.skb_dst.exit204.i_crit_edge

land.lhs.true.i197.i.skb_dst.exit204.i_crit_edge: ; preds = %land.lhs.true.i197.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit204.i

land.rhs.i200.i:                                  ; preds = %land.lhs.true.i197.i
  %call2.i198.i = call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i198.i)
  %tobool3.not.i199.i = icmp eq i32 %call2.i198.i, 0
  br i1 %tobool3.not.i199.i, label %do.end.i201.i, label %land.rhs.i200.i.skb_dst.exit204.i_crit_edge, !prof !124

land.rhs.i200.i.skb_dst.exit204.i_crit_edge:      ; preds = %land.rhs.i200.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit204.i

do.end.i201.i:                                    ; preds = %land.rhs.i200.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit204.i

skb_dst.exit204.i:                                ; preds = %do.end.i201.i, %land.rhs.i200.i.skb_dst.exit204.i_crit_edge, %land.lhs.true.i197.i.skb_dst.exit204.i_crit_edge, %xmit.i.skb_dst.exit204.i_crit_edge
  %168 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %48, align 8
  %and25.i202.i = and i32 %169, -2
  %170 = inttoptr i32 %and25.i202.i to ptr
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %172, ptr %173, align 8
  %175 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %net.i, align 4
  %177 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %and.i.i.i = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %skb_dst.exit204.i.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

skb_dst.exit204.i.dst_output.exit.i_crit_edge:    ; preds = %skb_dst.exit204.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %skb_dst.exit204.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !124

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %skb_dst.exit204.i.dst_output.exit.i_crit_edge
  %180 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %48, align 8
  %and25.i.i.i = and i32 %181, -2
  %182 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %182, i32 0, i32 6
  %183 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = call i32 %184(ptr noundef %176, ptr noundef %179, ptr noundef %skb) #16
  %185 = and i32 %call1.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %186 = icmp eq i32 %185, 0
  %err.0.i = select i1 %186, i32 %55, i32 %call1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp.i205.i = icmp sgt i32 %err.0.i, 0
  br i1 %cmp.i205.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %187 = call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %190, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !129
  %191 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 64
  %194 = ptrtoint ptr %193 to i32
  %195 = call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i206.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i206.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %198
  %199 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i51 = add i32 %200, %194
  %201 = inttoptr i32 %add.i.i51 to ptr
  %syncp.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %201, i32 0, i32 4
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #16
  %conv33.i.i = zext i32 %err.0.i to i64
  %tx_bytes.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %tx_bytes.i.i, align 8
  %add6.i.i = add i64 %203, %conv33.i.i
  store i64 %add6.i.i, ptr %tx_bytes.i.i, align 8
  %tx_packets.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %201, i32 0, i32 2
  %204 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %tx_packets.i.i, align 16
  %inc.i.i = add i64 %205, 1
  store i64 %inc.i.i, ptr %tx_packets.i.i, align 16
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %201, i32 0, i32 4, i32 0, i32 1
  %206 = call ptr @llvm.returnaddress(i32 0) #16
  %207 = ptrtoint ptr %206 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %207) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !130
  %208 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %209, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !131
  %210 = call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i31.i.i = and i32 %210, -16384
  %211 = inttoptr i32 %and.i.i.i31.i.i to ptr
  %preempt_count.i.i32.i.i = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %preempt_count.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %preempt_count.i.i32.i.i, align 4
  %sub.i.i.i52 = add i32 %213, -1
  store volatile i32 %sub.i.i.i52, ptr %preempt_count.i.i32.i.i, align 4
  br label %cleanup

if.else.i.i:                                      ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp14.i.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else19.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %214 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tx_errors.i.i, align 4
  %inc17.i.i = add i32 %215, 1
  store i32 %inc17.i.i, ptr %tx_errors.i.i, align 4
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %216 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tx_aborted_errors.i.i, align 4
  %inc18.i.i = add i32 %217, 1
  store i32 %inc18.i.i, ptr %tx_aborted_errors.i.i, align 4
  br label %cleanup

if.else19.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %tx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %218 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %tx_dropped.i.i, align 4
  %inc20.i.i = add i32 %219, 1
  store i32 %inc20.i.i, ptr %tx_dropped.i.i, align 4
  br label %cleanup

tx_err_link_failure.i:                            ; preds = %if.end44.i.tx_err_link_failure.i_crit_edge, %vti6_state_check.exit.i.tx_err_link_failure.i_crit_edge, %lor.lhs.false5.i.i.i.i.tx_err_link_failure.i_crit_edge, %if.end11.i.i.tx_err_link_failure.i_crit_edge, %lor.lhs.false2.i.i.tx_err_link_failure.i_crit_edge, %lor.lhs.false.i.i.tx_err_link_failure.i_crit_edge, %if.end40.i.tx_err_link_failure.i_crit_edge, %if.then34.i, %if.then29.i, %sw.bb.i.tx_err_link_failure.i_crit_edge, %if.then.i.tx_err_link_failure.i_crit_edge
  %dst.2.i = phi ptr [ null, %if.then34.i ], [ %call32.i, %if.end44.i.tx_err_link_failure.i_crit_edge ], [ %call32.i, %vti6_state_check.exit.i.tx_err_link_failure.i_crit_edge ], [ null, %if.then.i.tx_err_link_failure.i_crit_edge ], [ null, %if.then29.i ], [ %call32.i, %lor.lhs.false2.i.i.tx_err_link_failure.i_crit_edge ], [ %call32.i, %lor.lhs.false.i.i.tx_err_link_failure.i_crit_edge ], [ %call32.i, %if.end40.i.tx_err_link_failure.i_crit_edge ], [ %call32.i, %lor.lhs.false5.i.i.i.i.tx_err_link_failure.i_crit_edge ], [ %call32.i, %if.end11.i.i.tx_err_link_failure.i_crit_edge ], [ null, %sw.bb.i.tx_err_link_failure.i_crit_edge ]
  %err.1.i = phi i32 [ %83, %if.then34.i ], [ -1, %if.end44.i.tx_err_link_failure.i_crit_edge ], [ -1, %vti6_state_check.exit.i.tx_err_link_failure.i_crit_edge ], [ -1, %if.then.i.tx_err_link_failure.i_crit_edge ], [ -1, %if.then29.i ], [ -1, %lor.lhs.false2.i.i.tx_err_link_failure.i_crit_edge ], [ -1, %lor.lhs.false.i.i.tx_err_link_failure.i_crit_edge ], [ -1, %if.end40.i.tx_err_link_failure.i_crit_edge ], [ -1, %lor.lhs.false5.i.i.i.i.tx_err_link_failure.i_crit_edge ], [ -1, %if.end11.i.i.tx_err_link_failure.i_crit_edge ], [ -1, %sw.bb.i.tx_err_link_failure.i_crit_edge ]
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 36, i32 17
  %220 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc98.i = add i32 %221, 1
  store i32 %inc98.i, ptr %tx_carrier_errors.i, align 4
  %222 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %48, align 8
  %and.i.i207.i = and i32 %223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i207.i)
  %tobool.not.i.i208.i = icmp eq i32 %and.i.i207.i, 0
  br i1 %tobool.not.i.i208.i, label %tx_err_link_failure.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i211.i

tx_err_link_failure.i.skb_dst.exit.i.i_crit_edge: ; preds = %tx_err_link_failure.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i.i

land.lhs.true.i.i211.i:                           ; preds = %tx_err_link_failure.i
  %call.i.i209.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209.i)
  %tobool1.not.i.i210.i = icmp eq i32 %call.i.i209.i, 0
  br i1 %tobool1.not.i.i210.i, label %land.rhs.i.i214.i, label %land.lhs.true.i.i211.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i211.i.skb_dst.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i211.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i.i

land.rhs.i.i214.i:                                ; preds = %land.lhs.true.i.i211.i
  %call2.i.i212.i = call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i212.i)
  %tobool3.not.i.i213.i = icmp eq i32 %call2.i.i212.i, 0
  br i1 %tobool3.not.i.i213.i, label %do.end.i.i215.i, label %land.rhs.i.i214.i.skb_dst.exit.i.i_crit_edge, !prof !124

land.rhs.i.i214.i.skb_dst.exit.i.i_crit_edge:     ; preds = %land.rhs.i.i214.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i.i

do.end.i.i215.i:                                  ; preds = %land.rhs.i.i214.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i215.i, %land.rhs.i.i214.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i211.i.skb_dst.exit.i.i_crit_edge, %tx_err_link_failure.i.skb_dst.exit.i.i_crit_edge
  %224 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %48, align 8
  %and25.i.i216.i = and i32 %225, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i216.i)
  %tobool.not.i217.i = icmp eq i32 %and25.i.i216.i, 0
  br i1 %tobool.not.i217.i, label %skb_dst.exit.i.i.vti6_xmit.exit_crit_edge, label %land.lhs.true.i220.i

skb_dst.exit.i.i.vti6_xmit.exit_crit_edge:        ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_xmit.exit

land.lhs.true.i220.i:                             ; preds = %skb_dst.exit.i.i
  %226 = inttoptr i32 %and25.i.i216.i to ptr
  %ops.i218.i = getelementptr inbounds %struct.dst_entry, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops.i218.i, align 4
  %tobool1.not.i219.i = icmp eq ptr %228, null
  br i1 %tobool1.not.i219.i, label %land.lhs.true.i220.i.vti6_xmit.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i220.i.vti6_xmit.exit_crit_edge:    ; preds = %land.lhs.true.i220.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_xmit.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i220.i
  %link_failure.i.i = getelementptr inbounds %struct.dst_ops, ptr %228, i32 0, i32 10
  %229 = ptrtoint ptr %link_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %link_failure.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %230, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.vti6_xmit.exit_crit_edge, label %if.then.i221.i

land.lhs.true2.i.i.vti6_xmit.exit_crit_edge:      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_xmit.exit

if.then.i221.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %230(ptr noundef %skb) #16
  br label %vti6_xmit.exit

vti6_xmit.exit.thread59:                          ; preds = %if.end81.i, %if.then71.i, %do.end.i, %if.then51.i.vti6_xmit.exit.thread59_crit_edge
  call void @dst_release(ptr noundef %call32.i) #16
  br label %tx_err

vti6_xmit.exit:                                   ; preds = %if.then.i221.i, %land.lhs.true2.i.i.vti6_xmit.exit_crit_edge, %land.lhs.true.i220.i.vti6_xmit.exit_crit_edge, %skb_dst.exit.i.i.vti6_xmit.exit_crit_edge
  call void @dst_release(ptr noundef %dst.2.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp23 = icmp slt i32 %err.1.i, 0
  br i1 %cmp23, label %vti6_xmit.exit.tx_err_crit_edge, label %vti6_xmit.exit.cleanup_crit_edge

vti6_xmit.exit.cleanup_crit_edge:                 ; preds = %vti6_xmit.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

vti6_xmit.exit.tx_err_crit_edge:                  ; preds = %vti6_xmit.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

tx_err:                                           ; preds = %vti6_xmit.exit.tx_err_crit_edge, %vti6_xmit.exit.thread59, %lor.lhs.false.tx_err_crit_edge, %sw.bb.tx_err_crit_edge, %if.end.tx_err_crit_edge, %pskb_inet_may_pull.exit.tx_err_crit_edge, %if.end.i.i.i.tx_err_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %231 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %232, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %233 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %tx_dropped, align 4
  %inc27 = add i32 %234, 1
  store i32 %inc27, ptr %tx_dropped, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %tx_err, %vti6_xmit.exit.cleanup_crit_edge, %if.else19.i.i, %if.then16.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #2 align 64 {
entry:
  %p = alloca %struct.ip6_tnl_parm2, align 4
  %p1 = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %p) #16
  %0 = call ptr @memset(ptr %p, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %p1) #16
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %3 = load i32, ptr @vti6_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %2, i32 noundef %3)
  %4 = call ptr @memset(ptr %p1, i32 0, i32 88)
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %entry.sw.bb14_crit_edge
    i32 35315, label %entry.sw.bb14_crit_edge253
    i32 35314, label %sw.bb63
  ]

entry.sw.bb14_crit_edge253:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb14

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1, align 4
  %cmp = icmp eq ptr %7, %dev
  br i1 %cmp, label %if.then.i, label %if.end5.thread

if.then.i:                                        ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #23, !srcloc !132
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !133

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 76) #16
  %9 = call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !134
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !136
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %data, i32 noundef 76) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #16, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !133

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 76, %if.then.i.if.then11.i.i_crit_edge ], [ 76, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 76, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %sw.epilog

if.end5.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %13 = call ptr @memset(ptr %p, i32 0, i32 76)
  br label %if.then7

if.end5:                                          ; preds = %if.end.i.i
  %laddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 8
  %laddr1.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %laddr.i, ptr %laddr1.i, i32 16)
  %raddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 9
  %raddr2.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %15 = call ptr @memcpy(ptr %raddr.i, ptr %raddr2.i, i32 16)
  %link.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %16 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link.i, align 4
  %link3.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 1
  %18 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %link3.i, align 4
  %i_key.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %19 = ptrtoint ptr %i_key.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_key.i, align 4
  %i_key4.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 12
  %21 = ptrtoint ptr %i_key4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %i_key4.i, align 4
  %o_key.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %22 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %o_key.i, align 4
  %o_key5.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 13
  %24 = ptrtoint ptr %o_key5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %o_key5.i, align 4
  %proto.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 2
  %25 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %proto.i, align 4
  %proto6.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 2
  %27 = ptrtoint ptr %proto6.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %proto6.i, align 4
  %28 = call ptr @memcpy(ptr %p1, ptr %p, i32 16)
  %call4 = call fastcc ptr @vti6_locate(ptr noundef %2, ptr noundef nonnull %p1, i32 noundef 0)
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end5.if.then7_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end5.thread
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %t.1 = phi ptr [ %call4, %if.end5.if.end9_crit_edge ], [ %add.ptr.i, %if.then7 ]
  %parms = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4
  %laddr.i183 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %laddr1.i184 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4, i32 8
  %29 = call ptr @memcpy(ptr %laddr.i183, ptr %laddr1.i184, i32 16)
  %raddr.i185 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %raddr2.i186 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4, i32 9
  %30 = call ptr @memcpy(ptr %raddr.i185, ptr %raddr2.i186, i32 16)
  %link.i187 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %link.i187 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link.i187, align 4
  %link3.i188 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %33 = ptrtoint ptr %link3.i188 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %link3.i188, align 4
  %i_key.i189 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4, i32 12
  %34 = ptrtoint ptr %i_key.i189 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_key.i189, align 4
  %i_key4.i190 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %36 = ptrtoint ptr %i_key4.i190 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %i_key4.i190, align 4
  %o_key.i191 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4, i32 13
  %37 = ptrtoint ptr %o_key.i191 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %o_key.i191, align 4
  %o_key5.i192 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %39 = ptrtoint ptr %o_key5.i192 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %o_key5.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.end9.if.end.i_crit_edge, label %if.then.i193

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i193:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %i_flags.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 9
  %40 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %i_flags.i, align 4
  %42 = or i16 %41, 8192
  store i16 %42, ptr %i_flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i193, %if.end9.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool9.not.i = icmp eq i32 %38, 0
  br i1 %tobool9.not.i, label %if.end.i.vti6_parm_to_user.exit_crit_edge, label %if.then10.i

if.end.i.vti6_parm_to_user.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_parm_to_user.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %o_flags.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 10
  %43 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %o_flags.i, align 2
  %45 = or i16 %44, 8192
  store i16 %45, ptr %o_flags.i, align 2
  br label %vti6_parm_to_user.exit

vti6_parm_to_user.exit:                           ; preds = %if.then10.i, %if.end.i.vti6_parm_to_user.exit_crit_edge
  %proto.i194 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %proto.i194 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %proto.i194, align 4
  %proto15.i = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 2
  %48 = ptrtoint ptr %proto15.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %proto15.i, align 4
  %49 = call ptr @memcpy(ptr %p, ptr %parms, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #16
  %call.i.i122 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i122, label %vti6_parm_to_user.exit.sw.epilog_crit_edge, label %if.end.i.i126

vti6_parm_to_user.exit.sw.epilog_crit_edge:       ; preds = %vti6_parm_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i.i126:                                    ; preds = %vti6_parm_to_user.exit
  %50 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #23, !srcloc !137
  %asmresult.i.i124 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i124)
  %cmp.i.i125 = icmp eq i32 %asmresult.i.i124, 0
  br i1 %cmp.i.i125, label %copy_to_user.exit, label %if.end.i.i126.sw.epilog_crit_edge

if.end.i.i126.sw.epilog_crit_edge:                ; preds = %if.end.i.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i126
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i127 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p, i32 noundef 76) #16
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %p, i32 noundef 76) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool11.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge253
  %user_ns = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %51 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ns, align 4
  %call15 = tail call zeroext i1 @ns_capable(ptr noundef %52, i32 noundef 12) #16
  br i1 %call15, label %if.then.i132, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then.i132:                                     ; preds = %sw.bb14
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #16
  %call.i.i131 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i131, label %if.then.i132.if.then11.i.i147_crit_edge, label %land.lhs.true.i.i135

if.then.i132.if.then11.i.i147_crit_edge:          ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i147

land.lhs.true.i.i135:                             ; preds = %if.then.i132
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #23
  %asmresult.i.i133 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i133)
  %cmp.i.i134 = icmp eq i32 %asmresult.i.i133, 0
  br i1 %cmp.i.i134, label %if.end.i.i143, label %land.lhs.true.i.i135.if.then11.i.i147_crit_edge, !prof !133

land.lhs.true.i.i135.if.then11.i.i147_crit_edge:  ; preds = %land.lhs.true.i.i135
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i147

if.end.i.i143:                                    ; preds = %land.lhs.true.i.i135
  %call.i.i.i136 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 76) #16
  %54 = call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i.i137 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i137 to ptr
  %cpu_domain.i.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i138) #7, !srcloc !134
  %and.i.i.i.i139 = and i32 %56, -13
  %or.i.i.i.i140 = or i32 %and.i.i.i.i139, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i140) #16, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !136
  %call1.i.i.i141 = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %data, i32 noundef 76) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #16, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i141)
  %tobool4.not.i.i142 = icmp eq i32 %call1.i.i.i141, 0
  br i1 %tobool4.not.i.i142, label %if.end21, label %if.end.i.i143.if.then11.i.i147_crit_edge, !prof !133

if.end.i.i143.if.then11.i.i147_crit_edge:         ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i147

if.then11.i.i147:                                 ; preds = %if.end.i.i143.if.then11.i.i147_crit_edge, %land.lhs.true.i.i135.if.then11.i.i147_crit_edge, %if.then.i132.if.then11.i.i147_crit_edge
  %res.03.i.i144 = phi i32 [ %call1.i.i.i141, %if.end.i.i143.if.then11.i.i147_crit_edge ], [ 76, %if.then.i132.if.then11.i.i147_crit_edge ], [ 76, %land.lhs.true.i.i135.if.then11.i.i147_crit_edge ]
  %sub.i.i145 = sub i32 76, %res.03.i.i144
  %add.ptr.i.i146 = getelementptr i8, ptr %p, i32 %sub.i.i145
  %57 = call ptr @memset(ptr %add.ptr.i.i146, i32 0, i32 %res.03.i.i144)
  br label %sw.epilog

if.end21:                                         ; preds = %if.end.i.i143
  %proto = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 2
  %58 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %proto, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %59, label %if.end21.sw.epilog_crit_edge [
    i8 41, label %if.end21.if.end29_crit_edge
    i8 0, label %if.end21.if.end29_crit_edge254
  ]

if.end21.if.end29_crit_edge254:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end29:                                         ; preds = %if.end21.if.end29_crit_edge, %if.end21.if.end29_crit_edge254
  %laddr.i195 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 8
  %laddr1.i196 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %61 = call ptr @memcpy(ptr %laddr.i195, ptr %laddr1.i196, i32 16)
  %raddr.i197 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 9
  %raddr2.i198 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %62 = call ptr @memcpy(ptr %raddr.i197, ptr %raddr2.i198, i32 16)
  %link.i199 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %63 = ptrtoint ptr %link.i199 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %link.i199, align 4
  %link3.i200 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 1
  %65 = ptrtoint ptr %link3.i200 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %link3.i200, align 4
  %i_key.i201 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %66 = ptrtoint ptr %i_key.i201 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_key.i201, align 4
  %i_key4.i202 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 12
  %68 = ptrtoint ptr %i_key4.i202 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %i_key4.i202, align 4
  %o_key.i203 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %69 = ptrtoint ptr %o_key.i203 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %o_key.i203, align 4
  %o_key5.i204 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 13
  %71 = ptrtoint ptr %o_key5.i204 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %o_key5.i204, align 4
  %proto6.i206 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 2
  %72 = ptrtoint ptr %proto6.i206 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %59, ptr %proto6.i206, align 4
  %73 = call ptr @memcpy(ptr %p1, ptr %p, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 35313, i32 %cmd)
  %cmp30 = icmp eq i32 %cmd, 35313
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call fastcc ptr @vti6_locate(ptr noundef %2, ptr noundef nonnull %p1, i32 noundef %conv31)
  %74 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call1, align 4
  %cmp34.not = icmp ne ptr %75, %dev
  call void @__sanitizer_cov_trace_const_cmp4(i32 35315, i32 %cmd)
  %cmp37 = icmp eq i32 %cmd, 35315
  %or.cond = and i1 %cmp37, %cmp34.not
  br i1 %or.cond, label %if.then39, label %if.end29.if.end51_crit_edge

if.end29.if.end51_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then39:                                        ; preds = %if.end29
  %tobool40.not = icmp eq ptr %call32, null
  br i1 %tobool40.not, label %if.else47, label %if.then41

if.then41:                                        ; preds = %if.then39
  %dev42 = getelementptr inbounds %struct.ip6_tnl, ptr %call32, i32 0, i32 1
  %76 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev42, align 4
  %cmp43.not = icmp eq ptr %77, %dev
  br i1 %cmp43.not, label %if.then41.if.end49_crit_edge, label %if.then41.sw.epilog_crit_edge

if.then41.sw.epilog_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.else47:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i207 = getelementptr i8, ptr %dev, i32 2304
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then41.if.end49_crit_edge
  %t.2 = phi ptr [ %call32, %if.then41.if.end49_crit_edge ], [ %add.ptr.i207, %if.else47 ]
  call fastcc void @vti6_update(ptr noundef %t.2, ptr noundef nonnull %p1, i1 noundef zeroext false)
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end29.if.end51_crit_edge
  %t.3 = phi ptr [ %t.2, %if.end49 ], [ %call32, %if.end29.if.end51_crit_edge ]
  %tobool52.not = icmp eq ptr %t.3, null
  br i1 %tobool52.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %if.end51
  %parms54 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4
  %laddr1.i209 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4, i32 8
  %78 = call ptr @memcpy(ptr %laddr1.i196, ptr %laddr1.i209, i32 16)
  %raddr2.i211 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4, i32 9
  %79 = call ptr @memcpy(ptr %raddr2.i198, ptr %raddr2.i211, i32 16)
  %link.i212 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %link.i212 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link.i212, align 4
  %82 = ptrtoint ptr %link.i199 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %link.i199, align 4
  %i_key.i214 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4, i32 12
  %83 = ptrtoint ptr %i_key.i214 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_key.i214, align 4
  %85 = ptrtoint ptr %i_key.i201 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %i_key.i201, align 4
  %o_key.i216 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4, i32 13
  %86 = ptrtoint ptr %o_key.i216 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %o_key.i216, align 4
  %88 = ptrtoint ptr %o_key.i203 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %o_key.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i218 = icmp eq i32 %84, 0
  br i1 %tobool.not.i218, label %if.then53.if.end.i222_crit_edge, label %if.then.i220

if.then53.if.end.i222_crit_edge:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i222

if.then.i220:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  %i_flags.i219 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 9
  %89 = ptrtoint ptr %i_flags.i219 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %i_flags.i219, align 4
  %91 = or i16 %90, 8192
  store i16 %91, ptr %i_flags.i219, align 4
  br label %if.end.i222

if.end.i222:                                      ; preds = %if.then.i220, %if.then53.if.end.i222_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool9.not.i221 = icmp eq i32 %87, 0
  br i1 %tobool9.not.i221, label %if.end.i222.if.then.i153_crit_edge, label %if.then10.i224

if.end.i222.if.then.i153_crit_edge:               ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i153

if.then10.i224:                                   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #18
  %o_flags.i223 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 10
  %92 = ptrtoint ptr %o_flags.i223 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %o_flags.i223, align 2
  %94 = or i16 %93, 8192
  store i16 %94, ptr %o_flags.i223, align 2
  br label %if.then.i153

if.then.i153:                                     ; preds = %if.then10.i224, %if.end.i222.if.then.i153_crit_edge
  %proto.i225 = getelementptr inbounds %struct.ip6_tnl, ptr %t.3, i32 0, i32 4, i32 2
  %95 = ptrtoint ptr %proto.i225 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %proto.i225, align 4
  %97 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %proto, align 4
  %98 = call ptr @memcpy(ptr %p, ptr %parms54, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #16
  %call.i.i152 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i152, label %if.then.i153.sw.epilog_crit_edge, label %copy_to_user.exit161

if.then.i153.sw.epilog_crit_edge:                 ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

copy_to_user.exit161:                             ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i157 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p, i32 noundef 76) #16
  %call.i1.i.i158 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %p, i32 noundef 76) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i158)
  %tobool56.not = icmp eq i32 %call.i1.i.i158, 0
  %spec.select252 = select i1 %tobool56.not, i32 0, i32 -14
  br label %sw.epilog

if.else59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %cond = select i1 %cmp30, i32 -105, i32 -2
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  %user_ns64 = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %99 = ptrtoint ptr %user_ns64 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %user_ns64, align 4
  %call65 = tail call zeroext i1 @ns_capable(ptr noundef %100, i32 noundef 12) #16
  br i1 %call65, label %if.end67, label %sw.bb63.sw.epilog_crit_edge

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end67:                                         ; preds = %sw.bb63
  %101 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call1, align 4
  %cmp69 = icmp eq ptr %102, %dev
  br i1 %cmp69, label %if.then.i165, label %if.end67.if.end87_crit_edge

if.end67.if.end87_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then.i165:                                     ; preds = %if.end67
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #16
  %call.i.i164 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i164, label %if.then.i165.if.then11.i.i180_crit_edge, label %land.lhs.true.i.i168

if.then.i165.if.then11.i.i180_crit_edge:          ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i180

land.lhs.true.i.i168:                             ; preds = %if.then.i165
  %103 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 76, i32 -1226833920) #23, !srcloc !132
  %asmresult.i.i166 = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i166)
  %cmp.i.i167 = icmp eq i32 %asmresult.i.i166, 0
  br i1 %cmp.i.i167, label %if.end.i.i176, label %land.lhs.true.i.i168.if.then11.i.i180_crit_edge, !prof !133

land.lhs.true.i.i168.if.then11.i.i180_crit_edge:  ; preds = %land.lhs.true.i.i168
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i180

if.end.i.i176:                                    ; preds = %land.lhs.true.i.i168
  %call.i.i.i169 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 76) #16
  %104 = call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i.i170 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i170 to ptr
  %cpu_domain.i.i.i.i.i171 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i171) #7, !srcloc !134
  %and.i.i.i.i172 = and i32 %106, -13
  %or.i.i.i.i173 = or i32 %and.i.i.i.i172, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i173) #16, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !136
  %call1.i.i.i174 = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %data, i32 noundef 76) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #16, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i174)
  %tobool4.not.i.i175 = icmp eq i32 %call1.i.i.i174, 0
  br i1 %tobool4.not.i.i175, label %if.end75, label %if.end.i.i176.if.then11.i.i180_crit_edge, !prof !133

if.end.i.i176.if.then11.i.i180_crit_edge:         ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i180

if.then11.i.i180:                                 ; preds = %if.end.i.i176.if.then11.i.i180_crit_edge, %land.lhs.true.i.i168.if.then11.i.i180_crit_edge, %if.then.i165.if.then11.i.i180_crit_edge
  %res.03.i.i177 = phi i32 [ %call1.i.i.i174, %if.end.i.i176.if.then11.i.i180_crit_edge ], [ 76, %if.then.i165.if.then11.i.i180_crit_edge ], [ 76, %land.lhs.true.i.i168.if.then11.i.i180_crit_edge ]
  %sub.i.i178 = sub i32 76, %res.03.i.i177
  %add.ptr.i.i179 = getelementptr i8, ptr %p, i32 %sub.i.i178
  %107 = call ptr @memset(ptr %add.ptr.i.i179, i32 0, i32 %res.03.i.i177)
  br label %sw.epilog

if.end75:                                         ; preds = %if.end.i.i176
  %laddr.i228 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 8
  %laddr1.i229 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 7
  %108 = call ptr @memcpy(ptr %laddr.i228, ptr %laddr1.i229, i32 16)
  %raddr.i230 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 9
  %raddr2.i231 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 8
  %109 = call ptr @memcpy(ptr %raddr.i230, ptr %raddr2.i231, i32 16)
  %link.i232 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 1
  %110 = ptrtoint ptr %link.i232 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %link.i232, align 4
  %link3.i233 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 1
  %112 = ptrtoint ptr %link3.i233 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %link3.i233, align 4
  %i_key.i234 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 11
  %113 = ptrtoint ptr %i_key.i234 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_key.i234, align 4
  %i_key4.i235 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 12
  %115 = ptrtoint ptr %i_key4.i235 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %i_key4.i235, align 4
  %o_key.i236 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 12
  %116 = ptrtoint ptr %o_key.i236 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %o_key.i236, align 4
  %o_key5.i237 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 13
  %118 = ptrtoint ptr %o_key5.i237 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %o_key5.i237, align 4
  %proto.i238 = getelementptr inbounds %struct.ip6_tnl_parm2, ptr %p, i32 0, i32 2
  %119 = ptrtoint ptr %proto.i238 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %proto.i238, align 4
  %proto6.i239 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p1, i32 0, i32 2
  %121 = ptrtoint ptr %proto6.i239 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %proto6.i239, align 4
  %122 = call ptr @memcpy(ptr %p1, ptr %p, i32 16)
  %call76 = call fastcc ptr @vti6_locate(ptr noundef %2, ptr noundef nonnull %p1, i32 noundef 0)
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.end75.sw.epilog_crit_edge, label %if.end79

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end79:                                         ; preds = %if.end75
  %dev80 = getelementptr inbounds %struct.ip6_tnl, ptr %call76, i32 0, i32 1
  %123 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev80, align 4
  %125 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call1, align 4
  %cmp82 = icmp eq ptr %124, %126
  br i1 %cmp82, label %if.end79.sw.epilog_crit_edge, label %if.end79.if.end87_crit_edge

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end87:                                         ; preds = %if.end79.if.end87_crit_edge, %if.end67.if.end87_crit_edge
  %dev.addr.0 = phi ptr [ %dev, %if.end67.if.end87_crit_edge ], [ %124, %if.end79.if.end87_crit_edge ]
  call void @unregister_netdevice_queue(ptr noundef %dev.addr.0, ptr noundef null) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end87, %if.end79.sw.epilog_crit_edge, %if.end75.sw.epilog_crit_edge, %if.then11.i.i180, %sw.bb63.sw.epilog_crit_edge, %if.else59, %copy_to_user.exit161, %if.then.i153.sw.epilog_crit_edge, %if.then41.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.then11.i.i147, %sw.bb14.sw.epilog_crit_edge, %copy_to_user.exit, %if.end.i.i126.sw.epilog_crit_edge, %vti6_parm_to_user.exit.sw.epilog_crit_edge, %if.then11.i.i, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -1, %if.end79.sw.epilog_crit_edge ], [ 0, %if.end87 ], [ -2, %if.end75.sw.epilog_crit_edge ], [ -1, %sw.bb63.sw.epilog_crit_edge ], [ %cond, %if.else59 ], [ -1, %sw.bb14.sw.epilog_crit_edge ], [ -22, %if.end21.sw.epilog_crit_edge ], [ -17, %if.then41.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %vti6_parm_to_user.exit.sw.epilog_crit_edge ], [ -14, %if.end.i.i126.sw.epilog_crit_edge ], [ -14, %if.then11.i.i147 ], [ -14, %if.then.i153.sw.epilog_crit_edge ], [ -14, %if.then11.i.i180 ], [ %spec.select, %copy_to_user.exit ], [ %spec.select252, %copy_to_user.exit161 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %p1) #16
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %p) #16
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_get_iflink(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vti6_link_config(ptr noundef %t, i1 noundef zeroext %keep_mtu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %laddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %laddr, i32 noundef 16) #16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %raddr = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %2 = call ptr @memcpy(ptr %broadcast, ptr %raddr, i32 16)
  %flags = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, -458753
  store i32 %and, ptr %flags, align 4
  %call = tail call i32 @ip6_tnl_get_cap(ptr noundef %t, ptr noundef %laddr, ptr noundef %raddr) #16
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, %call
  store i32 %or, ptr %flags, align 4
  %7 = and i32 %or, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %7)
  %.not = icmp eq i32 %7, 196608
  %flags10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags10, align 8
  %and13 = and i32 %9, -17
  %masksel = select i1 %.not, i32 16, i32 0
  %and13.sink = or i32 %and13, %masksel
  store i32 %and13.sink, ptr %flags10, align 8
  br i1 %keep_mtu, label %land.lhs.true15, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true15:                                  ; preds = %entry
  %mtu16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %mtu16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  br i1 %tobool17.not, label %land.lhs.true15.if.end27_crit_edge, label %if.then18

land.lhs.true15.if.end27_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_mtu, align 8
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13)
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 31
  %15 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_mtu, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  %18 = ptrtoint ptr %mtu16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mtu16, align 4
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true15.if.end27_crit_edge, %entry.if.end27_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and29 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.land.lhs.true44_crit_edge, label %if.then31

if.end27.land.lhs.true44_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true44

if.then31:                                        ; preds = %if.end27
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %raddr) #16
  %and34 = and i32 %call.i, 34
  %net = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 3
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  %link = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link, align 4
  %call37 = tail call ptr @rt6_lookup(ptr noundef %22, ptr noundef %raddr, ptr noundef %laddr, i32 noundef %24, ptr noundef null, i32 noundef %and34) #16
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end42.thread109, label %if.end42

if.end42.thread109:                               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dst_release(ptr noundef null) #16
  br label %land.lhs.true44

if.end42:                                         ; preds = %if.then31
  %25 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call37, align 4
  tail call void @dst_release(ptr noundef nonnull %call37) #16
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %if.end42.land.lhs.true44_crit_edge, label %if.end42.if.end56_crit_edge

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.end42.land.lhs.true44_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.end42.land.lhs.true44_crit_edge, %if.end42.thread109, %if.end27.land.lhs.true44_crit_edge
  %link45 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %link45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool46.not = icmp eq i32 %28, 0
  br i1 %tobool46.not, label %land.lhs.true44.if.end56.thread_crit_edge, label %if.end51

land.lhs.true44.if.end56.thread_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.thread

if.end51:                                         ; preds = %land.lhs.true44
  %net48 = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 3
  %29 = ptrtoint ptr %net48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net48, align 4
  %call50 = tail call ptr @__dev_get_by_index(ptr noundef %30, i32 noundef %28) #16
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.end51.if.end56.thread_crit_edge, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.end51.if.end56.thread_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.thread

if.end56:                                         ; preds = %if.end51.if.end56_crit_edge, %if.end42.if.end56_crit_edge
  %tdev.2117 = phi ptr [ %call50, %if.end51.if.end56_crit_edge ], [ %26, %if.end42.if.end56_crit_edge ]
  %mtu54 = getelementptr inbounds %struct.net_device, ptr %tdev.2117, i32 0, i32 20
  %31 = ptrtoint ptr %mtu54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu54, align 4
  %sub = add i32 %32, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %sub)
  %cmp58 = icmp sgt i32 %sub, 68
  br i1 %cmp58, label %if.end56.if.end56.thread_crit_edge, label %if.end56._crit_edge

if.end56._crit_edge:                              ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %33

if.end56.if.end56.thread_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end56.if.end56.thread_crit_edge, %if.end51.if.end56.thread_crit_edge, %land.lhs.true44.if.end56.thread_crit_edge
  %mtu.0120 = phi i32 [ %sub, %if.end56.if.end56.thread_crit_edge ], [ 1332, %if.end51.if.end56.thread_crit_edge ], [ 1332, %land.lhs.true44.if.end56.thread_crit_edge ]
  br label %33

33:                                               ; preds = %if.end56.thread, %if.end56._crit_edge
  %34 = phi i32 [ %mtu.0120, %if.end56.thread ], [ 68, %if.end56._crit_edge ]
  %mtu63 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %35 = ptrtoint ptr %mtu63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mtu63, align 4
  br label %cleanup

cleanup:                                          ; preds = %33, %if.then18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_get_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  %8 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vti6_tnl_unlink(ptr nocapture noundef readonly %ip6n, ptr noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %raddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %laddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %raddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %3, %1
  %arrayidx4.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %5
  %arrayidx7.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %laddr.i, align 4
  %arrayidx2.i7.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i7.i, align 4
  %or.i8.i = or i32 %11, %9
  %arrayidx4.i9.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx4.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i9.i, align 4
  %or5.i10.i = or i32 %or.i8.i, %13
  %arrayidx7.i11.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx7.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i11.i, align 4
  %or8.i12.i = or i32 %or5.i10.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i12.i)
  %cmp.i13.i = icmp eq i32 %or8.i12.i, 0
  br i1 %cmp.i13.i, label %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_tnl_bucket.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %16 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %laddr.i, align 4
  %arrayidx2.i3.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i3.i.i, align 4
  %arrayidx4.i5.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i5.i.i, align 4
  %arrayidx7.i7.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i7.i.i, align 4
  %xor.i4.i.i = xor i32 %3, %1
  %xor5.i6.i.i = xor i32 %xor.i4.i.i, %5
  %xor8.i8.i.i = xor i32 %xor5.i6.i.i, %7
  %xor.i.i.i = xor i32 %xor8.i8.i.i, %17
  %xor5.i.i.i = xor i32 %xor.i.i.i, %19
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %21
  %xor.i.i = xor i32 %xor8.i.i.i, %23
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 27
  br label %vti6_tnl_bucket.exit

vti6_tnl_bucket.exit:                             ; preds = %if.then.i, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge
  %h.0.i = phi i32 [ 0, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge ], [ %shr.i.i.i, %if.then.i ]
  %prio.0.i = phi i32 [ 0, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge ], [ 1, %if.then.i ]
  %arrayidx.i = getelementptr %struct.vti6_net, ptr %ip6n, i32 0, i32 3, i32 %prio.0.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %25, i32 %h.0.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %vti6_tnl_bucket.exit
  %tp.0 = phi ptr [ %arrayidx3.i, %vti6_tnl_bucket.exit ], [ %27, %for.body.for.cond_crit_edge ]
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call1, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @vti6_tnl_unlink.__warned, align 1
  br i1 %.b50, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 168, ptr noundef nonnull @.str.8) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %26 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tp.0, align 4
  %cmp.not = icmp eq ptr %27, null
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %do.end
  %cmp5 = icmp eq ptr %27, %t
  br i1 %cmp5, label %do.body7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !140
  %30 = ptrtoint ptr %tp.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %tp.0, align 4
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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
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
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_xmit_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_dst_update_pmtu_no_confirm(ptr noundef %skb, i32 noundef %mtu) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !124

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.if.end_crit_edge, label %land.lhs.true

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %skb_dst.exit
  %ops = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_pmtu, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %9(ptr noundef nonnull %5, ptr noundef null, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext false) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %skb_dst.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  %5 = tail call i32 @llvm.read_register.i32(metadata !112) #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !142
  %14 = tail call i32 @llvm.read_register.i32(metadata !112) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !112) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !143
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %33 = tail call i32 @llvm.read_register.i32(metadata !112) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !133

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !145
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vti6_locate(ptr noundef %net, ptr noundef %p, i32 noundef %create) unnamed_addr #2 align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  %laddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  %0 = load i32, ptr @vti6_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %raddr, align 4
  %arrayidx2.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %4, %2
  %arrayidx4.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %6
  %arrayidx7.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %9 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %laddr, align 4
  %arrayidx2.i7.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i7.i, align 4
  %or.i8.i = or i32 %12, %10
  %arrayidx4.i9.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx4.i9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i9.i, align 4
  %or5.i10.i = or i32 %or.i8.i, %14
  %arrayidx7.i11.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx7.i11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i11.i, align 4
  %or8.i12.i = or i32 %or5.i10.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i12.i)
  %cmp.i13.i = icmp eq i32 %or8.i12.i, 0
  br i1 %cmp.i13.i, label %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_tnl_bucket.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %17 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %laddr, align 4
  %arrayidx2.i3.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i3.i.i, align 4
  %arrayidx4.i5.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i5.i.i, align 4
  %arrayidx7.i7.i.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i7.i.i, align 4
  %xor.i4.i.i = xor i32 %4, %2
  %xor5.i6.i.i = xor i32 %xor.i4.i.i, %6
  %xor8.i8.i.i = xor i32 %xor5.i6.i.i, %8
  %xor.i.i.i = xor i32 %xor8.i8.i.i, %18
  %xor5.i.i.i = xor i32 %xor.i.i.i, %20
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %22
  %xor.i.i = xor i32 %xor8.i.i.i, %24
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 27
  br label %vti6_tnl_bucket.exit

vti6_tnl_bucket.exit:                             ; preds = %if.then.i, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge
  %h.0.i = phi i32 [ 0, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge ], [ %shr.i.i.i, %if.then.i ]
  %prio.0.i = phi i32 [ 0, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge ], [ 1, %if.then.i ]
  %arrayidx.i = getelementptr %struct.vti6_net, ptr %call, i32 0, i32 3, i32 %prio.0.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %26, i32 %h.0.i
  %arrayidx4.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 1
  %arrayidx9.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8, i32 0, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %vti6_tnl_bucket.exit
  %tp.0 = phi ptr [ %arrayidx3.i, %vti6_tnl_bucket.exit ], [ %28, %for.cond.backedge ]
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call2, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @vti6_locate.__warned, align 1
  br i1 %.b33, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_locate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 265, ptr noundef nonnull @.str.8) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %27 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp.0, align 4
  %cmp.not = icmp eq ptr %28, null
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end
  %laddr6 = getelementptr inbounds %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %laddr, align 4
  %31 = ptrtoint ptr %laddr6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %laddr6, align 4
  %xor.i = xor i32 %32, %30
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %36, %34
  %or.i = or i32 %xor7.i, %xor.i
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %40, %38
  %or13.i = or i32 %or.i, %xor12.i
  %41 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %44, %42
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true8, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true8.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

land.lhs.true8:                                   ; preds = %for.body
  %raddr10 = getelementptr inbounds %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 9
  %45 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %raddr, align 4
  %47 = ptrtoint ptr %raddr10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %raddr10, align 4
  %xor.i34 = xor i32 %48, %46
  %49 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx6.i36 = getelementptr %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx6.i36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx6.i36, align 4
  %xor7.i37 = xor i32 %52, %50
  %or.i38 = or i32 %xor7.i37, %xor.i34
  %53 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx11.i40 = getelementptr %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx11.i40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx11.i40, align 4
  %xor12.i41 = xor i32 %56, %54
  %or13.i42 = or i32 %or.i38, %xor12.i41
  %57 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx17.i44 = getelementptr %struct.ip6_tnl, ptr %28, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx17.i44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx17.i44, align 4
  %xor18.i45 = xor i32 %60, %58
  %or19.i46 = or i32 %or13.i42, %xor18.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i46)
  %cmp.i47 = icmp eq i32 %or19.i46, 0
  br i1 %cmp.i47, label %if.then12, label %land.lhs.true8.for.cond.backedge_crit_edge

land.lhs.true8.for.cond.backedge_crit_edge:       ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

if.then12:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool13.not = icmp eq i32 %create, 0
  %. = select i1 %tobool13.not, ptr %28, ptr null
  br label %cleanup

for.end:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool17.not = icmp eq i32 %create, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.end19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #16
  %61 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i48

if.then.i48:                                      ; preds = %if.end19
  %call.i = tail call zeroext i1 @dev_valid_name(ptr noundef %p) #16
  br i1 %call.i, label %if.end.i, label %if.then.i48.vti6_tnl_create.exit_crit_edge

if.then.i48.vti6_tnl_create.exit_crit_edge:       ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_tnl_create.exit

if.end.i:                                         ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = call i32 @strlcpy(ptr noundef nonnull %name.i, ptr noundef %p, i32 noundef 16) #16
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.17) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.end.i
  %call12.i = call ptr @alloc_netdev_mqs(i32 noundef 248, ptr noundef nonnull %name.i, i8 noundef zeroext 0, ptr noundef nonnull @vti6_dev_setup, i32 noundef 1, i32 noundef 1) #16
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end10.i.vti6_tnl_create.exit_crit_edge, label %if.end15.i

if.end10.i.vti6_tnl_create.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_tnl_create.exit

if.end15.i:                                       ; preds = %if.end10.i
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %call12.i, i32 0, i32 127
  %64 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %net, ptr %nd_net.i.i, align 4
  %parms.i = getelementptr i8, ptr %call12.i, i32 2320
  %65 = call ptr @memcpy(ptr %parms.i, ptr %p, i32 88)
  %net18.i = getelementptr i8, ptr %call12.i, i32 2316
  %66 = ptrtoint ptr %net18.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %net, ptr %net18.i, align 4
  %67 = load i32, ptr @vti6_net_id, align 4
  %call2.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %67) #16
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call12.i, i32 0, i32 136
  %68 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @vti6_link_ops, ptr %rtnl_link_ops.i.i, align 4
  %call3.i.i = call i32 @register_netdevice(ptr noundef nonnull %call12.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i49 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i49, label %failed_free.i, label %vti6_tnl_create2.exit.i

vti6_tnl_create2.exit.i:                          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %call12.i, i32 2304
  %call6.i.i = call ptr @strcpy(ptr noundef %parms.i, ptr noundef nonnull %call12.i) #20
  call fastcc void @vti6_tnl_link(ptr noundef %call2.i.i, ptr noundef %add.ptr.i.i) #16
  br label %vti6_tnl_create.exit

failed_free.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_netdev(ptr noundef nonnull %call12.i) #16
  br label %vti6_tnl_create.exit

vti6_tnl_create.exit:                             ; preds = %failed_free.i, %vti6_tnl_create2.exit.i, %if.end10.i.vti6_tnl_create.exit_crit_edge, %if.then.i48.vti6_tnl_create.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %vti6_tnl_create2.exit.i ], [ null, %if.end10.i.vti6_tnl_create.exit_crit_edge ], [ null, %if.then.i48.vti6_tnl_create.exit_crit_edge ], [ null, %failed_free.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #16
  br label %cleanup

cleanup:                                          ; preds = %vti6_tnl_create.exit, %for.end.cleanup_crit_edge, %if.then12
  %retval.0 = phi ptr [ %retval.0.i, %vti6_tnl_create.exit ], [ %., %if.then12 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vti6_update(ptr noundef %t, ptr nocapture noundef readonly %p, i1 noundef zeroext %keep_mtu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %4 = load i32, ptr @vti6_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  tail call fastcc void @vti6_tnl_unlink(ptr noundef %call1, ptr noundef %t)
  tail call void @synchronize_net() #16
  %laddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %laddr1.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 8
  %5 = call ptr @memcpy(ptr %laddr.i, ptr %laddr1.i, i32 16)
  %raddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %raddr3.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 9
  %6 = call ptr @memcpy(ptr %raddr.i, ptr %raddr3.i, i32 16)
  %link.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link.i, align 4
  %link5.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %link5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %link5.i, align 8
  %i_key.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 12
  %10 = ptrtoint ptr %i_key.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_key.i, align 4
  %i_key7.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 12
  %12 = ptrtoint ptr %i_key7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %i_key7.i, align 4
  %o_key.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 13
  %13 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %o_key.i, align 4
  %o_key9.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 13
  %15 = ptrtoint ptr %o_key9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %o_key9.i, align 8
  %proto.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 2
  %16 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %proto.i, align 4
  %proto11.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %proto11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %proto11.i, align 4
  %fwmark.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %p, i32 0, i32 14
  %19 = ptrtoint ptr %fwmark.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fwmark.i, align 4
  %fwmark13.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 14
  %21 = ptrtoint ptr %fwmark13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fwmark13.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %reset_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reset_ts.i.i, align 4
  tail call fastcc void @vti6_link_config(ptr noundef %t, i1 noundef zeroext %keep_mtu) #16
  tail call fastcc void @vti6_tnl_link(ptr noundef %call1, ptr noundef %t)
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void @netdev_state_change(ptr noundef %25) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vti6_tnl_link(ptr nocapture noundef readonly %ip6n, ptr noundef %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %raddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9
  %laddr.i = getelementptr inbounds %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %raddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %3, %1
  %arrayidx4.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %5
  %arrayidx7.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %laddr.i, align 4
  %arrayidx2.i7.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i7.i, align 4
  %or.i8.i = or i32 %11, %9
  %arrayidx4.i9.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx4.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i9.i, align 4
  %or5.i10.i = or i32 %or.i8.i, %13
  %arrayidx7.i11.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx7.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i11.i, align 4
  %or8.i12.i = or i32 %or5.i10.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i12.i)
  %cmp.i13.i = icmp eq i32 %or8.i12.i, 0
  br i1 %cmp.i13.i, label %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_tnl_bucket.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %16 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %laddr.i, align 4
  %arrayidx2.i3.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i3.i.i, align 4
  %arrayidx4.i5.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i5.i.i, align 4
  %arrayidx7.i7.i.i = getelementptr %struct.ip6_tnl, ptr %t, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i7.i.i, align 4
  %xor.i4.i.i = xor i32 %3, %1
  %xor5.i6.i.i = xor i32 %xor.i4.i.i, %5
  %xor8.i8.i.i = xor i32 %xor5.i6.i.i, %7
  %xor.i.i.i = xor i32 %xor8.i8.i.i, %17
  %xor5.i.i.i = xor i32 %xor.i.i.i, %19
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %21
  %xor.i.i = xor i32 %xor8.i.i.i, %23
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 27
  br label %vti6_tnl_bucket.exit

vti6_tnl_bucket.exit:                             ; preds = %if.then.i, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge
  %h.0.i = phi i32 [ 0, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge ], [ %shr.i.i.i, %if.then.i ]
  %prio.0.i = phi i32 [ 0, %lor.lhs.false.i.vti6_tnl_bucket.exit_crit_edge ], [ 1, %if.then.i ]
  %arrayidx.i = getelementptr %struct.vti6_net, ptr %ip6n, i32 0, i32 3, i32 %prio.0.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call2, label %vti6_tnl_bucket.exit.do.end_crit_edge, label %land.lhs.true

vti6_tnl_bucket.exit.do.end_crit_edge:            ; preds = %vti6_tnl_bucket.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %vti6_tnl_bucket.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @vti6_tnl_link.__warned, align 1
  br i1 %.b69, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 157, ptr noundef nonnull @.str.8) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %vti6_tnl_bucket.exit.do.end_crit_edge
  %arrayidx3.i = getelementptr ptr, ptr %25, i32 %h.0.i
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !146
  %28 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %t, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !147
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %t, ptr %arrayidx3.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vti6_netlink_parms(ptr noundef readonly %data, ptr nocapture noundef writeonly %parms) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  %tmp13 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %parms, i32 0, i32 88)
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.end

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
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
  %arrayidx5 = getelementptr ptr, ptr %data, i32 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %laddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  %8 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %7, i32 noundef 16) #16
  %9 = call ptr @memcpy(ptr %laddr, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %arrayidx10 = getelementptr ptr, ptr %data, i32 5
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp13) #16
  %12 = call ptr @memset(ptr %tmp13, i32 255, i32 16)
  %call.i55 = call i32 @nla_memcpy(ptr noundef nonnull %tmp13, ptr noundef nonnull %11, i32 noundef 16) #16
  %13 = call ptr @memcpy(ptr %raddr, ptr %tmp13, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp13) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %arrayidx16 = getelementptr ptr, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i56 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i56, align 4
  %i_key = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 12
  %18 = ptrtoint ptr %i_key to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %i_key, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %arrayidx22 = getelementptr ptr, ptr %data, i32 3
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i57 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i57, align 4
  %o_key = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 13
  %23 = ptrtoint ptr %o_key to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %o_key, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %arrayidx28 = getelementptr ptr, ptr %data, i32 6
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i58 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i58, align 4
  %fwmark = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms, i32 0, i32 14
  %28 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fwmark, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_rcv_tunnel(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %saddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %4 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %call3 = tail call i32 @xfrm6_tunnel_spi_lookup(ptr noundef %8, ptr noundef %saddr1) #16
  %call4 = tail call i32 @vti6_input_proto(ptr noundef %skb, i32 noundef 41, i32 noundef %call3, i32 noundef 0)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_rcv_cb(ptr noundef %skb, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tunnel, align 8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ip6_tnl, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool2.not = icmp eq i32 %err, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
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
  %inc5 = add i32 %10, 1
  store i32 %inc5, ptr %rx_dropped, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %11 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.i.not.i.i.i, label %if.end6.xfrm_input_state.exit_crit_edge, label %if.then.i.i.i

if.end6.xfrm_input_state.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_input_state.exit

if.then.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
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

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %if.end6.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %if.end6.xfrm_input_state.exit_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %19, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %inner_mode7 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 46
  %family8 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %family8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp = icmp eq i16 %23, 0
  br i1 %cmp, label %if.then10, label %xfrm_input_state.exit.if.end63_crit_edge

xfrm_input_state.exit.if.end63_crit_edge:         ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.then10:                                        ; preds = %xfrm_input_state.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %protocol, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %25, label %if.then10.if.else.i_crit_edge [
    i8 4, label %land.lhs.true.i
    i8 41, label %land.lhs.true5.i
  ]

if.then10.if.else.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then10
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 14, i32 7
  %27 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp1.i = icmp eq i16 %28, 2
  br i1 %cmp1.i, label %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_ip2inner_mode.exit

land.lhs.true5.i:                                 ; preds = %if.then10
  %family7.i = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 14, i32 7
  %29 = ptrtoint ptr %family7.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %family7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %30)
  %cmp9.i = icmp eq i16 %30, 10
  br i1 %cmp9.i, label %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_ip2inner_mode.exit

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then10.if.else.i_crit_edge
  %inner_mode_iaf.i = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 47
  br label %xfrm_ip2inner_mode.exit

xfrm_ip2inner_mode.exit:                          ; preds = %if.else.i, %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge, %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge
  %retval.0.i = phi ptr [ %inner_mode_iaf.i, %if.else.i ], [ %inner_mode7, %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge ], [ %inner_mode7, %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge ]
  %cmp15 = icmp eq ptr %retval.0.i, null
  br i1 %cmp15, label %do.body18, label %xfrm_ip2inner_mode.exit.if.end63_crit_edge

xfrm_ip2inner_mode.exit.if.end63_crit_edge:       ; preds = %xfrm_ip2inner_mode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

do.body18:                                        ; preds = %xfrm_ip2inner_mode.exit
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !122
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
  %arrayidx33 = getelementptr [29 x i32], ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx33 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %add = add i32 %45, %39
  %46 = inttoptr i32 %add to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add37 = add i32 %48, 1
  store i32 %add37, ptr %46, align 4
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !123
  %and.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool48.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool48.not, label %if.then52, label %do.body18.do.end55_crit_edge, !prof !124

do.body18.do.end55_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55

if.then52:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body18.do.end55_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #16, !srcloc !125
  br label %cleanup

if.end63:                                         ; preds = %xfrm_ip2inner_mode.exit.if.end63_crit_edge, %xfrm_input_state.exit.if.end63_crit_edge
  %inner_mode.0 = phi ptr [ %retval.0.i, %xfrm_ip2inner_mode.exit.if.end63_crit_edge ], [ %inner_mode7, %xfrm_input_state.exit.if.end63_crit_edge ]
  %family64 = getelementptr inbounds %struct.xfrm_mode, ptr %inner_mode.0, i32 0, i32 1
  %50 = ptrtoint ptr %family64 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %family64, align 1
  %conv65 = zext i8 %51 to i16
  %i_key = getelementptr inbounds %struct.ip6_tnl, ptr %1, i32 0, i32 4, i32 12
  %52 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_key, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %2, align 4
  %call66 = tail call fastcc i32 @xfrm_policy_check(ptr noundef %skb, i16 noundef zeroext %conv65)
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %4, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end63.cleanup_crit_edge, label %if.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %net = getelementptr inbounds %struct.ip6_tnl, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net, align 4
  %58 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %nd_net.i101 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 127
  %61 = ptrtoint ptr %nd_net.i101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nd_net.i101, align 4
  %cmp.i = icmp ne ptr %57, %62
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i) #16
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
  %70 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i102 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i102 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i, align 4
  %arrayidx.i103 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i103, align 4
  %add.i = add i32 %75, %69
  %76 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %76, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #16
  %conv.i104 = zext i32 %65 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %78, %conv.i104
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %76, align 32
  %inc.i = add i64 %80, 1
  store i64 %inc.i, ptr %76, align 32
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %76, i32 0, i32 4, i32 0, i32 1
  %81 = tail call ptr @llvm.returnaddress(i32 0) #16
  %82 = ptrtoint ptr %81 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %82) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !130
  %83 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %84, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end63.cleanup_crit_edge, %do.end55, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -22, %do.end55 ], [ 0, %if.end69 ], [ 1, %entry.cleanup_crit_edge ], [ -1, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr, align 2
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 5
  %call2 = tail call fastcc ptr @vti6_tnl_lookup(ptr noundef %4, ptr noundef %daddr, ptr noundef %saddr)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %o_key = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 13
  %9 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %o_key, align 8
  %11 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %8, label %if.end.cleanup_crit_edge [
    i8 50, label %sw.bb
    i8 51, label %sw.bb5
    i8 108, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %offset
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %17, i32 %offset
  %spi8 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr7, i32 0, i32 3
  %18 = ptrtoint ptr %spi8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spi8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 %offset
  %cpi = getelementptr inbounds %struct.ip_comp_hdr, ptr %add.ptr11, i32 0, i32 2
  %22 = ptrtoint ptr %cpi to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cpi, align 2
  %conv12 = zext i16 %23 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %sw.bb
  %spi.0 = phi i32 [ %conv12, %sw.bb9 ], [ %19, %sw.bb5 ], [ %15, %sw.bb ]
  %24 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %type, label %sw.epilog.cleanup_crit_edge [
    i8 2, label %sw.epilog.if.end19_crit_edge
    i8 -119, label %sw.epilog.if.end19_crit_edge72
  ]

sw.epilog.if.end19_crit_edge72:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog.if.end19_crit_edge, %sw.epilog.if.end19_crit_edge72
  %call22 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %10, ptr noundef %daddr, i32 noundef %spi.0, i8 noundef zeroext %8, i16 noundef zeroext 10) #16
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %type)
  %cmp27 = icmp eq i8 %type, -119
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifindex, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %29 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %30, i32 noundef 0) #16
  %.fca.0.insert46 = insertvalue [1 x i32] poison, i32 %call.i, 0
  tail call void @ip6_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef %28, i32 noundef 0, [1 x i32] %.fca.0.insert46) #16
  br label %if.end36

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %user_ns.i70 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %31 = ptrtoint ptr %user_ns.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns.i70, align 4
  %call.i71 = tail call i32 @make_kuid(ptr noundef %32, i32 noundef 0) #16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call.i71, 0
  tail call void @ip6_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i32 noundef 0, [1 x i32] %.fca.0.insert) #16
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then29
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call22, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !133

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !150
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call22, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_spi_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_input_proto(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %4 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !138
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call2 = tail call fastcc ptr @vti6_tnl_lookup(ptr noundef %12, ptr noundef %saddr, ptr noundef %daddr)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end26, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %proto = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %proto, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %14, label %if.then9 [
    i8 41, label %if.then.if.end_crit_edge
    i8 0, label %if.then.if.end_crit_edge103
  ]

if.then.if.end_crit_edge103:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then9:                                         ; preds = %if.then
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i44, label %if.then9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

if.then9.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %if.then9
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %if.then9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  br label %discard

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge103
  %call.i53 = tail call fastcc i32 @xfrm_policy_check(ptr noundef %skb, i16 noundef zeroext 10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool11.not = icmp eq i32 %call.i53, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i54, label %if.then12.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i57

if.then12.rcu_read_unlock.exit64_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit64

land.lhs.true.i57:                                ; preds = %if.then12
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit64

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit64

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, %if.then12.rcu_read_unlock.exit64_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  br label %discard

if.end13:                                         ; preds = %if.end
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i67 = zext i16 %19 to i32
  %add.ptr.i.i68 = getelementptr i8, ptr %17, i32 %conv.i.i67
  %daddr15 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i68, i32 0, i32 6
  %saddr16 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i68, i32 0, i32 5
  %call17 = tail call i32 @ip6_tnl_rcv_ctl(ptr noundef nonnull %call2, ptr noundef %daddr15, ptr noundef %saddr16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  %dev = getelementptr inbounds %struct.ip6_tnl, ptr %call2, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 36, i32 6
  %22 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i69, label %if.then19.rcu_read_unlock.exit79_crit_edge, label %land.lhs.true.i72

if.then19.rcu_read_unlock.exit79_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit79

land.lhs.true.i72:                                ; preds = %if.then19
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit79_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit79_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit79

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit79_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit79_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit79

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit79

rcu_read_unlock.exit79:                           ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit79_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit79_crit_edge, %if.then19.rcu_read_unlock.exit79_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  br label %discard

if.end20:                                         ; preds = %if.end13
  %call.i80 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i80, label %if.end20.rcu_read_unlock.exit90_crit_edge, label %land.lhs.true.i83

if.end20.rcu_read_unlock.exit90_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit90

land.lhs.true.i83:                                ; preds = %if.end20
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit90_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit90_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit90

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit90_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit90_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit90

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit90

rcu_read_unlock.exit90:                           ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit90_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit90_crit_edge, %if.end20.rcu_read_unlock.exit90_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  %24 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i87 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i89 = add i32 %27, -1
  store volatile i32 %sub.i.i.i89, ptr %preempt_count.i.i.i.i88, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %28 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call2, ptr %tunnel, align 8
  %family = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %29 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %family, align 8
  %daddroff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %30 = ptrtoint ptr %daddroff to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 24, ptr %daddroff, align 4
  %call25 = tail call i32 @xfrm_input(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef %encap_type) #16
  br label %cleanup

if.end26:                                         ; preds = %rcu_read_lock.exit
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i91, label %if.end26.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true.i94

if.end26.rcu_read_unlock.exit101_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit101

land.lhs.true.i94:                                ; preds = %if.end26
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit101

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit101

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit101

rcu_read_unlock.exit101:                          ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, %if.end26.rcu_read_unlock.exit101_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  %31 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i98 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i100 = add i32 %34, -1
  store volatile i32 %sub.i.i.i100, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

discard:                                          ; preds = %rcu_read_unlock.exit79, %rcu_read_unlock.exit64, %rcu_read_unlock.exit
  %35 = tail call i32 @llvm.read_register.i32(metadata !112) #16
  %and.i.i.i.i.i76 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i76 to ptr
  %preempt_count.i.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i77, align 4
  %sub.i.i.i78 = add i32 %38, -1
  store volatile i32 %sub.i.i.i78, ptr %preempt_count.i.i.i.i77, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %discard, %rcu_read_unlock.exit101, %rcu_read_unlock.exit90
  %retval.0 = phi i32 [ 0, %discard ], [ %call25, %rcu_read_unlock.exit90 ], [ -22, %rcu_read_unlock.exit101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vti6_tnl_lookup(ptr noundef %net, ptr nocapture noundef readonly %remote, ptr nocapture noundef readonly %local) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remote, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %remote, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %remote, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %remote, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i.i, align 4
  %8 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %local, align 4
  %arrayidx2.i3.i = getelementptr [4 x i32], ptr %local, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.i3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i3.i, align 4
  %arrayidx4.i5.i = getelementptr [4 x i32], ptr %local, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx4.i5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i5.i, align 4
  %arrayidx7.i7.i = getelementptr [4 x i32], ptr %local, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx7.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i7.i, align 4
  %xor.i4.i = xor i32 %3, %1
  %xor5.i6.i = xor i32 %xor.i4.i, %5
  %xor8.i8.i = xor i32 %xor5.i6.i, %7
  %xor.i.i = xor i32 %xor8.i8.i, %9
  %xor5.i.i = xor i32 %xor.i.i, %11
  %xor8.i.i = xor i32 %xor5.i.i, %13
  %xor.i = xor i32 %xor8.i.i, %15
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 27
  %16 = load i32, ptr @vti6_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %16)
  %arrayidx = getelementptr %struct.vti6_net, ptr %call1, i32 0, i32 1, i32 %shr.i.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b213 = load i1, ptr @vti6_tnl_lookup.__warned, align 1
  br i1 %.b213, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 97, ptr noundef nonnull @.str.3) #16
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not299 = icmp eq ptr %18, null
  br i1 %tobool11.not299, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %do.end35.for.body_crit_edge, %do.end9.for.body_crit_edge
  %t.0300 = phi ptr [ %56, %do.end35.for.body_crit_edge ], [ %18, %do.end9.for.body_crit_edge ]
  %laddr = getelementptr inbounds %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local, align 4
  %21 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %laddr, align 4
  %xor.i214 = xor i32 %22, %20
  %23 = ptrtoint ptr %arrayidx2.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i3.i, align 4
  %arrayidx6.i = getelementptr %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %26, %24
  %or.i = or i32 %xor7.i, %xor.i214
  %27 = ptrtoint ptr %arrayidx4.i5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i5.i, align 4
  %arrayidx11.i = getelementptr %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %30, %28
  %or13.i = or i32 %or.i, %xor12.i
  %31 = ptrtoint ptr %arrayidx7.i7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7.i7.i, align 4
  %arrayidx17.i = getelementptr %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %34, %32
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true13:                                  ; preds = %for.body
  %raddr = getelementptr inbounds %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 9
  %35 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %remote, align 4
  %37 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %raddr, align 4
  %xor.i215 = xor i32 %38, %36
  %39 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx6.i217 = getelementptr %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx6.i217 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx6.i217, align 4
  %xor7.i218 = xor i32 %42, %40
  %or.i219 = or i32 %xor7.i218, %xor.i215
  %43 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx11.i221 = getelementptr %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx11.i221 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.i221, align 4
  %xor12.i222 = xor i32 %46, %44
  %or13.i223 = or i32 %or.i219, %xor12.i222
  %47 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx17.i225 = getelementptr %struct.ip6_tnl, ptr %t.0300, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx17.i225 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx17.i225, align 4
  %xor18.i226 = xor i32 %50, %48
  %or19.i227 = or i32 %or13.i223, %xor18.i226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i227)
  %cmp.i228 = icmp eq i32 %or19.i227, 0
  br i1 %cmp.i228, label %land.lhs.true16, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %dev = getelementptr inbounds %struct.ip6_tnl, ptr %t.0300, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 8
  %and = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %land.lhs.true16.for.inc_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %55 = ptrtoint ptr %t.0300 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %t.0300, align 8
  %call25 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %for.inc.do.end35_crit_edge

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end35

land.lhs.true27:                                  ; preds = %for.inc
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b201212 = load i1, ptr @vti6_tnl_lookup.__warned.18, align 1
  br i1 %.b201212, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 97, ptr noundef nonnull @.str.3) #16
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %for.inc.do.end35_crit_edge
  %tobool11.not = icmp eq ptr %56, null
  br i1 %tobool11.not, label %do.end35.for.end_crit_edge, label %do.end35.for.body_crit_edge

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end35.for.end_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %do.end35.for.end_crit_edge, %do.end9.for.end_crit_edge
  %57 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %local, align 4
  %59 = ptrtoint ptr %arrayidx2.i3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx2.i3.i, align 4
  %61 = ptrtoint ptr %arrayidx4.i5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx4.i5.i, align 4
  %63 = ptrtoint ptr %arrayidx7.i7.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx7.i7.i, align 4
  %xor5.i.i239 = xor i32 %60, %58
  %xor8.i.i240 = xor i32 %xor5.i.i239, %62
  %xor.i241 = xor i32 %xor8.i.i240, %64
  %mul.i.i.i242 = mul i32 %xor.i241, 1640531527
  %shr.i.i243 = lshr i32 %mul.i.i.i242, 27
  %arrayidx43 = getelementptr %struct.vti6_net, ptr %call1, i32 0, i32 1, i32 %shr.i.i243
  %65 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %arrayidx43, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %for.end.do.end55_crit_edge

for.end.do.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55

land.lhs.true47:                                  ; preds = %for.end
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b202211 = load i1, ptr @vti6_tnl_lookup.__warned.19, align 1
  br i1 %.b202211, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 106, ptr noundef nonnull @.str.3) #16
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %for.end.do.end55_crit_edge
  %tobool58.not302 = icmp eq ptr %66, null
  br i1 %tobool58.not302, label %do.end55.for.end89_crit_edge, label %do.end55.for.body59_crit_edge

do.end55.for.body59_crit_edge:                    ; preds = %do.end55
  br label %for.body59

do.end55.for.end89_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end89

for.body59:                                       ; preds = %do.end87.for.body59_crit_edge, %do.end55.for.body59_crit_edge
  %t.1303 = phi ptr [ %88, %do.end87.for.body59_crit_edge ], [ %66, %do.end55.for.body59_crit_edge ]
  %laddr61 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1303, i32 0, i32 4, i32 8
  %67 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %local, align 4
  %69 = ptrtoint ptr %laddr61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %laddr61, align 4
  %xor.i244 = xor i32 %70, %68
  %71 = ptrtoint ptr %arrayidx2.i3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx2.i3.i, align 4
  %arrayidx6.i246 = getelementptr %struct.ip6_tnl, ptr %t.1303, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx6.i246 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx6.i246, align 4
  %xor7.i247 = xor i32 %74, %72
  %or.i248 = or i32 %xor7.i247, %xor.i244
  %75 = ptrtoint ptr %arrayidx4.i5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx4.i5.i, align 4
  %arrayidx11.i250 = getelementptr %struct.ip6_tnl, ptr %t.1303, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %arrayidx11.i250 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx11.i250, align 4
  %xor12.i251 = xor i32 %78, %76
  %or13.i252 = or i32 %or.i248, %xor12.i251
  %79 = ptrtoint ptr %arrayidx7.i7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx7.i7.i, align 4
  %arrayidx17.i254 = getelementptr %struct.ip6_tnl, ptr %t.1303, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %81 = ptrtoint ptr %arrayidx17.i254 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx17.i254, align 4
  %xor18.i255 = xor i32 %82, %80
  %or19.i256 = or i32 %or13.i252, %xor18.i255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i256)
  %cmp.i257 = icmp eq i32 %or19.i256, 0
  br i1 %cmp.i257, label %land.lhs.true63, label %for.body59.for.inc70_crit_edge

for.body59.for.inc70_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc70

land.lhs.true63:                                  ; preds = %for.body59
  %dev64 = getelementptr inbounds %struct.ip6_tnl, ptr %t.1303, i32 0, i32 1
  %83 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev64, align 4
  %flags65 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 14
  %85 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags65, align 8
  %and66 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %land.lhs.true63.for.inc70_crit_edge, label %land.lhs.true63.cleanup_crit_edge

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true63.for.inc70_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc70

for.inc70:                                        ; preds = %land.lhs.true63.for.inc70_crit_edge, %for.body59.for.inc70_crit_edge
  %87 = ptrtoint ptr %t.1303 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %t.1303, align 8
  %call77 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %for.inc70.do.end87_crit_edge

for.inc70.do.end87_crit_edge:                     ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end87

land.lhs.true79:                                  ; preds = %for.inc70
  %call80 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true79.do.end87_crit_edge, label %land.lhs.true82

land.lhs.true79.do.end87_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end87

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %.b203210 = load i1, ptr @vti6_tnl_lookup.__warned.20, align 1
  br i1 %.b203210, label %land.lhs.true82.do.end87_crit_edge, label %if.then84

land.lhs.true82.do.end87_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end87

if.then84:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 106, ptr noundef nonnull @.str.3) #16
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %land.lhs.true82.do.end87_crit_edge, %land.lhs.true79.do.end87_crit_edge, %for.inc70.do.end87_crit_edge
  %tobool58.not = icmp eq ptr %88, null
  br i1 %tobool58.not, label %do.end87.for.end89_crit_edge, label %do.end87.for.body59_crit_edge

do.end87.for.body59_crit_edge:                    ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body59

do.end87.for.end89_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end89

for.end89:                                        ; preds = %do.end87.for.end89_crit_edge, %do.end55.for.end89_crit_edge
  %89 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %remote, align 4
  %91 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx2.i.i, align 4
  %93 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx4.i.i, align 4
  %95 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx7.i.i, align 4
  %xor.i4.i264 = xor i32 %92, %90
  %xor5.i6.i265 = xor i32 %xor.i4.i264, %94
  %xor8.i8.i266 = xor i32 %xor5.i6.i265, %96
  %mul.i.i.i271 = mul i32 %xor8.i8.i266, 1640531527
  %shr.i.i272 = lshr i32 %mul.i.i.i271, 27
  %arrayidx96 = getelementptr %struct.vti6_net, ptr %call1, i32 0, i32 1, i32 %shr.i.i272
  %97 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %arrayidx96, align 4
  %call98 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %land.lhs.true100, label %for.end89.do.end108_crit_edge

for.end89.do.end108_crit_edge:                    ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end108

land.lhs.true100:                                 ; preds = %for.end89
  %call101 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true100.do.end108_crit_edge, label %land.lhs.true103

land.lhs.true100.do.end108_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end108

land.lhs.true103:                                 ; preds = %land.lhs.true100
  %.b204209 = load i1, ptr @vti6_tnl_lookup.__warned.21, align 1
  br i1 %.b204209, label %land.lhs.true103.do.end108_crit_edge, label %if.then105

land.lhs.true103.do.end108_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end108

if.then105:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 113, ptr noundef nonnull @.str.3) #16
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %land.lhs.true103.do.end108_crit_edge, %land.lhs.true100.do.end108_crit_edge, %for.end89.do.end108_crit_edge
  %tobool111.not305 = icmp eq ptr %98, null
  br i1 %tobool111.not305, label %do.end108.for.end142_crit_edge, label %do.end108.for.body112_crit_edge

do.end108.for.body112_crit_edge:                  ; preds = %do.end108
  br label %for.body112

do.end108.for.end142_crit_edge:                   ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end142

for.body112:                                      ; preds = %do.end140.for.body112_crit_edge, %do.end108.for.body112_crit_edge
  %t.2306 = phi ptr [ %120, %do.end140.for.body112_crit_edge ], [ %98, %do.end108.for.body112_crit_edge ]
  %raddr114 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2306, i32 0, i32 4, i32 9
  %99 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %remote, align 4
  %101 = ptrtoint ptr %raddr114 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %raddr114, align 4
  %xor.i273 = xor i32 %102, %100
  %103 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx6.i275 = getelementptr %struct.ip6_tnl, ptr %t.2306, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %105 = ptrtoint ptr %arrayidx6.i275 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx6.i275, align 4
  %xor7.i276 = xor i32 %106, %104
  %or.i277 = or i32 %xor7.i276, %xor.i273
  %107 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx11.i279 = getelementptr %struct.ip6_tnl, ptr %t.2306, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %109 = ptrtoint ptr %arrayidx11.i279 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx11.i279, align 4
  %xor12.i280 = xor i32 %110, %108
  %or13.i281 = or i32 %or.i277, %xor12.i280
  %111 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx17.i283 = getelementptr %struct.ip6_tnl, ptr %t.2306, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %113 = ptrtoint ptr %arrayidx17.i283 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx17.i283, align 4
  %xor18.i284 = xor i32 %114, %112
  %or19.i285 = or i32 %or13.i281, %xor18.i284
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i285)
  %cmp.i286 = icmp eq i32 %or19.i285, 0
  br i1 %cmp.i286, label %land.lhs.true116, label %for.body112.for.inc123_crit_edge

for.body112.for.inc123_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc123

land.lhs.true116:                                 ; preds = %for.body112
  %dev117 = getelementptr inbounds %struct.ip6_tnl, ptr %t.2306, i32 0, i32 1
  %115 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev117, align 4
  %flags118 = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 14
  %117 = ptrtoint ptr %flags118 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags118, align 8
  %and119 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %land.lhs.true116.for.inc123_crit_edge, label %land.lhs.true116.cleanup_crit_edge

land.lhs.true116.cleanup_crit_edge:               ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true116.for.inc123_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc123

for.inc123:                                       ; preds = %land.lhs.true116.for.inc123_crit_edge, %for.body112.for.inc123_crit_edge
  %119 = ptrtoint ptr %t.2306 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %t.2306, align 8
  %call130 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %for.inc123.do.end140_crit_edge

for.inc123.do.end140_crit_edge:                   ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end140

land.lhs.true132:                                 ; preds = %for.inc123
  %call133 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.do.end140_crit_edge, label %land.lhs.true135

land.lhs.true132.do.end140_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end140

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %.b205208 = load i1, ptr @vti6_tnl_lookup.__warned.22, align 1
  br i1 %.b205208, label %land.lhs.true135.do.end140_crit_edge, label %if.then137

land.lhs.true135.do.end140_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end140

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 113, ptr noundef nonnull @.str.3) #16
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %land.lhs.true135.do.end140_crit_edge, %land.lhs.true132.do.end140_crit_edge, %for.inc123.do.end140_crit_edge
  %tobool111.not = icmp eq ptr %120, null
  br i1 %tobool111.not, label %do.end140.for.end142_crit_edge, label %do.end140.for.body112_crit_edge

do.end140.for.body112_crit_edge:                  ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body112

do.end140.for.end142_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end142

for.end142:                                       ; preds = %do.end140.for.end142_crit_edge, %do.end108.for.end142_crit_edge
  %tnls_wc = getelementptr inbounds %struct.vti6_net, ptr %call1, i32 0, i32 2
  %121 = ptrtoint ptr %tnls_wc to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %tnls_wc, align 4
  %call149 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true151, label %for.end142.do.end159_crit_edge

for.end142.do.end159_crit_edge:                   ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end159

land.lhs.true151:                                 ; preds = %for.end142
  %call152 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %land.lhs.true151.do.end159_crit_edge, label %land.lhs.true154

land.lhs.true151.do.end159_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end159

land.lhs.true154:                                 ; preds = %land.lhs.true151
  %.b206207 = load i1, ptr @vti6_tnl_lookup.__warned.23, align 1
  br i1 %.b206207, label %land.lhs.true154.do.end159_crit_edge, label %if.then156

land.lhs.true154.do.end159_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end159

if.then156:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_tnl_lookup.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 119, ptr noundef nonnull @.str.3) #16
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %land.lhs.true154.do.end159_crit_edge, %land.lhs.true151.do.end159_crit_edge, %for.end142.do.end159_crit_edge
  %tobool161.not = icmp eq ptr %122, null
  br i1 %tobool161.not, label %do.end159.if.end168_crit_edge, label %land.lhs.true162

do.end159.if.end168_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end168

land.lhs.true162:                                 ; preds = %do.end159
  %dev163 = getelementptr inbounds %struct.ip6_tnl, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev163, align 4
  %flags164 = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 14
  %125 = ptrtoint ptr %flags164 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags164, align 8
  %and165 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %land.lhs.true162.if.end168_crit_edge, label %land.lhs.true162.cleanup_crit_edge

land.lhs.true162.cleanup_crit_edge:               ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true162.if.end168_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end168

if.end168:                                        ; preds = %land.lhs.true162.if.end168_crit_edge, %do.end159.if.end168_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end168, %land.lhs.true162.cleanup_crit_edge, %land.lhs.true116.cleanup_crit_edge, %land.lhs.true63.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end168 ], [ %122, %land.lhs.true162.cleanup_crit_edge ], [ %t.2306, %land.lhs.true116.cleanup_crit_edge ], [ %t.1303, %land.lhs.true63.cleanup_crit_edge ], [ %t.0300, %land.lhs.true16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_rcv_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_policy_check(ptr noundef %skb, i16 noundef zeroext %family) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

land.lhs.true8.i.__xfrm_policy_check2.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !124

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

land.lhs.true13.i:                                ; preds = %skb_dst.exit.i
  %and.i2.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true13.i.skb_dst.exit12.i_crit_edge, label %land.lhs.true.i6.i

land.lhs.true13.i.skb_dst.exit12.i_crit_edge:     ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit12.i

land.lhs.true.i6.i:                               ; preds = %land.lhs.true13.i
  %call.i4.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool1.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool1.not.i5.i, label %land.rhs.i9.i, label %land.lhs.true.i6.i.skb_dst.exit12.i_crit_edge

land.lhs.true.i6.i.skb_dst.exit12.i_crit_edge:    ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit12.i

land.rhs.i9.i:                                    ; preds = %land.lhs.true.i6.i
  %call2.i7.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i)
  %tobool3.not.i8.i = icmp eq i32 %call2.i7.i, 0
  br i1 %tobool3.not.i8.i, label %do.end.i10.i, label %land.rhs.i9.i.skb_dst.exit12.i_crit_edge, !prof !124

land.rhs.i9.i.skb_dst.exit12.i_crit_edge:         ; preds = %land.rhs.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit12.i

do.end.i10.i:                                     ; preds = %land.rhs.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %__xfrm_policy_check2.exit

skb_dst.exit12.i.cleanup.sink.split.i_crit_edge:  ; preds = %skb_dst.exit12.i
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit23.i

land.lhs.true.i17.i:                              ; preds = %if.else.i
  %call.i15.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool1.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool1.not.i16.i, label %land.rhs.i20.i, label %land.lhs.true.i17.i.skb_dst.exit23thread-pre-split.i_crit_edge

land.lhs.true.i17.i.skb_dst.exit23thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit23thread-pre-split.i

land.rhs.i20.i:                                   ; preds = %land.lhs.true.i17.i
  %call2.i18.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i)
  %tobool3.not.i19.i = icmp eq i32 %call2.i18.i, 0
  br i1 %tobool3.not.i19.i, label %do.end.i21.i, label %land.rhs.i20.i.skb_dst.exit23thread-pre-split.i_crit_edge, !prof !124

land.rhs.i20.i.skb_dst.exit23thread-pre-split.i_crit_edge: ; preds = %land.rhs.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit23thread-pre-split.i

do.end.i21.i:                                     ; preds = %land.rhs.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

land.lhs.true22.i:                                ; preds = %skb_dst.exit23.i
  %and.i24.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i25.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true22.i.skb_dst.exit34.i_crit_edge, label %land.lhs.true.i28.i

land.lhs.true22.i.skb_dst.exit34.i_crit_edge:     ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit34.i

land.lhs.true.i28.i:                              ; preds = %land.lhs.true22.i
  %call.i26.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool1.not.i27.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool1.not.i27.i, label %land.rhs.i31.i, label %land.lhs.true.i28.i.skb_dst.exit34.i_crit_edge

land.lhs.true.i28.i.skb_dst.exit34.i_crit_edge:   ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit34.i

land.rhs.i31.i:                                   ; preds = %land.lhs.true.i28.i
  %call2.i29.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i)
  %tobool3.not.i30.i = icmp eq i32 %call2.i29.i, 0
  br i1 %tobool3.not.i30.i, label %do.end.i32.i, label %land.rhs.i31.i.skb_dst.exit34.i_crit_edge, !prof !124

land.rhs.i31.i.skb_dst.exit34.i_crit_edge:        ; preds = %land.rhs.i31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit34.i

do.end.i32.i:                                     ; preds = %land.rhs.i31.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %__xfrm_policy_check2.exit

skb_dst.exit34.i.cleanup.sink.split.i_crit_edge:  ; preds = %skb_dst.exit34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %skb_dst.exit34.i.cleanup.sink.split.i_crit_edge, %skb_dst.exit23.i.cleanup.sink.split.i_crit_edge, %skb_dst.exit12.i.cleanup.sink.split.i_crit_edge, %skb_dst.exit.i.cleanup.sink.split.i_crit_edge
  %call30.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext %family) #16
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
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_rcv(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %nhoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nhoff, align 2
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call1 = tail call i32 @vti6_input_proto(ptr noundef %skb, i32 noundef %conv, i32 noundef 0, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vti6_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vti6_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %tnls_wc = getelementptr inbounds %struct.vti6_net, ptr %call, i32 0, i32 2
  %tnls = getelementptr inbounds %struct.vti6_net, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %tnls to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tnls_wc, ptr %tnls, align 4
  %tnls_r_l = getelementptr inbounds %struct.vti6_net, ptr %call, i32 0, i32 1
  %arrayidx3 = getelementptr %struct.vti6_net, ptr %call, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tnls_r_l, ptr %arrayidx3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_fb_tunnels_only_for_init_net to i32))
  %3 = load i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %net_has_fallback_tunnels.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

net_has_fallback_tunnels.exit:                    ; preds = %entry
  %cmp.i = icmp eq ptr %net, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  %spec.select.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %spec.select.i, label %net_has_fallback_tunnels.exit.if.end_crit_edge, label %net_has_fallback_tunnels.exit.cleanup_crit_edge

net_has_fallback_tunnels.exit.cleanup_crit_edge:  ; preds = %net_has_fallback_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

net_has_fallback_tunnels.exit.if.end_crit_edge:   ; preds = %net_has_fallback_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %net_has_fallback_tunnels.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call ptr @alloc_netdev_mqs(i32 noundef 248, ptr noundef nonnull @.str.24, i8 noundef zeroext 0, ptr noundef nonnull @vti6_dev_setup, i32 noundef 1, i32 noundef 1) #16
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %call, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %net, ptr %nd_net.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 136
  %8 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vti6_link_ops, ptr %rtnl_link_ops, align 4
  %9 = load ptr, ptr %call, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2304
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i.i, align 4
  %12 = load i32, ptr @vti6_net_id, align 4
  %call2.i = tail call fastcc ptr @net_generic(ptr noundef %11, i32 noundef %12) #16
  %proto.i = getelementptr i8, ptr %9, i32 2340
  %13 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 41, ptr %proto.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  %tnls_wc23.i = getelementptr inbounds %struct.vti6_net, ptr %call2.i, i32 0, i32 2
  %14 = ptrtoint ptr %tnls_wc23.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %add.ptr.i.i, ptr %tnls_wc23.i, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %call16 = tail call i32 @register_netdev(ptr noundef %16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  br i1 %cmp17, label %err_register, label %if.end19

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %parms = getelementptr i8, ptr %18, i32 2320
  %call26 = tail call ptr @strcpy(ptr noundef %parms, ptr noundef %18) #24
  br label %cleanup

err_register:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @free_netdev(ptr noundef %18) #16
  br label %cleanup

cleanup:                                          ; preds = %err_register, %if.end19, %if.end.cleanup_crit_edge, %net_has_fallback_tunnels.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %net_has_fallback_tunnels.exit.cleanup_crit_edge ], [ %call16, %err_register ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vti6_exit_batch_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @rtnl_lock() #16
  %3 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn10 = load ptr, ptr %net_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %net_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %vti6_destroy_tunnels.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %vti6_destroy_tunnels.exit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn12, i32 -116
  %4 = load i32, ptr @vti6_net_id, align 4
  %call = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %4)
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %for.body
  %h.050.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.inc.i.do.body.i_crit_edge ]
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b46.i = load i1, ptr @vti6_destroy_tunnels.__warned, align 1
  br i1 %.b46.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_destroy_tunnels.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1128, ptr noundef nonnull @.str.8) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.vti6_net, ptr %call, i32 0, i32 1, i32 %h.050.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.047.i = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not48.i = icmp eq ptr %t.047.i, null
  br i1 %tobool4.not48.i, label %do.end.i.for.inc.i_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

while.body.i:                                     ; preds = %do.end15.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %t.049.i = phi ptr [ %t.0.i, %do.end15.i.while.body.i_crit_edge ], [ %t.047.i, %do.end.i.while.body.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ip6_tnl, ptr %t.049.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  call void @unregister_netdevice_queue(ptr noundef %7, ptr noundef nonnull %list) #16
  %call6.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call6.i, label %while.body.i.do.end15.i_crit_edge, label %land.lhs.true7.i

while.body.i.do.end15.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15.i

land.lhs.true7.i:                                 ; preds = %while.body.i
  %call8.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.do.end15.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.do.end15.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %.b4245.i = load i1, ptr @vti6_destroy_tunnels.__warned.25, align 1
  br i1 %.b4245.i, label %land.lhs.true10.i.do.end15.i_crit_edge, label %if.then12.i

land.lhs.true10.i.do.end15.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_destroy_tunnels.__warned.25, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1131, ptr noundef nonnull @.str.8) #16
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then12.i, %land.lhs.true10.i.do.end15.i_crit_edge, %land.lhs.true7.i.do.end15.i_crit_edge, %while.body.i.do.end15.i_crit_edge
  %8 = ptrtoint ptr %t.049.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %t.0.i = load ptr, ptr %t.049.i, align 4
  %tobool4.not.i = icmp eq ptr %t.0.i, null
  br i1 %tobool4.not.i, label %do.end15.i.for.inc.i_crit_edge, label %do.end15.i.while.body.i_crit_edge

do.end15.i.while.body.i_crit_edge:                ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

do.end15.i.for.inc.i_crit_edge:                   ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end15.i.for.inc.i_crit_edge, %do.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %h.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %do.body17.i, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body17.i:                                      ; preds = %for.inc.i
  %call18.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call18.i, label %do.body17.i.do.end27.i_crit_edge, label %land.lhs.true19.i

do.body17.i.do.end27.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end27.i

land.lhs.true19.i:                                ; preds = %do.body17.i
  %call20.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true19.i.do.end27.i_crit_edge, label %land.lhs.true22.i

land.lhs.true19.i.do.end27.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end27.i

land.lhs.true22.i:                                ; preds = %land.lhs.true19.i
  %.b4344.i = load i1, ptr @vti6_destroy_tunnels.__warned.26, align 1
  br i1 %.b4344.i, label %land.lhs.true22.i.do.end27.i_crit_edge, label %if.then24.i

land.lhs.true22.i.do.end27.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end27.i

if.then24.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vti6_destroy_tunnels.__warned.26, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1135, ptr noundef nonnull @.str.8) #16
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then24.i, %land.lhs.true22.i.do.end27.i_crit_edge, %land.lhs.true19.i.do.end27.i_crit_edge, %do.body17.i.do.end27.i_crit_edge
  %tnls_wc.i = getelementptr inbounds %struct.vti6_net, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %tnls_wc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tnls_wc.i, align 4
  %tobool30.not.i = icmp eq ptr %10, null
  br i1 %tobool30.not.i, label %do.end27.i.vti6_destroy_tunnels.exit_crit_edge, label %if.then31.i

do.end27.i.vti6_destroy_tunnels.exit_crit_edge:   ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vti6_destroy_tunnels.exit

if.then31.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev32.i = getelementptr inbounds %struct.ip6_tnl, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev32.i, align 4
  call void @unregister_netdevice_queue(ptr noundef %12, ptr noundef nonnull %list) #16
  br label %vti6_destroy_tunnels.exit

vti6_destroy_tunnels.exit:                        ; preds = %if.then31.i, %do.end27.i.vti6_destroy_tunnels.exit_crit_edge
  %13 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %vti6_destroy_tunnels.exit.for.end_crit_edge, label %vti6_destroy_tunnels.exit.for.body_crit_edge

vti6_destroy_tunnels.exit.for.body_crit_edge:     ; preds = %vti6_destroy_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

vti6_destroy_tunnels.exit.for.end_crit_edge:      ; preds = %vti6_destroy_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %vti6_destroy_tunnels.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #16
  call void @rtnl_unlock() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind readnone }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_ip6_vti__729_1329_vti6_tunnel_init6, !1, !"__initcall__kmod_ip6_vti__729_1329_vti6_tunnel_init6", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_vti.c", i32 1329, i32 1}
!2 = !{ptr @__exitcall_vti6_tunnel_cleanup, !3, !"__exitcall_vti6_tunnel_cleanup", i1 false, i1 false}
!3 = !{!"../net/ipv6/ip6_vti.c", i32 1330, i32 1}
!4 = !{ptr @__UNIQUE_ID_file730, !5, !"__UNIQUE_ID_file730", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6_vti.c", i32 1331, i32 1}
!6 = !{ptr @__UNIQUE_ID_license731, !5, !"__UNIQUE_ID_license731", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias732, !8, !"__UNIQUE_ID_alias732", i1 false, i1 false}
!8 = !{!"../net/ipv6/ip6_vti.c", i32 1332, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias733, !10, !"__UNIQUE_ID_alias733", i1 false, i1 false}
!10 = !{!"../net/ipv6/ip6_vti.c", i32 1333, i32 1}
!11 = !{ptr @__UNIQUE_ID_author734, !12, !"__UNIQUE_ID_author734", i1 false, i1 false}
!12 = !{!"../net/ipv6/ip6_vti.c", i32 1334, i32 1}
!13 = !{ptr @__UNIQUE_ID_description735, !14, !"__UNIQUE_ID_description735", i1 false, i1 false}
!14 = !{!"../net/ipv6/ip6_vti.c", i32 1335, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/ip6_vti.c", i32 1107, i32 11}
!17 = !{ptr @vti6_link_ops, !18, !"vti6_link_ops", i1 false, i1 false}
!18 = !{!"../net/ipv6/ip6_vti.c", i32 1106, i32 29}
!19 = !{ptr @vti6_netdev_ops, !20, !"vti6_netdev_ops", i1 false, i1 false}
!20 = !{!"../net/ipv6/ip6_vti.c", i32 892, i32 36}
!21 = !{ptr @vti6_dev_init_gen.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/ipv6/ip6_vti.c", i32 936, i32 16}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vti6_net_id, !36, !"vti6_net_id", i1 false, i1 false}
!36 = !{!"../net/ipv6/ip6_vti.c", i32 64, i32 21}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv6/ip6_vti.c", i32 168, i32 15}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv6/ip6_vti.c", i32 510, i32 3}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vti6_xmit._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @vti6_xmit._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/dst.h", i32 231, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!55 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/ipv6/ip6_vti.c", i32 265, i32 12}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv6/ip6_vti.c", i32 216, i32 17}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/ipv6/ip6_vti.c", i32 157, i32 2}
!66 = !{ptr @vti6_policy, !67, !"vti6_policy", i1 false, i1 false}
!67 = !{!"../net/ipv6/ip6_vti.c", i32 1097, i32 32}
!68 = !{ptr @vti_ip6ip_handler, !69, !"vti_ip6ip_handler", i1 false, i1 false}
!69 = !{!"../net/ipv6/ip6_vti.c", i32 1244, i32 28}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/ipv6/ip6_vti.c", i32 97, i32 2}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/ipv6/ip6_vti.c", i32 106, i32 2}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/ipv6/ip6_vti.c", i32 113, i32 2}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/ipv6/ip6_vti.c", i32 119, i32 6}
!81 = !{ptr @vti_ipv6_handler, !82, !"vti_ipv6_handler", i1 false, i1 false}
!82 = !{!"../net/ipv6/ip6_vti.c", i32 1237, i32 28}
!83 = !{ptr @vti_ipcomp6_protocol, !84, !"vti_ipcomp6_protocol", i1 false, i1 false}
!84 = !{!"../net/ipv6/ip6_vti.c", i32 1217, i32 30}
!85 = !{ptr @vti_ah6_protocol, !86, !"vti_ah6_protocol", i1 false, i1 false}
!86 = !{!"../net/ipv6/ip6_vti.c", i32 1209, i32 30}
!87 = !{ptr @vti_esp6_protocol, !88, !"vti_esp6_protocol", i1 false, i1 false}
!88 = !{!"../net/ipv6/ip6_vti.c", i32 1201, i32 30}
!89 = !{ptr @vti6_net_ops, !90, !"vti6_net_ops", i1 false, i1 false}
!90 = !{!"../net/ipv6/ip6_vti.c", i32 1194, i32 33}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/ipv6/ip6_vti.c", i32 1152, i32 21}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/ipv6/ip6_vti.c", i32 1128, i32 7}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/ipv6/ip6_vti.c", i32 1131, i32 8}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/ipv6/ip6_vti.c", i32 1135, i32 6}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/ipv6/ip6_vti.c", i32 1262, i32 8}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/ipv6/ip6_vti.c", i32 1267, i32 8}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/ipv6/ip6_vti.c", i32 1278, i32 8}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/ipv6/ip6_vti.c", i32 1287, i32 8}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/ipv6/ip6_vti.c", i32 1309, i32 2}
!109 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @vti6_tunnel_init._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @vti6_tunnel_init._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 774144, i64 774205}
!123 = !{i64 776876}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 777161}
!126 = !{i64 2148369863}
!127 = !{i64 855483, i64 855508, i64 855530, i64 855546, i64 855558, i64 855578, i64 855602, i64 855618, i64 855630}
!128 = !{i64 2148370051}
!129 = !{i64 2158959627}
!130 = !{i64 2150002920}
!131 = !{i64 2158960683}
!132 = !{i64 2152600440, i64 2152600465}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 5095995}
!135 = !{i64 5096192}
!136 = !{i64 2152581425}
!137 = !{i64 2152601121, i64 2152601146}
!138 = !{i64 2149386603}
!139 = !{i64 2149386869}
!140 = !{i64 2159279230}
!141 = !{i64 2149894602}
!142 = !{i64 2149899534}
!143 = !{i64 2149921246}
!144 = !{i64 2149926138}
!145 = !{i64 2150002595}
!146 = !{i64 2159264965}
!147 = !{i64 2159271772}
!148 = !{i64 2148459999}
!149 = !{i64 2148374439, i64 2148374471, i64 2148374500, i64 2148374534, i64 2148374565, i64 2148374588}
!150 = !{i64 2149336113}
!151 = !{i64 2159322314}
