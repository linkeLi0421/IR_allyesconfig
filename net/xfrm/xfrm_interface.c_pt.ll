; ModuleID = '/llk/IR_all_yes/net/xfrm/xfrm_interface.c_pt.bc'
source_filename = "../net/xfrm/xfrm_interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.xfrm_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfrm4_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xfrm6_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xfrm_if_cb = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%union.anon.195 = type { ptr }
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
%struct.xfrm_if = type { ptr, ptr, ptr, %struct.xfrm_if_parms, %struct.gro_cells }
%struct.xfrm_if_parms = type { i32, i32 }
%struct.gro_cells = type { ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.flowi = type { %union.anon.44 }
%union.anon.44 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
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
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.65, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.203, i32, i32, i8, i8 }
%struct.anon.203 = type { i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.ip_comp_hdr = type { i8, i8, i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.204 }
%union.anon.204 = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@xfrmi_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 24, ptr null, ptr @xfrmi_dev_setup, i8 0, i32 2, ptr @xfrmi_policy, ptr @xfrmi_validate, ptr @xfrmi_newlink, ptr @xfrmi_changelink, ptr @xfrmi_dellink, ptr @xfrmi_get_size, ptr @xfrmi_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @xfrmi_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@xfrmi_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @xfrmi_exit_batch_net, ptr @xfrmi_net_id, i32 1024 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_xfrm_interface__705_1026_xfrmi_init6 = internal global ptr @xfrmi_init, section ".initcall6.init", align 4
@__exitcall_xfrmi_fini = internal global ptr @xfrmi_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file706 = internal constant [44 x i8] c"xfrm_interface.file=net/xfrm/xfrm_interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license707 = internal constant [27 x i8] c"xfrm_interface.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias708 = internal constant [36 x i8] c"xfrm_interface.alias=rtnl-link-xfrm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias709 = internal constant [34 x i8] c"xfrm_interface.alias=netdev-xfrm0\00", section ".modinfo", align 1
@__UNIQUE_ID_author710 = internal constant [39 x i8] c"xfrm_interface.author=Steffen Klassert\00", section ".modinfo", align 1
@__UNIQUE_ID_description711 = internal constant [50 x i8] c"xfrm_interface.description=XFRM virtual interface\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xfrm\00", [27 x i8] zeroinitializer }, align 32
@xfrmi_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@xfrmi_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @xfrmi_dev_init, ptr @xfrmi_dev_uninit, ptr null, ptr null, ptr @xfrmi_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfrmi_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xfrmi_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@xfrmi_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xfrmi_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/xfrm/xfrm_interface.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@xfrmi_xmit2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: Local routing loop detected!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xfrmi_xmit2\00", [20 x i8] zeroinitializer }, align 32
@xfrmi_xmit2._entry_ptr = internal global ptr @xfrmi_xmit2._entry, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@xfrmi_newlink.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"if_id must be non zero\00", [41 x i8] zeroinitializer }, align 32
@xfrmi_locate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrmi_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrmi_changelink.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"if_id must be non zero\00", [41 x i8] zeroinitializer }, align 32
@xfrmi_ipip6_handler = internal global %struct.xfrm_tunnel { ptr @xfrmi4_rcv_tunnel, ptr @xfrmi_rcv_cb, ptr @xfrmi4_err, ptr null, i32 2 }, section ".data..read_mostly", align 4
@xfrmi_ipip_handler = internal global %struct.xfrm_tunnel { ptr @xfrmi4_rcv_tunnel, ptr @xfrmi_rcv_cb, ptr @xfrmi4_err, ptr null, i32 3 }, section ".data..read_mostly", align 4
@xfrmi_ipcomp4_protocol = internal global %struct.xfrm4_protocol { ptr @xfrm4_rcv, ptr @xfrm_input, ptr @xfrmi_rcv_cb, ptr @xfrmi4_err, ptr null, i32 10 }, section ".data..read_mostly", align 4
@xfrmi_ah4_protocol = internal global %struct.xfrm4_protocol { ptr @xfrm4_rcv, ptr @xfrm_input, ptr @xfrmi_rcv_cb, ptr @xfrmi4_err, ptr null, i32 10 }, section ".data..read_mostly", align 4
@xfrmi_esp4_protocol = internal global %struct.xfrm4_protocol { ptr @xfrm4_rcv, ptr @xfrm_input, ptr @xfrmi_rcv_cb, ptr @xfrmi4_err, ptr null, i32 10 }, section ".data..read_mostly", align 4
@xfrmi_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrmi_lookup.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrmi_ip6ip_handler = internal global %struct.xfrm6_tunnel { ptr @xfrmi6_rcv_tunnel, ptr @xfrmi_rcv_cb, ptr @xfrmi6_err, ptr null, i32 2 }, section ".data..read_mostly", align 4
@xfrmi_ipv6_handler = internal global %struct.xfrm6_tunnel { ptr @xfrmi6_rcv_tunnel, ptr @xfrmi_rcv_cb, ptr @xfrmi6_err, ptr null, i32 2 }, section ".data..read_mostly", align 4
@xfrmi_ipcomp6_protocol = internal global %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @xfrmi_rcv_cb, ptr @xfrmi6_err, ptr null, i32 10 }, section ".data..read_mostly", align 4
@xfrmi_ah6_protocol = internal global %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @xfrmi_rcv_cb, ptr @xfrmi6_err, ptr null, i32 10 }, section ".data..read_mostly", align 4
@xfrmi_esp6_protocol = internal global %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @xfrmi_rcv_cb, ptr @xfrmi6_err, ptr null, i32 10 }, section ".data..read_mostly", align 4
@xfrmi_exit_batch_net.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfrmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016IPsec XFRM device driver\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfrmi_init\00", [21 x i8] zeroinitializer }, align 32
@xfrmi_init._entry_ptr = internal global ptr @xfrmi_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tunnel device\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfrm4 protocols\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfrm6 protocols\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netlink interface\00", [46 x i8] zeroinitializer }, align 32
@xfrm_if_cb = internal constant { %struct.xfrm_if_cb, [28 x i8] } { %struct.xfrm_if_cb { ptr @xfrmi_decode_session }, [28 x i8] zeroinitializer }, align 32
@xfrmi_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.7, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013xfrmi init: failed to register %s\0A\00", [59 x i8] zeroinitializer }, align 32
@xfrmi_init._entry_ptr.23 = internal global ptr @xfrmi_init._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 41]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"xfrmi_net_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 770, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 733, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"xfrmi_policy\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 727, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"xfrmi_netdev_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 551, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 586, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 45, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 131, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1011, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 293, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 231, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 271, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 649, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 681, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 979, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 981, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 986, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 991, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 997, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"xfrm_if_cb\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 970, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [29 x i8] c"../net/xfrm/xfrm_interface.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1013, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias708, ptr @__UNIQUE_ID_alias709, ptr @__UNIQUE_ID_author710, ptr @__UNIQUE_ID_description711, ptr @__UNIQUE_ID_file706, ptr @__UNIQUE_ID_license707, ptr @__exitcall_xfrmi_fini, ptr @__initcall__kmod_xfrm_interface__705_1026_xfrmi_init6, ptr @xfrmi_fini, ptr @xfrmi_init._entry, ptr @xfrmi_init._entry.21, ptr @xfrmi_init._entry_ptr, ptr @xfrmi_init._entry_ptr.23, ptr @xfrmi_xmit2._entry, ptr @xfrmi_xmit2._entry_ptr, ptr @xfrmi_net_ops, ptr @.str, ptr @xfrmi_policy, ptr @xfrmi_netdev_ops, ptr @xfrmi_dev_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @xfrmi_newlink.__msg, ptr @xfrmi_changelink.__msg, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @xfrm_if_cb, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_xmit2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_newlink.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_changelink.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_if_cb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrmi_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xfrmi_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfrm_if_unregister_cb() #15
  tail call void @rtnl_link_unregister(ptr noundef nonnull @xfrmi_link_ops) #15
  tail call fastcc void @xfrmi4_fini()
  tail call fastcc void @xfrmi6_fini()
  tail call void @unregister_pernet_device(ptr noundef nonnull @xfrmi_net_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_if_unregister_cb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfrmi4_fini() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @xfrmi_ipip6_handler, i16 noundef zeroext 10) #15
  %call1 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @xfrmi_ipip_handler, i16 noundef zeroext 2) #15
  %call2 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @xfrmi_ipcomp4_protocol, i8 noundef zeroext 108) #15
  %call3 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @xfrmi_ah4_protocol, i8 noundef zeroext 51) #15
  %call4 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @xfrmi_esp4_protocol, i8 noundef zeroext 50) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfrmi6_fini() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrmi_ip6ip_handler, i16 noundef zeroext 2) #15
  %call1 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrmi_ipv6_handler, i16 noundef zeroext 10) #15
  %call2 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @xfrmi_ipcomp6_protocol, i8 noundef zeroext 108) #15
  %call3 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @xfrmi_ah6_protocol, i8 noundef zeroext 51) #15
  %call4 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @xfrmi_esp6_protocol, i8 noundef zeroext 50) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #18
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @xfrmi_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end16_crit_edge, label %if.end

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @xfrmi4_init() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.xfrmi4_failed_crit_edge, label %if.end5

if.end.xfrmi4_failed_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi4_failed

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @xfrmi6_init() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.xfrmi6_failed_crit_edge, label %if.end9

if.end5.xfrmi6_failed_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi6_failed

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @rtnl_link_register(ptr noundef nonnull @xfrmi_link_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %rtnl_link_failed, label %if.end13

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xfrm_if_register_cb(ptr noundef nonnull @xfrm_if_cb) #15
  br label %cleanup

rtnl_link_failed:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @xfrmi6_fini()
  br label %xfrmi6_failed

xfrmi6_failed:                                    ; preds = %rtnl_link_failed, %if.end5.xfrmi6_failed_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.xfrmi6_failed_crit_edge ], [ %call10, %rtnl_link_failed ]
  %msg.0 = phi ptr [ @.str.19, %if.end5.xfrmi6_failed_crit_edge ], [ @.str.20, %rtnl_link_failed ]
  tail call fastcc void @xfrmi4_fini()
  br label %xfrmi4_failed

xfrmi4_failed:                                    ; preds = %xfrmi6_failed, %if.end.xfrmi4_failed_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.xfrmi4_failed_crit_edge ], [ %err.0, %xfrmi6_failed ]
  %msg.1 = phi ptr [ @.str.18, %if.end.xfrmi4_failed_crit_edge ], [ %msg.0, %xfrmi6_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @xfrmi_net_ops) #15
  br label %do.end16

do.end16:                                         ; preds = %xfrmi4_failed, %entry.do.end16_crit_edge
  %err.2 = phi i32 [ %call1, %entry.do.end16_crit_edge ], [ %err.1, %xfrmi4_failed ]
  %msg.2 = phi ptr [ @.str.17, %entry.do.end16_crit_edge ], [ %msg.1, %xfrmi4_failed ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %msg.2) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end13
  %retval.0 = phi i32 [ %err.2, %do.end16 ], [ %call10, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfrmi_dev_setup(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xfrmi_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip_tunnel_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -2, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %4 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65535, ptr %max_mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %flags, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %7 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %8 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xfrmi_dev_free, ptr %priv_destructor, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %10, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %11 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfrmi_validate(ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %p.sroa.0.0 = phi i32 [ 0, %if.end.i.if.end4.i_crit_edge ], [ %5, %if.then2.i ]
  %arrayidx5.i = getelementptr ptr, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.end4.i.do.body_crit_edge, label %xfrmi_netlink_parms.exit

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

xfrmi_netlink_parms.exit:                         ; preds = %if.end4.i
  %add.ptr.i.i18.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %xfrmi_netlink_parms.exit.do.body_crit_edge, label %if.end3

xfrmi_netlink_parms.exit.do.body_crit_edge:       ; preds = %xfrmi_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %xfrmi_netlink_parms.exit.do.body_crit_edge, %if.end4.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @xfrmi_newlink.__msg) #15
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfrmi_newlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %xfrmi_netlink_parms.exit
  %11 = load i32, ptr @xfrmi_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %11) #15
  %mul.i.i.i.i = mul i32 %9, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i25 = getelementptr [256 x ptr], ptr %call.i, i32 0, i32 %shr.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3
  %xip.0.i = phi ptr [ %arrayidx.i25, %if.end3 ], [ %13, %for.body.i.for.cond.i_crit_edge ]
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call2.i, label %for.cond.i.do.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i26 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @xfrmi_locate.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_locate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 175, ptr noundef nonnull @.str.8) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge
  %12 = ptrtoint ptr %xip.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xip.0.i, align 4
  %cmp.not.i = icmp eq ptr %13, null
  br i1 %cmp.not.i, label %if.end7, label %for.body.i

for.body.i:                                       ; preds = %do.end.i
  %if_id7.i = getelementptr inbounds %struct.xfrm_if, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %if_id7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_id7.i, align 4
  %cmp9.i = icmp eq i32 %15, %9
  br i1 %cmp9.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %do.end.i
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %p9 = getelementptr i8, ptr %dev, i32 2316
  %p.sroa.6.0.insert.ext = zext i32 %9 to i64
  %p.sroa.0.0.insert.ext = zext i32 %p.sroa.0.0 to i64
  %p.sroa.0.0.insert.shift = shl nuw i64 %p.sroa.0.0.insert.ext, 32
  %p.sroa.0.0.insert.insert = or i64 %p.sroa.0.0.insert.shift, %p.sroa.6.0.insert.ext
  %16 = ptrtoint ptr %p9 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %p.sroa.0.0.insert.insert, ptr %p9, align 4
  %net10 = getelementptr i8, ptr %dev, i32 2312
  %17 = ptrtoint ptr %net10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %net10, align 4
  %dev11 = getelementptr i8, ptr %dev, i32 2308
  %18 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev11, align 4
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %21 = load i32, ptr @xfrmi_net_id, align 4
  %call2.i27 = tail call fastcc ptr @net_generic(ptr noundef %20, i32 noundef %21) #15
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %22 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xfrmi_link_ops, ptr %rtnl_link_ops.i, align 4
  %call3.i28 = tail call i32 @register_netdevice(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i28)
  %cmp.i = icmp slt i32 %call3.i28, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i29

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i29:                                       ; preds = %if.end7
  %if_id.i.i = getelementptr i8, ptr %dev, i32 2320
  %23 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %if_id.i.i, align 4
  %call2.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call2.i.i, label %if.end.i29.xfrmi_link.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i29.xfrmi_link.exit.i_crit_edge:           ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_link.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i29
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.xfrmi_link.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.xfrmi_link.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_link.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b69.i.i = load i1, ptr @xfrmi_link.__warned, align 1
  br i1 %.b69.i.i, label %land.lhs.true4.i.i.xfrmi_link.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.xfrmi_link.exit.i_crit_edge:   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_link.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 121, ptr noundef nonnull @.str.8) #15
  br label %xfrmi_link.exit.i

xfrmi_link.exit.i:                                ; preds = %if.then.i.i, %land.lhs.true4.i.i.xfrmi_link.exit.i_crit_edge, %land.lhs.true.i.i.xfrmi_link.exit.i_crit_edge, %if.end.i29.xfrmi_link.exit.i_crit_edge
  %mul.i.i.i.i.i = mul i32 %24, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %arrayidx.i.i = getelementptr [256 x ptr], ptr %call2.i27, i32 0, i32 %shr.i.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %add.ptr.i, ptr %arrayidx.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfrmi_link.exit.i, %if.end7.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %xfrmi_link.exit.i ], [ %call3.i28, %if.end7.cleanup_crit_edge ], [ -17, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %net1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %p.sroa.0.0 = phi i32 [ 0, %if.end.i.if.end4.i_crit_edge ], [ %5, %if.then2.i ]
  %arrayidx5.i = getelementptr ptr, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.end4.i.do.body_crit_edge, label %xfrmi_netlink_parms.exit

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

xfrmi_netlink_parms.exit:                         ; preds = %if.end4.i
  %add.ptr.i.i18.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %xfrmi_netlink_parms.exit.do.body_crit_edge, label %if.end4

xfrmi_netlink_parms.exit.do.body_crit_edge:       ; preds = %xfrmi_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %xfrmi_netlink_parms.exit.do.body_crit_edge, %if.end4.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @xfrmi_changelink.__msg) #15
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfrmi_changelink.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %xfrmi_netlink_parms.exit
  %11 = load i32, ptr @xfrmi_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %11) #15
  %mul.i.i.i.i = mul i32 %9, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i23 = getelementptr [256 x ptr], ptr %call.i, i32 0, i32 %shr.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %xip.0.i = phi ptr [ %arrayidx.i23, %if.end4 ], [ %13, %for.body.i.for.cond.i_crit_edge ]
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call2.i, label %for.cond.i.do.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i24 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @xfrmi_locate.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_locate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 175, ptr noundef nonnull @.str.8) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge
  %12 = ptrtoint ptr %xip.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xip.0.i, align 4
  %cmp.not.i = icmp eq ptr %13, null
  br i1 %cmp.not.i, label %do.end.i.if.end12_crit_edge, label %for.body.i

do.end.i.if.end12_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

for.body.i:                                       ; preds = %do.end.i
  %if_id7.i = getelementptr inbounds %struct.xfrm_if, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %if_id7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_id7.i, align 4
  %cmp9.i = icmp eq i32 %15, %9
  br i1 %cmp9.i, label %if.else, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

if.else:                                          ; preds = %for.body.i
  %dev9 = getelementptr inbounds %struct.xfrm_if, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  %cmp.not = icmp eq ptr %17, %dev
  br i1 %cmp.not, label %if.else.if.end12_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %do.end.i.if.end12_crit_edge
  %xi.0 = phi ptr [ %13, %if.else.if.end12_crit_edge ], [ %add.ptr.i, %do.end.i.if.end12_crit_edge ]
  %net1.i = getelementptr inbounds %struct.xfrm_if, ptr %xi.0, i32 0, i32 2
  %18 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net1.i, align 4
  %20 = load i32, ptr @xfrmi_net_id, align 4
  %call.i26 = tail call fastcc ptr @net_generic(ptr noundef %19, i32 noundef %20) #15
  %if_id.i.i = getelementptr inbounds %struct.xfrm_if, ptr %xi.0, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %if_id.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %22, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %arrayidx.i.i = getelementptr [256 x ptr], ptr %call.i26, i32 0, i32 %shr.i.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end12
  %xip.0.i.i = phi ptr [ %arrayidx.i.i, %if.end12 ], [ %24, %for.body.i.i.for.cond.i.i_crit_edge ]
  %call1.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call1.i.i, label %for.cond.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i

for.cond.i.i.do.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b50.i.i = load i1, ptr @xfrmi_unlink.__warned, align 1
  br i1 %.b50.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 131, ptr noundef nonnull @.str.8) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %for.cond.i.i.do.end.i.i_crit_edge
  %23 = ptrtoint ptr %xip.0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xip.0.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %24, null
  br i1 %cmp.not.i.i, label %do.end.i.i.xfrmi_unlink.exit.i_crit_edge, label %for.body.i.i

do.end.i.i.xfrmi_unlink.exit.i_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_unlink.exit.i

for.body.i.i:                                     ; preds = %do.end.i.i
  %cmp5.i.i = icmp eq ptr %24, %xi.0
  br i1 %cmp5.i.i, label %do.body7.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

do.body7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %xi.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xi.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !121
  %27 = ptrtoint ptr %xip.0.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %xip.0.i.i, align 4
  br label %xfrmi_unlink.exit.i

xfrmi_unlink.exit.i:                              ; preds = %do.body7.i.i, %do.end.i.i.xfrmi_unlink.exit.i_crit_edge
  tail call void @synchronize_net() #15
  %p1.i.i = getelementptr inbounds %struct.xfrm_if, ptr %xi.0, i32 0, i32 3
  %28 = ptrtoint ptr %p1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %p.sroa.0.0)
  %cmp.not.i8.i = icmp eq i32 %29, %p.sroa.0.0
  br i1 %cmp.not.i8.i, label %if.end.i.i, label %xfrmi_unlink.exit.i.xfrmi_change.exit.i_crit_edge

xfrmi_unlink.exit.i.xfrmi_change.exit.i_crit_edge: ; preds = %xfrmi_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_change.exit.i

if.end.i.i:                                       ; preds = %xfrmi_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %9, ptr %if_id.i.i, align 4
  br label %xfrmi_change.exit.i

xfrmi_change.exit.i:                              ; preds = %if.end.i.i, %xfrmi_unlink.exit.i.xfrmi_change.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -22, %xfrmi_unlink.exit.i.xfrmi_change.exit.i_crit_edge ]
  %31 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %if_id.i.i, align 4
  %call2.i11.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call2.i11.i, label %xfrmi_change.exit.i.xfrmi_update.exit_crit_edge, label %land.lhs.true.i13.i

xfrmi_change.exit.i.xfrmi_update.exit_crit_edge:  ; preds = %xfrmi_change.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_update.exit

land.lhs.true.i13.i:                              ; preds = %xfrmi_change.exit.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i12.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.xfrmi_update.exit_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i13.i.xfrmi_update.exit_crit_edge:  ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_update.exit

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i13.i
  %.b69.i.i = load i1, ptr @xfrmi_link.__warned, align 1
  br i1 %.b69.i.i, label %land.lhs.true4.i.i.xfrmi_update.exit_crit_edge, label %if.then.i14.i

land.lhs.true4.i.i.xfrmi_update.exit_crit_edge:   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_update.exit

if.then.i14.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 121, ptr noundef nonnull @.str.8) #15
  br label %xfrmi_update.exit

xfrmi_update.exit:                                ; preds = %if.then.i14.i, %land.lhs.true4.i.i.xfrmi_update.exit_crit_edge, %land.lhs.true.i13.i.xfrmi_update.exit_crit_edge, %xfrmi_change.exit.i.xfrmi_update.exit_crit_edge
  %mul.i.i.i.i15.i = mul i32 %32, 1640531527
  %shr.i.i.i16.i = lshr i32 %mul.i.i.i.i15.i, 24
  %arrayidx.i17.i = getelementptr [256 x ptr], ptr %call.i26, i32 0, i32 %shr.i.i.i16.i
  %33 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i17.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  %35 = ptrtoint ptr %xi.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %xi.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  %36 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %xi.0, ptr %arrayidx.i17.i, align 4
  %dev.i = getelementptr inbounds %struct.xfrm_if, ptr %xi.0, i32 0, i32 1
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void @netdev_state_change(ptr noundef %38) #15
  br label %cleanup

cleanup:                                          ; preds = %xfrmi_update.exit, %if.else.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %xfrmi_update.exit ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -17, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrmi_dellink(ptr noundef %dev, ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfrmi_get_size(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tmp.i7 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #15
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %if_id = getelementptr i8, ptr %dev, i32 2320
  %3 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7) #15
  %5 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i7, align 4
  %call.i8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool3.not = icmp eq i32 %call.i8, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @xfrmi_get_link_net(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrmi_dev_free(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %gro_cells = getelementptr i8, ptr %dev, i32 2324
  tail call void @gro_cells_destroy(ptr noundef %gro_cells) #15
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_dev_init(ptr noundef %dev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %p = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %call1 = tail call ptr @__dev_get_by_index(ptr noundef %1, i32 noundef %3) #15
  %call2 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call371 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call371, i32 %4)
  %cmp72 = icmp ult i32 %call371, %4
  br i1 %cmp72, label %for.body.lr.ph, label %for.cond.preheader.if.end11_crit_edge

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %call2 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call373 = phi i32 [ %call371, %for.body.lr.ph ], [ %call3, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call373
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %5
  %10 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @xfrmi_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %11 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %syncp, align 4
  %call3 = tail call i32 @cpumask_next(i32 noundef %call373, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %for.cond.preheader.if.end11_crit_edge
  %13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %13, align 64
  %gro_cells = getelementptr i8, ptr %dev, i32 2324
  %call12 = tail call i32 @gro_cells_init(ptr noundef %gro_cells, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 64
  tail call void @free_percpu(ptr noundef %16) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features, align 16
  %or17 = or i64 %18, 26845450313
  store i64 %or17, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %19 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hw_features, align 8
  %or18 = or i64 %20, 26845446217
  store i64 %or18, ptr %hw_features, align 8
  %tobool19.not = icmp eq ptr %call1, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 21
  %21 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %needed_headroom, align 8
  %needed_headroom21 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %23 = ptrtoint ptr %needed_headroom21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %needed_headroom21, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 22
  %24 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %needed_tailroom, align 2
  %needed_tailroom22 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %26 = ptrtoint ptr %needed_tailroom22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %needed_tailroom22, align 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add.ptr.i65 = getelementptr i8, ptr %28, i32 4
  %31 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i65, align 2
  %conv.i = zext i16 %32 to i32
  %or.i = or i32 %30, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then24, label %if.then20.if.end25_crit_edge

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 55
  %33 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr_assign_type.i, align 4
  %addr_assign_type1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %35 = ptrtoint ptr %addr_assign_type1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %addr_assign_type1.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr.i, align 64
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %37, i32 noundef 6) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then20.if.end25_crit_edge
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %38 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %broadcast, align 4
  %add.ptr.i66 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 4
  %40 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i66, align 2
  %conv.i67 = zext i16 %41 to i32
  %or.i68 = or i32 %39, %conv.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i68)
  %cmp.i69 = icmp eq i32 %or.i68, 0
  br i1 %cmp.i69, label %if.then27, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %broadcast30 = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 99
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %42 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %43 to i32
  %44 = call ptr @memcpy(ptr %broadcast, ptr %broadcast30, i32 %conv)
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #15
  %45 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr.i, align 1
  %48 = and i8 %47, -4
  %49 = or i8 %48, 2
  store i8 %49, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %addr_assign_type.i70 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %50 = ptrtoint ptr %addr_assign_type.i70 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %addr_assign_type.i70, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #15
  %broadcast33 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %51 = call ptr @memset(ptr %broadcast33, i32 255, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %if.end25.cleanup_crit_edge, %if.then14, %if.end.thread
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.else ], [ -12, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrmi_dev_uninit(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %net = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @xfrmi_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %if_id.i = getelementptr i8, ptr %dev, i32 2320
  %3 = ptrtoint ptr %if_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_id.i, align 4
  %mul.i.i.i.i = mul i32 %4, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr [256 x ptr], ptr %call1, i32 0, i32 %shr.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %xip.0.i = phi ptr [ %arrayidx.i, %entry ], [ %6, %for.body.i.for.cond.i_crit_edge ]
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call1.i, label %for.cond.i.do.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b50.i = load i1, ptr @xfrmi_unlink.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 131, ptr noundef nonnull @.str.8) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge
  %5 = ptrtoint ptr %xip.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xip.0.i, align 4
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %do.end.i.xfrmi_unlink.exit_crit_edge, label %for.body.i

do.end.i.xfrmi_unlink.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_unlink.exit

for.body.i:                                       ; preds = %do.end.i
  %cmp5.i = icmp eq ptr %6, %add.ptr.i
  br i1 %cmp5.i, label %do.body7.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

do.body7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !121
  %9 = ptrtoint ptr %xip.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %xip.0.i, align 4
  br label %xfrmi_unlink.exit

xfrmi_unlink.exit:                                ; preds = %do.body7.i, %do.end.i.xfrmi_unlink.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %fl = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !122

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl) #15
  %7 = call ptr @memset(ptr %fl, i32 0, i32 88)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %skb_dst.exit.tx_err_crit_edge [
    i16 -31011, label %sw.bb
    i16 2048, label %sw.bb15
  ]

skb_dst.exit.tx_err_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

sw.bb:                                            ; preds = %skb_dst.exit
  %call.i77 = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl, i32 noundef 10, i32 noundef 0) #15
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %11 = call ptr @memset(ptr %cb, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %14 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fl, align 8
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %15 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flowic_flags, align 1
  %17 = or i8 %16, 1
  store i8 %17, ptr %flowic_flags, align 1
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i, align 4
  %call.i78 = call ptr @ip6_route_output_flags(ptr noundef %19, ptr noundef null, ptr noundef nonnull %fl, i32 noundef 0) #15
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i78, i32 0, i32 15
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool12.not = icmp eq i16 %21, 0
  br i1 %tobool12.not, label %if.then.sw.epilog.sink.split_crit_edge, label %if.then13

if.then.sw.epilog.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void @dst_release(ptr noundef %call.i78) #15
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %22 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  br label %tx_err

sw.bb15:                                          ; preds = %skb_dst.exit
  %call.i80 = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl, i32 noundef 2, i32 noundef 0) #15
  %cb17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %24 = call ptr @memset(ptr %cb17, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool19.not = icmp eq i32 %and25.i, 0
  br i1 %tobool19.not, label %if.then20, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then20:                                        ; preds = %sw.bb15
  %ifindex21 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex21, align 4
  %27 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fl, align 8
  %flowic_flags27 = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %28 = ptrtoint ptr %flowic_flags27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flowic_flags27, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %flowic_flags27, align 1
  %nd_net.i81 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %31 = ptrtoint ptr %nd_net.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nd_net.i81, align 4
  %call.i82 = call ptr @ip_route_output_key_hash(ptr noundef %32, ptr noundef nonnull %fl, ptr noundef null) #15
  %cmp.i = icmp ugt ptr %call.i82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.then20.sw.epilog.sink.split_crit_edge

if.then20.sw.epilog.sink.split_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

cleanup:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %tx_carrier_errors36 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %33 = ptrtoint ptr %tx_carrier_errors36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_carrier_errors36, align 4
  %inc37 = add i32 %34, 1
  store i32 %inc37, ptr %tx_carrier_errors36, align 4
  br label %tx_err

sw.epilog.sink.split:                             ; preds = %if.then20.sw.epilog.sink.split_crit_edge, %if.then.sw.epilog.sink.split_crit_edge
  %tobool.not.i83.sink.in = phi ptr [ %call.i78, %if.then.sw.epilog.sink.split_crit_edge ], [ %call.i82, %if.then20.sw.epilog.sink.split_crit_edge ]
  %slow_gro.i.sink = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %tobool.not.i83.sink = icmp eq ptr %tobool.not.i83.sink.in, null
  %35 = ptrtoint ptr %slow_gro.i.sink to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i.sink, align 2
  %bf.load.mask.i86 = and i32 %bf.load.i, 4096
  %bf.shl.i87 = select i1 %tobool.not.i83.sink, i32 %bf.load.mask.i86, i32 4096
  %bf.clear4.i88 = and i32 %bf.load.i, -4097
  %bf.set.i89 = or i32 %bf.shl.i87, %bf.clear4.i88
  store i32 %bf.set.i89, ptr %slow_gro.i.sink, align 2
  %36 = ptrtoint ptr %tobool.not.i83.sink.in to i32
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb15.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %p = getelementptr i8, ptr %dev, i32 2316
  %38 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p, align 4
  %40 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fl, align 8
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %2, align 8
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.skb_dst.exit.i_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call.i.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !122

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %sw.epilog.skb_dst.exit.i_crit_edge
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %2, align 8
  %and25.i.i = and i32 %46, -2
  %47 = inttoptr i32 %and25.i.i to ptr
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i, align 4
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %47, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !123
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #15
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #15, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 231, i32 noundef 9, ptr noundef null) #15
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %net.i = getelementptr i8, ptr %dev, i32 2312
  %51 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net.i, align 4
  %if_id.i = getelementptr i8, ptr %dev, i32 2320
  %53 = ptrtoint ptr %if_id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %if_id.i, align 4
  %call4.i = call ptr @xfrm_lookup_with_ifid(ptr noundef %52, ptr noundef %47, ptr noundef nonnull %fl, ptr noundef null, i32 noundef 0, i32 noundef %54) #15
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %call4.i to i32
  br label %tx_err_link_failure.i

if.end.i:                                         ; preds = %dst_hold.exit.i
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %call4.i, i32 0, i32 4
  %56 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xfrm.i, align 4
  %tobool.not.i90 = icmp eq ptr %57, null
  br i1 %tobool.not.i90, label %if.end.i.tx_err_link_failure.i_crit_edge, label %if.end8.i

if.end.i.tx_err_link_failure.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err_link_failure.i

if.end8.i:                                        ; preds = %if.end.i
  %if_id9.i = getelementptr inbounds %struct.xfrm_state, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %if_id9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %if_id9.i, align 4
  %60 = ptrtoint ptr %if_id.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %if_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.not.i = icmp eq i32 %59, %61
  br i1 %cmp.not.i, label %if.end13.i, label %if.end8.i.tx_err_link_failure.i_crit_edge

if.end8.i.tx_err_link_failure.i_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err_link_failure.i

if.end13.i:                                       ; preds = %if.end8.i
  %62 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call4.i, align 4
  %cmp15.i = icmp eq ptr %63, %dev
  br i1 %cmp15.i, label %if.then16.i, label %if.end25.i

if.then16.i:                                      ; preds = %if.end13.i
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 9
  %64 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %collisions.i, align 4
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %collisions.i, align 4
  %call17.i = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.xfrmi_xmit2.exit.thread100_crit_edge, label %do.end.i91

if.then16.i.xfrmi_xmit2.exit.thread100_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_xmit2.exit.thread100

do.end.i91:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %dev) #18
  br label %xfrmi_xmit2.exit.thread100

if.end25.i:                                       ; preds = %if.end13.i
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %call4.i, i32 0, i32 1
  %66 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mtu.i.i, align 4
  %call.i125.i = call i32 %69(ptr noundef %call4.i) #15
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %70 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.i.not.i = icmp eq i16 %73, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i92, label %land.lhs.true31.i

land.lhs.true.i92:                                ; preds = %if.end25.i
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %call.i125.i)
  %cmp29.i = icmp ugt i32 %75, %call.i125.i
  br i1 %cmp29.i, label %land.lhs.true.i92.if.then33.i_crit_edge, label %land.lhs.true.i92.xmit.i_crit_edge

land.lhs.true.i92.xmit.i_crit_edge:               ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmit.i

land.lhs.true.i92.if.then33.i_crit_edge:          ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

land.lhs.true31.i:                                ; preds = %if.end25.i
  %call32.i = call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %call.i125.i) #15
  br i1 %call32.i, label %land.lhs.true31.i.xmit.i_crit_edge, label %land.lhs.true31.i.if.then33.i_crit_edge

land.lhs.true31.i.if.then33.i_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

land.lhs.true31.i.xmit.i_crit_edge:               ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmit.i

if.then33.i:                                      ; preds = %land.lhs.true31.i.if.then33.i_crit_edge, %land.lhs.true.i92.if.then33.i_crit_edge
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %2, align 8
  %and.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then33.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then33.i.skb_dst.exit.i.i_crit_edge:           ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then33.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !122

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then33.i.skb_dst.exit.i.i_crit_edge
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %2, align 8
  %and25.i.i.i = and i32 %79, -2
  %80 = inttoptr i32 %and25.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i129.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i129.i, label %skb_dst.exit.i.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge, label %land.lhs.true.i132.i

skb_dst.exit.i.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst_update_pmtu_no_confirm.exit.i

land.lhs.true.i132.i:                             ; preds = %skb_dst.exit.i.i
  %ops.i130.i = getelementptr inbounds %struct.dst_entry, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %ops.i130.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i130.i, align 4
  %update_pmtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %update_pmtu.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %update_pmtu.i.i, align 4
  %tobool1.not.i131.i = icmp eq ptr %84, null
  br i1 %tobool1.not.i131.i, label %land.lhs.true.i132.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i132.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge: ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst_update_pmtu_no_confirm.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %84(ptr noundef nonnull %80, ptr noundef null, ptr noundef %skb, i32 noundef %call.i125.i, i1 noundef zeroext false) #15
  br label %skb_dst_update_pmtu_no_confirm.exit.i

skb_dst_update_pmtu_no_confirm.exit.i:            ; preds = %if.then.i.i, %land.lhs.true.i132.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge, %skb_dst.exit.i.i.skb_dst_update_pmtu_no_confirm.exit.i_crit_edge
  %85 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %86)
  %cmp34.i = icmp eq i16 %86, -31011
  br i1 %cmp34.i, label %if.then36.i, label %if.else46.i

if.then36.i:                                      ; preds = %skb_dst_update_pmtu_no_confirm.exit.i
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %88)
  %cmp42.i = icmp ugt i32 %88, 1280
  br i1 %cmp42.i, label %if.then44.i, label %if.then36.i.xmit.i_crit_edge

if.then36.i.xmit.i_crit_edge:                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmit.i

if.then44.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #17
  %89 = call i32 @llvm.smax.i32(i32 %call.i125.i, i32 1280) #15
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %89) #15
  br label %xfrmi_xmit2.exit.thread96

if.else46.i:                                      ; preds = %skb_dst_update_pmtu_no_confirm.exit.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %90 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %92 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %93 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 %conv.i.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %frag_off.i, align 2
  %96 = and i16 %95, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool49.not.i = icmp eq i16 %96, 0
  br i1 %tobool49.not.i, label %if.else46.i.xmit.i_crit_edge, label %if.end51.i

if.else46.i.xmit.i_crit_edge:                     ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xmit.i

if.end51.i:                                       ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %call.i125.i) #15
  br label %xfrmi_xmit2.exit.thread96

xfrmi_xmit2.exit.thread96:                        ; preds = %if.end51.i, %if.then44.i
  call void @dst_release(ptr noundef %call4.i) #15
  br label %tx_err

xmit.i:                                           ; preds = %if.else46.i.xmit.i_crit_edge, %if.then36.i.xmit.i_crit_edge, %land.lhs.true31.i.xmit.i_crit_edge, %land.lhs.true.i92.xmit.i_crit_edge
  %97 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %99 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i133.i = icmp ne ptr %98, %100
  call fastcc void @xfrmi_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i133.i) #15
  %tobool.not.i134.i = icmp eq ptr %call4.i, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %101 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i134.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %102 = ptrtoint ptr %call4.i to i32
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %2, align 8
  %104 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %63, ptr %104, align 8
  %106 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %net.i, align 4
  %108 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %and.i.i135.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135.i)
  %tobool.not.i.i136.i = icmp eq i32 %and.i.i135.i, 0
  br i1 %tobool.not.i.i136.i, label %xmit.i.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i139.i

xmit.i.dst_output.exit.i_crit_edge:               ; preds = %xmit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dst_output.exit.i

land.lhs.true.i.i139.i:                           ; preds = %xmit.i
  %call.i.i137.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137.i)
  %tobool1.not.i.i138.i = icmp eq i32 %call.i.i137.i, 0
  br i1 %tobool1.not.i.i138.i, label %land.rhs.i.i142.i, label %land.lhs.true.i.i139.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i139.i.dst_output.exit.i_crit_edge: ; preds = %land.lhs.true.i.i139.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dst_output.exit.i

land.rhs.i.i142.i:                                ; preds = %land.lhs.true.i.i139.i
  %call2.i.i140.i = call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i140.i)
  %tobool3.not.i.i141.i = icmp eq i32 %call2.i.i140.i, 0
  br i1 %tobool3.not.i.i141.i, label %do.end.i.i143.i, label %land.rhs.i.i142.i.dst_output.exit.i_crit_edge, !prof !122

land.rhs.i.i142.i.dst_output.exit.i_crit_edge:    ; preds = %land.rhs.i.i142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dst_output.exit.i

do.end.i.i143.i:                                  ; preds = %land.rhs.i.i142.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i143.i, %land.rhs.i.i142.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i139.i.dst_output.exit.i_crit_edge, %xmit.i.dst_output.exit.i_crit_edge
  %111 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %2, align 8
  %and25.i.i144.i = and i32 %112, -2
  %113 = inttoptr i32 %and25.i.i144.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = call i32 %115(ptr noundef %107, ptr noundef %110, ptr noundef %skb) #15
  %116 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call1.i.i, label %if.else65.i [
    i32 2, label %dst_output.exit.i.if.then64.i_crit_edge
    i32 0, label %dst_output.exit.i.if.then64.i_crit_edge105
  ]

dst_output.exit.i.if.then64.i_crit_edge105:       ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64.i

dst_output.exit.i.if.then64.i_crit_edge:          ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64.i

if.then64.i:                                      ; preds = %dst_output.exit.i.if.then64.i_crit_edge, %dst_output.exit.i.if.then64.i_crit_edge105
  %117 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 64
  %120 = ptrtoint ptr %119 to i32
  %121 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i146.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i146.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %126, %120
  %127 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %127, i32 0, i32 4
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #15
  %conv.i147.i = zext i32 %49 to i64
  %tx_bytes.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %tx_bytes.i.i, align 8
  %add2.i.i = add i64 %129, %conv.i147.i
  store i64 %add2.i.i, ptr %tx_bytes.i.i, align 8
  %tx_packets.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %127, i32 0, i32 2
  %130 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %tx_packets.i.i, align 16
  %add4.i.i = add i64 %131, 1
  store i64 %add4.i.i, ptr %tx_packets.i.i, align 16
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %127, i32 0, i32 4, i32 0, i32 1
  %132 = call ptr @llvm.returnaddress(i32 0) #15
  %133 = ptrtoint ptr %132 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %133) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  %134 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %135, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br label %cleanup49

if.else65.i:                                      ; preds = %dst_output.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 5
  %136 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tx_errors.i, align 4
  %inc66.i = add i32 %137, 1
  store i32 %inc66.i, ptr %tx_errors.i, align 4
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 16
  %138 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_aborted_errors.i, align 4
  %inc67.i = add i32 %139, 1
  store i32 %inc67.i, ptr %tx_aborted_errors.i, align 4
  br label %cleanup49

tx_err_link_failure.i:                            ; preds = %if.end8.i.tx_err_link_failure.i_crit_edge, %if.end.i.tx_err_link_failure.i_crit_edge, %if.then.i
  %dst.0.i = phi ptr [ null, %if.then.i ], [ %call4.i, %if.end8.i.tx_err_link_failure.i_crit_edge ], [ %call4.i, %if.end.i.tx_err_link_failure.i_crit_edge ]
  %err.0.i = phi i32 [ %55, %if.then.i ], [ -1, %if.end8.i.tx_err_link_failure.i_crit_edge ], [ -1, %if.end.i.tx_err_link_failure.i_crit_edge ]
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 17
  %140 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc69.i = add i32 %141, 1
  store i32 %inc69.i, ptr %tx_carrier_errors.i, align 4
  %142 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %2, align 8
  %and.i.i148.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i148.i)
  %tobool.not.i.i149.i = icmp eq i32 %and.i.i148.i, 0
  br i1 %tobool.not.i.i149.i, label %tx_err_link_failure.i.skb_dst.exit.i159.i_crit_edge, label %land.lhs.true.i.i152.i

tx_err_link_failure.i.skb_dst.exit.i159.i_crit_edge: ; preds = %tx_err_link_failure.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i159.i

land.lhs.true.i.i152.i:                           ; preds = %tx_err_link_failure.i
  %call.i.i150.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150.i)
  %tobool1.not.i.i151.i = icmp eq i32 %call.i.i150.i, 0
  br i1 %tobool1.not.i.i151.i, label %land.rhs.i.i155.i, label %land.lhs.true.i.i152.i.skb_dst.exit.i159.i_crit_edge

land.lhs.true.i.i152.i.skb_dst.exit.i159.i_crit_edge: ; preds = %land.lhs.true.i.i152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i159.i

land.rhs.i.i155.i:                                ; preds = %land.lhs.true.i.i152.i
  %call2.i.i153.i = call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i153.i)
  %tobool3.not.i.i154.i = icmp eq i32 %call2.i.i153.i, 0
  br i1 %tobool3.not.i.i154.i, label %do.end.i.i156.i, label %land.rhs.i.i155.i.skb_dst.exit.i159.i_crit_edge, !prof !122

land.rhs.i.i155.i.skb_dst.exit.i159.i_crit_edge:  ; preds = %land.rhs.i.i155.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i159.i

do.end.i.i156.i:                                  ; preds = %land.rhs.i.i155.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i159.i

skb_dst.exit.i159.i:                              ; preds = %do.end.i.i156.i, %land.rhs.i.i155.i.skb_dst.exit.i159.i_crit_edge, %land.lhs.true.i.i152.i.skb_dst.exit.i159.i_crit_edge, %tx_err_link_failure.i.skb_dst.exit.i159.i_crit_edge
  %144 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %2, align 8
  %and25.i.i157.i = and i32 %145, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i157.i)
  %tobool.not.i158.i = icmp eq i32 %and25.i.i157.i, 0
  br i1 %tobool.not.i158.i, label %skb_dst.exit.i159.i.xfrmi_xmit2.exit_crit_edge, label %land.lhs.true.i162.i

skb_dst.exit.i159.i.xfrmi_xmit2.exit_crit_edge:   ; preds = %skb_dst.exit.i159.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_xmit2.exit

land.lhs.true.i162.i:                             ; preds = %skb_dst.exit.i159.i
  %146 = inttoptr i32 %and25.i.i157.i to ptr
  %ops.i160.i = getelementptr inbounds %struct.dst_entry, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %ops.i160.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i160.i, align 4
  %tobool1.not.i161.i = icmp eq ptr %148, null
  br i1 %tobool1.not.i161.i, label %land.lhs.true.i162.i.xfrmi_xmit2.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i162.i.xfrmi_xmit2.exit_crit_edge:  ; preds = %land.lhs.true.i162.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_xmit2.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i162.i
  %link_failure.i.i = getelementptr inbounds %struct.dst_ops, ptr %148, i32 0, i32 10
  %149 = ptrtoint ptr %link_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %link_failure.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %150, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.xfrmi_xmit2.exit_crit_edge, label %if.then.i163.i

land.lhs.true2.i.i.xfrmi_xmit2.exit_crit_edge:    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrmi_xmit2.exit

if.then.i163.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %150(ptr noundef %skb) #15
  br label %xfrmi_xmit2.exit

xfrmi_xmit2.exit.thread100:                       ; preds = %do.end.i91, %if.then16.i.xfrmi_xmit2.exit.thread100_crit_edge
  call void @dst_release(ptr noundef %call4.i) #15
  br label %tx_err

xfrmi_xmit2.exit:                                 ; preds = %if.then.i163.i, %land.lhs.true2.i.i.xfrmi_xmit2.exit_crit_edge, %land.lhs.true.i162.i.xfrmi_xmit2.exit_crit_edge, %skb_dst.exit.i159.i.xfrmi_xmit2.exit_crit_edge
  call void @dst_release(ptr noundef %dst.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %xfrmi_xmit2.exit.tx_err_crit_edge, label %xfrmi_xmit2.exit.cleanup49_crit_edge

xfrmi_xmit2.exit.cleanup49_crit_edge:             ; preds = %xfrmi_xmit2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup49

xfrmi_xmit2.exit.tx_err_crit_edge:                ; preds = %xfrmi_xmit2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

tx_err:                                           ; preds = %xfrmi_xmit2.exit.tx_err_crit_edge, %xfrmi_xmit2.exit.thread100, %xfrmi_xmit2.exit.thread96, %cleanup, %if.then13, %skb_dst.exit.tx_err_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %151 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_errors, align 4
  %inc47 = add i32 %152, 1
  store i32 %inc47, ptr %tx_errors, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %153 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_dropped, align 4
  %inc48 = add i32 %154, 1
  store i32 %inc48, ptr %tx_dropped, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup49

cleanup49:                                        ; preds = %tx_err, %xfrmi_xmit2.exit.cleanup49_crit_edge, %if.else65.i, %if.then64.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfrmi_get_iflink(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !127
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !128
  %8 = tail call i32 @llvm.read_register.i32(metadata !109) #15
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

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
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup_with_ifid(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfrmi_scrub_packet(ptr noundef %skb, i1 noundef zeroext %xnet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %3 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %skb_iif, align 8
  %bf.clear2 = and i16 %bf.load, 4095
  store i16 %bf.clear2, ptr %pkt_type, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.skb_dst_drop.exit_crit_edge, label %if.then.i

entry.skb_dst_drop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %and1.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %7) #15
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %4, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %entry.skb_dst_drop.exit_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %9 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i14 = and i32 %10, -8
  %11 = inttoptr i32 %and.i.i14 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i.i15, label %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

skb_dst_drop.exit.nf_reset_ct.exit_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %skb_dst_drop.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #15, !srcloc !130
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i16, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !131

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #15
  br label %nf_reset_ct.exit

if.then.i.i16:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %11) #15
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i16, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge
  %13 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %_nfct.i.i, align 8
  %14 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %pkt_type, align 8
  %bf.clear.i = and i16 %bf.load.i, -2049
  store i16 %bf.clear.i, ptr %pkt_type, align 8
  br i1 %xnet, label %if.end, label %nf_reset_ct.exit.return_crit_edge

nf_reset_ct.exit.return_crit_edge:                ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %nf_reset_ct.exit
  %ipvs_property.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %ipvs_property.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i17 = load i32, ptr %ipvs_property.i, align 2
  %bf.clear.i18 = and i32 %bf.load.i17, -8388609
  store i32 %bf.clear.i18, ptr %ipvs_property.i, align 2
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %16 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active_extensions.i.i.i, align 1
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.i.not.i.i, label %if.end.secpath_reset.exit_crit_edge, label %if.then.i.i19

if.end.secpath_reset.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %secpath_reset.exit

if.then.i.i19:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__skb_ext_del(ptr noundef %skb, i32 noundef 1) #15
  br label %secpath_reset.exit

secpath_reset.exit:                               ; preds = %if.then.i.i19, %if.end.secpath_reset.exit_crit_edge
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i20 = icmp eq ptr %20, null
  br i1 %tobool.not.i20, label %do.body.i, label %if.then.i21

if.then.i21:                                      ; preds = %secpath_reset.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %20(ptr noundef %skb) #15
  %21 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %destructor.i, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %22, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %secpath_reset.exit
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool3.not.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !131

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #15, !srcloc !133
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i21
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %27, align 4
  br label %return

return:                                           ; preds = %skb_orphan.exit, %nf_reset_ct.exit.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !134
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !135
  %14 = tail call i32 @llvm.read_register.i32(metadata !109) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !109) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !136
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !137
  %33 = tail call i32 @llvm.read_register.i32(metadata !109) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !131

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !138
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #15
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi4_rcv_tunnel(ptr noundef %skb) #2 align 64 {
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
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saddr, align 4
  %tunnel.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tunnel.i, align 8
  %family.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %family.i, align 8
  %daddroff.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %8 = ptrtoint ptr %daddroff.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %daddroff.i, align 4
  %call.i = tail call i32 @xfrm_input(ptr noundef %skb, i32 noundef 4, i32 noundef %5, i32 noundef 0) #15
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi_rcv_cb(ptr noundef %skb, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %3 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.xfrm_input_state.exit_crit_edge, label %if.then.i.i.i

if.end.xfrm_input_state.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_input_state.exit

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %6 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %shl.i.i.i
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %if.end.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %if.end.xfrm_input_state.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %11, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call4 = tail call fastcc ptr @xfrmi_lookup(ptr noundef %15, ptr noundef %13)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %xfrm_input_state.exit.cleanup_crit_edge, label %if.end7

xfrm_input_state.exit.cleanup_crit_edge:          ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %xfrm_input_state.exit
  %dev8 = getelementptr inbounds %struct.xfrm_if, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev8, align 4
  %18 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %18, align 8
  br i1 %tobool.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 6
  %22 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_dropped, align 8
  %inc12 = add i32 %23, 1
  store i32 %inc12, ptr %rx_dropped, align 8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %net = getelementptr inbounds %struct.xfrm_if, ptr %call4, i32 0, i32 2
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 127
  %26 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp ne ptr %25, %27
  br i1 %cmp.i, label %if.then18, label %if.end13.if.end80_crit_edge

if.end13.if.end80_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then18:                                        ; preds = %if.end13
  %inner_mode19 = getelementptr inbounds %struct.xfrm_state, ptr %13, i32 0, i32 46
  %family = getelementptr inbounds %struct.xfrm_state, ptr %13, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp = icmp eq i16 %29, 0
  br i1 %cmp, label %if.then21, label %if.then18.if.end73_crit_edge

if.then18.if.end73_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.then21:                                        ; preds = %if.then18
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protocol, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %31, label %if.then21.if.else.i_crit_edge [
    i8 4, label %land.lhs.true.i
    i8 41, label %land.lhs.true5.i
  ]

if.then21.if.else.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then21
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %13, i32 0, i32 14, i32 7
  %33 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %34)
  %cmp1.i = icmp eq i16 %34, 2
  br i1 %cmp1.i, label %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_ip2inner_mode.exit

land.lhs.true5.i:                                 ; preds = %if.then21
  %family7.i = getelementptr inbounds %struct.xfrm_state, ptr %13, i32 0, i32 14, i32 7
  %35 = ptrtoint ptr %family7.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %family7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %36)
  %cmp9.i = icmp eq i16 %36, 10
  br i1 %cmp9.i, label %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_ip2inner_mode.exit

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then21.if.else.i_crit_edge
  %inner_mode_iaf.i = getelementptr inbounds %struct.xfrm_state, ptr %13, i32 0, i32 47
  br label %xfrm_ip2inner_mode.exit

xfrm_ip2inner_mode.exit:                          ; preds = %if.else.i, %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge, %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge
  %retval.0.i = phi ptr [ %inner_mode_iaf.i, %if.else.i ], [ %inner_mode19, %land.lhs.true5.i.xfrm_ip2inner_mode.exit_crit_edge ], [ %inner_mode19, %land.lhs.true.i.xfrm_ip2inner_mode.exit_crit_edge ]
  %cmp24 = icmp eq ptr %retval.0.i, null
  br i1 %cmp24, label %do.body27, label %xfrm_ip2inner_mode.exit.if.end73_crit_edge

xfrm_ip2inner_mode.exit.if.end73_crit_edge:       ; preds = %xfrm_ip2inner_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

do.body27:                                        ; preds = %xfrm_ip2inner_mode.exit
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !139
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %18, align 8
  %nd_net.i106 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 127
  %40 = ptrtoint ptr %nd_net.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nd_net.i106, align 4
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 30, i32 6
  %42 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx42 = getelementptr [29 x i32], ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx42 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx45, align 4
  %add = add i32 %50, %44
  %51 = inttoptr i32 %add to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add46 = add i32 %53, 1
  store i32 %add46, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !140
  %and.i.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool57.not, label %if.then62, label %do.body27.do.end65_crit_edge, !prof !122

do.body27.do.end65_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

if.then62:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body27.do.end65_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #15, !srcloc !141
  br label %cleanup

if.end73:                                         ; preds = %xfrm_ip2inner_mode.exit.if.end73_crit_edge, %if.then18.if.end73_crit_edge
  %inner_mode.0 = phi ptr [ %retval.0.i, %xfrm_ip2inner_mode.exit.if.end73_crit_edge ], [ %inner_mode19, %if.then18.if.end73_crit_edge ]
  %family74 = getelementptr inbounds %struct.xfrm_mode, ptr %inner_mode.0, i32 0, i32 1
  %55 = ptrtoint ptr %family74 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %family74, align 1
  %conv75 = zext i8 %56 to i16
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 46, i32 23
  %57 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %policy_default.i.i.i, align 16
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool1.i.i.i = icmp eq i8 %59, 0
  br i1 %tobool1.i.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end73
  %policy_count.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 46, i32 13
  %60 = ptrtoint ptr %policy_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %policy_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %if.then5.i.i.lor.lhs.false.i.i_crit_edge

if.then5.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i:                               ; preds = %if.then5.i.i
  %62 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %64 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool10.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.if.end80_crit_edge, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.if.end80_crit_edge:            ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, %if.then5.i.i.lor.lhs.false.i.i_crit_edge
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %and.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !122

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr.i.i = load i32, ptr %65, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %69 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %67, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %tobool12.not.i.i = icmp ult i32 %69, 2
  br i1 %tobool12.not.i.i, label %skb_dst.exit.i.i.xfrm_policy_check.exit_crit_edge, label %land.lhs.true13.i.i

skb_dst.exit.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_policy_check.exit

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !122

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %65, align 8
  %and25.i11.i.i = and i32 %71, -2
  %72 = inttoptr i32 %and25.i11.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags.i.i, align 4
  %75 = and i16 %74, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool16.not.i.i = icmp eq i16 %75, 0
  br i1 %tobool16.not.i.i, label %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge, label %skb_dst.exit12.i.i.if.end80_crit_edge

skb_dst.exit12.i.i.if.end80_crit_edge:            ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_policy_check.exit

if.else.i.i:                                      ; preds = %if.end73
  %76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %and.i13.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.skb_dst.exit23.i.i_crit_edge, label %land.lhs.true.i17.i.i

if.else.i.i.skb_dst.exit23.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !122

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit23thread-pre-split.i.i

skb_dst.exit23thread-pre-split.i.i:               ; preds = %do.end.i21.i.i, %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr35.i.i = load i32, ptr %76, align 8
  br label %skb_dst.exit23.i.i

skb_dst.exit23.i.i:                               ; preds = %skb_dst.exit23thread-pre-split.i.i, %if.else.i.i.skb_dst.exit23.i.i_crit_edge
  %80 = phi i32 [ %.pr35.i.i, %skb_dst.exit23thread-pre-split.i.i ], [ %78, %if.else.i.i.skb_dst.exit23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %tobool21.not.i.i = icmp ult i32 %80, 2
  br i1 %tobool21.not.i.i, label %skb_dst.exit23.i.i.xfrm_policy_check.exit_crit_edge, label %land.lhs.true22.i.i

skb_dst.exit23.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_policy_check.exit

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !122

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit34.i.i

skb_dst.exit34.i.i:                               ; preds = %do.end.i32.i.i, %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %76, align 8
  %and25.i33.i.i = and i32 %82, -2
  %83 = inttoptr i32 %and25.i33.i.i to ptr
  %flags24.i.i = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags24.i.i, align 4
  %86 = and i16 %85, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool27.not.i.i = icmp eq i16 %86, 0
  br i1 %tobool27.not.i.i, label %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge, label %skb_dst.exit34.i.i.if.end80_crit_edge

skb_dst.exit34.i.i.if.end80_crit_edge:            ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_policy_check.exit

xfrm_policy_check.exit:                           ; preds = %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge, %skb_dst.exit23.i.i.xfrm_policy_check.exit_crit_edge, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge, %skb_dst.exit.i.i.xfrm_policy_check.exit_crit_edge
  %call30.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext %conv75) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.i.i.not = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.i.i.not, label %xfrm_policy_check.exit.cleanup_crit_edge, label %xfrm_policy_check.exit.if.end80_crit_edge

xfrm_policy_check.exit.if.end80_crit_edge:        ; preds = %xfrm_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

xfrm_policy_check.exit.cleanup_crit_edge:         ; preds = %xfrm_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end80:                                         ; preds = %xfrm_policy_check.exit.if.end80_crit_edge, %skb_dst.exit34.i.i.if.end80_crit_edge, %skb_dst.exit12.i.i.if.end80_crit_edge, %land.lhs.true8.i.i.if.end80_crit_edge, %if.end13.if.end80_crit_edge
  tail call fastcc void @xfrmi_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len, align 4
  %89 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 130
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 64
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i108 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i108 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i, align 4
  %arrayidx.i109 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i109, align 4
  %add.i = add i32 %98, %92
  %99 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %99, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #15
  %conv.i110 = zext i32 %88 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %101, %conv.i110
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %99, align 32
  %inc.i = add i64 %103, 1
  store i64 %inc.i, ptr %99, align 32
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %99, i32 0, i32 4, i32 0, i32 1
  %104 = tail call ptr @llvm.returnaddress(i32 0) #15
  %105 = ptrtoint ptr %104 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %105) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  %106 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %xfrm_policy_check.exit.cleanup_crit_edge, %do.end65, %if.then10, %xfrm_input_state.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -22, %do.end65 ], [ 0, %if.end80 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %xfrm_input_state.exit.cleanup_crit_edge ], [ -1, %xfrm_policy_check.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi4_err(ptr noundef %skb, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %protocol1 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %protocol1, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %8, label %entry.cleanup_crit_edge [
    i8 50, label %sw.bb
    i8 51, label %sw.bb5
    i8 108, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %11 = and i8 %bf.clear, 60
  %shl = zext i8 %11 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load7 = load i8, ptr %1, align 4
  %bf.clear8 = shl i8 %bf.load7, 2
  %15 = and i8 %bf.clear8, 60
  %shl10 = zext i8 %15 to i32
  %add.ptr11 = getelementptr i8, ptr %1, i32 %shl10
  %spi12 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr11, i32 0, i32 3
  %16 = ptrtoint ptr %spi12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spi12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load15 = load i8, ptr %1, align 4
  %bf.clear16 = shl i8 %bf.load15, 2
  %19 = and i8 %bf.clear16, 60
  %shl18 = zext i8 %19 to i32
  %add.ptr19 = getelementptr i8, ptr %1, i32 %shl18
  %cpi = getelementptr inbounds %struct.ip_comp_hdr, ptr %add.ptr19, i32 0, i32 2
  %20 = ptrtoint ptr %cpi to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cpi, align 2
  %conv20 = zext i16 %21 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb5, %sw.bb
  %spi.0 = phi i32 [ %conv20, %sw.bb13 ], [ %17, %sw.bb5 ], [ %13, %sw.bb ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %24 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %27, label %sw.epilog.cleanup_crit_edge [
    i8 3, label %sw.bb23
    i8 5, label %sw.epilog.sw.epilog28_crit_edge
  ]

sw.epilog.sw.epilog28_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb23:                                          ; preds = %sw.epilog
  %code = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp.not = icmp eq i8 %30, 4
  br i1 %cmp.not, label %sw.bb23.sw.epilog28_crit_edge, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb23.sw.epilog28_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb23.sw.epilog28_crit_edge, %sw.epilog.sw.epilog28_crit_edge
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 9
  %call30 = tail call ptr @xfrm_state_lookup(ptr noundef %6, i32 noundef %33, ptr noundef %daddr, i32 noundef %spi.0, i8 noundef zeroext %8, i16 noundef zeroext 2) #15
  %tobool.not = icmp eq ptr %call30, null
  br i1 %tobool.not, label %sw.epilog28.cleanup_crit_edge, label %if.end32

sw.epilog28.cleanup_crit_edge:                    ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog28
  %call33 = tail call fastcc ptr @xfrmi_lookup(ptr noundef %6, ptr noundef nonnull %call30)
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call30, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call30, i1 noundef zeroext false) #15
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %37 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i83 = zext i16 %38 to i32
  %add.ptr.i.i84 = getelementptr i8, ptr %36, i32 %conv.i.i83
  %39 = ptrtoint ptr %add.ptr.i.i84 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp40 = icmp eq i8 %40, 3
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %6, i32 noundef %info, i32 noundef 0, i8 noundef zeroext %8) #15
  br label %if.end45

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %6, i32 noundef 0, i8 noundef zeroext %8) #15
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  %refcnt.i85 = getelementptr inbounds %struct.xfrm_state, ptr %call30, i32 0, i32 5
  %call.i.i.i.i.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i85, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %refcnt.i85, i32 1, i32 3, i32 1) #15
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i85, ptr %refcnt.i85, i32 1, ptr elementtype(i32) %refcnt.i85) #15, !srcloc !130
  %asmresult.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i87)
  %cmp.i.i.i.i88 = icmp eq i32 %asmresult.i.i.i.i.i.i.i87, 1
  br i1 %cmp.i.i.i.i88, label %if.then.i92, label %if.end5.i.i.i.i90

if.end5.i.i.i.i90:                                ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i87)
  %.not.i.i.i.i89 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i89, label %if.end5.i.i.i.i90.cleanup_crit_edge, label %if.then10.i.i.i.i91, !prof !131

if.end5.i.i.i.i90.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i91:                              ; preds = %if.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i85, i32 noundef 3) #15
  br label %cleanup

if.then.i92:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call30, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i92, %if.then10.i.i.i.i91, %if.end5.i.i.i.i90.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog28.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb23.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog28.cleanup_crit_edge ], [ -1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -1, %if.then10.i.i.i.i ], [ -1, %if.then.i ], [ 0, %if.end5.i.i.i.i90.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i91 ], [ 0, %if.then.i92 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfrmi_lookup(ptr noundef %net, ptr nocapture noundef readonly %x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xfrmi_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %if_id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 10
  %1 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %if_id, align 4
  %mul.i.i.i = mul i32 %2, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx = getelementptr [256 x ptr], ptr %call, i32 0, i32 %shr.i.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @xfrmi_lookup.__warned, align 1
  br i1 %.b43, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 74, ptr noundef nonnull @.str.3) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not44 = icmp eq ptr %4, null
  br i1 %tobool11.not44, label %do.end9.cleanup_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %do.end33.for.body_crit_edge, %do.end9.for.body_crit_edge
  %xi.045 = phi ptr [ %14, %do.end33.for.body_crit_edge ], [ %4, %do.end9.for.body_crit_edge ]
  %5 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %if_id, align 4
  %if_id13 = getelementptr inbounds %struct.xfrm_if, ptr %xi.045, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %if_id13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_id13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %dev = getelementptr inbounds %struct.xfrm_if, ptr %xi.045, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true14.for.inc_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %xi.045 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %xi.045, align 4
  %call23 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %for.inc.do.end33_crit_edge

for.inc.do.end33_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

land.lhs.true25:                                  ; preds = %for.inc
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b4142 = load i1, ptr @xfrmi_lookup.__warned.14, align 1
  br i1 %.b4142, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_lookup.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 74, ptr noundef nonnull @.str.3) #15
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %for.inc.do.end33_crit_edge
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %do.end33.cleanup_crit_edge, label %do.end33.for.body_crit_edge

do.end33.for.body_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %do.end33.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %xi.0.lcssa = phi ptr [ null, %do.end9.cleanup_crit_edge ], [ null, %do.end33.cleanup_crit_edge ], [ %xi.045, %land.lhs.true14.cleanup_crit_edge ]
  ret ptr %xi.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_rcv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi6_rcv_tunnel(ptr noundef %skb) #2 align 64 {
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
  %saddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %4 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %call3 = tail call i32 @xfrm6_tunnel_spi_lookup(ptr noundef %8, ptr noundef %saddr1) #15
  %call4 = tail call i32 @xfrm6_rcv_spi(ptr noundef %skb, i32 noundef 41, i32 noundef %call3, ptr noundef null) #15
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrmi6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %8, label %entry.cleanup_crit_edge [
    i8 50, label %sw.bb
    i8 51, label %sw.bb3
    i8 108, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr5 = getelementptr i8, ptr %1, i32 %offset
  %spi6 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr5, i32 0, i32 3
  %12 = ptrtoint ptr %spi6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spi6, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr9 = getelementptr i8, ptr %1, i32 %offset
  %cpi = getelementptr inbounds %struct.ip_comp_hdr, ptr %add.ptr9, i32 0, i32 2
  %14 = ptrtoint ptr %cpi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cpi, align 2
  %conv10 = zext i16 %15 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3, %sw.bb
  %spi.0 = phi i32 [ %conv10, %sw.bb7 ], [ %13, %sw.bb3 ], [ %11, %sw.bb ]
  %16 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %type, label %sw.epilog.cleanup_crit_edge [
    i8 2, label %sw.epilog.if.end_crit_edge
    i8 -119, label %sw.epilog.if.end_crit_edge77
  ]

sw.epilog.if.end_crit_edge77:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %sw.epilog.if.end_crit_edge77
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 6
  %call17 = tail call ptr @xfrm_state_lookup(ptr noundef %6, i32 noundef %19, ptr noundef %daddr, i32 noundef %spi.0, i8 noundef zeroext %8, i16 noundef zeroext 10) #15
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = tail call fastcc ptr @xfrmi_lookup(ptr noundef %6, ptr noundef nonnull %call17)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call17, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call17, i1 noundef zeroext false) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %type)
  %cmp25 = icmp eq i8 %type, -119
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %25 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %26, i32 noundef 0) #15
  %.fca.0.insert43 = insertvalue [1 x i32] poison, i32 %call.i, 0
  tail call void @ip6_redirect(ptr noundef %skb, ptr noundef %6, i32 noundef %24, i32 noundef 0, [1 x i32] %.fca.0.insert43) #15
  br label %if.end34

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %user_ns.i66 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %27 = ptrtoint ptr %user_ns.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_ns.i66, align 4
  %call.i67 = tail call i32 @make_kuid(ptr noundef %28, i32 noundef 0) #15
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call.i67, 0
  tail call void @ip6_update_pmtu(ptr noundef %skb, ptr noundef %6, i32 noundef %info, i32 noundef 0, i32 noundef 0, [1 x i32] %.fca.0.insert) #15
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %refcnt.i68 = getelementptr inbounds %struct.xfrm_state, ptr %call17, i32 0, i32 5
  %call.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i68, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %refcnt.i68, i32 1, i32 3, i32 1) #15
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i68, ptr %refcnt.i68, i32 1, ptr elementtype(i32) %refcnt.i68) #15, !srcloc !130
  %asmresult.i.i.i.i.i.i.i70 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i70, 1
  br i1 %cmp.i.i.i.i71, label %if.then.i75, label %if.end5.i.i.i.i73

if.end5.i.i.i.i73:                                ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i70)
  %.not.i.i.i.i72 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i72, label %if.end5.i.i.i.i73.cleanup_crit_edge, label %if.then10.i.i.i.i74, !prof !131

if.end5.i.i.i.i73.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i74:                              ; preds = %if.end5.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i68, i32 noundef 3) #15
  br label %cleanup

if.then.i75:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !132
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call17, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i75, %if.then10.i.i.i.i74, %if.end5.i.i.i.i73.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -1, %if.then10.i.i.i.i ], [ -1, %if.then.i ], [ 0, %if.end5.i.i.i.i73.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i74 ], [ 0, %if.then.i75 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_spi_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv_spi(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrmi_exit_batch_net(ptr noundef readonly %net_exit_list) #2 align 64 {
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
  %3 = ptrtoint ptr %net_exit_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn31 = load ptr, ptr %net_exit_list, align 4
  %cmp.not32 = icmp eq ptr %.pn31, %net_exit_list
  br i1 %cmp.not32, label %entry.for.end22_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end22

for.cond.loopexit:                                ; preds = %for.inc14
  %4 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %net_exit_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end22_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.loopexit.for.end22_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end22

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn31, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn33, i32 -116
  %5 = load i32, ptr @xfrmi_net_id, align 4
  %call = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %5)
  br label %for.body4

for.body4:                                        ; preds = %for.inc14.for.body4_crit_edge, %for.body
  %i.030 = phi i32 [ 0, %for.body ], [ %inc, %for.inc14.for.body4_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr %call, i32 0, i32 %i.030
  br label %for.cond5

for.cond5:                                        ; preds = %for.body12, %for.body4
  %xip.0 = phi ptr [ %arrayidx, %for.body4 ], [ %7, %for.body12 ]
  %call6 = call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call6, label %for.cond5.do.end_crit_edge, label %land.lhs.true

for.cond5.do.end_crit_edge:                       ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond5
  %call7 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @xfrmi_exit_batch_net.__warned, align 1
  br i1 %.b29, label %land.lhs.true8.do.end_crit_edge, label %if.then

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xfrmi_exit_batch_net.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 761, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond5.do.end_crit_edge
  %6 = ptrtoint ptr %xip.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xip.0, align 4
  %cmp11.not = icmp eq ptr %7, null
  br i1 %cmp11.not, label %for.inc14, label %for.body12

for.body12:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.xfrm_if, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void @unregister_netdevice_queue(ptr noundef %9, ptr noundef nonnull %list) #15
  br label %for.cond5

for.inc14:                                        ; preds = %do.end
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.inc14.for.body4_crit_edge

for.inc14.for.body4_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4

for.end22:                                        ; preds = %for.cond.loopexit.for.end22_crit_edge, %entry.for.end22_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #15
  call void @rtnl_unlock() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrmi4_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @xfrmi_esp4_protocol, i8 noundef zeroext 50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @xfrmi_ah4_protocol, i8 noundef zeroext 51) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.xfrm_proto_ah_failed_crit_edge, label %if.end4

if.end.xfrm_proto_ah_failed_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_proto_ah_failed

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @xfrmi_ipcomp4_protocol, i8 noundef zeroext 108) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.xfrm_proto_comp_failed_crit_edge, label %if.end8

if.end4.xfrm_proto_comp_failed_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_proto_comp_failed

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @xfrmi_ipip_handler, i16 noundef zeroext 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.xfrm_tunnel_ipip_failed_crit_edge, label %if.end12

if.end8.xfrm_tunnel_ipip_failed_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_tunnel_ipip_failed

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @xfrmi_ipip6_handler, i16 noundef zeroext 10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %xfrm_tunnel_ipip6_failed, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

xfrm_tunnel_ipip6_failed:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @xfrmi_ipip_handler, i16 noundef zeroext 2) #15
  br label %xfrm_tunnel_ipip_failed

xfrm_tunnel_ipip_failed:                          ; preds = %xfrm_tunnel_ipip6_failed, %if.end8.xfrm_tunnel_ipip_failed_crit_edge
  %err.0 = phi i32 [ %call9, %if.end8.xfrm_tunnel_ipip_failed_crit_edge ], [ %call13, %xfrm_tunnel_ipip6_failed ]
  %call18 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @xfrmi_ipcomp4_protocol, i8 noundef zeroext 108) #15
  br label %xfrm_proto_comp_failed

xfrm_proto_comp_failed:                           ; preds = %xfrm_tunnel_ipip_failed, %if.end4.xfrm_proto_comp_failed_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.xfrm_proto_comp_failed_crit_edge ], [ %err.0, %xfrm_tunnel_ipip_failed ]
  %call19 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @xfrmi_ah4_protocol, i8 noundef zeroext 51) #15
  br label %xfrm_proto_ah_failed

xfrm_proto_ah_failed:                             ; preds = %xfrm_proto_comp_failed, %if.end.xfrm_proto_ah_failed_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.xfrm_proto_ah_failed_crit_edge ], [ %err.1, %xfrm_proto_comp_failed ]
  %call20 = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @xfrmi_esp4_protocol, i8 noundef zeroext 50) #15
  br label %cleanup

cleanup:                                          ; preds = %xfrm_proto_ah_failed, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.2, %xfrm_proto_ah_failed ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrmi6_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @xfrmi_esp6_protocol, i8 noundef zeroext 50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @xfrmi_ah6_protocol, i8 noundef zeroext 51) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.xfrm_proto_ah_failed_crit_edge, label %if.end4

if.end.xfrm_proto_ah_failed_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_proto_ah_failed

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @xfrmi_ipcomp6_protocol, i8 noundef zeroext 108) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.xfrm_proto_comp_failed_crit_edge, label %if.end8

if.end4.xfrm_proto_comp_failed_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_proto_comp_failed

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @xfrmi_ipv6_handler, i16 noundef zeroext 10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.xfrm_tunnel_ipv6_failed_crit_edge, label %if.end12

if.end8.xfrm_tunnel_ipv6_failed_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_tunnel_ipv6_failed

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @xfrmi_ip6ip_handler, i16 noundef zeroext 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %xfrm_tunnel_ip6ip_failed, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

xfrm_tunnel_ip6ip_failed:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrmi_ipv6_handler, i16 noundef zeroext 10) #15
  br label %xfrm_tunnel_ipv6_failed

xfrm_tunnel_ipv6_failed:                          ; preds = %xfrm_tunnel_ip6ip_failed, %if.end8.xfrm_tunnel_ipv6_failed_crit_edge
  %err.0 = phi i32 [ %call9, %if.end8.xfrm_tunnel_ipv6_failed_crit_edge ], [ %call13, %xfrm_tunnel_ip6ip_failed ]
  %call18 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @xfrmi_ipcomp6_protocol, i8 noundef zeroext 108) #15
  br label %xfrm_proto_comp_failed

xfrm_proto_comp_failed:                           ; preds = %xfrm_tunnel_ipv6_failed, %if.end4.xfrm_proto_comp_failed_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.xfrm_proto_comp_failed_crit_edge ], [ %err.0, %xfrm_tunnel_ipv6_failed ]
  %call19 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @xfrmi_ah6_protocol, i8 noundef zeroext 51) #15
  br label %xfrm_proto_ah_failed

xfrm_proto_ah_failed:                             ; preds = %xfrm_proto_comp_failed, %if.end.xfrm_proto_ah_failed_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.xfrm_proto_ah_failed_crit_edge ], [ %err.1, %xfrm_proto_comp_failed ]
  %call20 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @xfrmi_esp6_protocol, i8 noundef zeroext 50) #15
  br label %cleanup

cleanup:                                          ; preds = %xfrm_proto_ah_failed, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.2, %xfrm_proto_ah_failed ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_if_register_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfrmi_decode_session(ptr noundef readonly %skb, i16 noundef zeroext %family) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %family, label %if.end.lor.lhs.false12_crit_edge [
    i16 10, label %sw.bb
    i16 2, label %sw.bb3
  ]

if.end.lor.lhs.false12_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

sw.bb:                                            ; preds = %if.end
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %sw.bb.lor.lhs.false12_crit_edge, label %land.lhs.true.i

sw.bb.lor.lhs.false12_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

land.lhs.true.i:                                  ; preds = %sw.bb
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 8
  %9 = and i16 %8, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i = icmp eq i16 %9, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.lor.lhs.false12_crit_edge, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

land.lhs.true.i.lor.lhs.false12_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

sw.bb3:                                           ; preds = %if.end
  %tobool.not.i30 = icmp eq ptr %skb, null
  br i1 %tobool.not.i30, label %sw.bb3.lor.lhs.false12_crit_edge, label %land.lhs.true.i33

sw.bb3.lor.lhs.false12_crit_edge:                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

land.lhs.true.i33:                                ; preds = %sw.bb3
  %flags.i31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %10 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i31, align 4
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i32 = icmp eq i16 %12, 0
  br i1 %tobool.i.not.i32, label %land.lhs.true.i33.lor.lhs.false12_crit_edge, label %land.lhs.true.i33.sw.epilog_crit_edge

land.lhs.true.i33.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

land.lhs.true.i33.lor.lhs.false12_crit_edge:      ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

sw.epilog:                                        ; preds = %land.lhs.true.i33.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge
  %ifindex.0.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %13 = ptrtoint ptr %ifindex.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %ifindex.0 = load i32, ptr %ifindex.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex.0)
  %tobool5.not = icmp eq i32 %ifindex.0, 0
  br i1 %tobool5.not, label %sw.epilog.lor.lhs.false12_crit_edge, label %if.end10

sw.epilog.lor.lhs.false12_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

if.end10:                                         ; preds = %sw.epilog
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
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub.i = add i32 %19, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call9 = tail call ptr @dev_get_by_index_rcu(ptr noundef %23, i32 noundef %ifindex.0) #15
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end10.lor.lhs.false12_crit_edge

if.end10.lor.lhs.false12_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end10.lor.lhs.false12_crit_edge, %sw.epilog.lor.lhs.false12_crit_edge, %land.lhs.true.i33.lor.lhs.false12_crit_edge, %sw.bb3.lor.lhs.false12_crit_edge, %land.lhs.true.i.lor.lhs.false12_crit_edge, %sw.bb.lor.lhs.false12_crit_edge, %if.end.lor.lhs.false12_crit_edge
  %dev.041 = phi ptr [ %call9, %if.end10.lor.lhs.false12_crit_edge ], [ %5, %sw.epilog.lor.lhs.false12_crit_edge ], [ %5, %if.end.lor.lhs.false12_crit_edge ], [ %5, %land.lhs.true.i.lor.lhs.false12_crit_edge ], [ %5, %sw.bb.lor.lhs.false12_crit_edge ], [ %5, %land.lhs.true.i33.lor.lhs.false12_crit_edge ], [ %5, %sw.bb3.lor.lhs.false12_crit_edge ]
  %flags = getelementptr inbounds %struct.net_device, ptr %dev.041, i32 0, i32 14
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false12.cleanup_crit_edge, label %if.end15

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #17
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev.041, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev_ops, align 8
  %cmp.not = icmp eq ptr %27, @xfrmi_netdev_ops
  %add.ptr.i = getelementptr i8, ptr %dev.041, i32 2304
  %spec.select = select i1 %cmp.not, ptr %add.ptr.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false12.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ %spec.select, %if.end15 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !106, !107}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_xfrm_interface__705_1026_xfrmi_init6, !1, !"__initcall__kmod_xfrm_interface__705_1026_xfrmi_init6", i1 false, i1 false}
!1 = !{!"../net/xfrm/xfrm_interface.c", i32 1026, i32 1}
!2 = !{ptr @__exitcall_xfrmi_fini, !3, !"__exitcall_xfrmi_fini", i1 false, i1 false}
!3 = !{!"../net/xfrm/xfrm_interface.c", i32 1027, i32 1}
!4 = !{ptr @__UNIQUE_ID_file706, !5, !"__UNIQUE_ID_file706", i1 false, i1 false}
!5 = !{!"../net/xfrm/xfrm_interface.c", i32 1028, i32 1}
!6 = !{ptr @__UNIQUE_ID_license707, !5, !"__UNIQUE_ID_license707", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias708, !8, !"__UNIQUE_ID_alias708", i1 false, i1 false}
!8 = !{!"../net/xfrm/xfrm_interface.c", i32 1029, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias709, !10, !"__UNIQUE_ID_alias709", i1 false, i1 false}
!10 = !{!"../net/xfrm/xfrm_interface.c", i32 1030, i32 1}
!11 = !{ptr @__UNIQUE_ID_author710, !12, !"__UNIQUE_ID_author710", i1 false, i1 false}
!12 = !{!"../net/xfrm/xfrm_interface.c", i32 1031, i32 1}
!13 = !{ptr @__UNIQUE_ID_description711, !14, !"__UNIQUE_ID_description711", i1 false, i1 false}
!14 = !{!"../net/xfrm/xfrm_interface.c", i32 1032, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/xfrm/xfrm_interface.c", i32 733, i32 11}
!17 = !{ptr @xfrmi_link_ops, !18, !"xfrmi_link_ops", i1 false, i1 false}
!18 = !{!"../net/xfrm/xfrm_interface.c", i32 732, i32 29}
!19 = !{ptr @xfrmi_netdev_ops, !20, !"xfrmi_netdev_ops", i1 false, i1 false}
!20 = !{!"../net/xfrm/xfrm_interface.c", i32 551, i32 36}
!21 = !{ptr @xfrmi_dev_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/xfrm/xfrm_interface.c", i32 586, i32 16}
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
!35 = !{ptr @xfrmi_net_id, !36, !"xfrmi_net_id", i1 false, i1 false}
!36 = !{!"../net/xfrm/xfrm_interface.c", i32 50, i32 21}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/xfrm/xfrm_interface.c", i32 131, i32 15}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/xfrm/xfrm_interface.c", i32 293, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xfrmi_xmit2._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @xfrmi_xmit2._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/dst.h", i32 231, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xfrmi_policy, !54, !"xfrmi_policy", i1 false, i1 false}
!54 = !{!"../net/xfrm/xfrm_interface.c", i32 727, i32 32}
!55 = !{ptr @xfrmi_newlink.__msg, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../net/xfrm/xfrm_interface.c", i32 649, i32 3}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/xfrm/xfrm_interface.c", i32 175, i32 13}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/xfrm/xfrm_interface.c", i32 121, i32 2}
!61 = !{ptr @xfrmi_changelink.__msg, !62, !"__msg", i1 false, i1 false}
!62 = !{!"../net/xfrm/xfrm_interface.c", i32 681, i32 3}
!63 = !{ptr @xfrmi_ipip6_handler, !64, !"xfrmi_ipip6_handler", i1 false, i1 false}
!64 = !{!"../net/xfrm/xfrm_interface.c", i32 864, i32 27}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/xfrm/xfrm_interface.c", i32 74, i32 2}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @xfrmi_ipip_handler, !69, !"xfrmi_ipip_handler", i1 false, i1 false}
!69 = !{!"../net/xfrm/xfrm_interface.c", i32 857, i32 27}
!70 = !{ptr @xfrmi_ipcomp4_protocol, !71, !"xfrmi_ipcomp4_protocol", i1 false, i1 false}
!71 = !{!"../net/xfrm/xfrm_interface.c", i32 843, i32 30}
!72 = !{ptr @xfrmi_ah4_protocol, !73, !"xfrmi_ah4_protocol", i1 false, i1 false}
!73 = !{!"../net/xfrm/xfrm_interface.c", i32 835, i32 30}
!74 = !{ptr @xfrmi_esp4_protocol, !75, !"xfrmi_esp4_protocol", i1 false, i1 false}
!75 = !{!"../net/xfrm/xfrm_interface.c", i32 827, i32 30}
!76 = !{ptr @xfrmi_ip6ip_handler, !77, !"xfrmi_ip6ip_handler", i1 false, i1 false}
!77 = !{!"../net/xfrm/xfrm_interface.c", i32 819, i32 28}
!78 = !{ptr @xfrmi_ipv6_handler, !79, !"xfrmi_ipv6_handler", i1 false, i1 false}
!79 = !{!"../net/xfrm/xfrm_interface.c", i32 812, i32 28}
!80 = !{ptr @xfrmi_ipcomp6_protocol, !81, !"xfrmi_ipcomp6_protocol", i1 false, i1 false}
!81 = !{!"../net/xfrm/xfrm_interface.c", i32 792, i32 30}
!82 = !{ptr @xfrmi_ah6_protocol, !83, !"xfrmi_ah6_protocol", i1 false, i1 false}
!83 = !{!"../net/xfrm/xfrm_interface.c", i32 784, i32 30}
!84 = !{ptr @xfrmi_esp6_protocol, !85, !"xfrmi_esp6_protocol", i1 false, i1 false}
!85 = !{!"../net/xfrm/xfrm_interface.c", i32 776, i32 30}
!86 = !{ptr @xfrmi_net_ops, !87, !"xfrmi_net_ops", i1 false, i1 false}
!87 = !{!"../net/xfrm/xfrm_interface.c", i32 770, i32 33}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/xfrm/xfrm_interface.c", i32 761, i32 15}
!90 = !{ptr @.str.15, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/xfrm/xfrm_interface.c", i32 979, i32 2}
!92 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @xfrmi_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @xfrmi_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/xfrm/xfrm_interface.c", i32 981, i32 8}
!97 = !{ptr @.str.18, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/xfrm/xfrm_interface.c", i32 986, i32 8}
!99 = !{ptr @.str.19, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/xfrm/xfrm_interface.c", i32 991, i32 8}
!101 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/xfrm/xfrm_interface.c", i32 997, i32 8}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/xfrm/xfrm_interface.c", i32 1013, i32 2}
!105 = !{ptr @xfrmi_init._entry.21, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @xfrmi_init._entry_ptr.23, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @xfrm_if_cb, !108, !"xfrm_if_cb", i1 false, i1 false}
!108 = !{!"../net/xfrm/xfrm_interface.c", i32 970, i32 32}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2159215131}
!120 = !{i64 2159222027}
!121 = !{i64 2159229586}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2148361048}
!124 = !{i64 846668, i64 846693, i64 846715, i64 846731, i64 846743, i64 846763, i64 846787, i64 846803, i64 846815}
!125 = !{i64 2148361236}
!126 = !{i64 2149994105}
!127 = !{i64 2149377788}
!128 = !{i64 2149378054}
!129 = !{i64 2148451184}
!130 = !{i64 2148365624, i64 2148365656, i64 2148365685, i64 2148365719, i64 2148365750, i64 2148365773}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2149327298}
!133 = !{i64 2154606175, i64 2154606663, i64 2154606212, i64 2154606268, i64 2154606302, i64 2154606326, i64 2154606367, i64 2154606388, i64 2154606416, i64 2154606450}
!134 = !{i64 2149885787}
!135 = !{i64 2149890719}
!136 = !{i64 2149912431}
!137 = !{i64 2149917323}
!138 = !{i64 2149993780}
!139 = !{i64 765329, i64 765390}
!140 = !{i64 768061}
!141 = !{i64 768346}
