; ModuleID = '/llk/IR_all_yes/net/ipv6/xfrm6_output.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.202, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.202 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.49 }
%struct.llist_node = type { ptr }
%union.anon.49 = type { i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
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
%struct.sock_common = type { %union.anon.145, %union.anon.147, %union.anon.148, i16, i8, i8, i32, %union.anon.150, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.153, [0 x i32], %union.anon.154, i16, i16, %union.anon.155, %struct.refcount_struct, [0 x i32], %union.anon.156 }
%union.anon.145 = type { i64 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.150 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { %struct.hlist_node }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.171, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.172, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.171 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.172 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.157, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.158, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.159, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.157 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.158 = type { ptr }
%union.anon.159 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.199, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.177 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 255]
@___asan_gen_ = private constant [27 x i8] c"../net/ipv6/xfrm6_output.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 229, i32 15 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1011, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm6_local_rxpmtu(ptr nocapture noundef readonly %skb, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #5
  %0 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skc_bound_dev_if, align 4
  %6 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fl6, align 8
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %daddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %daddr, ptr %daddr1, i32 16)
  call void @ipv6_local_rxpmtu(ptr noundef %3, ptr noundef nonnull %fl6, i32 noundef %mtu) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_rxpmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm6_local_error(ptr nocapture noundef readonly %skb, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #5
  %0 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %encapsulation, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %head.i.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i9, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %network_header.i.i.sink = select i1 %tobool.not, ptr %network_header.i.i, ptr %inner_network_header.i.i
  %8 = ptrtoint ptr %network_header.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i.sink, align 4
  %conv.i.i10 = zext i16 %9 to i32
  %add.ptr.i.i11 = getelementptr i8, ptr %7, i32 %conv.i.i10
  %10 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %13 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %uli, align 4
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %daddr4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i11, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %daddr, ptr %daddr4, i32 16)
  call void @ipv6_local_error(ptr noundef %3, i32 noundef 90, ptr noundef nonnull %fl6, i32 noundef %mtu) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !38

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 8
  %8 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.i, label %skb_dst.exit.if.then.i_crit_edge

skb_dst.exit.if.then.i_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %skb_dst.exit
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 8
  %and25.i = and i32 %10, -2
  %11 = inttoptr i32 %and25.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i5 = tail call fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %2, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i5)
  %cmp.i = icmp eq i32 %call.i5, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge

lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %NF_HOOK_COND.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %skb_dst.exit.if.then.i_crit_edge
  %call1.i = tail call i32 @__xfrm6_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5
  br label %NF_HOOK_COND.exit

NF_HOOK_COND.exit:                                ; preds = %if.then.i, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i5, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__xfrm6_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %fl6.i = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !38

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfrm, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %skb_dst.exit
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 8
  %10 = or i16 %9, 4
  store i16 %10, ptr %flags, align 8
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_output.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !38

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.then.dst_output.exit_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %12, -2
  %13 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %15(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %7, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.not = icmp eq i8 %17, 1
  br i1 %cmp.not, label %if.end6, label %if.end.skip_frag_crit_edge

if.end.skip_frag_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip_frag

if.end6:                                          ; preds = %if.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %19)
  %cmp8 = icmp eq i16 %19, -31011
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i85 = icmp eq ptr %22, null
  br i1 %tobool.not.i85, label %if.then10.cond.end.i_crit_edge, label %land.lhs.true.i87

if.then10.cond.end.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

land.lhs.true.i87:                                ; preds = %if.then10
  %23 = tail call i32 @llvm.read_register.i32(metadata !28) #5
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !39
  %27 = tail call i32 @llvm.read_register.i32(metadata !28) #5
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %32, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11) to i32)
  %33 = inttoptr i32 %add.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load volatile i16, ptr %33, align 2
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  %36 = tail call i32 @llvm.read_register.i32(metadata !28) #5
  %and.i.i.i19.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i19.i.i to ptr
  %preempt_count.i.i20.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i20.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool1.not.i86 = icmp eq i16 %35, 0
  br i1 %tobool1.not.i86, label %cond.true.i, label %land.lhs.true.i87.cond.end.i_crit_edge

land.lhs.true.i87.cond.end.i_crit_edge:           ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %land.lhs.true.i87
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %20, align 4
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %43 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i17.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.i.not.i.i, label %cond.true.i.cond.end.i_crit_edge, label %cond.true.i.i

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pinet6.i.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i.i, %cond.true.i.cond.end.i_crit_edge, %land.lhs.true.i87.cond.end.i_crit_edge, %if.then10.cond.end.i_crit_edge
  %cond.i = phi ptr [ null, %land.lhs.true.i87.cond.end.i_crit_edge ], [ null, %if.then10.cond.end.i_crit_edge ], [ %45, %cond.true.i.i ], [ null, %cond.true.i.cond.end.i_crit_edge ]
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %0, align 8
  %and.i.i88 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88)
  %tobool.not.i.i89 = icmp eq i32 %and.i.i88, 0
  br i1 %tobool.not.i.i89, label %cond.end.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i92

cond.end.i.skb_dst.exit.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.lhs.true.i.i92:                              ; preds = %cond.end.i
  %call.i.i90 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %tobool1.not.i.i91 = icmp eq i32 %call.i.i90, 0
  br i1 %tobool1.not.i.i91, label %land.rhs.i.i95, label %land.lhs.true.i.i92.skb_dst.exit.i_crit_edge

land.lhs.true.i.i92.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.rhs.i.i95:                                   ; preds = %land.lhs.true.i.i92
  %call2.i.i93 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i93)
  %tobool3.not.i.i94 = icmp eq i32 %call2.i.i93, 0
  br i1 %tobool3.not.i.i94, label %do.end.i.i96, label %land.rhs.i.i95.skb_dst.exit.i_crit_edge, !prof !38

land.rhs.i.i95.skb_dst.exit.i_crit_edge:          ; preds = %land.rhs.i.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

do.end.i.i96:                                     ; preds = %land.rhs.i.i95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i96, %land.rhs.i.i95.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i92.skb_dst.exit.i_crit_edge, %cond.end.i.skb_dst.exit.i_crit_edge
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %0, align 8
  %and25.i.i97 = and i32 %49, -2
  %50 = inttoptr i32 %and25.i.i97 to ptr
  %tobool4.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool4.not.i, label %skb_dst.exit.i.if.else.i_crit_edge, label %land.lhs.true5.i

skb_dst.exit.i.if.else.i_crit_edge:               ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %skb_dst.exit.i
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %51 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i = load i16, ptr %pmtudisc.i, align 2
  %52 = and i16 %bf.load.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %52)
  %cmp.i = icmp ugt i16 %52, 2048
  br i1 %cmp.i, label %do.end.i98, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

do.end.i98:                                       ; preds = %land.lhs.true5.i
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %mtu7.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %mtu7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %mtu7.i, align 4
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %50, i32 0, i32 13
  %57 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lwtstate.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %do.end.i98.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end.i98.if.end.i.i_crit_edge:                  ; preds = %do.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end.i98
  %flags.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags.i.i.i, align 2
  %61 = and i16 %60, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %land.lhs.true.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i19.i

land.lhs.true.i.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i19.i:                              ; preds = %land.lhs.true.i.i.i
  %headroom.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %58, i32 0, i32 2
  %63 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %headroom.i.i, align 4
  %conv.i18.i = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv.i18.i)
  %cmp.i.i = icmp ugt i32 %56, %conv.i18.i
  br i1 %cmp.i.i, label %land.lhs.true.i19.i.lwtunnel_headroom.exit.i_crit_edge, label %land.lhs.true.i19.i.if.end.i.i_crit_edge

land.lhs.true.i19.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i19.i.lwtunnel_headroom.exit.i_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lwtunnel_headroom.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i19.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i_crit_edge, %do.end.i98.if.end.i.i_crit_edge
  br label %lwtunnel_headroom.exit.i

lwtunnel_headroom.exit.i:                         ; preds = %if.end.i.i, %land.lhs.true.i19.i.lwtunnel_headroom.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %conv.i18.i, %land.lhs.true.i19.i.lwtunnel_headroom.exit.i_crit_edge ]
  %sub.i = sub i32 %56, %retval.0.i.i
  br label %if.end14

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %skb_dst.exit.i.if.else.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %50, i32 0, i32 1
  %65 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mtu.i.i, align 4
  %call.i20.i = tail call i32 %68(ptr noundef %50) #5
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %and.i99 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %if.else.skb_dst.exit109_crit_edge, label %land.lhs.true.i103

if.else.skb_dst.exit109_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit109

land.lhs.true.i103:                               ; preds = %if.else
  %call.i101 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool1.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool1.not.i102, label %land.rhs.i106, label %land.lhs.true.i103.skb_dst.exit109_crit_edge

land.lhs.true.i103.skb_dst.exit109_crit_edge:     ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit109

land.rhs.i106:                                    ; preds = %land.lhs.true.i103
  %call2.i104 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i104)
  %tobool3.not.i105 = icmp eq i32 %call2.i104, 0
  br i1 %tobool3.not.i105, label %do.end.i107, label %land.rhs.i106.skb_dst.exit109_crit_edge, !prof !38

land.rhs.i106.skb_dst.exit109_crit_edge:          ; preds = %land.rhs.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit109

do.end.i107:                                      ; preds = %land.rhs.i106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit109

skb_dst.exit109:                                  ; preds = %do.end.i107, %land.rhs.i106.skb_dst.exit109_crit_edge, %land.lhs.true.i103.skb_dst.exit109_crit_edge, %if.else.skb_dst.exit109_crit_edge
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %0, align 8
  %and25.i108 = and i32 %70, -2
  %71 = inttoptr i32 %and25.i108 to ptr
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mtu.i, align 4
  %call.i110 = tail call i32 %75(ptr noundef %71) #5
  br label %if.end14

if.end14:                                         ; preds = %skb_dst.exit109, %if.else.i, %lwtunnel_headroom.exit.i
  %mtu.0 = phi i32 [ %call.i110, %skb_dst.exit109 ], [ %sub.i, %lwtunnel_headroom.exit.i ], [ %call.i20.i, %if.else.i ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %mtu.0)
  %cmp15 = icmp ugt i32 %77, %mtu.0
  br i1 %cmp15, label %land.end, label %if.end14.lor.lhs.false_crit_edge

if.end14.lor.lhs.false_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.end:                                         ; preds = %if.end14
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.i.not = icmp eq i16 %81, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %land.end.lor.lhs.false_crit_edge

land.end.lor.lhs.false_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %land.end
  %82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %tobool.not.i111 = icmp eq ptr %84, null
  br i1 %tobool.not.i111, label %land.lhs.true.land.lhs.true26.critedge_crit_edge, label %lor.lhs.false.i

land.lhs.true.land.lhs.true26.critedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.critedge

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %86)
  %cmp.not.i = icmp eq i16 %86, 10
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.land.lhs.true26.critedge_crit_edge

lor.lhs.false.i.land.lhs.true26.critedge_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.critedge

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %84, i32 0, i32 46
  %87 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sk_protocol.i, align 4
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i16 %88, label %if.end.i.land.lhs.true26.critedge_crit_edge [
    i16 17, label %if.end.i.if.then8.i_crit_edge
    i16 255, label %if.end.i.if.then8.i_crit_edge147
  ]

if.end.i.if.then8.i_crit_edge147:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.end.i.land.lhs.true26.critedge_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.critedge

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge147
  %skc_state.i.i.i112 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 4
  %90 = ptrtoint ptr %skc_state.i.i.i112 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load volatile i8, ptr %skc_state.i.i.i112, align 2
  %conv.i.i.i113 = zext i8 %91 to i32
  %shl.i.i.i114 = shl nuw i32 1, %conv.i.i.i113
  %and.i.i.i115 = and i32 %shl.i.i.i114, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i115)
  %tobool.i.not.i.i116 = icmp eq i32 %and.i.i.i115, 0
  br i1 %tobool.i.not.i.i116, label %if.then8.i.xfrm6_local_dontfrag.exit_crit_edge, label %cond.true.i.i118

if.then8.i.xfrm6_local_dontfrag.exit_crit_edge:   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfrm6_local_dontfrag.exit

cond.true.i.i118:                                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i.i117 = getelementptr inbounds %struct.inet_sock, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %pinet6.i.i117 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pinet6.i.i117, align 8
  br label %xfrm6_local_dontfrag.exit

xfrm6_local_dontfrag.exit:                        ; preds = %cond.true.i.i118, %if.then8.i.xfrm6_local_dontfrag.exit_crit_edge
  %cond.i.i = phi ptr [ %93, %cond.true.i.i118 ], [ null, %if.then8.i.xfrm6_local_dontfrag.exit_crit_edge ]
  %dontfrag.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %94 = ptrtoint ptr %dontfrag.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i119 = load i16, ptr %dontfrag.i, align 2
  %95 = and i16 %bf.load.i119, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool9.i.not = icmp eq i16 %95, 0
  br i1 %tobool9.i.not, label %xfrm6_local_dontfrag.exit.land.lhs.true26.critedge_crit_edge, label %if.then22

xfrm6_local_dontfrag.exit.land.lhs.true26.critedge_crit_edge: ; preds = %xfrm6_local_dontfrag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.critedge

if.then22:                                        ; preds = %xfrm6_local_dontfrag.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #5
  %96 = call ptr @memset(ptr %fl6.i, i32 255, i32 88)
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 6
  %97 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %skc_bound_dev_if.i, align 4
  %99 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %fl6.i, align 8
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %100 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %102 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i120 = zext i16 %103 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %101, i32 %conv.i.i.i120
  %daddr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %104 = call ptr @memcpy(ptr %daddr.i, ptr %daddr1.i, i32 16)
  call void @ipv6_local_rxpmtu(ptr noundef nonnull %84, ptr noundef nonnull %fl6.i, i32 noundef %mtu.0) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #5
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

land.lhs.true26.critedge:                         ; preds = %xfrm6_local_dontfrag.exit.land.lhs.true26.critedge_crit_edge, %if.end.i.land.lhs.true26.critedge_crit_edge, %lor.lhs.false.i.land.lhs.true26.critedge_crit_edge, %land.lhs.true.land.lhs.true26.critedge_crit_edge
  %head.i.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %105 = ptrtoint ptr %head.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i.i.i121, align 8
  %network_header.i.i.i122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %107 = ptrtoint ptr %network_header.i.i.i122 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i.i.i122, align 4
  %conv.i.i.i123 = zext i16 %108 to i32
  %add.ptr.i.i.i124 = getelementptr i8, ptr %106, i32 %conv.i.i.i123
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i124, i32 0, i32 3
  %109 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %110)
  %cmp.not.i125 = icmp eq i8 %110, 44
  br i1 %cmp.not.i125, label %xfrm6_noneed_fragment.exit, label %land.lhs.true26.critedge.if.else30_crit_edge

land.lhs.true26.critedge.if.else30_crit_edge:     ; preds = %land.lhs.true26.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else30

xfrm6_noneed_fragment.exit:                       ; preds = %land.lhs.true26.critedge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %111 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 40
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %add.ptr.i, align 4
  %115 = and i8 %114, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %115)
  %switch.i.not = icmp eq i8 %115, 50
  br i1 %switch.i.not, label %if.then29, label %xfrm6_noneed_fragment.exit.if.else30_crit_edge

xfrm6_noneed_fragment.exit.if.else30_crit_edge:   ; preds = %xfrm6_noneed_fragment.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else30

if.then29:                                        ; preds = %xfrm6_noneed_fragment.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %116 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  br label %skip_frag

if.else30:                                        ; preds = %xfrm6_noneed_fragment.exit.if.else30_crit_edge, %land.lhs.true26.critedge.if.else30_crit_edge
  %ignore_df31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %117 = ptrtoint ptr %ignore_df31 to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load32 = load i16, ptr %ignore_df31, align 8
  %118 = and i16 %bf.load32, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool34.not = icmp eq i16 %118, 0
  br i1 %tobool34.not, label %land.lhs.true38, label %if.else30.if.then49_crit_edge

if.else30.if.then49_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

land.lhs.true38:                                  ; preds = %if.else30
  %119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %tobool39.not = icmp eq ptr %121, null
  br i1 %tobool39.not, label %land.lhs.true38.if.then49_crit_edge, label %if.then40

land.lhs.true38.if.then49_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xfrm_local_error(ptr noundef %skb, i32 noundef %mtu.0) #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.end.lor.lhs.false_crit_edge, %if.end14.lor.lhs.false_crit_edge
  %122 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %0, align 8
  %and.i128 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %lor.lhs.false.skb_dst.exit139_crit_edge, label %land.lhs.true.i132

lor.lhs.false.skb_dst.exit139_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit139

land.lhs.true.i132:                               ; preds = %lor.lhs.false
  %call.i130 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool1.not.i131 = icmp eq i32 %call.i130, 0
  br i1 %tobool1.not.i131, label %land.rhs.i135, label %land.lhs.true.i132.skb_dst.exit139_crit_edge

land.lhs.true.i132.skb_dst.exit139_crit_edge:     ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit139

land.rhs.i135:                                    ; preds = %land.lhs.true.i132
  %call2.i133 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i133)
  %tobool3.not.i134 = icmp eq i32 %call2.i133, 0
  br i1 %tobool3.not.i134, label %do.end.i136, label %land.rhs.i135.skb_dst.exit139_crit_edge, !prof !38

land.rhs.i135.skb_dst.exit139_crit_edge:          ; preds = %land.rhs.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit139

do.end.i136:                                      ; preds = %land.rhs.i135
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit139

skb_dst.exit139:                                  ; preds = %do.end.i136, %land.rhs.i135.skb_dst.exit139_crit_edge, %land.lhs.true.i132.skb_dst.exit139_crit_edge, %lor.lhs.false.skb_dst.exit139_crit_edge
  %124 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %0, align 8
  %and25.i137 = and i32 %125, -2
  %126 = inttoptr i32 %and25.i137 to ptr
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %128, -4
  %129 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %129, i32 11
  %130 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i140 = and i32 %131, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool48.not = icmp eq i32 %and.i.i140, 0
  br i1 %tobool48.not, label %skb_dst.exit139.skip_frag_crit_edge, label %skb_dst.exit139.if.then49_crit_edge

skb_dst.exit139.if.then49_crit_edge:              ; preds = %skb_dst.exit139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

skb_dst.exit139.skip_frag_crit_edge:              ; preds = %skb_dst.exit139
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip_frag

if.then49:                                        ; preds = %skb_dst.exit139.if.then49_crit_edge, %land.lhs.true38.if.then49_crit_edge, %if.else30.if.then49_crit_edge
  %call50 = tail call i32 @ip6_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull @__xfrm6_output_finish) #5
  br label %cleanup

skip_frag:                                        ; preds = %skb_dst.exit139.skip_frag_crit_edge, %if.then29, %if.end.skip_frag_crit_edge
  %call52 = tail call i32 @xfrm_output(ptr noundef %sk, ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %skip_frag, %if.then49, %if.then40, %if.then22, %dst_output.exit
  %retval.0 = phi i32 [ %call52, %skip_frag ], [ -90, %if.then22 ], [ %call50, %if.then49 ], [ -90, %if.then40 ], [ %call1.i, %dst_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10, i32 4), ptr blockaddress(@nf_hook, %if.end)) #5
          to label %cleanup [label %if.end], !srcloc !41

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 4
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.2, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nf_hook.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 4, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__xfrm6_output, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !43
  %13 = call i32 @llvm.read_register.i32(metadata !28) #5
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_local_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__xfrm6_output_finish(ptr nocapture noundef readnone %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_output(ptr noundef %sk, ptr noundef %skb) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/net/dst.h", i32 161, i32 2}
!27 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2155785665}
!40 = !{i64 2155804033}
!41 = !{i64 2148832565, i64 2148832570, i64 2148832583, i64 2148832627, i64 2148832661, i64 2148832682}
!42 = !{i64 2149647387}
!43 = !{i64 2149647653}
