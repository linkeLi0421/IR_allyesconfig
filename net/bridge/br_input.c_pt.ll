; ModuleID = '/llk/IR_all_yes/net/bridge/br_input.c_pt.bc'
source_filename = "../net/bridge/br_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+br_handle_frame_finish\22, \22a\22\09"
module asm "\09.weak\09__crc_br_handle_frame_finish\09\09\09\09"
module asm "\09.long\09__crc_br_handle_frame_finish\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_handle_frame_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22br_handle_frame_finish\22\09\09\09\09\09"
module asm "__kstrtabns_br_handle_frame_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.174 }
%union.anon.174 = type { [1 x i32] }
%struct.in6_addr = type { %union.anon.91 }
%union.anon.91 = type { [4 x i32] }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.131 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.168, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.168 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.169, %union.anon.170, i16, i16 }
%union.anon.169 = type { %struct.in6_addr }
%union.anon.170 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.132, %union.anon.133, [48 x i8], %union.anon.134, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.136, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.132 = type { ptr }
%union.anon.133 = type { i64 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, ptr }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.138, i32, i32, i32, i16, i16, %union.anon.140, i32, %union.anon.141, %union.anon.142, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.138 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_bridge_mdb_entry = type { %struct.rhash_head, ptr, ptr, %struct.br_ip, i8, %struct.timer_list, %struct.hlist_node, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.net_bridge_mcast_gc = type { %struct.hlist_node, ptr }
%struct.net_bridge_fdb_entry = type { %struct.rhash_head, ptr, %struct.net_bridge_fdb_key, %struct.hlist_node, i32, [100 x i8], i32, i32, %struct.callback_head, [112 x i8] }
%struct.net_bridge_fdb_key = type { %struct.mac_addr, i16 }
%struct.mac_addr = type { [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.dsa_port = type { %union.anon.117, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.117 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.99 }
%union.anon.99 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.br_frame_type = type { i16, ptr, %struct.hlist_node }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.162, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.162 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nf_hook_entries = type { i16, [0 x %struct.nf_hook_entry] }
%struct.nf_hook_entry = type { ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_br_handle_frame_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_handle_frame_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_br_handle_frame_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_handle_frame_finish to i32), ptr @__kstrtab_br_handle_frame_finish, ptr @__kstrtabns_br_handle_frame_finish }, section "___ksymtab_gpl+br_handle_frame_finish", align 4
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nbp_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@br_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@br_process_frame_type.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/bridge/br_input.c\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nf_hook_bridge_pre.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2054, i64 32821, i64 34525]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 416, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 271, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 229, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 695, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 723, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 1011, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [25 x i8] c"../net/bridge/br_input.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 267, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_br_handle_frame_finish, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_handle_frame_finish(ptr nocapture readnone %net, ptr nocapture readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  %pmctx = alloca ptr, align 4
  %brmctx = alloca ptr, align 4
  %vlan = alloca ptr, align 4
  %vid = alloca i16, align 2
  %state = alloca i8, align 1
  %_msg = alloca %struct.nd_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 95
  %3 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.br_port_get_rcu.exit_crit_edge

entry.br_port_get_rcu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.1) #10
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %entry.br_port_get_rcu.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctx) #10
  %5 = ptrtoint ptr %pmctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %pmctx, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brmctx) #10
  %6 = ptrtoint ptr %brmctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %brmctx, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlan) #10
  %7 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %vlan, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid) #10
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %vid, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %state, align 1, !annotation !59
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %br_port_get_rcu.exit.drop_crit_edge, label %lor.lhs.false

br_port_get_rcu.exit.drop_crit_edge:              ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

lor.lhs.false:                                    ; preds = %br_port_get_rcu.exit
  %state1 = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 8
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %lor.lhs.false.drop_crit_edge, label %if.end

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %brmctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %multicast_ctx, ptr %brmctx, align 4
  %multicast_ctx4 = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 24
  %15 = ptrtoint ptr %pmctx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %multicast_ctx4, ptr %pmctx, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %state, align 1
  %17 = load ptr, ptr %4, align 8
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 5
  %18 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i222 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool.not.i223 = icmp eq i32 %call.i222, 0
  br i1 %tobool.not.i223, label %land.lhs.true.i226, label %if.end.nbp_vlan_group_rcu.exit_crit_edge

if.end.nbp_vlan_group_rcu.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group_rcu.exit

land.lhs.true.i226:                               ; preds = %if.end
  %call2.i224 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i224)
  %tobool3.not.i225 = icmp eq i32 %call2.i224, 0
  br i1 %tobool3.not.i225, label %land.lhs.true.i226.nbp_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i228

land.lhs.true.i226.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group_rcu.exit

land.lhs.true4.i228:                              ; preds = %land.lhs.true.i226
  %.b9.i227 = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i227, label %land.lhs.true4.i228.nbp_vlan_group_rcu.exit_crit_edge, label %if.then.i229

land.lhs.true4.i228.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group_rcu.exit

if.then.i229:                                     ; preds = %land.lhs.true4.i228
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1489, ptr noundef nonnull @.str.1) #10
  br label %nbp_vlan_group_rcu.exit

nbp_vlan_group_rcu.exit:                          ; preds = %if.then.i229, %land.lhs.true4.i228.nbp_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i226.nbp_vlan_group_rcu.exit_crit_edge, %if.end.nbp_vlan_group_rcu.exit_crit_edge
  %call8 = call zeroext i1 @br_allowed_ingress(ptr noundef %17, ptr noundef %19, ptr noundef %skb, ptr noundef nonnull %vid, ptr noundef nonnull %state, ptr noundef nonnull %vlan) #10
  br i1 %call8, label %if.end10, label %nbp_vlan_group_rcu.exit.cleanup142_crit_edge

nbp_vlan_group_rcu.exit.cleanup142_crit_edge:     ; preds = %nbp_vlan_group_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

if.end10:                                         ; preds = %nbp_vlan_group_rcu.exit
  call void @nbp_switchdev_frame_mark(ptr noundef nonnull %4, ptr noundef %skb) #10
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 8
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %26 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid, align 2
  call void @br_fdb_update(ptr noundef %21, ptr noundef nonnull %4, ptr noundef %h_source, i16 noundef zeroext %29, i32 noundef 0) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %dev = getelementptr inbounds %struct.net_bridge, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %flags16 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags16, align 8
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp ne i32 %34, 0
  %head.i.i230 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i230, align 8
  %mac_header.i.i231 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %38 = ptrtoint ptr %mac_header.i.i231 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mac_header.i.i231, align 2
  %conv.i.i232 = zext i16 %39 to i32
  %add.ptr.i.i233 = getelementptr i8, ptr %37, i32 %conv.i.i232
  %40 = ptrtoint ptr %add.ptr.i.i233 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i233, align 4
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not = icmp eq i32 %42, 0
  br i1 %tobool.i.not, label %if.end15.if.end34_crit_edge, label %if.then23

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then23:                                        ; preds = %if.end15
  %43 = ptrtoint ptr %add.ptr.i.i233 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i.i233, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i233, i32 2
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %46, %44
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i.i233, i32 4
  %47 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %48
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then23.if.end34_crit_edge, label %if.else

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else:                                          ; preds = %if.then23
  %49 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vlan, align 4
  %51 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vid, align 2
  %call29 = call i32 @br_multicast_rcv(ptr noundef nonnull %brmctx, ptr noundef nonnull %pmctx, ptr noundef %50, ptr noundef %skb, i16 noundef zeroext %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else.if.end34_crit_edge, label %if.else.drop_crit_edge

if.else.drop_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then23.if.end34_crit_edge, %if.end15.if.end34_crit_edge
  %pkt_type.0 = phi i32 [ 1, %if.else.if.end34_crit_edge ], [ 0, %if.end15.if.end34_crit_edge ], [ 2, %if.then23.if.end34_crit_edge ]
  %local_rcv.0.off0 = phi i1 [ %35, %if.else.if.end34_crit_edge ], [ %35, %if.end15.if.end34_crit_edge ], [ true, %if.then23.if.end34_crit_edge ]
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp36 = icmp eq i8 %54, 2
  br i1 %cmp36, label %if.end34.drop_crit_edge, label %if.end39

if.end34.drop_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end39:                                         ; preds = %if.end34
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %57 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %cb, align 8
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  %src_port_isolated = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %60 = ptrtoint ptr %src_port_isolated to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load = load i8, ptr %src_port_isolated, align 1
  %sh.diff = lshr i32 %59, 11
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %src_port_isolated, align 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %61 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %protocol, align 8
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i16 %62, label %if.end39.if.end80_crit_edge [
    i16 2054, label %if.end39.if.then58_crit_edge
    i16 -32715, label %if.end39.if.then58_crit_edge279
    i16 -31011, label %land.lhs.true
  ]

if.end39.if.then58_crit_edge279:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

if.end39.if.then58_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

if.end39.if.end80_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then58:                                        ; preds = %if.end39.if.then58_crit_edge, %if.end39.if.then58_crit_edge279
  %64 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vid, align 2
  call void @br_do_proxy_suppress_arp(ptr noundef %skb, ptr noundef %21, i16 noundef zeroext %65, ptr noundef nonnull %4) #10
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end39
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %21, i32 0, i32 4
  %66 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %options.i, align 4
  %68 = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool65.not = icmp eq i32 %68, 0
  br i1 %tobool65.not, label %land.lhs.true.if.end80_crit_edge, label %land.lhs.true66

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true66:                                  ; preds = %land.lhs.true
  %call67 = call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb)
  br i1 %call67, label %land.lhs.true69, label %land.lhs.true66.if.end80_crit_edge

land.lhs.true66.if.end80_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %69 = ptrtoint ptr %head.i.i230 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i230, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %71 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i239 = zext i16 %72 to i32
  %add.ptr.i.i240 = getelementptr i8, ptr %70, i32 %conv.i.i239
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i240, i32 0, i32 3
  %73 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %74)
  %cmp72 = icmp eq i8 %74, 58
  br i1 %cmp72, label %if.then74, label %land.lhs.true69.if.end80_crit_edge

land.lhs.true69.if.end80_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then74:                                        ; preds = %land.lhs.true69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_msg) #10
  %75 = call ptr @memset(ptr %_msg, i32 255, i32 24)
  %call75 = call ptr @br_is_nd_neigh_msg(ptr noundef %skb, ptr noundef nonnull %_msg) #10
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then74.if.end78_crit_edge, label %if.then77

if.then74.if.end78_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vid, align 2
  call void @br_do_suppress_nd(ptr noundef %skb, ptr noundef %21, i16 noundef zeroext %77, ptr noundef nonnull %4, ptr noundef nonnull %call75) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then74.if.end78_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_msg) #10
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %land.lhs.true69.if.end80_crit_edge, %land.lhs.true66.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %if.then58, %if.end39.if.end80_crit_edge
  %78 = zext i32 %pkt_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %pkt_type.0, label %if.end80.if.then132_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.epilog
  ]

if.end80.if.then132_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132

sw.bb:                                            ; preds = %if.end80
  %79 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %brmctx, align 4
  %81 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vid, align 2
  %call81 = call ptr @br_mdb_get(ptr noundef %80, ptr noundef %skb, i16 noundef zeroext %82) #10
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %lor.lhs.false83, label %sw.bb.land.lhs.true89_crit_edge

sw.bb.land.lhs.true89_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true89

lor.lhs.false83:                                  ; preds = %sw.bb
  %83 = ptrtoint ptr %src_port_isolated to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load86 = load i8, ptr %src_port_isolated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load86)
  %tobool88.not = icmp sgt i8 %bf.load86, -1
  br i1 %tobool88.not, label %lor.lhs.false83.if.then132.thread_crit_edge, label %lor.lhs.false83.land.lhs.true89_crit_edge

lor.lhs.false83.land.lhs.true89_crit_edge:        ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true89

lor.lhs.false83.if.then132.thread_crit_edge:      ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

land.lhs.true89:                                  ; preds = %lor.lhs.false83.land.lhs.true89_crit_edge, %sw.bb.land.lhs.true89_crit_edge
  %84 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %brmctx, align 4
  %86 = ptrtoint ptr %head.i.i230 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i.i230, align 8
  %88 = ptrtoint ptr %mac_header.i.i231 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mac_header.i.i231, align 2
  %conv.i.i243 = zext i16 %89 to i32
  %add.ptr.i.i244 = getelementptr i8, ptr %87, i32 %conv.i.i243
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i244, i32 0, i32 2
  %90 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %h_proto.i, align 1
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %91, label %sw.default.i [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %land.lhs.true89
  %multicast_querier.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 4
  %93 = ptrtoint ptr %multicast_querier.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %multicast_querier.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i = icmp eq i8 %94, 0
  %delay_time.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 16, i32 1
  %95 = ptrtoint ptr %delay_time.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay_time.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %96, %97
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp14.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp14.i.i, label %if.then.i.i.if.then93_crit_edge, label %if.then.i.i.if.then132.thread_crit_edge

if.then.i.i.if.then132.thread_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

if.then.i.i.if.then93_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

if.end5.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %if.end5.i.i.if.then132.thread_crit_edge, label %lor.rhs.i.i

if.end5.i.i.if.then132.thread_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

lor.rhs.i.i:                                      ; preds = %if.end5.i.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 16, i32 0, i32 0, i32 1
  %98 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not = icmp eq ptr %99, null
  br i1 %tobool.not.i.i.i.i.not, label %lor.rhs.i.i.if.then132.thread_crit_edge, label %lor.rhs.i.i.if.then93_crit_edge

lor.rhs.i.i.if.then93_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

lor.rhs.i.i.if.then132.thread_crit_edge:          ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

sw.bb1.i:                                         ; preds = %land.lhs.true89
  %multicast_querier.i9.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 4
  %100 = ptrtoint ptr %multicast_querier.i9.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %multicast_querier.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i10.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i10.i, label %sw.bb1.i.if.end5.i19.i_crit_edge, label %if.then.i11.i

sw.bb1.i.if.end5.i19.i_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i19.i

if.then.i11.i:                                    ; preds = %sw.bb1.i
  %102 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %85, align 4
  %options.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %options.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %options.i.i.i, align 4
  %106 = and i32 %105, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool2.not.i.i = icmp eq i32 %106, 0
  br i1 %tobool2.not.i.i, label %if.then.i11.i.if.end5.i19.i_crit_edge, label %br_multicast_querier_exists.exit

if.then.i11.i.if.end5.i19.i_crit_edge:            ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i19.i

if.end5.i19.i:                                    ; preds = %if.then.i11.i.if.end5.i19.i_crit_edge, %sw.bb1.i.if.end5.i19.i_crit_edge
  %delay_time.i15.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 21, i32 1
  %107 = ptrtoint ptr %delay_time.i15.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %delay_time.i15.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %sub.i16.i = sub i32 %108, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i16.i)
  %cmp.i17.i = icmp sgt i32 %sub.i16.i, -1
  br i1 %cmp.i17.i, label %if.end5.i19.i.if.then132.thread_crit_edge, label %lor.rhs.i22.i

if.end5.i19.i.if.then132.thread_crit_edge:        ; preds = %if.end5.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

lor.rhs.i22.i:                                    ; preds = %if.end5.i19.i
  %pprev.i.i.i20.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 21, i32 0, i32 0, i32 1
  %110 = ptrtoint ptr %pprev.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %pprev.i.i.i20.i, align 4
  %tobool.not.i.i.i21.i.not = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i21.i.not, label %lor.rhs.i22.i.if.then132.thread_crit_edge, label %lor.rhs.i22.i.if.then93_crit_edge

lor.rhs.i22.i.if.then93_crit_edge:                ; preds = %lor.rhs.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

lor.rhs.i22.i.if.then132.thread_crit_edge:        ; preds = %lor.rhs.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

sw.default.i:                                     ; preds = %land.lhs.true89
  br i1 %tobool82.not, label %sw.default.i.if.then132.thread_crit_edge, label %land.rhs.i

sw.default.i.if.then132.thread_crit_edge:         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

land.rhs.i:                                       ; preds = %sw.default.i
  %proto.i.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call81, i32 0, i32 3, i32 2
  %112 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %proto.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp.i24.i = icmp eq i16 %113, 0
  br i1 %cmp.i24.i, label %land.rhs.i.land.lhs.true95_crit_edge, label %land.rhs.i.if.then132.thread_crit_edge

land.rhs.i.if.then132.thread_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

land.rhs.i.land.lhs.true95_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true95

br_multicast_querier_exists.exit:                 ; preds = %if.then.i11.i
  %delay_time12.i12.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %85, i32 0, i32 21, i32 1
  %114 = ptrtoint ptr %delay_time12.i12.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay_time12.i12.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %sub13.i13.i = sub i32 %115, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i13.i)
  %cmp14.i14.i = icmp slt i32 %sub13.i13.i, 0
  br i1 %cmp14.i14.i, label %br_multicast_querier_exists.exit.if.then93_crit_edge, label %br_multicast_querier_exists.exit.if.then132.thread_crit_edge

br_multicast_querier_exists.exit.if.then132.thread_crit_edge: ; preds = %br_multicast_querier_exists.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132.thread

br_multicast_querier_exists.exit.if.then93_crit_edge: ; preds = %br_multicast_querier_exists.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

if.then93:                                        ; preds = %br_multicast_querier_exists.exit.if.then93_crit_edge, %lor.rhs.i22.i.if.then93_crit_edge, %lor.rhs.i.i.if.then93_crit_edge, %if.then.i.i.if.then93_crit_edge
  br i1 %tobool82.not, label %if.then93.lor.lhs.false98_crit_edge, label %if.then93.land.lhs.true95_crit_edge

if.then93.land.lhs.true95_crit_edge:              ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true95

if.then93.lor.lhs.false98_crit_edge:              ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false98

land.lhs.true95:                                  ; preds = %if.then93.land.lhs.true95_crit_edge, %land.rhs.i.land.lhs.true95_crit_edge
  %host_joined = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call81, i32 0, i32 4
  %117 = ptrtoint ptr %host_joined to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %host_joined, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool96.not = icmp eq i8 %118, 0
  br i1 %tobool96.not, label %land.lhs.true95.lor.lhs.false98_crit_edge, label %land.lhs.true95.if.end137.thread_crit_edge

land.lhs.true95.if.end137.thread_crit_edge:       ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.thread

land.lhs.true95.lor.lhs.false98_crit_edge:        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true95.lor.lhs.false98_crit_edge, %if.then93.lor.lhs.false98_crit_edge
  %call99 = call fastcc zeroext i1 @br_multicast_is_router(ptr noundef %85, ptr noundef %skb)
  br i1 %call99, label %lor.lhs.false98.if.end137.thread_crit_edge, label %if.end137

lor.lhs.false98.if.end137.thread_crit_edge:       ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.thread

if.end137.thread:                                 ; preds = %lor.lhs.false98.if.end137.thread_crit_edge, %land.lhs.true95.if.end137.thread_crit_edge
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 36, i32 8
  %121 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %multicast, align 8
  %inc = add i32 %122, 1
  store i32 %inc, ptr %multicast, align 8
  %123 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %brmctx, align 4
  call void @br_multicast_flood(ptr noundef %call81, ptr noundef %skb, ptr noundef %124, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.then139

if.then132.thread:                                ; preds = %br_multicast_querier_exists.exit.if.then132.thread_crit_edge, %land.rhs.i.if.then132.thread_crit_edge, %sw.default.i.if.then132.thread_crit_edge, %lor.rhs.i22.i.if.then132.thread_crit_edge, %if.end5.i19.i.if.then132.thread_crit_edge, %lor.rhs.i.i.if.then132.thread_crit_edge, %if.end5.i.i.if.then132.thread_crit_edge, %if.then.i.i.if.then132.thread_crit_edge, %lor.lhs.false83.if.then132.thread_crit_edge
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %multicast107 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 36, i32 8
  %127 = ptrtoint ptr %multicast107 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %multicast107, align 8
  %inc108 = add i32 %128, 1
  store i32 %inc108, ptr %multicast107, align 8
  call void @br_flood(ptr noundef %21, ptr noundef %skb, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.then139

sw.epilog:                                        ; preds = %if.end80
  %129 = ptrtoint ptr %head.i.i230 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %head.i.i230, align 8
  %131 = ptrtoint ptr %mac_header.i.i231 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %mac_header.i.i231, align 2
  %conv.i.i248 = zext i16 %132 to i32
  %add.ptr.i.i249 = getelementptr i8, ptr %130, i32 %conv.i.i248
  %133 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %vid, align 2
  %call114 = call ptr @br_fdb_find_rcu(ptr noundef %21, ptr noundef %add.ptr.i.i249, i16 noundef zeroext %134) #10
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %sw.epilog.if.then132_crit_edge, label %if.then116

sw.epilog.if.then132_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then132

if.then116:                                       ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %flags117 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call114, i32 0, i32 4
  %136 = ptrtoint ptr %flags117 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %flags117, align 4
  %and1.i = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool119.not = icmp eq i32 %and1.i, 0
  br i1 %tobool119.not, label %if.end122, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  %call121 = call fastcc i32 @br_pass_frame_up(ptr noundef %skb)
  br label %cleanup142

if.end122:                                        ; preds = %if.then116
  %used = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call114, i32 0, i32 7
  %138 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %139)
  %cmp123.not = icmp eq i32 %135, %139
  br i1 %cmp123.not, label %if.end122.cleanup_crit_edge, label %if.then125

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %135, ptr %used, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %if.end122.cleanup_crit_edge
  %dst128 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call114, i32 0, i32 1
  %141 = ptrtoint ptr %dst128 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dst128, align 4
  call void @br_forward(ptr noundef %142, ptr noundef %skb, i1 noundef zeroext %local_rcv.0.off0, i1 noundef zeroext false) #10
  br i1 %local_rcv.0.off0, label %cleanup.if.then139_crit_edge, label %cleanup.cleanup142_crit_edge

cleanup.cleanup142_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

cleanup.if.then139_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139

if.then132:                                       ; preds = %sw.epilog.if.then132_crit_edge, %if.end80.if.then132_crit_edge
  call void @br_flood(ptr noundef %21, ptr noundef %skb, i32 noundef %pkt_type.0, i1 noundef zeroext %local_rcv.0.off0, i1 noundef zeroext false) #10
  br i1 %local_rcv.0.off0, label %if.then132.if.then139_crit_edge, label %if.then132.cleanup142_crit_edge

if.then132.cleanup142_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

if.then132.if.then139_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139

if.end137:                                        ; preds = %lor.lhs.false98
  %143 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %brmctx, align 4
  call void @br_multicast_flood(ptr noundef %call81, ptr noundef %skb, ptr noundef %144, i1 noundef zeroext %local_rcv.0.off0, i1 noundef zeroext false) #10
  br i1 %local_rcv.0.off0, label %if.end137.if.then139_crit_edge, label %if.end137.cleanup142_crit_edge

if.end137.cleanup142_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

if.end137.if.then139_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139

if.then139:                                       ; preds = %if.end137.if.then139_crit_edge, %if.then132.if.then139_crit_edge, %cleanup.if.then139_crit_edge, %if.then132.thread, %if.end137.thread
  %call140 = call fastcc i32 @br_pass_frame_up(ptr noundef %skb)
  br label %cleanup142

drop:                                             ; preds = %if.end34.drop_crit_edge, %if.else.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %br_port_get_rcu.exit.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup142

cleanup142:                                       ; preds = %drop, %if.then139, %if.end137.cleanup142_crit_edge, %if.then132.cleanup142_crit_edge, %cleanup.cleanup142_crit_edge, %cleanup.thread, %nbp_vlan_group_rcu.exit.cleanup142_crit_edge
  %retval.1 = phi i32 [ %call140, %if.then139 ], [ 0, %cleanup.cleanup142_crit_edge ], [ 0, %if.end137.cleanup142_crit_edge ], [ 0, %nbp_vlan_group_rcu.exit.cleanup142_crit_edge ], [ 0, %drop ], [ %call121, %cleanup.thread ], [ 0, %if.then132.cleanup142_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brmctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctx) #10
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_allowed_ingress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nbp_switchdev_frame_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_update(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_do_proxy_suppress_arp(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb) unnamed_addr #3 align 64 {
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
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 63
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !61

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp3 = icmp ult i32 %1, 64
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !62

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub nuw nsw i32 64, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #10
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_is_nd_neigh_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_do_suppress_nd(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_mdb_get(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @br_multicast_is_router(ptr noundef %brmctx, ptr noundef readonly %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_router = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 6
  %0 = ptrtoint ptr %multicast_router to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_router, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %1, label %entry.sw.default_crit_edge [
    i8 2, label %entry.return_crit_edge
    i8 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb1:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %sw.bb1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %4, label %if.then.sw.default_crit_edge [
    i16 2048, label %if.then4
    i16 -31011, label %if.then9
  ]

if.then.sw.default_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %7, null
  br label %return

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i24 = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 20, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pprev.i.i.i24, align 4
  %tobool.not.i.i.i25 = icmp ne ptr %9, null
  br label %return

if.else12:                                        ; preds = %sw.bb1
  %pprev.i.i.i26 = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 15, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pprev.i.i.i26, align 4
  %tobool.not.i.i.i27.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i27.not, label %lor.rhs, label %if.else12.return_crit_edge

if.else12.return_crit_edge:                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.rhs:                                          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i28 = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 20, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pprev.i.i.i28, align 4
  %tobool.not.i.i.i29 = icmp ne ptr %13, null
  br label %return

sw.default:                                       ; preds = %if.then.sw.default_crit_edge, %entry.sw.default_crit_edge
  br label %return

return:                                           ; preds = %sw.default, %lor.rhs, %if.else12.return_crit_edge, %if.then9, %if.then4, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ %tobool.not.i.i.i, %if.then4 ], [ %tobool.not.i.i.i25, %if.then9 ], [ true, %entry.return_crit_edge ], [ true, %if.else12.return_crit_edge ], [ %tobool.not.i.i.i29, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_fdb_find_rcu(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_pass_frame_up(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 130
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 64
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %entry.dev_sw_netstats_rx_add.exit_crit_edge, label %land.lhs.true.i.i.i

entry.dev_sw_netstats_rx_add.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_sw_netstats_rx_add.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %16 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %21, ptrtoint (ptr @lockdep_recursion to i32)
  %22 = inttoptr i32 %add.i.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %25 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i7.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_sw_netstats_rx_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_sw_netstats_rx_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i9.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %36, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %37 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %40, ptrtoint (ptr @hardirqs_enabled to i32)
  %41 = inttoptr i32 %add47.i.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %44 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i12.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_sw_netstats_rx_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %if.then.i.i.i, !prof !61

land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_sw_netstats_rx_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %dev_sw_netstats_rx_add.exit

dev_sw_netstats_rx_add.exit:                      ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %entry.dev_sw_netstats_rx_add.exit_crit_edge
  %48 = ptrtoint ptr %6 to i32
  %add.i = add i32 %12, %48
  %49 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %49, i32 0, i32 4, i32 0, i32 1
  %52 = tail call ptr @llvm.returnaddress(i32 0) #10
  %53 = ptrtoint ptr %52 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %53) #10
  %conv.i = zext i32 %3 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %55, %conv.i
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %49, align 32
  %inc.i = add i64 %57, 1
  store i64 %inc.i, ptr %49, align 32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  %58 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %vlgrp.i = getelementptr i8, ptr %1, i32 2408
  %60 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %vlgrp.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dev_sw_netstats_rx_add.exit.br_vlan_group_rcu.exit_crit_edge

dev_sw_netstats_rx_add.exit.br_vlan_group_rcu.exit_crit_edge: ; preds = %dev_sw_netstats_rx_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group_rcu.exit

land.lhs.true.i:                                  ; preds = %dev_sw_netstats_rx_add.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_vlan_group_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1483, ptr noundef nonnull @.str.1) #10
  br label %br_vlan_group_rcu.exit

br_vlan_group_rcu.exit:                           ; preds = %if.then.i, %land.lhs.true4.i.br_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i.br_vlan_group_rcu.exit_crit_edge, %dev_sw_netstats_rx_add.exit.br_vlan_group_rcu.exit_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 8
  %and = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %br_vlan_group_rcu.exit.if.end_crit_edge

br_vlan_group_rcu.exit.if.end_crit_edge:          ; preds = %br_vlan_group_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %br_vlan_group_rcu.exit
  %call3 = tail call zeroext i1 @br_allowed_egress(ptr noundef %61, ptr noundef %skb) #10
  br i1 %call3, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %br_vlan_group_rcu.exit.if.end_crit_edge
  %64 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  store ptr %1, ptr %64, align 8
  %call4 = tail call ptr @br_handle_vlan(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %61, ptr noundef %skb) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %igmp.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 6
  %67 = ptrtoint ptr %igmp.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %igmp.i, align 2
  tail call void @br_multicast_count(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %call4, i8 noundef zeroext %68, i8 noundef zeroext 1) #10
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 127
  %69 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nd_net.i, align 4
  %call.i32 = tail call fastcc i32 @nf_hook(ptr noundef %70, ptr noundef nonnull %call4, ptr noundef %66, ptr noundef nonnull @br_netif_receive_skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.i = icmp eq i32 %call.i32, 1
  br i1 %cmp.i, label %if.then.i33, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i33:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @br_netif_receive_skb(ptr noundef %70, ptr noundef null, ptr noundef nonnull %call4) #10, !callees !69
  br label %cleanup

cleanup:                                          ; preds = %if.then.i33, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then.i33 ], [ %call.i32, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_forward(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_flood(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_flood(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @br_get_rx_handler(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.netdev_uses_dsa.exit.thread_crit_edge, label %netdev_uses_dsa.exit

entry.netdev_uses_dsa.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_uses_dsa.exit.thread

netdev_uses_dsa.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool2.i.not, ptr @br_handle_frame, ptr @br_handle_frame_dummy
  br label %netdev_uses_dsa.exit.thread

netdev_uses_dsa.exit.thread:                      ; preds = %netdev_uses_dsa.exit, %entry.netdev_uses_dsa.exit.thread_crit_edge
  %4 = phi ptr [ @br_handle_frame, %entry.netdev_uses_dsa.exit.thread_crit_edge ], [ %spec.select, %netdev_uses_dsa.exit ]
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_handle_frame_dummy(ptr nocapture noundef readnone %pskb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_handle_frame(ptr nocapture noundef %pskb) #0 align 64 {
entry:
  %state.i = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp, label %entry.cleanup97_crit_edge, label %if.end, !prof !62

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup97

if.end:                                           ; preds = %entry
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_source, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i148 = getelementptr i8, ptr %h_source, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i148, align 2
  %conv.i.i149 = zext i16 %11 to i32
  %or.i.i = or i32 %8, %conv.i.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.drop_crit_edge, label %if.end7

is_valid_ether_addr.exit.drop_crit_edge:          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end7:                                          ; preds = %is_valid_ether_addr.exit
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end7
  %call7.i = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread184, !prof !62

skb_share_check.exit.thread184:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %1) #10
  br label %if.end11

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup97

skb_share_check.exit:                             ; preds = %if.end7
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %skb_share_check.exit.cleanup97_crit_edge, label %skb_share_check.exit.if.end11_crit_edge

skb_share_check.exit.if.end11_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

skb_share_check.exit.cleanup97_crit_edge:         ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup97

if.end11:                                         ; preds = %skb_share_check.exit.if.end11_crit_edge, %skb_share_check.exit.thread184
  %skb.addr.0.i187 = phi ptr [ %call7.i, %skb_share_check.exit.thread184 ], [ %1, %skb_share_check.exit.if.end11_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i187, i32 0, i32 3
  %14 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %15 = getelementptr inbounds %struct.anon.83, ptr %skb.addr.0.i187, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 95
  %18 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end11.br_port_get_rcu.exit_crit_edge

if.end11.br_port_get_rcu.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.1) #10
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %if.end11.br_port_get_rcu.exit_crit_edge
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %br_port_get_rcu.exit.if.end17_crit_edge, label %if.then15

br_port_get_rcu.exit.if.end17_crit_edge:          ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %br_port_get_rcu.exit
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i150 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %land.lhs.true.i154, label %if.then15.nbp_vlan_group_rcu.exit_crit_edge

if.then15.nbp_vlan_group_rcu.exit_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group_rcu.exit

land.lhs.true.i154:                               ; preds = %if.then15
  %call2.i152 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i152)
  %tobool3.not.i153 = icmp eq i32 %call2.i152, 0
  br i1 %tobool3.not.i153, label %land.lhs.true.i154.nbp_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i156

land.lhs.true.i154.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group_rcu.exit

land.lhs.true4.i156:                              ; preds = %land.lhs.true.i154
  %.b9.i155 = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i155, label %land.lhs.true4.i156.nbp_vlan_group_rcu.exit_crit_edge, label %if.then.i157

land.lhs.true4.i156.nbp_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group_rcu.exit

if.then.i157:                                     ; preds = %land.lhs.true4.i156
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1489, ptr noundef nonnull @.str.1) #10
  br label %nbp_vlan_group_rcu.exit

nbp_vlan_group_rcu.exit:                          ; preds = %if.then.i157, %land.lhs.true4.i156.nbp_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i154.nbp_vlan_group_rcu.exit_crit_edge, %if.then15.nbp_vlan_group_rcu.exit_crit_edge
  tail call void @br_handle_ingress_vlan_tunnel(ptr noundef nonnull %skb.addr.0.i187, ptr noundef %19, ptr noundef %23) #10
  br label %if.end17

if.end17:                                         ; preds = %nbp_vlan_group_rcu.exit, %br_port_get_rcu.exit.if.end17_crit_edge
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i = xor i32 %25, 25215488
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i.i, i32 2
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %28 = and i16 %27, -16
  %and.i = zext i16 %28 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then25, label %if.end75, !prof !62

if.then25:                                        ; preds = %if.end17
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %19, align 8
  %group_fwd_mask_required = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %group_fwd_mask_required to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %group_fwd_mask_required, align 2
  %group_fwd_mask = getelementptr inbounds %struct.net_bridge_port, ptr %19, i32 0, i32 34
  %33 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %group_fwd_mask, align 2
  %or141 = or i16 %34, %32
  %arrayidx = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %36, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %if.then25.drop_crit_edge
    i8 14, label %sw.bb41
  ]

if.then25.drop_crit_edge:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

sw.bb:                                            ; preds = %if.then25
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 28
  %38 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp31 = icmp ne i32 %39, 0
  %40 = and i16 %or141, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool37.not = icmp eq i16 %40, 0
  %or.cond = select i1 %cmp31, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %if.end39, label %sw.bb.forward_crit_edge

sw.bb.forward_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %forward

if.end39:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %skb.addr.0.i187, ptr %pskb, align 4
  tail call fastcc void @__br_handle_local_finish(ptr noundef nonnull %skb.addr.0.i187)
  br label %cleanup97

sw.bb41:                                          ; preds = %if.then25
  %group_fwd_mask43 = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 11
  %42 = ptrtoint ptr %group_fwd_mask43 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %group_fwd_mask43, align 4
  %or46142 = or i16 %43, %or141
  %44 = and i16 %or46142, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool53.not = icmp eq i16 %44, 0
  br i1 %tobool53.not, label %if.end55, label %sw.bb41.forward_crit_edge

sw.bb41.forward_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %forward

if.end55:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %skb.addr.0.i187, ptr %pskb, align 4
  tail call fastcc void @__br_handle_local_finish(ptr noundef nonnull %skb.addr.0.i187)
  br label %cleanup97

sw.default:                                       ; preds = %if.then25
  %conv29 = zext i8 %36 to i32
  %group_fwd_mask57 = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 11
  %46 = ptrtoint ptr %group_fwd_mask57 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %group_fwd_mask57, align 4
  %or60143 = or i16 %47, %or141
  %conv62 = zext i16 %or60143 to i32
  %shl65 = shl nuw i32 1, %conv29
  %and66 = and i32 %shl65, %conv62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %sw.epilog, label %sw.default.forward_crit_edge

sw.default.forward_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %forward

sw.epilog:                                        ; preds = %sw.default
  %48 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %15, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 127
  %50 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nd_net.i, align 4
  %call.i158 = tail call fastcc i32 @nf_hook(ptr noundef %51, ptr noundef nonnull %skb.addr.0.i187, ptr noundef %49, ptr noundef nonnull @br_handle_local_finish) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i158)
  %cmp.i159 = icmp eq i32 %call.i158, 1
  br i1 %cmp.i159, label %52, label %sw.epilog.cleanup97_crit_edge

sw.epilog.cleanup97_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup97

52:                                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__br_handle_local_finish(ptr noundef nonnull %skb.addr.0.i187) #10
  br label %cleanup97

if.end75:                                         ; preds = %if.end17
  %call.i161 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %land.lhs.true.i164, label %if.end75.do.end.i_crit_edge

if.end75.do.end.i_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i164:                               ; preds = %if.end75
  %call1.i163 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool2.not.i = icmp eq i32 %call1.i163, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i164.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i164.do.end.i_crit_edge:            ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i164
  %.b44.i = load i1, ptr @br_process_frame_type.__warned, align 1
  br i1 %.b44.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i165

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i165:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_process_frame_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 267, ptr noundef nonnull @.str.14) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i165, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i164.do.end.i_crit_edge, %if.end75.do.end.i_crit_edge
  %53 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %19, align 8
  %frame_type_list.i = getelementptr inbounds %struct.net_bridge, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %frame_type_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %frame_type_list.i, align 4
  %tobool11.not.i = icmp eq ptr %56, null
  %add.ptr.i = getelementptr i8, ptr %56, i32 -8
  %tobool13.not4951.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not49.i = or i1 %tobool11.not.i, %tobool13.not4951.i
  br i1 %tobool13.not49.i, label %do.end.i.forward_crit_edge, label %for.body.lr.ph.i

do.end.i.forward_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %forward

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i187, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.050.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr32.i, %for.inc.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %tmp.050.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tmp.050.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %58)
  %cmp.i166 = icmp eq i16 %60, %58
  br i1 %cmp.i166, label %br_process_frame_type.exit, label %for.inc.i, !prof !62

for.inc.i:                                        ; preds = %for.body.i
  %list.i = getelementptr inbounds %struct.br_frame_type, ptr %tmp.050.i, i32 0, i32 2
  %61 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %list.i, align 4
  %tobool28.not.i = icmp eq ptr %62, null
  %add.ptr32.i = getelementptr i8, ptr %62, i32 -8
  %tobool13.not54.i = icmp eq ptr %add.ptr32.i, null
  %tobool13.not.i = or i1 %tobool28.not.i, %tobool13.not54.i
  br i1 %tobool13.not.i, label %for.inc.i.forward_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.forward_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %forward

br_process_frame_type.exit:                       ; preds = %for.body.i
  %frame_handler.i = getelementptr inbounds %struct.br_frame_type, ptr %tmp.050.i, i32 0, i32 1
  %63 = ptrtoint ptr %frame_handler.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %frame_handler.i, align 4
  %call19.i = tail call i32 %64(ptr noundef %19, ptr noundef %skb.addr.0.i187) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool77.not = icmp eq i32 %call19.i, 0
  br i1 %tobool77.not, label %br_process_frame_type.exit.forward_crit_edge, label %br_process_frame_type.exit.cleanup97_crit_edge, !prof !61

br_process_frame_type.exit.cleanup97_crit_edge:   ; preds = %br_process_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup97

br_process_frame_type.exit.forward_crit_edge:     ; preds = %br_process_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %forward

forward:                                          ; preds = %br_process_frame_type.exit.forward_crit_edge, %for.inc.i.forward_crit_edge, %do.end.i.forward_crit_edge, %sw.default.forward_crit_edge, %sw.bb41.forward_crit_edge, %sw.bb.forward_crit_edge
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %19, i32 0, i32 8
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %state, align 1
  %67 = and i8 %66, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %switch = icmp eq i8 %67, 2
  br i1 %switch, label %sw.bb87, label %forward.drop_crit_edge

forward.drop_crit_edge:                           ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

sw.bb87:                                          ; preds = %forward
  %68 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %19, align 8
  %dev = getelementptr inbounds %struct.net_bridge, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 86
  %72 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_addr, align 64
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i167 = xor i32 %77, %75
  %add.ptr.i168 = getelementptr i8, ptr %73, i32 4
  %78 = ptrtoint ptr %add.ptr.i168 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i168, align 2
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx.i, align 2
  %xor37.i = xor i16 %81, %79
  %xor3.i = zext i16 %xor37.i to i32
  %or.i169 = or i32 %xor.i167, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i169)
  %cmp.i170 = icmp eq i32 %or.i169, 0
  br i1 %cmp.i170, label %if.then90, label %sw.bb87.if.end93_crit_edge

sw.bb87.if.end93_crit_edge:                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then90:                                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_type91 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i187, i32 0, i32 15
  %82 = ptrtoint ptr %pkt_type91 to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load92 = load i16, ptr %pkt_type91, align 8
  %bf.clear = and i16 %bf.load92, 8191
  store i16 %bf.clear, ptr %pkt_type91, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %sw.bb87.if.end93_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #10
  %83 = call ptr @memset(ptr %state.i, i32 255, i32 24)
  %84 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %15, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 127
  %86 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nd_net.i.i, align 4
  %hooks_bridge.i = getelementptr inbounds %struct.net, ptr %87, i32 0, i32 39, i32 6
  %88 = ptrtoint ptr %hooks_bridge.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %hooks_bridge.i, align 8
  %call2.i171 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i171)
  %tobool.not.i172 = icmp eq i32 %call2.i171, 0
  br i1 %tobool.not.i172, label %land.lhs.true.i173, label %if.end93.do.end8.i_crit_edge

if.end93.do.end8.i_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i173:                               ; preds = %if.end93
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i173.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i173.do.end8.i_crit_edge:           ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i173
  %.b49.i = load i1, ptr @nf_hook_bridge_pre.__warned, align 1
  br i1 %.b49.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i174

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i174:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_hook_bridge_pre.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 221, ptr noundef nonnull @.str.1) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i174, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i173.do.end8.i_crit_edge, %if.end93.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %89, null
  br i1 %tobool10.not.i, label %do.end8.i.frame_finish.i_crit_edge, label %if.end12.i

do.end8.i.frame_finish.i_crit_edge:               ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_finish.i

if.end12.i:                                       ; preds = %do.end8.i
  %90 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %15, align 8
  %92 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %state.i, align 4
  %pf2.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 1
  %93 = ptrtoint ptr %pf2.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 7, ptr %pf2.i.i, align 1
  %in.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 2
  %94 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %in.i.i, align 4
  %out.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 3
  %95 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %out.i.i, align 4
  %sk3.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 4
  %96 = ptrtoint ptr %sk3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %sk3.i.i, align 4
  %net4.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 5
  %97 = ptrtoint ptr %net4.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %87, ptr %net4.i.i, align 4
  %okfn5.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 6
  %98 = ptrtoint ptr %okfn5.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @br_handle_frame_finish, ptr %okfn5.i.i, align 4
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp52.not.i = icmp eq i16 %100, 0
  br i1 %cmp52.not.i, label %if.end12.i.frame_finish.i_crit_edge, label %for.body.lr.ph.i175

if.end12.i.frame_finish.i_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_finish.i

for.body.lr.ph.i175:                              ; preds = %if.end12.i
  %br_netfilter_broute.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i187, i32 0, i32 3, i32 7
  br label %for.body.i176

for.body.i176:                                    ; preds = %for.inc.i178.for.body.i176_crit_edge, %for.body.lr.ph.i175
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i175 ], [ %inc.i, %for.inc.i178.for.body.i176_crit_edge ]
  %arrayidx14.i = getelementptr %struct.nf_hook_entries, ptr %89, i32 0, i32 1, i32 %i.053.i
  %101 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx14.i, align 4
  %priv.i.i = getelementptr %struct.nf_hook_entries, ptr %89, i32 0, i32 1, i32 %i.053.i, i32 1
  %103 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv.i.i, align 4
  %call.i.i = call i32 %102(ptr noundef %104, ptr noundef %skb.addr.0.i187, ptr noundef nonnull %state.i) #10
  %trunc.i = trunc i32 %call.i.i to i8
  %105 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %trunc.i, label %for.body.i176.nf_hook_bridge_pre.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb19.i
    i8 3, label %sw.bb20.i
  ]

for.body.i176.nf_hook_bridge_pre.exit_crit_edge:  ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_hook_bridge_pre.exit

sw.bb.i:                                          ; preds = %for.body.i176
  %106 = ptrtoint ptr %br_netfilter_broute.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i = load i8, ptr %br_netfilter_broute.i, align 1
  %107 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool16.not.i = icmp eq i8 %107, 0
  br i1 %tobool16.not.i, label %sw.bb.i.for.inc.i178_crit_edge, label %if.then17.i

sw.bb.i.for.inc.i178_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i178

if.then17.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %skb.addr.0.i187, ptr %pskb, align 4
  br label %nf_hook_bridge_pre.exit

sw.bb19.i:                                        ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %skb.addr.0.i187, i32 noundef 0) #10
  br label %nf_hook_bridge_pre.exit

sw.bb20.i:                                        ; preds = %for.body.i176
  %call21.i = call i32 @nf_queue(ptr noundef %skb.addr.0.i187, ptr noundef nonnull %state.i, i32 noundef %i.053.i, i32 noundef %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 1
  br i1 %cmp22.i, label %sw.bb20.i.for.inc.i178_crit_edge, label %sw.bb20.i.nf_hook_bridge_pre.exit_crit_edge

sw.bb20.i.nf_hook_bridge_pre.exit_crit_edge:      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_hook_bridge_pre.exit

sw.bb20.i.for.inc.i178_crit_edge:                 ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i178

for.inc.i178:                                     ; preds = %sw.bb20.i.for.inc.i178_crit_edge, %sw.bb.i.for.inc.i178_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %109 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %89, align 4
  %conv.i = zext i16 %110 to i32
  %cmp.i177 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i177, label %for.inc.i178.for.body.i176_crit_edge, label %for.inc.i178.frame_finish.i_crit_edge

for.inc.i178.frame_finish.i_crit_edge:            ; preds = %for.inc.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_finish.i

for.inc.i178.for.body.i176_crit_edge:             ; preds = %for.inc.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i176

frame_finish.i:                                   ; preds = %for.inc.i178.frame_finish.i_crit_edge, %if.end12.i.frame_finish.i_crit_edge, %do.end8.i.frame_finish.i_crit_edge
  %call27.i = call i32 @br_handle_frame_finish(ptr undef, ptr undef, ptr noundef %skb.addr.0.i187) #10
  br label %nf_hook_bridge_pre.exit

nf_hook_bridge_pre.exit:                          ; preds = %frame_finish.i, %sw.bb20.i.nf_hook_bridge_pre.exit_crit_edge, %sw.bb19.i, %if.then17.i, %for.body.i176.nf_hook_bridge_pre.exit_crit_edge
  %retval.0.i179 = phi i32 [ 0, %sw.bb19.i ], [ 3, %if.then17.i ], [ 0, %frame_finish.i ], [ 0, %sw.bb20.i.nf_hook_bridge_pre.exit_crit_edge ], [ 0, %for.body.i176.nf_hook_bridge_pre.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #10
  br label %cleanup97

drop:                                             ; preds = %forward.drop_crit_edge, %if.then25.drop_crit_edge, %is_valid_ether_addr.exit.drop_crit_edge, %if.end.drop_crit_edge
  %skb.0 = phi ptr [ %skb.addr.0.i187, %forward.drop_crit_edge ], [ %1, %is_valid_ether_addr.exit.drop_crit_edge ], [ %skb.addr.0.i187, %if.then25.drop_crit_edge ], [ %1, %if.end.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.0, i32 noundef 0) #10
  br label %cleanup97

cleanup97:                                        ; preds = %drop, %nf_hook_bridge_pre.exit, %br_process_frame_type.exit.cleanup97_crit_edge, %52, %sw.epilog.cleanup97_crit_edge, %if.end55, %if.end39, %skb_share_check.exit.cleanup97_crit_edge, %skb_share_check.exit.thread, %entry.cleanup97_crit_edge
  %retval.1 = phi i32 [ 0, %drop ], [ %retval.0.i179, %nf_hook_bridge_pre.exit ], [ 3, %entry.cleanup97_crit_edge ], [ 0, %skb_share_check.exit.cleanup97_crit_edge ], [ 3, %br_process_frame_type.exit.cleanup97_crit_edge ], [ 0, %skb_share_check.exit.thread ], [ 0, %sw.epilog.cleanup97_crit_edge ], [ 3, %52 ], [ 3, %if.end39 ], [ 3, %if.end55 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_add_frame(ptr noundef %br, ptr noundef %ft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.br_frame_type, ptr %ft, i32 0, i32 2
  %frame_type_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 2
  %0 = ptrtoint ptr %frame_type_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame_type_list, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %list, align 4
  %pprev.i = getelementptr inbounds %struct.br_frame_type, ptr %ft, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %frame_type_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %4 = ptrtoint ptr %frame_type_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %frame_type_list, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_del_frame(ptr nocapture noundef readonly %br, ptr noundef %ft) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_type_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 2
  %0 = ptrtoint ptr %frame_type_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame_type_list, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %tobool3.not2426 = icmp eq ptr %add.ptr, null
  %tobool3.not24 = or i1 %tobool.not, %tobool3.not2426
  br i1 %tobool3.not24, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.025 = phi ptr [ %add.ptr11, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %cmp = icmp eq ptr %tmp.025, %ft
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %list = getelementptr inbounds %struct.br_frame_type, ptr %ft, i32 0, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %pprev2.i.i = getelementptr inbounds %struct.br_frame_type, ptr %ft, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del_rcu.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.then.hlist_del_rcu.exit_crit_edge
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %list5 = getelementptr inbounds %struct.br_frame_type, ptr %tmp.025, i32 0, i32 2
  %9 = ptrtoint ptr %list5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list5, align 4
  %tobool7.not = icmp eq ptr %10, null
  %add.ptr11 = getelementptr i8, ptr %10, i32 -8
  %tobool3.not27 = icmp eq ptr %add.ptr11, null
  %tobool3.not = or i1 %tobool7.not, %tobool3.not27
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %hlist_del_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_allowed_egress(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_handle_vlan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_count(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_netif_receive_skb(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !62

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr.i = load i32, ptr %0, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %entry.skb_dst.exit.i_crit_edge
  %4 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %2, %entry.skb_dst.exit.i_crit_edge ]
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.br_drop_fake_rtable.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.br_drop_fake_rtable.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_drop_fake_rtable.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.br_drop_fake_rtable.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.br_drop_fake_rtable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_drop_fake_rtable.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.refdst_drop.exit.i.i_crit_edge

if.then.i.i.refdst_drop.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dst_release(ptr noundef nonnull %5) #10
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.i.refdst_drop.exit.i.i_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %0, align 8
  br label %br_drop_fake_rtable.exit

br_drop_fake_rtable.exit:                         ; preds = %refdst_drop.exit.i.i, %land.lhs.true.i.br_drop_fake_rtable.exit_crit_edge, %skb_dst.exit.i.br_drop_fake_rtable.exit_crit_edge
  %call = tail call i32 @netif_receive_skb(ptr noundef %skb) #10
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %okfn) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 7, i32 1), ptr blockaddress(@nf_hook, %if.end)) #10
          to label %cleanup [label %if.end], !srcloc !71

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %rcu_read_lock.exit
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b1 = load i1, ptr @nf_hook.__warned.6, align 1
  br i1 %.b1, label %land.lhs.true115.sw.epilog_crit_edge, label %if.then117

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_hook.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 243, ptr noundef nonnull @.str.1) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then117, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 1, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #10
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %13 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_handle_ingress_vlan_tunnel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__br_handle_local_finish(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %vid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 95
  %3 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.br_port_get_rcu.exit_crit_edge

entry.br_port_get_rcu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.1) #10
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %entry.br_port_get_rcu.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid) #10
  %5 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %vid, align 2
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %br_port_get_rcu.exit.if.end_crit_edge, label %land.lhs.true

br_port_get_rcu.exit.if.end_crit_edge:            ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %br_port_get_rcu.exit
  %state.i = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 8
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state.i, align 1
  %10 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %options.i, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %call6 = call zeroext i1 @br_should_learn(ptr noundef %4, ptr noundef %skb, ptr noundef nonnull %vid) #10
  br i1 %call6, label %if.then, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid, align 2
  call void @br_fdb_update(ptr noundef %18, ptr noundef %4, ptr noundef %h_source, i16 noundef zeroext %24, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %br_port_get_rcu.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_handle_local_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__br_handle_local_finish(ptr noundef %skb)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_should_learn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_queue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_br_handle_frame_finish, !1, !"__ksymtab_br_handle_frame_finish", i1 false, i1 false}
!1 = !{!"../net/bridge/br_input.c", i32 182, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/bridge/br_private.h", i32 1489, i32 9}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/bridge/br_private.h", i32 1483, i32 9}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!37 = distinct !{null, !38, !"b", i1 false, i1 false}
!38 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!39 = distinct !{null, !40, !"m", i1 false, i1 false}
!40 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!41 = distinct !{null, !42, !"eth_reserved_addr_base", i1 false, i1 false}
!42 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/bridge/br_input.c", i32 267, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/bridge/br_input.c", i32 221, i32 6}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i8 0, i8 2}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2149661115}
!64 = !{i64 2149666047}
!65 = !{i64 2149687759}
!66 = !{i64 2149692651}
!67 = !{i64 2149769108}
!68 = !{i64 2149769433}
!69 = !{ptr @br_handle_local_finish, ptr @br_netif_receive_skb}
!70 = !{i64 2151509167}
!71 = !{i64 2148210110, i64 2148210115, i64 2148210128, i64 2148210172, i64 2148210206, i64 2148210227}
!72 = !{i64 2149926255}
!73 = !{i64 2149926521}
